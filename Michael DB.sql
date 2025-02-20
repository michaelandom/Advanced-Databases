CREATE TABLE IF NOT EXISTS `Sso_Providers` (
                                               `sso_provider_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                               `sso_provider` VARCHAR(255) NOT NULL UNIQUE,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
    );

CREATE TABLE IF NOT EXISTS `Billing_Address` (
                                                 `billing_address_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                 `billing_email` VARCHAR(255),
    `billing_street_address` TEXT,
    `billing_street_address_2` TEXT,
    `billing_state` VARCHAR(255),
    `billing_postcode` VARCHAR(10), -- Use VARCHAR for postal codes
    `billing_suburb` VARCHAR(255),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
    );

CREATE TABLE IF NOT EXISTS `Bussiness_Accounts` (
                                                    `bussiness_account_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                    `company_ABN` VARCHAR(20) NOT NULL,
    `company_name` VARCHAR(255) NOT NULL,
    `logo_url` TEXT,
    `is_active` BOOLEAN NOT NULL,
    `billing_address_id` BIGINT ,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`billing_address_id`) REFERENCES `Billing_Address`(`billing_address_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Users` (
                                       `user_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                       `username` VARCHAR(100) NOT NULL UNIQUE,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `date_of_birth` DATE NOT NULL,
    `gender` ENUM('MALE', 'FEMALE', 'OTHER') NOT NULL,
    `email` VARCHAR(255) UNIQUE,
    `email_verified` BOOLEAN NOT NULL DEFAULT FALSE,
    `phone` VARCHAR(20),
    `phone_verified` BOOLEAN NOT NULL DEFAULT FALSE,
    `password_hash` TEXT NOT NULL,
    `last_login` DATETIME,
    `account_type` ENUM('STANDARD', 'SSO') NOT NULL DEFAULT 'STANDARD',
    `sso_provider_id` BIGINT,
    `billing_address_id` BIGINT,
    `bussiness_account_id` BIGINT,
    `request_for_delete_at` DATETIME,
    `deactivated_date` DATETIME,
    `profile_picture` TEXT,
    `account_status` ENUM('PENDING', 'ACTIVE', 'SUSPENDED', 'DORMANT', 'DELETED') NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`sso_provider_id`) REFERENCES `Sso_Providers`(`sso_provider_id`),
    FOREIGN KEY (`billing_address_id`) REFERENCES `Billing_Address`(`billing_address_id`),
    FOREIGN KEY (`bussiness_account_id`) REFERENCES `Bussiness_Accounts`(`bussiness_account_id`)
    );

CREATE TABLE IF NOT EXISTS `Groups` (
                                        `group_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                        `name` VARCHAR(255) NOT NULL UNIQUE,
    `description` TEXT NOT NULL,
    `group_type` ENUM('PERMISSION','EVENT') NOT NULL DEFAULT 'PERMISSION',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
    );

CREATE TABLE IF NOT EXISTS `Group_Members` (
                                               `group_member_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                               `group_id` BIGINT NOT NULL,
                                               `user_id` BIGINT NOT NULL,
                                               `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                               `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
                                               FOREIGN KEY (`group_id`) REFERENCES `Groups`(`group_id`) ON DELETE CASCADE,
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Permissions` (
                                             `permission_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                             `permission_name` VARCHAR(255) NOT NULL UNIQUE,
    `description` TEXT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
    );


CREATE TABLE IF NOT EXISTS `Group_Permissions` (
                                                   `group_permission_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                   `group_id` BIGINT NOT NULL,
                                                   `permission_id` BIGINT NOT NULL,
                                                   `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                                   `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
                                                   FOREIGN KEY (`group_id`) REFERENCES `Groups`(`group_id`) ON DELETE CASCADE,
    FOREIGN KEY (`permission_id`) REFERENCES `Permissions`(`permission_id`) ON DELETE CASCADE
    );


CREATE TABLE IF NOT EXISTS `Password_Resets` (
                                                 `password_reset_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                 `user_id` BIGINT NOT NULL,
                                                 `is_Active` BOOLEAN NOT NULL DEFAULT TRUE,
                                                 `code` VARCHAR(50) NOT NULL,
    `reseated_by` BIGINT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE,
    FOREIGN KEY (`reseated_by`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Delete_Requests` (
                                                 `delete_request_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                 `user_id` BIGINT NOT NULL,
                                                 `reason` ENUM('OTHER') NOT NULL,
    `note` TEXT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Events` (
                                        `event_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                        `title` TEXT NOT NULL,
                                        `link` TEXT,
                                        `contents` TEXT,
                                        `start_date` DATETIME NOT NULL,
                                        `end_date` DATETIME,
                                        `send_push_notification` BOOLEAN NOT NULL DEFAULT FALSE,
                                        `banner_image` TEXT NOT NULL,
                                        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                        `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `Event_Groups` (
                                              `event_group_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                              `event_id` BIGINT NOT NULL,
                                              `group_id` BIGINT NOT NULL,
                                              `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                              `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
                                              FOREIGN KEY (`group_id`) REFERENCES `Groups`(`group_id`) ON DELETE CASCADE,
    FOREIGN KEY (`event_id`) REFERENCES `Events`(`event_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Faq` (
                                     `id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                     `question` TEXT NOT NULL,
                                     `answer` TEXT NOT NULL,
                                     `isForRider` BOOLEAN DEFAULT FALSE,
                                     `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                     `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `Coupons` (
                                         `coupon_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                         `discount_type` ENUM('PERCENTAGE', 'FLATRATE') NOT NULL,
    `discount_amount` FLOAT(53) NULL,
    `discount_percentage` FLOAT(53) NULL,
    `maximum_discount_amount` FLOAT(53) DEFAULT 0,
    `minimum_purchase_price` FLOAT(53) NOT NULL,
    `start_date` DATETIME NOT NULL,
    `end_date` DATETIME NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `issued_to` ENUM('MEMBER', 'GENERAL') NOT NULL,
    `how_user_was_added` ENUM('MANUAL', 'IMPORT') NOT NULL,
    `code` VARCHAR(255) NULL,
    `number_of_issued_coupons` BIGINT NOT NULL DEFAULT 0,
    `number_of_used_coupons` BIGINT NOT NULL DEFAULT 0,
    `excel_file` TEXT NULL,
    `created_by` BIGINT NOT NULL,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`created_by`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `User_Coupons` (
                                              `user_coupon_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                              `coupon_id` BIGINT NOT NULL,
                                              `user_id` BIGINT NOT NULL,
                                              `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                              `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
                                              FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE,
    FOREIGN KEY (`coupon_id`) REFERENCES `Coupons`(`coupon_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Riders` (
                                        `rider_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                        `user_id` BIGINT UNIQUE NOT NULL,
                                        `latitude` FLOAT,
                                        `longitude` FLOAT,
                                        `is_online` BOOLEAN DEFAULT FALSE,
                                        `is_deleted` BOOLEAN DEFAULT FALSE,
                                        `is_suspend` BOOLEAN DEFAULT FALSE,
                                        `passed_quiz` BOOLEAN DEFAULT FALSE,
                                        `profile_completed` BOOLEAN DEFAULT FALSE,
                                        `status` ENUM('PENDING', 'APPROVED', 'REJECTED', 'DORMANT', 'DELETED', 'SUSPENDED', 'ACTIVE', 'INACTIVE') DEFAULT 'PENDING',
    `last_location_time` TIMESTAMP NULL,
    `emergency_contact_first_name` VARCHAR(255) NOT NULL,
    `emergency_contact_last_name` VARCHAR(255) NOT NULL,
    `emergency_contact_phone_number` VARCHAR(20) NOT NULL,
    `bank_name` VARCHAR(255) NOT NULL,
    `bsb_number` VARCHAR(10) NOT NULL,
    `account_number` VARCHAR(20) NOT NULL,
    `last_exam_take_time` TIMESTAMP NULL,
    `is_approved` BOOLEAN DEFAULT FALSE,
    `is_rejected` BOOLEAN DEFAULT FALSE,
    `visa_valid_from` TIMESTAMP NULL,
    `visa_valid_to` TIMESTAMP NULL,
    `admin_note` TEXT,
    `rejected_at` TIMESTAMP NULL,
    `approved_at` TIMESTAMP NULL,
    `signature` TEXT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Vehicles` (
                                          `vehicle_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                          `rider_id` BIGINT NOT NULL,
                                          `is_current_vehicle` BOOLEAN DEFAULT FALSE,
                                          `vehicle_type` ENUM('BICYCLE', 'MOTORBIKE', 'CAR') NOT NULL,
    `model_year` VARCHAR(4),
    `manufacturer` VARCHAR(255),
    `transport_photo` VARCHAR(255) NOT NULL,
    `driver_license` VARCHAR(255),
    `insurance_policy` VARCHAR(255),
    `driver_license_valid_from` TIMESTAMP NULL,
    `driver_license_valid_to` TIMESTAMP NULL,
    `insurance_policy_valid_from` TIMESTAMP NULL,
    `insurance_policy_valid_to` TIMESTAMP NULL,
    `expiry_date` TIMESTAMP NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    `unique_is_current_vehicle_check` VARCHAR(50) GENERATED ALWAYS AS (
                                                                          CASE WHEN is_current_vehicle = TRUE
                                                                          THEN "CURRENT_VEHICLE"
                                                                          ELSE NULL
                                                                          END
                                                                      ) STORED,
    UNIQUE (`rider_id`,`unique_is_current_vehicle_check`),
    FOREIGN KEY (`rider_id`) REFERENCES `Riders`(`rider_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Penalities` (
                                            `penalitie_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                            `rider_id` BIGINT NOT NULL,
                                            `reason` VARCHAR(255) NOT NULL,
    `deducted_amount` FLOAT,
    `description` TEXT,
    `order_number` VARCHAR(255),
    `is_warning` BOOLEAN DEFAULT FALSE,
    `is_active` BOOLEAN DEFAULT TRUE,
    `admin_id` BIGINT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`rider_id`) REFERENCES `Riders`(`rider_id`) ON DELETE CASCADE,
    FOREIGN KEY (`admin_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Suspensions` (
                                             `suspension_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                             `rider_id` BIGINT NOT NULL,
                                             `reason` VARCHAR(255) NOT NULL,
    `is_system_suspenstion` BOOLEAN DEFAULT FALSE,
    `reason_type` ENUM('PENALTY_ISSUE', 'PROFILE_ISSUE') DEFAULT 'PENALTY_ISSUE',
    `starting_from` TIMESTAMP NOT NULL,
    `ending_at` TIMESTAMP NULL,
    `is_active` BOOLEAN DEFAULT TRUE,
    `suspened_by` BIGINT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`rider_id`) REFERENCES `Riders`(`rider_id`) ON DELETE CASCADE,
    FOREIGN KEY (`suspened_by`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE
    );


CREATE TABLE IF NOT EXISTS `Questions` (
                                           `question_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                           `image` VARCHAR(255),
    `question_text` VARCHAR(255) NOT NULL,
    `description` TEXT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
    );

CREATE TABLE IF NOT EXISTS `Question_Options` (
                                                  `question_option_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                  `question_id` BIGINT NOT NULL,
                                                  `option` VARCHAR(255) NOT NULL,
    `description` TEXT,
    `is_correct` BOOLEAN DEFAULT FALSE,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`question_id`) REFERENCES `Questions`(`question_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Rider_Answers` (
                                               `rider_answer_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                               `rider_id` BIGINT NOT NULL,
                                               `option_id` BIGINT NOT NULL,
                                               `quiz_key` ENUM('INITIAL_QUIZ', 'SECOND_QUIZ', 'FINAL_QUIZ', 'UNAVAILABLE') DEFAULT 'INITIAL_QUIZ',
    `is_correct` BOOLEAN DEFAULT FALSE,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`rider_id`) REFERENCES `Riders`(`rider_id`) ON DELETE CASCADE,
    FOREIGN KEY (`option_id`) REFERENCES `Question_Options`(`question_option_id`) ON DELETE CASCADE
    );


CREATE TABLE IF NOT EXISTS `Orders` (
                                        `order_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                        `order_number` VARCHAR(255) UNIQUE NOT NULL,
    `customer_id` BIGINT,
    `customer_full_name` VARCHAR(255),
    `message` TEXT,
    `customer_phone_number` VARCHAR(20),
    `coupon_id` BIGINT,
    `rider_id` BIGINT NULL,
    `total_price` FLOAT DEFAULT 0,
    `total_distance` FLOAT DEFAULT 0,
    `boosted_by` FLOAT NULL,
    `estimated_total_time` INT DEFAULT 0,
    `age_limit` BOOLEAN DEFAULT FALSE,
    `delivery_details` BIGINT,
    `vehicle_type` ENUM('BICYCLE', 'MOTORBIKE', 'CAR') NOT NULL,
    `order_status` ENUM('STANDBY', 'BOOKED', 'MATCHED', 'DELIVERING', 'DELIVERED', 'CANCELED') NOT NULL,
    `refund_at` TIMESTAMP NULL,
    `review_id` BIGINT NULL,
    `card_number` VARCHAR(255),
    `completed_at` TIMESTAMP NULL,
    `payment_status` ENUM('PENDING', 'COMPLETED', 'REFUNDED') DEFAULT 'PENDING',
    `paid_at` TIMESTAMP NULL,
    `boosted_payment_at` TIMESTAMP NULL,
    `delivered_at` TIMESTAMP NULL,
    `ready_for_assignment_at` TIMESTAMP NULL,
    `assigned_at` TIMESTAMP NULL,
    `is_forced_assignment` BOOLEAN DEFAULT FALSE,
    `boosted` BOOLEAN DEFAULT FALSE,
    `created_by_admin` BOOLEAN DEFAULT FALSE,
    `canceled_at` TIMESTAMP NULL,
    `assigned_by` BIGINT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`rider_id`) REFERENCES `Riders`(`rider_id`) ON DELETE SET NULL,
    FOREIGN KEY (`customer_id`) REFERENCES `Users`(`user_id`) ON DELETE SET NULL,
    FOREIGN KEY (`assigned_by`) REFERENCES `Users`(`user_id`) ON DELETE SET NULL
    );

CREATE TABLE IF NOT EXISTS `Reviews` (
                                         `review_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                         `user_id` BIGINT NOT NULL,
                                         `rider_id` BIGINT NOT NULL,
                                         `order_id` BIGINT NOT NULL,
                                         `review` TEXT,
                                         `rate` INT NOT NULL CHECK (rate BETWEEN 1 AND 5),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE (rider_id,order_id),
    FOREIGN KEY (`rider_id`) REFERENCES `Riders`(`rider_id`) ON DELETE CASCADE,
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE,
    FOREIGN KEY (`order_id`) REFERENCES `Orders`(`order_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Cancellation_Request` (
                                                      `cancellation_request_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                      `type` ENUM('FULL', 'PARTIAL') NOT NULL,
    `status` ENUM('PENDING', 'APPROVED', 'REJECTED') DEFAULT 'PENDING',
    `cancellation_fee` FLOAT,
    `refund_amount` FLOAT,
    `reason` VARCHAR(255) NOT NULL,
    `photos` JSON,
    `remark` TEXT NOT NULL,
    `cancelled_by_type` ENUM('USER', 'RIDER', 'ADMIN') NOT NULL,
    `cancelled_by` BIGINT,
    `paid_at` TIMESTAMP NULL,
    `order_id` BIGINT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT check_cancellation_request_photos CHECK (
                                                           JSON_TYPE(photos) = 'ARRAY' AND
    JSON_SCHEMA_VALID('{
            "type": "array",
            "items": {
                "type": "string"
            }
        }', photos)
    ),
    FOREIGN KEY (`order_id`) REFERENCES `Orders`(`order_id`) ON DELETE CASCADE,
    FOREIGN KEY (`cancelled_by`) REFERENCES `Users`(`user_id`) ON DELETE SET NULL
    );

CREATE TABLE IF NOT EXISTS `Cancellation_Rider_Requests` (
                                                             `cancellation_rider_request_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                             `status` ENUM('PENDING', 'APPROVED', 'REJECTED') DEFAULT 'PENDING',
    `reason` VARCHAR(255) NOT NULL,
    `photo_urls` JSON NOT NULL,
    `remark` TEXT,
    `cancelled_by` BIGINT,
    `response_at` TIMESTAMP NULL,
    `response_by` VARCHAR(255),
    `order_id` BIGINT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT check_photos CHECK (
                                      JSON_TYPE(photo_urls) = 'ARRAY' AND
    JSON_SCHEMA_VALID('{
            "type": "array",
            "items": {
                "type": "string"
            }
        }', photo_urls)
    ),
    FOREIGN KEY (`order_id`) REFERENCES `Orders`(`order_id`) ON DELETE CASCADE,
    FOREIGN KEY (`cancelled_by`) REFERENCES `Users`(`user_id`) ON DELETE SET NULL
    );

CREATE TABLE IF NOT EXISTS `Extr_Fees` (
                                           `extr_fee_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                           `message` TEXT,
                                           `amount` FLOAT NOT NULL,
                                           `card_number` VARCHAR(255) NOT NULL,
    `payment_status` ENUM('PENDING', 'COMPLETED', 'FAILED') DEFAULT 'PENDING',
    `paid_at` TIMESTAMP NULL,
    `sent_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `order_id` BIGINT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`order_id`) REFERENCES `Orders`(`order_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Destinations` (
                                              `destination_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                              `destination_latitude` FLOAT NOT NULL,
                                              `destination_longitude` FLOAT NOT NULL,
                                              `destination_address_text` VARCHAR(255),
    `sequence` INT NOT NULL,
    `recipient_phone_number` VARCHAR(255),
    `price` FLOAT DEFAULT 0,
    `estimated_time` INT DEFAULT 0,
    `safe_storage` VARCHAR(255),
    `specific_recipient` VARCHAR(255),
    `recipient_name` VARCHAR(255),
    `order_id` BIGINT NOT NULL,
    `status` ENUM('PENDING', 'COMPLETED', 'CANCELLED') DEFAULT 'PENDING',
    `delivery_by_id` BIGINT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`order_id`) REFERENCES `Orders`(`order_id`) ON DELETE CASCADE,
    FOREIGN KEY (`delivery_by_id`) REFERENCES `Riders`(`rider_id`) ON DELETE SET NULL
    );
CREATE TABLE IF NOT EXISTS `Delivery_Details` (
                                                  `delivery_detail_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                  `pickup_latitude` FLOAT NOT NULL,
                                                  `pickup_longitude` FLOAT NOT NULL,
                                                  `pickup_address_text` VARCHAR(255),
    `estimated_time` INT DEFAULT 0,
    `pickup_time` ENUM('MORNING', 'AFTERNOON', 'EVENING') NOT NULL,
    `pickup_date_time` TIMESTAMP NULL,
    `picked_up_date_time` TIMESTAMP NULL,
    `desired_arrival_date_time` TIMESTAMP NULL,
    `picked_up_by` VARCHAR(255),
    `picked_up_notes` TEXT,
    `recipient_phone_number` VARCHAR(255),
    `recipient_name` VARCHAR(255),
    `pickup_photo_urls` JSON NOT NULL,
    `order_id` BIGINT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT check_pickup_photos CHECK (
                                             JSON_TYPE(pickup_photo_urls) = 'ARRAY' AND
    JSON_SCHEMA_VALID('{
            "type": "array",
            "items": {
                "type": "string"
            }
        }', pickup_photo_urls)
    ),
    FOREIGN KEY (`order_id`) REFERENCES `Orders`(`order_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Evidences` (
                                           `evidence_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                           `destination_id` BIGINT UNIQUE NOT NULL,
                                           `urls` JSON NOT NULL,
                                           `recipient_name` VARCHAR(255),
    `recipient_DOB` TIMESTAMP,
    `note` TEXT,
    `time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT check_urls CHECK (
                                    JSON_TYPE(urls) = 'ARRAY' AND
    JSON_SCHEMA_VALID('{
            "type": "array",
            "items": {
                "type": "string"
            }
        }', urls)
    ),
    FOREIGN KEY (`destination_id`) REFERENCES `Destinations`(`destination_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `References` (
                                            `reference_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                            `order_ids` JSON NOT NULL,
                                            `amount` FLOAT NOT NULL,
                                            `currency` VARCHAR(255) NOT NULL,
    `psp_reference` VARCHAR(255),
    `payment_method` VARCHAR(255),
    `result_json` JSON NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT check_order_ids CHECK (
                                         JSON_TYPE(order_ids) = 'ARRAY' AND
    JSON_SCHEMA_VALID('{
            "type": "array",
            "items": {
                "type": "integer",
                "minimum": 0,
                "maximum": 18446744073709551615
            }
        }', order_ids)
    )
    );

CREATE TABLE IF NOT EXISTS `Size_And_Weight_Descriptions` (
                                                              `size_weight_description_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                              `size` ENUM('SMALL', 'MEDIUM', 'LARGE') NOT NULL,
    `size_description` TEXT NOT NULL,
    `weight` VARCHAR(255) NOT NULL,
    `is_latest` BOOLEAN DEFAULT TRUE,
    `previous_id` BIGINT ,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    `unique_size_check` VARCHAR(50) GENERATED ALWAYS AS (
                                                            CASE WHEN is_latest = TRUE
                                                            THEN size
                                                            ELSE NULL
                                                            END
                                                        ) STORED,
    UNIQUE (`unique_size_check`),
    FOREIGN KEY (`previous_id`) REFERENCES `Size_And_Weight_Descriptions`(`size_weight_description_id`)
    );
CREATE TABLE IF NOT EXISTS `Items` (
                                       `item_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                       `name` VARCHAR(255) NOT NULL,
    `size_weight_description_id` BIGINT NOT NULL,
    `item_classification` JSON NOT NULL,
    `photo_urls` JSON NOT NULL,
    `destination_id` BIGINT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT check_item_photos CHECK (
                                           JSON_TYPE(photo_urls) = 'ARRAY' AND
    JSON_SCHEMA_VALID('{
            "type": "array",
            "items": {
                "type": "string"
            }
        }', photo_urls)
    ),
    CONSTRAINT check_item_classification CHECK (
                                                   JSON_TYPE(item_classification) = 'ARRAY' AND
    JSON_SCHEMA_VALID('{
            "type": "array",
            "items": {
                "type": "string",
                "enum": [
                    "FRAGILE",
                    "LOW_TEMPERATURE",
                    "HEAVY_ITEM",
                    "HI_VIS_VEST_REQUIREMENT",
                    "ALCOHOL_TOBACCO_18_PLUS"
                ]
            }
        }', item_classification)
    ),
    FOREIGN KEY (`destination_id`) REFERENCES `Destinations`(`destination_id`) ON DELETE CASCADE,
    FOREIGN KEY (`size_weight_description_id`) REFERENCES `Size_And_Weight_Descriptions`(`size_weight_description_id`)
    );

CREATE TABLE IF NOT EXISTS `Note_Delivery_Details` (
                                                       `note_delivery_detail_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                       `note` TEXT NOT NULL,
                                                       `photo_urls` JSON NOT NULL,
                                                       `delivery_detail_id` BIGINT NOT NULL,
                                                       `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                                       `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
                                                       CONSTRAINT check_note_photos CHECK (
                                                       JSON_TYPE(photo_urls) = 'ARRAY' AND
    JSON_SCHEMA_VALID('{
            "type": "array",
            "items": {
                "type": "string"
            }
        }', photo_urls)
    ),
    FOREIGN KEY (`delivery_detail_id`) REFERENCES `Delivery_Details`(`delivery_detail_id`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Note_Destinations` (
                                                   `note_destination_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                   `note` TEXT NOT NULL,
                                                   `photo_urls` JSON NOT NULL,
                                                   `destination_id` BIGINT NOT NULL,
                                                   `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                                   `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
                                                   CONSTRAINT check_note_destination CHECK (
                                                   JSON_TYPE(photo_urls) = 'ARRAY' AND
    JSON_SCHEMA_VALID('{
            "type": "array",
            "items": {
                "type": "string"
            }
        }', photo_urls)
    ),
    FOREIGN KEY (`destination_id`) REFERENCES `Destinations`(`destination_id`) ON DELETE CASCADE
    );


CREATE TABLE IF NOT EXISTS `Advertisements` (
                                                `advertisement_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                `title` VARCHAR(255) NOT NULL,
    `content` TEXT NOT NULL,
    `image_url` TEXT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
    );

CREATE TABLE IF NOT EXISTS `User_Favorite_Address` (
                                                       `favorite_address_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                       `user_id` BIGINT  NOT NULL,
                                                       `long_address` TEXT NOT NULL,
                                                       `short_address` VARCHAR(255) NOT NULL,
    `custom_address` VARCHAR(255),
    `nick_name` VARCHAR(255),
    `latitude` FLOAT NOT NULL,
    `longitude` FLOAT NOT NULL,
    `address_type` ENUM('HOME', 'WORK', 'OTHER') NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE
    );


CREATE TABLE IF NOT EXISTS `Transport_Basic_Prices` (
                                                        `transport_basic_price_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                        `previous_id` BIGINT ,
                                                        `vehicle_type` ENUM('BICYCLE', 'MOTORBIKE', 'CAR') NOT NULL,
    `basic_price` FLOAT NOT NULL,
    `previous_basic_price` FLOAT,
    `price_per_minute` FLOAT NOT NULL,
    `pickuptime_asap_price` FLOAT NOT NULL,
    `pickuptime_2hours_price` FLOAT NOT NULL,
    `pickuptime_today_price` FLOAT NOT NULL,
    `pickuptime_otherday_price` FLOAT NOT NULL,
    `is_latest` BOOLEAN DEFAULT TRUE,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    `unique_transport_basic_prices_size_check` VARCHAR(50) GENERATED ALWAYS AS (
                                                                                   CASE WHEN is_latest = TRUE
                                                                                   THEN "LATEST"
                                                                                   ELSE NULL
                                                                                   END
                                                                               ) STORED,
    UNIQUE (`unique_transport_basic_prices_size_check`),
    FOREIGN KEY (`previous_id`) REFERENCES `Transport_Basic_Prices`(`transport_basic_price_id`)
    );



CREATE TABLE IF NOT EXISTS `Peak_Time_Rates` (
                                                 `peak_time_rate_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                 `is_weekend` BOOLEAN DEFAULT FALSE,
                                                 `start_time` VARCHAR(255) NOT NULL,
    `end_time` VARCHAR(255) NOT NULL,
    `rate` FLOAT NOT NULL,
    `is_latest` BOOLEAN DEFAULT TRUE,
    `is_deleted` BOOLEAN DEFAULT FALSE,
    `previous_id` BIGINT ,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    `unique_peak_time_rate_check` VARCHAR(50) GENERATED ALWAYS AS (
                                                                      CASE WHEN is_latest = TRUE
                                                                      THEN "LATEST"
                                                                      ELSE NULL
                                                                      END
                                                                  ) STORED,
    UNIQUE (`unique_peak_time_rate_check`),
    FOREIGN KEY (`previous_id`) REFERENCES `Peak_Time_Rates`(`peak_time_rate_id`)
    );




CREATE TABLE IF NOT EXISTS `Rider_Commissions` (
                                                   `rider_commission_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                   `basic_commission` FLOAT NOT NULL,
                                                   `overtime_rate` FLOAT NOT NULL,
                                                   `holiday_rate` FLOAT NOT NULL,
                                                   `is_latest` BOOLEAN DEFAULT TRUE,
                                                   `previous_id` BIGINT ,
                                                   `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                                   `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
                                                   `unique_rider_commission_check` VARCHAR(50) GENERATED ALWAYS AS (
                                                                                                                       CASE WHEN is_latest = TRUE
                                                                                                                       THEN "LATEST"
                                                                                                                       ELSE NULL
                                                                                                                       END
                                                                                                                   ) STORED,
    UNIQUE (`unique_rider_commission_check`),
    FOREIGN KEY (`previous_id`) REFERENCES `Rider_Commissions`(`rider_commission_id`)
    );

CREATE TABLE IF NOT EXISTS `Vehicle_Basic_Prices` (
                                                      `vehicle_basic_price_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                      `vehicle_type` ENUM('BICYCLE', 'MOTORBIKE', 'CAR')  NOT NULL,
    `price` FLOAT NOT NULL,
    `is_latest` BOOLEAN DEFAULT TRUE,
    `previous_id` BIGINT ,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    `unique_vehicle_type_check` VARCHAR(50) GENERATED ALWAYS AS (
                                                                    CASE WHEN is_latest = TRUE
                                                                    THEN vehicle_type
                                                                    ELSE NULL
                                                                    END
                                                                ) STORED,
    UNIQUE (`unique_vehicle_type_check`),
    FOREIGN KEY (`previous_id`) REFERENCES `Vehicle_Basic_Prices`(`vehicle_basic_price_id`)
    );



CREATE TABLE IF NOT EXISTS `Pickup_Time_Basic_Prices` (
                                                          `pickup_time_basic_price_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                          `pickup_time` ENUM('TODAY', 'ASAP', 'IN_2_HOURS', 'OTHER_DAY') NOT NULL,
    `vehicle_type` ENUM('BICYCLE', 'MOTORBIKE', 'CAR') NOT NULL,
    `previous_id` BIGINT ,
    `price` FLOAT NOT NULL,
    `is_latest` BOOLEAN DEFAULT TRUE,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    `unique_vehicle_type_pickup_time_check` VARCHAR(50) GENERATED ALWAYS AS (
                                                                                CASE WHEN is_latest = TRUE
                                                                                THEN CONCAT(vehicle_type, '_', pickup_time)
    ELSE NULL
    END
    ) STORED,
    UNIQUE (`unique_vehicle_type_pickup_time_check`),
    FOREIGN KEY (`previous_id`) REFERENCES `Pickup_Time_Basic_Prices`(`pickup_time_basic_price_id`)
    );


CREATE TABLE IF NOT EXISTS `None_Business_Hour_Rates` (
                                                          `none_business_hour_rate_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                          `start_time` VARCHAR(255) NOT NULL,
    `end_time` VARCHAR(255) NOT NULL,
    `rate` FLOAT NOT NULL,
    `created_by` BIGINT NULL,
    `is_latest` BOOLEAN DEFAULT TRUE,
    `unique_start_time_end_time_check` VARCHAR(50) GENERATED ALWAYS AS (
                                                                           CASE WHEN is_latest = TRUE
                                                                           THEN CONCAT(start_time, '_', end_time)
    ELSE NULL
    END
    ) STORED,
    UNIQUE (`unique_start_time_end_time_check`),
    FOREIGN KEY (`created_by`) REFERENCES `Users`(`user_id`) ON DELETE SET NULL
    );


CREATE TABLE IF NOT EXISTS `States` (
                                        `state_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                        `name` VARCHAR(255) UNIQUE NOT NULL,
    `code` VARCHAR(10) NOT NULL,
    `logo` VARCHAR(255),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
    );

CREATE TABLE IF NOT EXISTS `Service_Areas` (
                                               `service_area_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                               `name` VARCHAR(255) NOT NULL,
    `code` VARCHAR(255),
    `is_active` BOOLEAN DEFAULT FALSE,
    `state_name` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`state_name`) REFERENCES `States`(`name`) ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `Payment_Webhook_Payload` (
                                                         `payment_webhook_payload_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                         `pspReference` VARCHAR(255) NOT NULL,
    `merchantReference` VARCHAR(255) NOT NULL,
    `originalReference` VARCHAR(255),
    `eventCode` VARCHAR(255) NOT NULL,
    `reason` TEXT,
    `paymentMethod` VARCHAR(255),
    `amount` JSON NOT NULL,
    `success` BOOLEAN NOT NULL,
    `payload` JSON NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );



CREATE TABLE IF NOT EXISTS `Announcements` (
                                               `announcement_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                               `title` VARCHAR(255) NOT NULL,
    `content` TEXT NOT NULL,
    `image_url` TEXT,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
    );


CREATE TABLE IF NOT EXISTS `App_Versions` (
                                              `app_version_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                              `app_name` ENUM('RIDER', 'CUSTOMER') NOT NULL,
    `update_type` BOOLEAN NOT NULL,
    `version` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
    );

CREATE TABLE IF NOT EXISTS `Driver_Guides` (
                                               `driver_guide_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                               `file_url` TEXT NOT NULL,
                                               `description` TEXT,
                                               `is_important` BOOLEAN DEFAULT FALSE,
                                               `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                               `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `Rider_Payments` (
                                                `rider_payment_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                `rider_id` BIGINT  NOT NULL,
                                                `distance` FLOAT NOT NULL,
                                                `price` FLOAT NOT NULL,
                                                `is_exported` BOOLEAN DEFAULT FALSE,
                                                `is_paid` BOOLEAN DEFAULT FALSE,
                                                `payment_cycle` TIMESTAMP NOT NULL,
                                                `exported_at` TIMESTAMP,
                                                `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                                `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
                                                FOREIGN KEY (`rider_id`) REFERENCES `Riders`(`rider_id`) ON DELETE CASCADE
    );

-- CREATE INDEX idx_user_phone ON `Users`(`phone`);
-- CREATE INDEX idx_order_status ON `Orders`(`order_status`, `customer_id`);
