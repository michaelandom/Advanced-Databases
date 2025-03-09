DELIMITER //

-- =================================================================
-- 
--              RIDER MANAGEMENT PROCEDURES
--
-- =================================================================

DROP PROCEDURE IF EXISTS sp_get_active_riders_in_radius//

/**
 * Finds all active riders within a specified radius of a location
 */
CREATE PROCEDURE sp_get_active_riders_in_radius(
    IN p_latitude DECIMAL(10, 8),
    IN p_longitude DECIMAL(11, 8),
    IN p_radius_km INT
)
BEGIN
    SELECT 
        r.rider_id,
        CONCAT(u.first_name, ' ', u.last_name) as rider_name,
        r.latitude,
        r.longitude,
        r.is_online,
        r.status,
        (
            6371 * acos(
                cos(radians(p_latitude)) * cos(radians(r.latitude)) *
                cos(radians(r.longitude) - radians(p_longitude)) +
                sin(radians(p_latitude)) * sin(radians(r.latitude))
            )
        ) AS distance_km
    FROM Riders r
    JOIN Users u ON r.user_id = u.user_id
    WHERE r.is_online = TRUE 
    AND r.is_deleted = FALSE
    AND r.is_suspend = FALSE
    HAVING distance_km <= p_radius_km
    ORDER BY distance_km;
END //

DROP PROCEDURE IF EXISTS sp_update_rider_vehicle//

/**
 * Update Rider Vehicle
 * Updates or adds a new vehicle for a rider
 */
CREATE PROCEDURE sp_update_rider_vehicle(
    IN p_rider_id BIGINT,
    IN p_vehicle_type ENUM('BICYCLE', 'MOTORBIKE', 'CAR'),
    IN p_model_year VARCHAR(4),
    IN p_manufacturer VARCHAR(255),
    IN p_transport_photo VARCHAR(255),
    IN p_driver_license VARCHAR(255),
    IN p_insurance_policy VARCHAR(255),
    IN p_license_valid_from TIMESTAMP,
    IN p_license_valid_to TIMESTAMP,
    IN p_insurance_valid_from TIMESTAMP,
    IN p_insurance_valid_to TIMESTAMP
)
BEGIN
    UPDATE Vehicles
    SET is_current_vehicle = FALSE
    WHERE rider_id = p_rider_id;
    
    INSERT INTO Vehicles (
        rider_id,
        is_current_vehicle,
        vehicle_type,
        model_year,
        manufacturer,
        transport_photo,
        driver_license,
        insurance_policy,
        driver_license_valid_from,
        driver_license_valid_to,
        insurance_policy_valid_from,
        insurance_policy_valid_to
    ) VALUES (
        p_rider_id,
        TRUE,
        p_vehicle_type,
        p_model_year,
        p_manufacturer,
        p_transport_photo,
        p_driver_license,
        p_insurance_policy,
        p_license_valid_from,
        p_license_valid_to,
        p_insurance_valid_from,
        p_insurance_valid_to
    );
END //

DROP PROCEDURE IF EXISTS sp_process_rider_quiz//
/**
 * Processes quiz results for a rider
 */
CREATE PROCEDURE sp_process_rider_quiz(
    IN p_rider_id BIGINT,
    IN p_quiz_key ENUM('INITIAL_QUIZ', 'SECOND_QUIZ', 'FINAL_QUIZ', 'UNAVAILABLE'),
    OUT p_passed BOOLEAN
)
BEGIN
    DECLARE v_correct_answers INT;
    DECLARE v_total_questions INT;
    DECLARE v_pass_percentage FLOAT DEFAULT 0.60; 
    
    SELECT 
        COUNT(DISTINCT ra.option_id) as total_questions,
        COUNT(DISTINCT CASE WHEN qo.is_correct = TRUE THEN ra.option_id END) as correct_answers
    INTO v_total_questions, v_correct_answers
    FROM Rider_Answers ra
    JOIN Question_Options qo ON ra.option_id = qo.question_option_id
    WHERE ra.rider_id = p_rider_id
    AND ra.quiz_key = p_quiz_key;
    
    IF (v_correct_answers / v_total_questions) >= v_pass_percentage THEN
        UPDATE Riders
        SET 
            passed_quiz = TRUE,
            last_exam_take_time = CURRENT_TIMESTAMP,
            updated_at = CURRENT_TIMESTAMP
        WHERE rider_id = p_rider_id;
        
        SET p_passed = TRUE;
    ELSE
        SET p_passed = FALSE;
    END IF;
END //

-- =================================================================
--
--             ORDER MANAGEMENT PROCEDURES
--
-- =================================================================

DROP PROCEDURE IF EXISTS sp_create_order//
/**
 * Creates a new delivery order
 */
CREATE PROCEDURE sp_create_order(
    IN p_customer_id BIGINT,
    IN p_vehicle_type ENUM('BICYCLE', 'MOTORBIKE', 'CAR'),
    IN p_pickup_latitude DECIMAL(10, 8),
    IN p_pickup_longitude DECIMAL(11, 8),
    IN p_pickup_address TEXT,
    IN p_recipient_name VARCHAR(255),
    IN p_recipient_phone VARCHAR(20),
    OUT p_order_id BIGINT
)
BEGIN
    DECLARE v_order_number VARCHAR(255);
    
    -- Generate unique order number
    SET v_order_number = CONCAT('ORD', DATE_FORMAT(NOW(), '%y%m%d'), LPAD(FLOOR(RAND() * 10000), 4, '0'));
    
    START TRANSACTION;
    
    -- Create order
    INSERT INTO Orders (
        order_number,
        customer_id,
        vehicle_type,
        order_status,
        payment_status
    ) VALUES (
        v_order_number,
        p_customer_id,
        p_vehicle_type,
        'STANDBY',
        'PENDING'
    );
    
    SET p_order_id = LAST_INSERT_ID();
    
    INSERT INTO Delivery_Details (
        order_id,
        pickup_latitude,
        pickup_longitude,
        pickup_address_text,
        pickup_time,
        recipient_name,
        recipient_phone_number
    ) VALUES (
        p_order_id,
        p_pickup_latitude,
        p_pickup_longitude,
        p_pickup_address,
        'ASAP',
        p_recipient_name,
        p_recipient_phone
    );
    
    COMMIT;
END //

DROP PROCEDURE IF EXISTS sp_add_order_destination//

/**
 * Add Order Destination
 * Adds a destination to an existing order
 */
CREATE PROCEDURE sp_add_order_destination(
    IN p_order_id BIGINT,
    IN p_destination_latitude DECIMAL(10, 8),
    IN p_destination_longitude DECIMAL(11, 8),
    IN p_address_text VARCHAR(255),
    IN p_recipient_name VARCHAR(255),
    IN p_recipient_phone VARCHAR(255),
    IN p_sequence INT
)
BEGIN
    INSERT INTO Destinations (
        order_id,
        destination_latitude,
        destination_longitude,
        destination_address_text,
        recipient_name,
        recipient_phone_number,
        sequence,
        status
    ) VALUES (
        p_order_id,
        p_destination_latitude,
        p_destination_longitude,
        p_address_text,
        p_recipient_name,
        p_recipient_phone,
        p_sequence,
        'PENDING'
    );
END //

DROP PROCEDURE IF EXISTS sp_process_order_review//

/**
 * Process Order Review
 * Adds a review for a completed order
 */
CREATE PROCEDURE sp_process_order_review(
    IN p_order_id BIGINT,
    IN p_user_id BIGINT,
    IN p_review TEXT,
    IN p_rate INT
)
BEGIN
    DECLARE v_rider_id BIGINT;
    
    -- Get rider_id from order
    SELECT rider_id INTO v_rider_id
    FROM Orders
    WHERE order_id = p_order_id
    AND order_status = 'DELIVERED';
    
    IF v_rider_id IS NOT NULL THEN
        INSERT INTO Reviews (
            user_id,
            rider_id,
            order_id,
            review,
            rate
        ) VALUES (
            p_user_id,
            v_rider_id,
            p_order_id,
            p_review,
            p_rate
        );
    END IF;
END //

-- =================================================================
-- 
--                REPORTING PROCEDURES
--
-- =================================================================

DROP PROCEDURE IF EXISTS sp_get_rider_performance//

/**
 * Get Rider Performance
 * Retrieves performance metrics for a rider
 */
CREATE PROCEDURE sp_get_rider_performance(
    IN p_rider_id BIGINT,
    IN p_start_date DATE,
    IN p_end_date DATE
)
BEGIN
    SELECT 
        r.rider_id,
        CONCAT(u.first_name, ' ', u.last_name) as rider_name,
        COUNT(DISTINCT o.order_id) as total_orders,
        COUNT(DISTINCT CASE WHEN o.order_status = 'DELIVERED' THEN o.order_id END) as completed_orders,
        COUNT(DISTINCT CASE WHEN o.order_status = 'CANCELED' THEN o.order_id END) as canceled_orders,
        ROUND(AVG(rev.rate), 2) as average_rating,
        COUNT(DISTINCT rev.review_id) as total_reviews
    FROM Riders r
    JOIN Users u ON r.user_id = u.user_id
    LEFT JOIN Orders o ON r.rider_id = o.rider_id
        AND DATE(o.created_at) BETWEEN p_start_date AND p_end_date
    LEFT JOIN Reviews rev ON r.rider_id = rev.rider_id
        AND DATE(rev.created_at) BETWEEN p_start_date AND p_end_date
    WHERE r.rider_id = p_rider_id
    GROUP BY r.rider_id, u.first_name, u.last_name;
END //

DELIMITER ;


CALL sp_get_active_riders_in_radius(-33.8688, 151.2093, 5); 