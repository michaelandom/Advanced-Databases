
USE db;


-- Indexes for Users table
CREATE INDEX idx_users_email ON Users(email);
CREATE INDEX idx_users_phone ON Users(phone);
CREATE INDEX idx_users_username ON Users(username);
CREATE INDEX idx_users_account_status ON Users(account_status);
CREATE INDEX idx_users_business_account_id ON Users(bussiness_account_id);
CREATE INDEX idx_users_sso_provider_id ON Users(sso_provider_id);

-- Indexes for Riders table
CREATE INDEX idx_riders_user_id ON Riders(user_id);
CREATE INDEX idx_riders_status ON Riders(status);
CREATE INDEX idx_riders_is_online ON Riders(is_online);
CREATE INDEX idx_riders_location ON Riders(latitude, longitude);

-- Indexes for Orders table
CREATE INDEX idx_orders_order_number ON Orders(order_number);
CREATE INDEX idx_orders_customer_id ON Orders(customer_id);
CREATE INDEX idx_orders_rider_id ON Orders(rider_id);
CREATE INDEX idx_orders_order_status ON Orders(order_status);
CREATE INDEX idx_orders_payment_status ON Orders(payment_status);
CREATE INDEX idx_orders_created_at ON Orders(created_at);
CREATE INDEX idx_orders_vehicle_type ON Orders(vehicle_type);
CREATE INDEX idx_orders_status_customer ON Orders(order_status, customer_id);
CREATE INDEX idx_orders_status_rider ON Orders(order_status, rider_id);

-- Indexes for Destinations table
CREATE INDEX idx_destinations_order_id ON Destinations(order_id);
CREATE INDEX idx_destinations_sequence ON Destinations(order_id, sequence);
CREATE INDEX idx_destinations_status ON Destinations(status);
CREATE INDEX idx_destinations_location ON Destinations(destination_latitude, destination_longitude);

-- Indexes for Delivery_Details table
CREATE INDEX idx_delivery_details_order_id ON Delivery_Details(order_id);
CREATE INDEX idx_delivery_details_pickup_time ON Delivery_Details(pickup_time);
CREATE INDEX idx_delivery_details_pickup_location ON Delivery_Details(pickup_latitude, pickup_longitude);

-- Indexes for Vehicles table
CREATE INDEX idx_vehicles_rider_id ON Vehicles(rider_id);
CREATE INDEX idx_vehicles_type ON Vehicles(vehicle_type);
CREATE INDEX idx_vehicles_current ON Vehicles(rider_id, is_current_vehicle);

-- Indexes for Reviews table
CREATE INDEX idx_reviews_rider_id ON Reviews(rider_id);
CREATE INDEX idx_reviews_order_id ON Reviews(order_id);
CREATE INDEX idx_reviews_user_id ON Reviews(user_id);
CREATE INDEX idx_reviews_rate ON Reviews(rate);

-- Indexes for Items table
CREATE INDEX idx_items_destination_id ON Items(destination_id);
CREATE INDEX idx_items_size ON Items(size_weight_description_id);

-- Indexes for Evidences table
CREATE INDEX idx_evidences_destination_id ON Evidences(destination_id);

-- Indexes for Group_Members table
CREATE INDEX idx_group_members_user_id ON Group_Members(user_id);
CREATE INDEX idx_group_members_group_id ON Group_Members(group_id);

-- Indexes for Group_Permissions table
CREATE INDEX idx_group_permissions_group_id ON Group_Permissions(group_id);
CREATE INDEX idx_group_permissions_permission_id ON Group_Permissions(permission_id);

-- Indexes for Ma_Groups table
CREATE INDEX idx_ma_groups_name ON Ma_Groups(name);
CREATE INDEX idx_ma_groups_type ON Ma_Groups(group_type);

-- Indexes for User_Coupons table
CREATE INDEX idx_user_coupons_user_id ON User_Coupons(user_id);
CREATE INDEX idx_user_coupons_coupon_id ON User_Coupons(coupon_id);

-- Indexes for Coupons table
CREATE INDEX idx_coupons_code ON Coupons(code);
CREATE INDEX idx_coupons_dates ON Coupons(start_date, end_date);
CREATE INDEX idx_coupons_created_by ON Coupons(created_by);
CREATE INDEX idx_coupons_issued_to ON Coupons(issued_to);

-- Indexes for Suspensions table
CREATE INDEX idx_suspensions_rider_id ON Suspensions(rider_id);
CREATE INDEX idx_suspensions_is_active ON Suspensions(is_active);
CREATE INDEX idx_suspensions_dates ON Suspensions(starting_from, ending_at);

-- Indexes for Penalities table
CREATE INDEX idx_penalities_rider_id ON Penalities(rider_id);
CREATE INDEX idx_penalities_is_active ON Penalities(is_active);

-- Indexes for Billing_Address table
CREATE INDEX idx_billing_address_user_id ON Billing_Address(user_id);
CREATE INDEX idx_billing_address_state_id ON Billing_Address(billing_state_id);

-- Indexes for Service_Areas table
CREATE INDEX idx_service_areas_state_id ON Service_Areas(state_id);
CREATE INDEX idx_service_areas_is_active ON Service_Areas(is_active);

-- Indexes for Cancellation_Requests table
CREATE INDEX idx_cancellation_requests_order_id ON Cancellation_Requests(order_id);
CREATE INDEX idx_cancellation_requests_status ON Cancellation_Requests(status);
CREATE INDEX idx_cancellation_requests_cancelled_by ON Cancellation_Requests(cancelled_by);

-- Indexes for Cancellation_Rider_Requests table
CREATE INDEX idx_cancellation_rider_requests_order_id ON Cancellation_Rider_Requests(order_id);
CREATE INDEX idx_cancellation_rider_requests_status ON Cancellation_Rider_Requests(status);
CREATE INDEX idx_cancellation_rider_requests_cancelled_by ON Cancellation_Rider_Requests(cancelled_by);

-- Indexes for Event_Groups table
CREATE INDEX idx_event_groups_event_id ON Event_Groups(event_id);
CREATE INDEX idx_event_groups_group_id ON Event_Groups(group_id);

-- Indexes for User_Favorite_Address table
CREATE INDEX idx_user_favorite_address_user_id ON User_Favorite_Address(user_id);
CREATE INDEX idx_user_favorite_address_type ON User_Favorite_Address(address_type);
CREATE INDEX idx_user_favorite_address_location ON User_Favorite_Address(latitude, longitude);

-- Indexes for Rider_Answers table
CREATE INDEX idx_rider_answers_rider_id ON Rider_Answers(rider_id);
CREATE INDEX idx_rider_answers_option_id ON Rider_Answers(option_id);
CREATE INDEX idx_rider_answers_quiz_key ON Rider_Answers(quiz_key);

-- Indexes for Question_Options table
CREATE INDEX idx_question_options_question_id ON Question_Options(question_id);

-- Indexes for Extr_Fees table
CREATE INDEX idx_extr_fees_order_id ON Extr_Fees(order_id);
CREATE INDEX idx_extr_fees_payment_status ON Extr_Fees(payment_status);

-- Indexes for Rider_Payments table
CREATE INDEX idx_rider_payments_rider_id ON Rider_Payments(rider_id);
CREATE INDEX idx_rider_payments_payment_cycle ON Rider_Payments(payment_cycle);
CREATE INDEX idx_rider_payments_is_paid ON Rider_Payments(is_paid);
CREATE INDEX idx_rider_payments_is_exported ON Rider_Payments(is_exported);

-- Indexes for Payment_Webhook_Payloads table
CREATE INDEX idx_payment_webhook_payloads_psp_reference ON Payment_Webhook_Payloads(psp_reference);
CREATE INDEX idx_payment_webhook_payloads_merchant_reference ON Payment_Webhook_Payloads(merchant_reference);
CREATE INDEX idx_payment_webhook_payloads_event_code ON Payment_Webhook_Payloads(event_code);

-- Indexes for App_Versions table
CREATE INDEX idx_app_versions_app_name ON App_Versions(app_name, version);