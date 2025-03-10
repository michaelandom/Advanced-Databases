USE db;

-- Active Riders View
CREATE OR REPLACE VIEW active_riders_view AS
SELECT 
    r.rider_id,
    u.first_name,
    u.last_name,
    u.email,
    u.phone,
    r.is_online,
    r.latitude,
    r.longitude,
    r.last_location_time,
    r.status
FROM Riders r
JOIN Users u ON r.user_id = u.user_id
WHERE r.is_deleted = FALSE 
AND r.is_suspend = FALSE 
AND r.is_online = TRUE
AND r.status = 'ACTIVE';

-- Order Summary View
CREATE OR REPLACE VIEW order_summary_view AS
SELECT 
    o.order_id,
    o.order_number,
    o.customer_id,
    CONCAT(u.first_name, ' ', u.last_name) as customer_name,
    o.total_price,
    o.total_distance,
    o.order_status,
    o.payment_status,
    o.vehicle_type,
    o.created_at,
    o.completed_at,
    CONCAT(ru.first_name, ' ', ru.last_name) as rider_name,
    r.rider_id
FROM Orders o
LEFT JOIN Users u ON o.customer_id = u.user_id
LEFT JOIN Riders r ON o.rider_id = r.rider_id
LEFT JOIN Users ru ON r.user_id = ru.user_id;

-- Rider Performance View
CREATE OR REPLACE VIEW rider_performance_view AS
SELECT 
    r.rider_id,
    CONCAT(u.first_name, ' ', u.last_name) as rider_name,
    COUNT(DISTINCT o.order_id) as total_orders,
    COUNT(DISTINCT CASE WHEN o.order_status = 'DELIVERED' THEN o.order_id END) as completed_orders,
    AVG(rev.rate) as average_rating,
    COUNT(DISTINCT rev.review_id) as total_reviews,
    SUM(o.total_distance) as total_distance_covered,
    SUM(rp.price) as total_earnings
FROM Riders r
JOIN Users u ON r.user_id = u.user_id
LEFT JOIN Orders o ON r.rider_id = o.rider_id
LEFT JOIN Reviews rev ON r.rider_id = rev.rider_id
LEFT JOIN Rider_Payments rp ON r.rider_id = rp.rider_id
GROUP BY r.rider_id, u.first_name, u.last_name;

-- Business Account Users View
CREATE OR REPLACE VIEW business_users_view AS
SELECT 
    u.user_id,
    u.username,
    u.first_name,
    u.last_name,
    u.email,
    u.phone,
    ba.company_name,
    ba.company_ABN,
    ba.logo_url,
    u.account_status,
    u.created_at
FROM Users u
JOIN Bussiness_Accounts ba ON u.bussiness_account_id = ba.bussiness_account_id
WHERE ba.is_active = TRUE;

-- Delivery Status View
CREATE OR REPLACE VIEW delivery_status_view AS
SELECT 
    o.order_id,
    o.order_number,
    MAX(dd.pickup_address_text) as pickup_address_text,
    MAX(dd.pickup_date_time) as pickup_date_time,
    MAX(dd.picked_up_date_time) as picked_up_date_time,
    GROUP_CONCAT(DISTINCT d.destination_address_text ORDER BY d.sequence SEPARATOR ' -> ') as delivery_route,
    MAX(o.order_status) as order_status,
    MAX(o.total_distance) as total_distance,
    MAX(o.total_price) as total_price,
    MAX(CONCAT(u.first_name, ' ', u.last_name)) as rider_name,
    MAX(o.created_at) as created_at,
    MAX(o.completed_at) as completed_at,
    COUNT(DISTINCT d.destination_id) as total_destinations,
    GROUP_CONCAT(
        CASE 
            WHEN d.status = 'COMPLETED' THEN d.destination_address_text 
        END 
        ORDER BY d.sequence SEPARATOR ' -> '
    ) as completed_destinations,
    GROUP_CONCAT(
        CASE 
            WHEN d.status = 'PENDING' THEN d.destination_address_text 
        END 
        ORDER BY d.sequence SEPARATOR ' -> '
    ) as pending_destinations
FROM Orders o
JOIN Delivery_Details dd ON o.order_id = dd.order_id
JOIN Destinations d ON o.order_id = d.order_id
LEFT JOIN Riders r ON o.rider_id = r.rider_id
LEFT JOIN Users u ON r.user_id = u.user_id
GROUP BY o.order_id;

-- Customer Order History View
CREATE OR REPLACE VIEW customer_order_history_view AS
SELECT 
    u.user_id,
    CONCAT(u.first_name, ' ', u.last_name) as customer_name,
    COUNT(DISTINCT o.order_id) as total_orders,
    SUM(o.total_price) as total_spent,
    COUNT(DISTINCT CASE WHEN o.order_status = 'DELIVERED' THEN o.order_id END) as completed_orders,
    COUNT(DISTINCT CASE WHEN o.order_status = 'CANCELED' THEN o.order_id END) as cancelled_orders,
    MAX(o.created_at) as last_order_date
FROM Users u
LEFT JOIN Orders o ON u.user_id = o.customer_id
GROUP BY u.user_id;

-- Active Coupon View
CREATE OR REPLACE VIEW active_coupons_view AS
SELECT 
    c.coupon_id,
    c.discount_type,
    c.discount_amount,
    c.discount_percentage,
    c.maximum_discount_amount,
    c.minimum_purchase_price,
    c.start_date,
    c.end_date,
    c.issued_to,
    c.code,
    c.number_of_issued_coupons,
    c.number_of_used_coupons,
    CONCAT(u.first_name, ' ', u.last_name) as created_by_user
FROM Coupons c
JOIN Users u ON c.created_by = u.user_id
WHERE c.end_date > NOW();

-- Rider Vehicle Information View
CREATE OR REPLACE VIEW rider_vehicle_view AS
SELECT 
    r.rider_id,
    CONCAT(u.first_name, ' ', u.last_name) as rider_name,
    v.vehicle_type,
    v.manufacturer,
    v.model_year,
    v.driver_license,
    v.insurance_policy,
    v.driver_license_valid_from,
    v.driver_license_valid_to,
    v.insurance_policy_valid_from,
    v.insurance_policy_valid_to
FROM Riders r
JOIN Users u ON r.user_id = u.user_id
JOIN Vehicles v ON r.rider_id = v.rider_id
WHERE v.is_current_vehicle = TRUE;

-- Order Revenue Analysis View
CREATE OR REPLACE VIEW order_revenue_analysis_view AS
SELECT 
    DATE(o.created_at) as order_date,
    o.vehicle_type,
    COUNT(o.order_id) as total_orders,
    SUM(o.total_price) as total_revenue,
    AVG(o.total_price) as average_order_value,
    SUM(o.total_distance) as total_distance,
    COUNT(DISTINCT o.customer_id) as unique_customers,
    COUNT(DISTINCT o.rider_id) as unique_riders
FROM Orders o
GROUP BY DATE(o.created_at), o.vehicle_type;

-- Rider Payment Summary View
CREATE OR REPLACE VIEW rider_payment_summary_view AS
SELECT 
    rp.payment_cycle,
    COUNT(DISTINCT rp.rider_id) as total_riders,
    SUM(rp.price) as total_payment_amount,
    SUM(rp.distance) as total_distance,
    COUNT(CASE WHEN rp.is_paid = TRUE THEN 1 END) as paid_riders,
    COUNT(CASE WHEN rp.is_paid = FALSE THEN 1 END) as unpaid_riders
FROM Rider_Payments rp
GROUP BY rp.payment_cycle;

-- Rider Quiz Results View
CREATE OR REPLACE VIEW rider_quiz_results_view AS
SELECT 
    ra.rider_answer_id,
    r.rider_id,
    CONCAT(u.first_name, ' ', u.last_name) as rider_name,
    q.question_id,
    q.question_text,
    q.image_url as question_image,
    qo.question_option as selected_answer,
    qo.is_correct as is_answer_correct,
    CASE 
        WHEN qo.is_correct = TRUE THEN 'Correct'
        ELSE 'Incorrect'
    END as answer_status,
    ra.quiz_key,
    (
        SELECT COUNT(*) 
        FROM Rider_Answers ra2 
        JOIN Question_Options qo2 ON ra2.option_id = qo2.question_option_id
        WHERE ra2.rider_id = ra.rider_id 
        AND ra2.quiz_key = ra.quiz_key 
        AND qo2.is_correct = TRUE
    ) as correct_answers_count,
    (
        SELECT COUNT(DISTINCT q2.question_id)
        FROM Questions q2
        JOIN Question_Options qo2 ON q2.question_id = qo2.question_id
        WHERE qo2.is_correct = TRUE
    ) as total_questions,
    ra.created_at as answered_at
FROM Rider_Answers ra
JOIN Riders r ON ra.rider_id = r.rider_id
JOIN Users u ON r.user_id = u.user_id
JOIN Question_Options qo ON ra.option_id = qo.question_option_id
JOIN Questions q ON qo.question_id = q.question_id
ORDER BY ra.rider_id, ra.quiz_key, q.question_id;

-- Rider Quiz Summary View
CREATE OR REPLACE VIEW rider_quiz_summary_view AS
SELECT 
    r.rider_id,
    CONCAT(u.first_name, ' ', u.last_name) as rider_name,
    ra.quiz_key,
    COUNT(DISTINCT q.question_id) as questions_attempted,
    SUM(CASE WHEN qo.is_correct = TRUE THEN 1 ELSE 0 END) as correct_answers,
    (
        SELECT COUNT(DISTINCT q2.question_id)
        FROM Questions q2
        JOIN Question_Options qo2 ON q2.question_id = qo2.question_id
        WHERE qo2.is_correct = TRUE
    ) as total_questions,
    ROUND(
        (SUM(CASE WHEN qo.is_correct = TRUE THEN 1 ELSE 0 END) / 
        COUNT(DISTINCT q.question_id)) * 100, 
        2
    ) as score_percentage,
    CASE 
        WHEN (SUM(CASE WHEN qo.is_correct = TRUE THEN 1 ELSE 0 END) / 
             COUNT(DISTINCT q.question_id)) >= 0.60 
        THEN 'PASSED'
        ELSE 'FAILED'
    END as quiz_status,
    MIN(ra.created_at) as started_at,
    MAX(ra.created_at) as completed_at
FROM Riders r
JOIN Users u ON r.user_id = u.user_id
JOIN Rider_Answers ra ON r.rider_id = ra.rider_id
JOIN Question_Options qo ON ra.option_id = qo.question_option_id
JOIN Questions q ON qo.question_id = q.question_id
GROUP BY r.rider_id, u.first_name, u.last_name, ra.quiz_key; 