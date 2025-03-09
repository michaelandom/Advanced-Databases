USE db;
-- Insert data into Sso_Providers table
INSERT INTO `Sso_Providers` (`sso_provider`) VALUES
                                                 ('Google'),
                                                 ('Facebook'),
                                                 ('Apple'),
                                                 ('Microsoft'),
                                                 ('Twitter'),
                                                 ('LinkedIn'),
                                                 ('GitHub'),
                                                 ('Amazon'),
                                                 ('Yahoo'),
                                                 ('Discord');

-- Insert data into Bussiness_Accounts table
INSERT INTO `Bussiness_Accounts` (`company_ABN`, `company_name`, `logo_url`, `is_active`) VALUES
                                                                                              ('12345678901', 'Acme Corporation', 'https://example.com/logos/acme.png', TRUE),
                                                                                              ('23456789012', 'Globex Industries', 'https://example.com/logos/globex.png', TRUE),
                                                                                              ('34567890123', 'Initech Systems', 'https://example.com/logos/initech.png', TRUE),
                                                                                              ('45678901234', 'Massive Dynamic', 'https://example.com/logos/massive.png', TRUE),
                                                                                              ('56789012345', 'Umbrella Corporation', 'https://example.com/logos/umbrella.png', FALSE),
                                                                                              ('67890123456', 'Wayne Enterprises', 'https://example.com/logos/wayne.png', TRUE),
                                                                                              ('78901234567', 'Stark Industries', 'https://example.com/logos/stark.png', TRUE),
                                                                                              ('89012345678', 'Oscorp Industries', 'https://example.com/logos/oscorp.png', TRUE),
                                                                                              ('90123456789', 'Cyberdyne Systems', 'https://example.com/logos/cyberdyne.png', FALSE),
                                                                                              ('01234567890', 'LexCorp', 'https://example.com/logos/lexcorp.png', TRUE);

-- Insert data into States table
INSERT INTO `States` (`name`, `code`, `logo_url`) VALUES
                                                      ('New South Wales', 'NSW', 'https://example.com/logos/nsw.png'),
                                                      ('Victoria', 'VIC', 'https://example.com/logos/vic.png'),
                                                      ('Queensland', 'QLD', 'https://example.com/logos/qld.png'),
                                                      ('Western Australia', 'WA', 'https://example.com/logos/wa.png'),
                                                      ('South Australia', 'SA', 'https://example.com/logos/sa.png'),
                                                      ('Tasmania', 'TAS', 'https://example.com/logos/tas.png'),
                                                      ('Australian Capital Territory', 'ACT', 'https://example.com/logos/act.png'),
                                                      ('Northern Territory', 'NT', 'https://example.com/logos/nt.png'),
                                                      ('New Zealand', 'NZ', 'https://example.com/logos/nz.png'),
                                                      ('External Territory', 'EXT', 'https://example.com/logos/ext.png');

-- Insert data into Users table
INSERT INTO `Users` (`username`, `first_name`, `last_name`, `date_of_birth`, `gender`, `email`, `email_verified`, `phone`, `phone_verified`, `password_hash`, `last_login`, `account_type`, `sso_provider_id`, `bussiness_account_id`, `profile_picture`, `account_status`) VALUES
                                                                                                                                                                                                                                                                                ('john_doe', 'John', 'Doe', '1985-03-15', 'MALE', 'john.doe@example.com', TRUE, '+61412345678', TRUE, '$2a$12$1234567890123456789012', '2025-03-08 09:30:00', 'STANDARD', NULL, 1, 'https://example.com/profiles/john.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('jane_smith', 'Jane', 'Smith', '1990-07-22', 'FEMALE', 'jane.smith@example.com', TRUE, '+61423456789', TRUE, '$2a$12$2345678901234567890123', '2025-03-08 10:15:00', 'STANDARD', NULL, 2, 'https://example.com/profiles/jane.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('michael_brown', 'Michael', 'Brown', '1988-11-05', 'MALE', 'michael.brown@example.com', TRUE, '+61434567890', TRUE, '$2a$12$3456789012345678901234', '2025-03-07 14:20:00', 'STANDARD', NULL, NULL, 'https://example.com/profiles/michael.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('sarah_wilson', 'Sarah', 'Wilson', '1992-04-30', 'FEMALE', 'sarah.wilson@example.com', TRUE, '+61445678901', TRUE, '$2a$12$4567890123456789012345', '2025-03-07 16:45:00', 'STANDARD', NULL, 3, 'https://example.com/profiles/sarah.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('david_jones', 'David', 'Jones', '1983-09-18', 'MALE', 'david.jones@example.com', TRUE, '+61456789012', TRUE, '$2a$12$5678901234567890123456', '2025-03-06 11:30:00', 'STANDARD', 1, NULL, 'https://example.com/profiles/david.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('emma_taylor', 'Emma', 'Taylor', '1995-02-10', 'FEMALE', 'emma.taylor@example.com', FALSE, '+61467890123', FALSE, '$2a$12$6789012345678901234567', NULL, 'STANDARD', NULL, 4, 'https://example.com/profiles/emma.jpg', 'PENDING'),
                                                                                                                                                                                                                                                                                ('james_anderson', 'James', 'Anderson', '1980-12-25', 'MALE', 'james.anderson@example.com', TRUE, '+61478901234', TRUE, '$2a$12$7890123456789012345678', '2025-03-05 08:40:00', 'STANDARD', NULL, NULL, 'https://example.com/profiles/james.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('olivia_thomas', 'Olivia', 'Thomas', '1993-06-08', 'FEMALE', 'olivia.thomas@example.com', TRUE, '+61489012345', TRUE, '$2a$12$8901234567890123456789', '2025-03-04 17:15:00', 'STANDARD', 2, 5, 'https://example.com/profiles/olivia.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('william_white', 'William', 'White', '1987-10-03', 'MALE', 'william.white@example.com', TRUE, '+61490123456', TRUE, '$2a$12$9012345678901234567890', '2025-03-08 13:20:00', 'STANDARD', NULL, NULL, 'https://example.com/profiles/william.jpg', 'SUSPENDED'),
                                                                                                                                                                                                                                                                                ('sophia_martin', 'Sophia', 'Martin', '1991-01-15', 'FEMALE', 'sophia.martin@example.com', TRUE, '+61501234567', TRUE, '$2a$12$0123456789012345678901', '2025-03-07 09:50:00', 'STANDARD', NULL, 6, 'https://example.com/profiles/sophia.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('user1', 'user1', 'user1', '1987-10-03', 'MALE', 'user1@example.com', TRUE, '+61490123456', TRUE, '$2a$12$9012345678901234567890', '2025-03-08 13:20:00', 'STANDARD', NULL, NULL, 'https://example.com/profiles/william.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('admin1', 'admin1', 'admin1', '1991-01-15', 'FEMALE', 'admin1@example.com', TRUE, '+61501234567', TRUE, '$2a$12$0123456789012345678901', '2025-03-07 09:50:00', 'STANDARD', NULL, 6, 'https://example.com/profiles/sophia.jpg', 'ACTIVE');

-- Insert data into Service_Areas table
INSERT INTO `Service_Areas` (`name`, `code`, `is_active`, `state_id`) VALUES
                                                                          ('Sydney CBD', 'SYD-CBD', TRUE, 1),
                                                                          ('Melbourne CBD', 'MEL-CBD', TRUE, 2),
                                                                          ('Brisbane CBD', 'BNE-CBD', TRUE, 3),
                                                                          ('Perth Metropolitan', 'PER-MET', TRUE, 4),
                                                                          ('Adelaide Central', 'ADL-CEN', TRUE, 5),
                                                                          ('Hobart City', 'HBT-CTY', FALSE, 6),
                                                                          ('Canberra Central', 'CBR-CEN', TRUE, 7),
                                                                          ('Darwin City', 'DRW-CTY', TRUE, 8),
                                                                          ('Auckland Central', 'AKL-CEN', FALSE, 9),
                                                                          ('Gold Coast', 'GLD-CST', TRUE, 3);

-- Insert data into Billing_Address table
INSERT INTO `Billing_Address` (`billing_email`, `billing_street_address`, `billing_street_address2`, `billing_state_id`, `billing_postcode`, `billing_suburb`, `user_id`) VALUES
                                                                                                                                                                              ('john.doe@example.com', '123 Main Street', 'Apartment 4B', 1, '2000', 'Sydney', 1),
                                                                                                                                                                              ('jane.smith@example.com', '456 Park Avenue', 'Suite 701', 2, '3000', 'Melbourne', 2),
                                                                                                                                                                              ('michael.brown@example.com', '789 Queens Road', NULL, 3, '4000', 'Brisbane', 3),
                                                                                                                                                                              ('sarah.wilson@example.com', '321 King Street', 'Unit 12', 4, '6000', 'Perth', 4),
                                                                                                                                                                              ('david.jones@example.com', '654 Collins Street', NULL, 5, '5000', 'Adelaide', 5),
                                                                                                                                                                              ('emma.taylor@example.com', '987 Murray Street', 'Apartment 3C', 6, '7000', 'Hobart', 6),
                                                                                                                                                                              ('james.anderson@example.com', '147 Northbourne Avenue', NULL, 7, '2600', 'Canberra', 7),
                                                                                                                                                                              ('olivia.thomas@example.com', '258 Mitchell Street', 'Suite 5', 8, '0800', 'Darwin', 8),
                                                                                                                                                                              ('william.white@example.com', '369 Queen Street', NULL, 9, '1010', 'Auckland', 9),
                                                                                                                                                                              ('sophia.martin@example.com', '159 Cavill Avenue', 'Unit 8D', 3, '4217', 'Surfers Paradise', 10);

-- Insert data into Ma_Groups table
INSERT INTO `Ma_Groups` (`name`, `description`, `group_type`) VALUES
                                                                  ('Administrators', 'Users with full system access', 'PERMISSION'),
                                                                  ('Dispatchers', 'Users who can manage orders and riders', 'PERMISSION'),
                                                                  ('Riders', 'Delivery personnel', 'PERMISSION'),
                                                                  ('Customers', 'Regular users who place orders', 'PERMISSION'),
                                                                  ('Support Staff', 'Customer service representatives', 'PERMISSION'),
                                                                  ('Finance Team', 'Users who handle billing and payments', 'PERMISSION'),
                                                                  ('Marketing', 'Users who manage promotions and events', 'PERMISSION'),
                                                                  ('Holiday Sales Event', 'Special event participants', 'EVENT'),
                                                                  ('New Rider Training', 'Training event for new riders', 'EVENT'),
                                                                  ('Customer Appreciation Week', 'Special event for valued customers', 'EVENT');



-- Insert data into Permissions table
INSERT INTO `Permissions` (`permission_name`, `description`) VALUES
                                                                 -- Advertisements
                                                                 ('MANAGE_ADVERTISEMENTS', 'Create, update, and delete advertisements'),
                                                                 ('VIEW_ADVERTISEMENT', 'View advertisement by the user it self'),
                                                                 ('VIEW_ADVERTISEMENT_MANY', 'View multiple advertisements'),
                                                                 ('UPDATE_ADVERTISEMENT_ONE', 'Update advertisement created by the user it self'),
                                                                 ('UPDATE_ADVERTISEMENT_MANY', 'Update multiple advertisements'),
                                                                 ('DELETE_ADVERTISEMENT_ONE', 'Delete advertisement created by the user it self'),
                                                                 ('DELETE_ADVERTISEMENT_MANY', 'Delete multiple advertisements'),

                                                                 -- Announcements
                                                                 ('MANAGE_ANNOUNCEMENTS', 'Create, update, and delete announcements'),
                                                                 ('VIEW_ANNOUNCEMENT', 'View announcement'),
                                                                 ('VIEW_ANNOUNCEMENT_MANY', 'View multiple announcements'),
                                                                 ('UPDATE_ANNOUNCEMENT_ONE', 'Update announcement'),
                                                                 ('UPDATE_ANNOUNCEMENT_MANY', 'Update multiple announcements'),
                                                                 ('DELETE_ANNOUNCEMENT_ONE', 'Delete announcement'),
                                                                 ('DELETE_ANNOUNCEMENT_MANY', 'Delete multiple announcements'),

                                                                 -- App_Versions
                                                                 ('MANAGE_APP_VERSIONS', 'Create, update, and delete app versions'),
                                                                 ('VIEW_APP_VERSION', 'View app version'),
                                                                 ('VIEW_APP_VERSION_MANY', 'View multiple app versions'),
                                                                 ('UPDATE_APP_VERSION_ONE', 'Update app version'),
                                                                 ('UPDATE_APP_VERSION_MANY', 'Update multiple app versions'),
                                                                 ('DELETE_APP_VERSION_ONE', 'Delete app version'),
                                                                 ('DELETE_APP_VERSION_MANY', 'Delete multiple app versions'),

                                                                 -- Billing_Address
                                                                 ('MANAGE_BILLING_ADDRESSES', 'Create, update, and delete billing addresses'),
                                                                 ('VIEW_BILLING_ADDRESS', 'View billing address'),
                                                                 ('VIEW_BILLING_ADDRESS_MANY', 'View multiple billing addresses'),
                                                                 ('UPDATE_BILLING_ADDRESS_ONE', 'Update billing address'),
                                                                 ('UPDATE_BILLING_ADDRESS_MANY', 'Update multiple billing addresses'),
                                                                 ('DELETE_BILLING_ADDRESS_ONE', 'Delete billing address'),
                                                                 ('DELETE_BILLING_ADDRESS_MANY', 'Delete multiple billing addresses'),

                                                                 -- Bussiness_Accounts
                                                                 ('MANAGE_BUSINESS_ACCOUNTS', 'Create, update, and delete business accounts'),
                                                                 ('VIEW_BUSINESS_ACCOUNT', 'View business account'),
                                                                 ('VIEW_BUSINESS_ACCOUNT_MANY', 'View multiple business accounts'),
                                                                 ('UPDATE_BUSINESS_ACCOUNT_ONE', 'Update business account'),
                                                                 ('UPDATE_BUSINESS_ACCOUNT_MANY', 'Update multiple business accounts'),
                                                                 ('DELETE_BUSINESS_ACCOUNT_ONE', 'Delete business account'),
                                                                 ('DELETE_BUSINESS_ACCOUNT_MANY', 'Delete multiple business accounts'),

                                                                 -- Cancellation_Requests
                                                                 ('MANAGE_CANCELLATION_REQUESTS', 'Create, update, and delete cancellation requests'),
                                                                 ('VIEW_CANCELLATION_REQUEST', 'View cancellation request'),
                                                                 ('VIEW_CANCELLATION_REQUEST_MANY', 'View multiple cancellation requests'),
                                                                 ('UPDATE_CANCELLATION_REQUEST_ONE', 'Update cancellation request'),
                                                                 ('UPDATE_CANCELLATION_REQUEST_MANY', 'Update multiple cancellation requests'),
                                                                 ('DELETE_CANCELLATION_REQUEST_ONE', 'Delete cancellation request'),
                                                                 ('DELETE_CANCELLATION_REQUEST_MANY', 'Delete multiple cancellation requests'),

                                                                 -- Coupons
                                                                 ('MANAGE_COUPONS', 'Create, update, and delete coupons'),
                                                                 ('VIEW_COUPON', 'View coupon'),
                                                                 ('VIEW_COUPON_MANY', 'View multiple coupons'),
                                                                 ('UPDATE_COUPON_ONE', 'Update coupon'),
                                                                 ('UPDATE_COUPON_MANY', 'Update multiple coupons'),
                                                                 ('DELETE_COUPON_ONE', 'Delete coupon'),
                                                                 ('DELETE_COUPON_MANY', 'Delete multiple coupons'),

                                                                 -- Delete_Requests
                                                                 ('MANAGE_DELETE_REQUESTS', 'Create, update, and delete delete requests'),
                                                                 ('VIEW_DELETE_REQUEST', 'View delete request'),
                                                                 ('VIEW_DELETE_REQUEST_MANY', 'View multiple delete requests'),
                                                                 ('UPDATE_DELETE_REQUEST_ONE', 'Update delete request'),
                                                                 ('UPDATE_DELETE_REQUEST_MANY', 'Update multiple delete requests'),
                                                                 ('DELETE_DELETE_REQUEST_ONE', 'Delete delete request'),
                                                                 ('DELETE_DELETE_REQUEST_MANY', 'Delete multiple delete requests'),

                                                                 -- Delivery_Details
                                                                 ('MANAGE_DELIVERY_DETAILS', 'Create, update, and delete delivery details'),
                                                                 ('VIEW_DELIVERY_DETAIL', 'View delivery detail'),
                                                                 ('VIEW_DELIVERY_DETAIL_MANY', 'View multiple delivery details'),
                                                                 ('UPDATE_DELIVERY_DETAIL_ONE', 'Update delivery detail'),
                                                                 ('UPDATE_DELIVERY_DETAIL_MANY', 'Update multiple delivery details'),
                                                                 ('DELETE_DELIVERY_DETAIL_ONE', 'Delete delivery detail'),
                                                                 ('DELETE_DELIVERY_DETAIL_MANY', 'Delete multiple delivery details'),

                                                                 -- Destinations
                                                                 ('MANAGE_DESTINATIONS', 'Create, update, and delete destinations'),
                                                                 ('VIEW_DESTINATION', 'View destination'),
                                                                 ('VIEW_DESTINATION_MANY', 'View multiple destinations'),
                                                                 ('UPDATE_DESTINATION_ONE', 'Update destination'),
                                                                 ('UPDATE_DESTINATION_MANY', 'Update multiple destinations'),
                                                                 ('DELETE_DESTINATION_ONE', 'Delete destination'),
                                                                 ('DELETE_DESTINATION_MANY', 'Delete multiple destinations'),

                                                                 -- Driver_Guides
                                                                 ('MANAGE_DRIVER_GUIDES', 'Create, update, and delete driver guides'),
                                                                 ('VIEW_DRIVER_GUIDE', 'View driver guide'),
                                                                 ('VIEW_DRIVER_GUIDE_MANY', 'View multiple driver guides'),
                                                                 ('UPDATE_DRIVER_GUIDE_ONE', 'Update driver guide'),
                                                                 ('UPDATE_DRIVER_GUIDE_MANY', 'Update multiple driver guides'),
                                                                 ('DELETE_DRIVER_GUIDE_ONE', 'Delete driver guide'),
                                                                 ('DELETE_DRIVER_GUIDE_MANY', 'Delete multiple driver guides'),

                                                                 -- Events
                                                                 ('MANAGE_EVENTS', 'Create, update, and delete events'),
                                                                 ('VIEW_EVENT', 'View event'),
                                                                 ('VIEW_EVENT_MANY', 'View multiple events'),
                                                                 ('UPDATE_EVENT_ONE', 'Update event'),
                                                                 ('UPDATE_EVENT_MANY', 'Update multiple events'),
                                                                 ('DELETE_EVENT_ONE', 'Delete event'),
                                                                 ('DELETE_EVENT_MANY', 'Delete multiple events'),

                                                                 -- Faq
                                                                 ('MANAGE_FAQ', 'Create, update, and delete FAQ'),
                                                                 ('VIEW_FAQ', 'View FAQ'),
                                                                 ('VIEW_FAQ_MANY', 'View multiple FAQs'),
                                                                 ('UPDATE_FAQ_ONE', 'Update FAQ'),
                                                                 ('UPDATE_FAQ_MANY', 'Update multiple FAQs'),
                                                                 ('DELETE_FAQ_ONE', 'Delete FAQ'),
                                                                 ('DELETE_FAQ_MANY', 'Delete multiple FAQs'),

                                                                 -- Items
                                                                 ('MANAGE_ITEMS', 'Create, update, and delete items'),
                                                                 ('VIEW_ITEM', 'View item'),
                                                                 ('VIEW_ITEM_MANY', 'View multiple items'),
                                                                 ('UPDATE_ITEM_ONE', 'Update item'),
                                                                 ('UPDATE_ITEM_MANY', 'Update multiple items'),
                                                                 ('DELETE_ITEM_ONE', 'Delete item'),
                                                                 ('DELETE_ITEM_MANY', 'Delete multiple items'),

                                                                 -- Orders
                                                                 ('MANAGE_ORDERS', 'Create, update, and delete orders'),
                                                                 ('VIEW_ORDER', 'View order'),
                                                                 ('VIEW_ORDER_MANY', 'View multiple orders'),
                                                                 ('UPDATE_ORDER_ONE', 'Update order'),
                                                                 ('UPDATE_ORDER_MANY', 'Update multiple orders'),
                                                                 ('DELETE_ORDER_ONE', 'Delete order'),
                                                                 ('DELETE_ORDER_MANY', 'Delete multiple orders'),

                                                                 -- Rider_Answers
                                                                 ('MANAGE_RIDER_ANSWERS', 'Create, update, and delete rider answers'),
                                                                 ('VIEW_RIDER_ANSWER', 'View rider answer'),
                                                                 ('VIEW_RIDER_ANSWER_MANY', 'View multiple rider answers'),
                                                                 ('UPDATE_RIDER_ANSWER_ONE', 'Update rider answer'),
                                                                 ('UPDATE_RIDER_ANSWER_MANY', 'Update multiple rider answers'),
                                                                 ('DELETE_RIDER_ANSWER_ONE', 'Delete rider answer'),
                                                                 ('DELETE_RIDER_ANSWER_MANY', 'Delete multiple rider answers'),

                                                                 -- Riders
                                                                 ('MANAGE_RIDERS', 'Create, update, and delete riders'),
                                                                 ('VIEW_RIDER', 'View rider'),
                                                                 ('VIEW_RIDER_MANY', 'View multiple riders'),
                                                                 ('UPDATE_RIDER_ONE', 'Update rider'),
                                                                 ('UPDATE_RIDER_MANY', 'Update multiple riders'),
                                                                 ('DELETE_RIDER_ONE', 'Delete rider'),
                                                                 ('DELETE_RIDER_MANY', 'Delete multiple riders'),

                                                                 -- Vehicle_Basic_Prices
                                                                 ('MANAGE_VEHICLE_BASIC_PRICES', 'Create, update, and delete vehicle basic prices'),
                                                                 ('VIEW_VEHICLE_BASIC_PRICE', 'View vehicle basic price'),
                                                                 ('VIEW_VEHICLE_BASIC_PRICE_MANY', 'View multiple vehicle basic prices'),
                                                                 ('UPDATE_VEHICLE_BASIC_PRICE_ONE', 'Update vehicle basic price'),
                                                                 ('UPDATE_VEHICLE_BASIC_PRICE_MANY', 'Update multiple vehicle basic prices'),
                                                                 ('DELETE_VEHICLE_BASIC_PRICE_ONE', 'Delete vehicle basic price'),
                                                                 ('DELETE_VEHICLE_BASIC_PRICE_MANY', 'Delete multiple vehicle basic prices'),

                                                                 -- Users
                                                                 ('MANAGE_USERS', 'Create, update, and delete users'),
                                                                 ('VIEW_USER', 'View user'),
                                                                 ('VIEW_USER_MANY', 'View multiple users'),
                                                                 ('UPDATE_USER_ONE', 'Update user'),
                                                                 ('UPDATE_USER_MANY', 'Update multiple users'),
                                                                 ('DELETE_USER_ONE', 'Delete user'),
                                                                 ('DELETE_USER_MANY', 'Delete multiple users'),

                                                                 -- Vehicles
                                                                 ('MANAGE_VEHICLES', 'Create, update, and delete vehicles'),
                                                                 ('VIEW_VEHICLE', 'View vehicle'),
                                                                 ('VIEW_VEHICLE_MANY', 'View multiple vehicles'),
                                                                 ('UPDATE_VEHICLE_ONE', 'Update vehicle'),
                                                                 ('UPDATE_VEHICLE_MANY', 'Update multiple vehicles'),
                                                                 ('DELETE_VEHICLE_ONE', 'Delete vehicle'),
                                                                 ('DELETE_VEHICLE_MANY', 'Delete multiple vehicles'),


                                                                 ('MANAGE_CANCELLATION_RIDER_REQUESTS', 'Create, update, and delete rider cancellation requests'),
                                                                 ('VIEW_CANCELLATION_RIDER_REQUEST', 'View rider cancellation request'),
                                                                 ('VIEW_CANCELLATION_RIDER_REQUEST_MANY', 'View multiple rider cancellation requests'),
                                                                 ('UPDATE_CANCELLATION_RIDER_REQUEST_ONE', 'Update rider cancellation request'),
                                                                 ('UPDATE_CANCELLATION_RIDER_REQUEST_MANY', 'Update multiple rider cancellation requests'),
                                                                 ('DELETE_CANCELLATION_RIDER_REQUEST_ONE', 'Delete rider cancellation request'),
                                                                 ('DELETE_CANCELLATION_RIDER_REQUEST_MANY', 'Delete multiple rider cancellation requests'),

                                                                 ('MANAGE_EVIDENCES', 'Create, update, and delete evidences'),
                                                                 ('VIEW_EVIDENCE', 'View evidence by the user it self'),
                                                                 ('VIEW_EVIDENCE_MANY', 'View multiple evidences'),
                                                                 ('UPDATE_EVIDENCE_ONE', 'Update evidence created by the user it self'),
                                                                 ('UPDATE_EVIDENCE_MANY', 'Update multiple evidences'),
                                                                 ('DELETE_EVIDENCE_ONE', 'Delete evidence created by the user it self'),
                                                                 ('DELETE_EVIDENCE_MANY', 'Delete multiple evidences'),

                                                                 ('MANAGE_EXTRA_FEES', 'Create, update, and delete extra fees'),
                                                                 ('VIEW_EXTRA_FEE', 'View extra fee'),
                                                                 ('VIEW_EXTRA_FEE_MANY', 'View multiple extra fees'),
                                                                 ('UPDATE_EXTRA_FEE_ONE', 'Update extra fee'),
                                                                 ('UPDATE_EXTRA_FEE_MANY', 'Update multiple extra fees'),
                                                                 ('DELETE_EXTRA_FEE_ONE', 'Delete extra fee'),
                                                                 ('DELETE_EXTRA_FEE_MANY', 'Delete multiple extra fees'),


                                                                 ('MANAGE_GROUP_MEMBERS', 'Add or remove members from groups'),
                                                                 ('VIEW_GROUP_MEMBER', 'View a group member'),
                                                                 ('VIEW_GROUP_MEMBER_MANY', 'View multiple group members'),
                                                                 ('UPDATE_GROUP_MEMBER_ONE', 'Update group member details'),
                                                                 ('UPDATE_GROUP_MEMBER_MANY', 'Update multiple group members'),
                                                                 ('DELETE_GROUP_MEMBER_ONE', 'Delete group member'),
                                                                 ('DELETE_GROUP_MEMBER_MANY', 'Delete multiple group members'),

                                                                 ('MANAGE_GROUP_PERMISSIONS', 'Create, update, and delete group permissions'),
                                                                 ('VIEW_GROUP_PERMISSION', 'View group permission'),
                                                                 ('VIEW_GROUP_PERMISSION_MANY', 'View multiple group permissions'),
                                                                 ('UPDATE_GROUP_PERMISSION_ONE', 'Update group permission'),
                                                                 ('UPDATE_GROUP_PERMISSION_MANY', 'Update multiple group permissions'),
                                                                 ('DELETE_GROUP_PERMISSION_ONE', 'Delete group permission'),
                                                                 ('DELETE_GROUP_PERMISSION_MANY', 'Delete multiple group permissions'),

                                                                 ('MANAGE_MA_GROUPS', 'Create, update, and delete ma groups'),
                                                                 ('VIEW_MA_GROUP', 'View ma group'),
                                                                 ('VIEW_MA_GROUP_MANY', 'View multiple ma groups'),
                                                                 ('UPDATE_MA_GROUP_ONE', 'Update ma group'),
                                                                 ('UPDATE_MA_GROUP_MANY', 'Update multiple ma groups'),
                                                                 ('DELETE_MA_GROUP_ONE', 'Delete ma group'),
                                                                 ('DELETE_MA_GROUP_MANY', 'Delete multiple ma groups'),

                                                                 ('MANAGE_Event_Groups', 'Create, update, and delete Event_Groups'),
                                                                 ('VIEW_Event_Groups', 'View ma group'),
                                                                 ('VIEW_Event_Groups_MANY', 'View multiple ma groups'),
                                                                 ('UPDATE_Event_Groups_ONE', 'Update ma group'),
                                                                 ('UPDATE_Event_Groups_MANY', 'Update multiple Event_Groups'),
                                                                 ('DELETE_Event_Groups_ONE', 'Delete Event_Groups'),
                                                                 ('DELETE_Event_Groups_MANY', 'Delete multiple Event_Groups'),



                                                                 ('MANAGE_NONE_BUSINESS_HOUR_RATES', 'Create, update, and delete non-business hour rates'),
                                                                 ('VIEW_NONE_BUSINESS_HOUR_RATE', 'View non-business hour rate'),
                                                                 ('VIEW_NONE_BUSINESS_HOUR_RATE_MANY', 'View multiple non-business hour rates'),
                                                                 ('UPDATE_NONE_BUSINESS_HOUR_RATE_ONE', 'Update non-business hour rate'),
                                                                 ('UPDATE_NONE_BUSINESS_HOUR_RATE_MANY', 'Update multiple non-business hour rates'),
                                                                 ('DELETE_NONE_BUSINESS_HOUR_RATE_ONE', 'Delete non-business hour rate'),
                                                                 ('DELETE_NONE_BUSINESS_HOUR_RATE_MANY', 'Delete multiple non-business hour rates'),

                                                                 ('MANAGE_NOTE_DELIVERY_DETAILS', 'Create, update, and delete note delivery details'),
                                                                 ('VIEW_NOTE_DELIVERY_DETAIL', 'View note delivery detail'),
                                                                 ('VIEW_NOTE_DELIVERY_DETAIL_MANY', 'View multiple note delivery details'),
                                                                 ('UPDATE_NOTE_DELIVERY_DETAIL_ONE', 'Update note delivery detail'),
                                                                 ('UPDATE_NOTE_DELIVERY_DETAIL_MANY', 'Update multiple note delivery details'),
                                                                 ('DELETE_NOTE_DELIVERY_DETAIL_ONE', 'Delete note delivery detail'),
                                                                 ('DELETE_NOTE_DELIVERY_DETAIL_MANY', 'Delete multiple note delivery details'),

                                                                 ('MANAGE_NOTE_DESTINATIONS', 'Create, update, and delete note destinations'),
                                                                 ('VIEW_NOTE_DESTINATION', 'View note destination'),
                                                                 ('VIEW_NOTE_DESTINATION_MANY', 'View multiple note destinations'),
                                                                 ('UPDATE_NOTE_DESTINATION_ONE', 'Update note destination'),
                                                                 ('UPDATE_NOTE_DESTINATION_MANY', 'Update multiple note destinations'),
                                                                 ('DELETE_NOTE_DESTINATION_ONE', 'Delete note destination'),
                                                                 ('DELETE_NOTE_DESTINATION_MANY', 'Delete multiple note destinations'),

                                                                 ('MANAGE_PASSWORD_RESETS', 'Create, update, and delete password reset requests'),
                                                                 ('VIEW_PASSWORD_RESET', 'View password reset request'),
                                                                 ('VIEW_PASSWORD_RESET_MANY', 'View multiple password reset requests'),
                                                                 ('UPDATE_PASSWORD_RESET_ONE', 'Update password reset request'),
                                                                 ('UPDATE_PASSWORD_RESET_MANY', 'Update multiple password reset requests'),
                                                                 ('DELETE_PASSWORD_RESET_ONE', 'Delete password reset request'),
                                                                 ('DELETE_PASSWORD_RESET_MANY', 'Delete multiple password reset requests'),

                                                                 ('MANAGE_PAYMENT_WEBHOOK_PAYLOADS', 'Create, update, and delete payment webhook payloads'),
                                                                 ('VIEW_PAYMENT_WEBHOOK_PAYLOAD', 'View payment webhook payload'),
                                                                 ('VIEW_PAYMENT_WEBHOOK_PAYLOAD_MANY', 'View multiple payment webhook payloads'),
                                                                 ('UPDATE_PAYMENT_WEBHOOK_PAYLOAD_ONE', 'Update payment webhook payload'),
                                                                 ('UPDATE_PAYMENT_WEBHOOK_PAYLOAD_MANY', 'Update multiple payment webhook payloads'),
                                                                 ('DELETE_PAYMENT_WEBHOOK_PAYLOAD_ONE', 'Delete payment webhook payload'),
                                                                 ('DELETE_PAYMENT_WEBHOOK_PAYLOAD_MANY', 'Delete multiple payment webhook payloads'),

                                                                 ('MANAGE_PEAK_TIME_RATES', 'Create, update, and delete peak time rates'),
                                                                 ('VIEW_PEAK_TIME_RATE', 'View peak time rate'),
                                                                 ('VIEW_PEAK_TIME_RATE_MANY', 'View multiple peak time rates'),
                                                                 ('UPDATE_PEAK_TIME_RATE_ONE', 'Update peak time rate'),
                                                                 ('UPDATE_PEAK_TIME_RATE_MANY', 'Update multiple peak time rates'),
                                                                 ('DELETE_PEAK_TIME_RATE_ONE', 'Delete peak time rate'),
                                                                 ('DELETE_PEAK_TIME_RATE_MANY', 'Delete multiple peak time rates'),

                                                                 ('MANAGE_PENALTIES', 'Create, update, and delete penalties'),
                                                                 ('VIEW_PENALTY', 'View penalty'),
                                                                 ('VIEW_PENALTY_MANY', 'View multiple penalties'),
                                                                 ('UPDATE_PENALTY_ONE', 'Update penalty'),
                                                                 ('UPDATE_PENALTY_MANY', 'Update multiple penalties'),
                                                                 ('DELETE_PENALTY_ONE', 'Delete penalty'),
                                                                 ('DELETE_PENALTY_MANY', 'Delete multiple penalties'),

                                                                 ('MANAGE_PERMISSIONS', 'Create, update, and delete permissions'),
                                                                 ('VIEW_PERMISSION', 'View permission'),
                                                                 ('VIEW_PERMISSION_MANY', 'View multiple permissions'),
                                                                 ('UPDATE_PERMISSION_ONE', 'Update permission'),
                                                                 ('UPDATE_PERMISSION_MANY', 'Update multiple permissions'),
                                                                 ('DELETE_PERMISSION_ONE', 'Delete permission'),
                                                                 ('DELETE_PERMISSION_MANY', 'Delete multiple permissions'),

                                                                 ('MANAGE_PICKUP_TIME_BASIC_PRICES', 'Create, update, and delete pickup time basic prices'),
                                                                 ('VIEW_PICKUP_TIME_BASIC_PRICE', 'View pickup time basic price'),
                                                                 ('VIEW_PICKUP_TIME_BASIC_PRICE_MANY', 'View multiple pickup time basic prices'),
                                                                 ('UPDATE_PICKUP_TIME_BASIC_PRICE_ONE', 'Update pickup time basic price'),
                                                                 ('UPDATE_PICKUP_TIME_BASIC_PRICE_MANY', 'Update multiple pickup time basic prices'),
                                                                 ('DELETE_PICKUP_TIME_BASIC_PRICE_ONE', 'Delete pickup time basic price'),
                                                                 ('DELETE_PICKUP_TIME_BASIC_PRICE_MANY', 'Delete multiple pickup time basic prices'),

                                                                 ('MANAGE_QUESTION_OPTIONS', 'Create, update, and delete question options'),
                                                                 ('VIEW_QUESTION_OPTION', 'View question option'),
                                                                 ('VIEW_QUESTION_OPTION_MANY', 'View multiple question options'),
                                                                 ('UPDATE_QUESTION_OPTION_ONE', 'Update question option'),
                                                                 ('UPDATE_QUESTION_OPTION_MANY', 'Update multiple question options'),
                                                                 ('DELETE_QUESTION_OPTION_ONE', 'Delete question option'),
                                                                 ('DELETE_QUESTION_OPTION_MANY', 'Delete multiple question options'),

                                                                 ('MANAGE_QUESTIONS', 'Create, update, and delete questions'),
                                                                 ('VIEW_QUESTION', 'View question'),
                                                                 ('VIEW_QUESTION_MANY', 'View multiple questions'),
                                                                 ('UPDATE_QUESTION_ONE', 'Update question'),
                                                                 ('UPDATE_QUESTION_MANY', 'Update multiple questions'),
                                                                 ('DELETE_QUESTION_ONE', 'Delete question'),
                                                                 ('DELETE_QUESTION_MANY', 'Delete multiple questions'),

                                                                 ('MANAGE_MA_REFERENCES', 'Create, update, and delete ma references'),
                                                                 ('VIEW_MA_REFERENCE', 'View ma reference'),
                                                                 ('VIEW_MA_REFERENCE_MANY', 'View multiple ma references'),
                                                                 ('UPDATE_MA_REFERENCE_ONE', 'Update ma reference'),
                                                                 ('UPDATE_MA_REFERENCE_MANY', 'Update multiple ma references'),
                                                                 ('DELETE_MA_REFERENCE_ONE', 'Delete ma reference'),
                                                                 ('DELETE_MA_REFERENCE_MANY', 'Delete multiple ma references'),

                                                                 ('MANAGE_REVIEWS', 'Create, update, and delete reviews'),
                                                                 ('VIEW_REVIEW', 'View review'),
                                                                 ('VIEW_REVIEW_MANY', 'View multiple reviews'),
                                                                 ('UPDATE_REVIEW_ONE', 'Update review'),
                                                                 ('UPDATE_REVIEW_MANY', 'Update multiple reviews'),
                                                                 ('DELETE_REVIEW_ONE', 'Delete review'),
                                                                 ('DELETE_REVIEW_MANY', 'Delete multiple reviews'),

                                                                 ('MANAGE_RIDER_COMMISSIONS', 'Create, update, and delete rider commissions'),
                                                                 ('VIEW_RIDER_COMMISSION', 'View rider commission'),
                                                                 ('VIEW_RIDER_COMMISSION_MANY', 'View multiple rider commissions'),
                                                                 ('UPDATE_RIDER_COMMISSION_ONE', 'Update rider commission'),
                                                                 ('UPDATE_RIDER_COMMISSION_MANY', 'Update multiple rider commissions'),
                                                                 ('DELETE_RIDER_COMMISSION_ONE', 'Delete rider commission'),
                                                                 ('DELETE_RIDER_COMMISSION_MANY', 'Delete multiple rider commissions'),

                                                                 ('MANAGE_RIDER_PAYMENTS', 'Create, update, and delete rider payments'),
                                                                 ('VIEW_RIDER_PAYMENT', 'View rider payment'),
                                                                 ('VIEW_RIDER_PAYMENT_MANY', 'View multiple rider payments'),
                                                                 ('UPDATE_RIDER_PAYMENT_ONE', 'Update rider payment'),
                                                                 ('UPDATE_RIDER_PAYMENT_MANY', 'Update multiple rider payments'),
                                                                 ('DELETE_RIDER_PAYMENT_ONE', 'Delete rider payment'),
                                                                 ('DELETE_RIDER_PAYMENT_MANY', 'Delete multiple rider payments'),

                                                                 ('MANAGE_SERVICE_AREAS', 'Create, update, and delete service areas'),
                                                                 ('VIEW_SERVICE_AREA', 'View service area'),
                                                                 ('VIEW_SERVICE_AREA_MANY', 'View multiple service areas'),
                                                                 ('UPDATE_SERVICE_AREA_ONE', 'Update service area'),
                                                                 ('UPDATE_SERVICE_AREA_MANY', 'Update multiple service areas'),
                                                                 ('DELETE_SERVICE_AREA_ONE', 'Delete service area'),
                                                                 ('DELETE_SERVICE_AREA_MANY', 'Delete multiple service areas'),

                                                                 ('MANAGE_SIZE_AND_WEIGHT_DESCRIPTIONS', 'Create, update, and delete size and weight descriptions'),
                                                                 ('VIEW_SIZE_AND_WEIGHT_DESCRIPTION', 'View size and weight description'),
                                                                 ('VIEW_SIZE_AND_WEIGHT_DESCRIPTION_MANY', 'View multiple size and weight descriptions'),
                                                                 ('UPDATE_SIZE_AND_WEIGHT_DESCRIPTION_ONE', 'Update size and weight description'),
                                                                 ('UPDATE_SIZE_AND_WEIGHT_DESCRIPTION_MANY', 'Update multiple size and weight descriptions'),
                                                                 ('DELETE_SIZE_AND_WEIGHT_DESCRIPTION_ONE', 'Delete size and weight description'),
                                                                 ('DELETE_SIZE_AND_WEIGHT_DESCRIPTION_MANY', 'Delete multiple size and weight descriptions'),

                                                                 ('MANAGE_SSO_PROVIDERS', 'Create, update, and delete sso providers'),
                                                                 ('VIEW_SSO_PROVIDER', 'View sso provider'),
                                                                 ('VIEW_SSO_PROVIDER_MANY', 'View multiple sso providers'),
                                                                 ('UPDATE_SSO_PROVIDER_ONE', 'Update sso provider'),
                                                                 ('UPDATE_SSO_PROVIDER_MANY', 'Update multiple sso providers'),
                                                                 ('DELETE_SSO_PROVIDER_ONE', 'Delete sso provider'),
                                                                 ('DELETE_SSO_PROVIDER_MANY', 'Delete multiple sso providers'),

                                                                 ('MANAGE_STATES', 'Create, update, and delete states'),
                                                                 ('VIEW_STATE', 'View state'),
                                                                 ('VIEW_STATE_MANY', 'View multiple states'),
                                                                 ('UPDATE_STATE_ONE', 'Update state'),
                                                                 ('UPDATE_STATE_MANY', 'Update multiple states'),
                                                                 ('DELETE_STATE_ONE', 'Delete state'),
                                                                 ('DELETE_STATE_MANY', 'Delete multiple states'),

                                                                 ('MANAGE_SUSPENSIONS', 'Create, update, and delete suspensions'),
                                                                 ('VIEW_SUSPENSION', 'View suspension'),
                                                                 ('VIEW_SUSPENSION_MANY', 'View multiple suspensions'),
                                                                 ('UPDATE_SUSPENSION_ONE', 'Update suspension'),
                                                                 ('UPDATE_SUSPENSION_MANY', 'Update multiple suspensions'),
                                                                 ('DELETE_SUSPENSION_ONE', 'Delete suspension'),
                                                                 ('DELETE_SUSPENSION_MANY', 'Delete multiple suspensions'),

                                                                 ('MANAGE_TRANSPORT_BASIC_PRICES', 'Create, update, and delete transport basic prices'),
                                                                 ('VIEW_TRANSPORT_BASIC_PRICE', 'View transport basic price'),
                                                                 ('VIEW_TRANSPORT_BASIC_PRICE_MANY', 'View multiple transport basic prices'),
                                                                 ('UPDATE_TRANSPORT_BASIC_PRICE_ONE', 'Update transport basic price'),
                                                                 ('UPDATE_TRANSPORT_BASIC_PRICE_MANY', 'Update multiple transport basic prices'),
                                                                 ('DELETE_TRANSPORT_BASIC_PRICE_ONE', 'Delete transport basic price'),
                                                                 ('DELETE_TRANSPORT_BASIC_PRICE_MANY', 'Delete multiple transport basic prices'),

                                                                 ('MANAGE_USER_COUPONS', 'Create, update, and delete user coupons'),
                                                                 ('VIEW_USER_COUPON', 'View user coupon'),
                                                                 ('VIEW_USER_COUPON_MANY', 'View multiple user coupons'),
                                                                 ('UPDATE_USER_COUPON_ONE', 'Update user coupon'),
                                                                 ('UPDATE_USER_COUPON_MANY', 'Update multiple user coupons'),
                                                                 ('DELETE_USER_COUPON_ONE', 'Delete user coupon'),
                                                                 ('DELETE_USER_COUPON_MANY', 'Delete multiple user coupons'),

                                                                 ('MANAGE_USER_FAVORITE_ADDRESSES', 'Create, update, and delete user favorite addresses'),
                                                                 ('VIEW_USER_FAVORITE_ADDRESS', 'View user favorite address'),
                                                                 ('VIEW_USER_FAVORITE_ADDRESS_MANY', 'View multiple user favorite addresses'),
                                                                 ('UPDATE_USER_FAVORITE_ADDRESS_ONE', 'Update user favorite address'),
                                                                 ('UPDATE_USER_FAVORITE_ADDRESS_MANY', 'Update multiple user favorite addresses'),
                                                                 ('DELETE_USER_FAVORITE_ADDRESS_ONE', 'Delete user favorite address'),
                                                                 ('DELETE_USER_FAVORITE_ADDRESS_MANY', 'Delete multiple user favorite addresses');


-- Insert data into Size_And_Weight_Descriptions table
INSERT INTO `Size_And_Weight_Descriptions` (`size`, `size_description`, `weight`, `is_latest`, `previous_id`) VALUES
                                                                                                                  ('SMALL', 'Small size description', '1-5kg', TRUE, NULL),
                                                                                                                  ('MEDIUM', 'Medium size description', '6-10kg', TRUE, NULL),
                                                                                                                  ('LARGE', 'Large size description', '11-20kg', TRUE, NULL);





-- Insert data into Events table
INSERT INTO `Events` (`title`, `link`, `contents`, `start_date`, `end_date`, `send_push_notification`, `banner_image_url`) VALUES
                                                                                                                               ('Summer Sale', 'https://example.com/summer-sale', 'Get the best deals this summer with up to 50% off on all items. Hurry, the offer lasts till the end of the month!', '2025-06-01 00:00:00', '2025-06-30 23:59:59', TRUE, 'https://example.com/images/summer_sale_banner.jpg'),
                                                                                                                               ('New Year Extravaganza', 'https://example.com/new-year', 'Join us for the grand New Year Extravaganza with exciting offers, giveaways, and live events!', '2025-12-31 00:00:00', '2026-01-01 23:59:59', TRUE, 'https://example.com/images/new_year_banner.jpg'),
                                                                                                                               ('Flash Sale Weekend', 'https://example.com/flash-sale', 'Flash sales across all categories! Don’t miss out on the best deals in town!', '2025-05-15 09:00:00', '2025-05-17 23:59:59', TRUE, 'https://example.com/images/flash_sale_banner.jpg'),
                                                                                                                               ('Back to School', 'https://example.com/back-to-school', 'Get everything you need for the new school year at unbeatable prices!', '2025-08-01 00:00:00', '2025-08-31 23:59:59', FALSE, 'https://example.com/images/back_to_school_banner.jpg'),
                                                                                                                               ('Black Friday Deals', 'https://example.com/black-friday', 'Black Friday is here! Grab massive discounts on all products only on our website.', '2025-11-27 00:00:00', '2025-11-28 23:59:59', TRUE, 'https://example.com/images/black_friday_banner.jpg'),
                                                                                                                               ('Christmas Sale', 'https://example.com/christmas-sale', 'Celebrate the Christmas season with huge discounts on all your favorite items.', '2025-12-01 00:00:00', '2025-12-25 23:59:59', TRUE, 'https://example.com/images/christmas_sale_banner.jpg'),
                                                                                                                               ('Weekend Bonanza', 'https://example.com/weekend-bonanza', 'Exclusive weekend deals across all categories. Shop now!', '2025-07-10 00:00:00', '2025-07-12 23:59:59', FALSE, 'https://example.com/images/weekend_bonanza_banner.jpg'),
                                                                                                                               ('Cyber Monday', 'https://example.com/cyber-monday', 'Cyber Monday is here! Get the best tech deals on our platform.', '2025-11-30 00:00:00', '2025-11-30 23:59:59', TRUE, 'https://example.com/images/cyber_monday_banner.jpg'),
                                                                                                                               ('Halloween Special', 'https://example.com/halloween-special', 'Celebrate Halloween with exclusive offers and spooky deals!', '2025-10-31 00:00:00', '2025-10-31 23:59:59', TRUE, 'https://example.com/images/halloween_banner.jpg'),
                                                                                                                               ('Valentine’s Day', 'https://example.com/valentines-day', 'Celebrate love with Valentine’s Day gifts and special discounts!', '2025-02-14 00:00:00', '2025-02-14 23:59:59', FALSE, 'https://example.com/images/valentines_day_banner.jpg');


-- Insert data into Event_Groups table
INSERT INTO `Event_Groups` (`event_id`, `group_id`) VALUES
                                                        (1, 8),
                                                        (2, 9),
                                                        (3, 10);


-- Insert data into Group_Members table
INSERT INTO `Group_Members` (`group_id`, `user_id`) VALUES
                                                        (1, 1),
                                                        (2, 2),
                                                        (3, 3),
                                                        (4, 4),
                                                        (5, 5),
                                                        (6, 6),
                                                        (7, 7),
                                                        (4, 10);

-- Insert data into Group_Permissions table
INSERT INTO `Group_Permissions` (`group_id`, `permission_id`) VALUES
                                                                  (1, 1),
                                                                  (1, 2),
                                                                  (1, 3),
                                                                  (1, 4),
                                                                  (1, 5),
                                                                  (1, 6),
                                                                  (1, 7),
                                                                  (1, 8),
                                                                  (1, 9),
                                                                  (1, 10);

-- Insert data into Riders table
INSERT INTO `Riders` (`user_id`, `latitude`, `longitude`, `is_online`, `is_deleted`, `is_suspend`, `passed_quiz`, `profile_completed`, `status`, `last_location_time`,
                      `emergency_contact_first_name`, `emergency_contact_last_name`, `emergency_contact_phone_number`,
                      `bank_name`, `bsb_number`, `account_number`, `signature`) VALUES
                                                                                    (3, -33.865143, 151.209900, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 08:30:00', 'Emily', 'Brown', '+61412345699', 'Commonwealth Bank', '062-000', '12345678', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (5, -37.813628, 144.963058, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 09:10:00', 'Sarah', 'Jones', '+61423456789', 'ANZ Bank', '013-000', '87654321', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (7, -27.470125, 153.021072, FALSE, FALSE, FALSE, TRUE, TRUE, 'INACTIVE', '2025-03-08 17:45:00', 'Michelle', 'Anderson', '+61434567890', 'NAB', '082-000', '23456789', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (9, -31.950527, 115.860457, FALSE, TRUE, FALSE, TRUE, TRUE, 'DELETED', '2025-03-07 14:20:00', 'Jennifer', 'White', '+61445678901', 'Westpac', '032-000', '34567890', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (2, -34.929229, 138.599503, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 10:30:00', 'Robert', 'Smith', '+61456789012', 'Commonwealth Bank', '062-001', '45678901', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (4, -42.880554, 147.324997, FALSE, FALSE, TRUE, TRUE, TRUE, 'SUSPENDED', '2025-03-06 09:15:00', 'Thomas', 'Wilson', '+61467890123', 'ANZ Bank', '013-001', '56789012', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (6, -35.282001, 149.128998, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 07:45:00', 'Christopher', 'Taylor', '+61478901234', 'NAB', '082-001', '67890123', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (8, -12.462827, 130.841782, FALSE, FALSE, FALSE, TRUE, TRUE, 'APPROVED', '2025-03-08 16:30:00', 'Daniel', 'Thomas', '+61489012345', 'Westpac', '032-001', '78901234', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (1, -36.848461, 174.763336, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 08:00:00', 'Matthew', 'Doe', '+61490123456', 'Commonwealth Bank', '062-002', '89012345', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (10, -28.016666, 153.399994, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 09:45:00', 'Andrew', 'Martin', '+61501234567', 'ANZ Bank', '013-002', '90123456', 'data:image/png;base64,iVBORw0KGgoAAAANS...');

-- Insert data into Vehicles table
INSERT INTO `Vehicles` (`rider_id`, `is_current_vehicle`, `vehicle_type`, `model_year`, `manufacturer`, `transport_photo`,
                        `driver_license`, `insurance_policy`, `driver_license_valid_from`, `driver_license_valid_to`,
                        `insurance_policy_valid_from`, `insurance_policy_valid_to`) VALUES
                                                                                        (1, TRUE, 'BICYCLE', '2023', 'Trek', 'https://example.com/vehicles/trek-bike.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
                                                                                        (2, TRUE, 'MOTORBIKE', '2022', 'Honda', 'https://example.com/vehicles/honda-motorbike.jpg', 'DL12345678', 'IP87654321', '2022-01-15', '2027-01-14', '2024-01-01', '2024-12-31'),
                                                                                        (3, TRUE, 'CAR', '2021', 'Toyota', 'https://example.com/vehicles/toyota-car.jpg', 'DL23456789', 'IP76543210', '2021-03-20', '2026-03-19', '2024-01-01', '2024-12-31'),
                                                                                        (4, TRUE, 'BICYCLE', '2023', 'Specialized', 'https://example.com/vehicles/specialized-bike.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
                                                                                        (5, TRUE, 'MOTORBIKE', '2022', 'Yamaha', 'https://example.com/vehicles/yamaha-motorbike.jpg', 'DL34567890', 'IP65432109', '2022-05-10', '2027-05-09', '2024-01-01', '2024-12-31'),
                                                                                        (6, TRUE, 'CAR', '2020', 'Hyundai', 'https://example.com/vehicles/hyundai-car.jpg', 'DL45678901', 'IP54321098', '2020-07-25', '2025-07-24', '2024-01-01', '2024-12-31'),
                                                                                        (7, TRUE, 'BICYCLE', '2023', 'Giant', 'https://example.com/vehicles/giant-bike.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
                                                                                        (8, TRUE, 'MOTORBIKE', '2021', 'Suzuki', 'https://example.com/vehicles/suzuki-motorbike.jpg', 'DL56789012', 'IP43210987', '2021-09-05', '2026-09-04', '2024-01-01', '2024-12-31'),
                                                                                        (9, TRUE, 'CAR', '2022', 'Mazda', 'https://example.com/vehicles/mazda-car.jpg', 'DL67890123', 'IP32109876', '2022-11-18', '2027-11-17', '2024-01-01', '2024-12-31'),
                                                                                        (10, TRUE, 'BICYCLE', '2023', 'Cannondale', 'https://example.com/vehicles/cannondale-bike.jpg', NULL, NULL, NULL, NULL, NULL, NULL);

-- Insert data into Orders table
INSERT INTO `Orders` (`order_number`, `customer_id`, `customer_full_name`, `message`, `customer_phone_number`,
                      `rider_id`, `total_price`, `total_distance`, `estimated_total_time`, `age_limit`,
                      `vehicle_type`, `order_status`, `paid_at`) VALUES
                                                                     ('ORD-20250309-001', 4, 'Sarah Wilson', 'Please deliver ASAP', '+61445678901', 1, 25.50, 3.2, 25, FALSE, 'BICYCLE', 'DELIVERED', '2025-03-09 09:15:00'),
                                                                     ('ORD-20250309-002', 10, 'Sophia Martin', 'Handle with care', '+61501234567', 2, 32.75, 4.5, 35, FALSE, 'MOTORBIKE', 'DELIVERING', '2025-03-09 10:00:00'),
                                                                     ('ORD-20250309-003', 8, 'Olivia Thomas', 'Ring doorbell on arrival', '+61489012345', 3, 45.20, 7.8, 45, FALSE, 'CAR', 'MATCHED', '2025-03-09 10:30:00'),
                                                                     ('ORD-20250309-004', 6, 'Emma Taylor', 'Leave at reception', '+61467890123', 5, 18.90, 2.1, 20, FALSE, 'BICYCLE', 'BOOKED', '2025-03-09 11:00:00'),
                                                                     ('ORD-20250309-005', 4, 'Sarah Wilson', 'Call on arrival', '+61445678901', NULL, 29.30, 3.5, 30, TRUE, 'MOTORBIKE', 'STANDBY', NULL),
                                                                     ('ORD-20250308-001', 10, 'Sophia Martin', 'ID check required', '+61501234567', 7, 55.40, 9.2, 55, TRUE, 'CAR', 'DELIVERED', '2025-03-08 14:30:00'),
                                                                     ('ORD-20250308-002', 8, 'Olivia Thomas', 'Fragile items', '+61489012345', 9, 22.60, 2.8, 25, FALSE, 'BICYCLE', 'DELIVERED', '2025-03-08 15:45:00'),
                                                                     ('ORD-20250308-003', 6, 'Emma Taylor', 'No contact delivery', '+61467890123', 10, 38.75, 6.4, 40, FALSE, 'MOTORBIKE', 'DELIVERED', '2025-03-08 16:30:00'),
                                                                     ('ORD-20250307-001', 4, 'Sarah Wilson', 'Leave at door', '+61445678901', 1, 42.90, 7.1, 45, FALSE, 'CAR', 'DELIVERED', '2025-03-07 11:15:00'),
                                                                     ('ORD-20250307-002', 10, 'Sophia Martin', 'Call when nearby', '+61501234567', 5, 19.80, 2.3, 20, FALSE, 'BICYCLE', 'CANCELED', '2025-03-07 12:00:00');
-- Insert data into Advertisements table
INSERT INTO `Advertisements` (`title`, `content`, `image_url`) VALUES
                                                                   ('Spring Sale', 'Get up to 50% off on all items! Limited time only.', 'https://example.com/images/spring_sale.jpg'),
                                                                   ('Summer Collection', 'Explore our new summer collection of clothes and accessories.', 'https://example.com/images/summer_collection.jpg'),
                                                                   ('Winter Deals', 'Big discounts on winter coats, boots, and more!', 'https://example.com/images/winter_deals.jpg'),
                                                                   ('Flash Sale', 'Hurry! Up to 70% off on selected products for 24 hours only!', 'https://example.com/images/flash_sale.jpg'),
                                                                   ('Back to School', 'Save on school supplies and clothing for the new semester.', 'https://example.com/images/back_to_school.jpg'),
                                                                   ('New Year Sale', 'Celebrate the New Year with massive discounts on all categories.', 'https://example.com/images/new_year_sale.jpg'),
                                                                   ('Weekend Offer', 'Enjoy special weekend deals on electronics and gadgets.', 'https://example.com/images/weekend_offer.jpg'),
                                                                   ('Buy One Get One Free', 'Buy one item and get another for free! Limited time offer.', 'https://example.com/images/buy_one_get_one.jpg'),
                                                                   ('Holiday Specials', 'Exclusive holiday discounts on travel and leisure packages.', 'https://example.com/images/holiday_specials.jpg'),
                                                                   ('Clearance Sale', 'Everything must go! Up to 80% off on clearance items.', 'https://example.com/images/clearance_sale.jpg');


-- Insert data into Destinations table
INSERT INTO `Destinations` (`destination_latitude`, `destination_longitude`, `destination_address_text`, `sequence`,
                            `recipient_phone_number`, `price`, `estimated_time`, `recipient_name`,
                            `order_id`, `status`, `delivery_by`) VALUES
                                                                     (-33.870743, 151.208530, '45 Market Street, Sydney NSW 2000', 1, '+61412345678', 25.50, 10, 'John Recipient', 1, 'COMPLETED', 1),
                                                                     (-37.818333, 144.968056, '89 Flinders Lane, Melbourne VIC 3000', 1, '+61423456789', 32.75, 15, 'Mary Recipient', 2, 'PENDING', NULL),
                                                                     (-27.465806, 153.027688, '123 Eagle Street, Brisbane QLD 4000', 1, '+61434567890', 45.20, 20, 'Peter Recipient', 3, 'PENDING', NULL),
                                                                     (-31.957542, 115.858366, '78 St Georges Terrace, Perth WA 6000', 1, '+61445678901', 18.90, 10, 'Susan Recipient', 4, 'PENDING', NULL),
                                                                     (-34.922165, 138.603644, '91 King William Street, Adelaide SA 5000', 1, '+61456789012', 29.30, 15, 'Robert Recipient', 5, 'PENDING', NULL),
                                                                     (-42.884286, 147.329013, '45 Elizabeth Street, Hobart TAS 7000', 1, '+61467890123', 55.40, 25, 'Jennifer Recipient', 6, 'COMPLETED', 7),
                                                                     (-35.279966, 149.131360, '25 London Circuit, Canberra ACT 2600', 1, '+61478901234', 22.60, 10, 'Michael Recipient', 7, 'COMPLETED', 9),
                                                                     (-12.459671, 130.839813, '19 Knuckey Street, Darwin NT 0800', 1, '+61489012345', 38.75, 20, 'Elizabeth Recipient', 8, 'COMPLETED', 10),
                                                                     (-36.843419, 174.767211, '15 Shortland Street, Auckland 1010', 1, '+61490123456', 42.90, 20, 'David Recipient', 9, 'COMPLETED', 1),
                                                                     (-28.001887, 153.430369, '22 Elkhorn Avenue, Surfers Paradise QLD 4217', 1, '+61501234567', 19.80, 10, 'Patricia Recipient', 10, 'CANCELLED', NULL);



-- Insert data into Delivery_Details table
INSERT INTO `Delivery_Details` (`pickup_latitude`, `pickup_longitude`, `pickup_address_text`, `estimated_time`,
                                `pickup_time`, `pickup_date_time`, `picked_up_date_time`, `picked_up_by`,
                                `picked_up_notes`, `recipient_phone_number`, `recipient_name`,
                                `pickup_photo_urls`, `order_id`) VALUES
                                                                     (-33.865143, 151.209900, '123 George Street, Sydney NSW 2000', 15, 'ASAP', '2025-03-09 09:00:00', '2025-03-09 09:10:00', 1, 'Picked up from reception', '+61445678901', 'Sarah Wilson', '["https://example.com/pickup/photo1.jpg"]', 1),
                                                                     (-37.813628, 144.963058, '456 Collins Street, Melbourne VIC 3000', 20, 'ASAP', '2025-03-09 10:15:00', NULL, NULL, NULL, '+61501234567', 'Sophia Martin', '["https://example.com/pickup/photo2.jpg"]', 2),
                                                                     (-27.470125, 153.021072, '789 Queen Street, Brisbane QLD 4000', 25, 'TODAY', '2025-03-09 11:00:00', NULL, NULL, NULL, '+61489012345', 'Olivia Thomas', '["https://example.com/pickup/photo3.jpg"]', 3),
                                                                     (-31.950527, 115.860457, '321 Hay Street, Perth WA 6000', 15, 'IN_2_HOURS', '2025-03-09 13:00:00', NULL, NULL, NULL, '+61467890123', 'Emma Taylor', '["https://example.com/pickup/photo4.jpg"]', 4),
                                                                     (-34.929229, 138.599503, '654 North Terrace, Adelaide SA 5000', 20, 'OTHER_DAY', '2025-03-10 10:00:00', NULL, NULL, NULL, '+61445678901', 'Sarah Wilson', '["https://example.com/pickup/photo5.jpg"]', 5),
                                                                     (-42.880554, 147.324997, '987 Elizabeth Street, Hobart TAS 7000', 30, 'ASAP', '2025-03-08 14:00:00', '2025-03-08 14:05:00', 7, 'Package was at security desk', '+61501234567', 'Sophia Martin', '["https://example.com/pickup/photo6.jpg"]', 6),
                                                                     (-35.282001, 149.128998, '147 Northbourne Avenue, Canberra ACT 2600', 15, 'ASAP', '2025-03-08 15:30:00', '2025-03-08 15:40:00', 9, 'Picked up from mailroom', '+61489012345', 'Olivia Thomas', '["https://example.com/pickup/photo7.jpg"]', 7),
                                                                     (-12.462827, 130.841782, '258 Mitchell Street, Darwin NT 0800', 20, 'ASAP', '2025-03-08 16:15:00', '2025-03-08 16:20:00', 10, 'Customer handed package directly', '+61467890123', 'Emma Taylor', '["https://example.com/pickup/photo8.jpg"]', 8),
                                                                     (-36.848461, 174.763336, '369 Queen Street, Auckland 1010', 25, 'ASAP', '2025-03-07 11:00:00', '2025-03-07 11:10:00', 1, 'Package was at reception', '+61445678901', 'Sarah Wilson', '["https://example.com/pickup/photo9.jpg"]', 9),
                                                                     (-28.016666, 153.399994, '159 Cavill Avenue, Gold Coast QLD 4217', 15, 'ASAP', '2025-03-07 12:00:00', '2025-03-07 12:05:00', 5, 'Package collected from store clerk', '+61501234567', 'Sophia Martin', '["https://example.com/pickup/photo10.jpg"]', 10);



INSERT INTO `Note_Delivery_Details` (`note`, `photo_urls`, `delivery_detail_id`) VALUES
                                                                                     ('Note for delivery detail 1.', '["https://example.com/photo1.jpg", "https://example.com/photo2.jpg"]', 1),
                                                                                     ('Note for delivery detail 2.', '["https://example.com/photo3.jpg", "https://example.com/photo4.jpg"]', 2),
                                                                                     ('Note for delivery detail 3.', '["https://example.com/photo5.jpg", "https://example.com/photo6.jpg"]', 3),
                                                                                     ('Note for delivery detail 4.', '["https://example.com/photo7.jpg", "https://example.com/photo8.jpg"]', 4),
                                                                                     ('Note for delivery detail 5.', '["https://example.com/photo9.jpg", "https://example.com/photo10.jpg"]', 5),
                                                                                     ('Note for delivery detail 6.', '["https://example.com/photo11.jpg", "https://example.com/photo12.jpg"]', 6),
                                                                                     ('Note for delivery detail 7.', '["https://example.com/photo13.jpg", "https://example.com/photo14.jpg"]', 7),
                                                                                     ('Note for delivery detail 8.', '["https://example.com/photo15.jpg", "https://example.com/photo16.jpg"]', 8),
                                                                                     ('Note for delivery detail 9.', '["https://example.com/photo17.jpg", "https://example.com/photo18.jpg"]', 9),
                                                                                     ('Note for delivery detail 10.', '["https://example.com/photo19.jpg", "https://example.com/photo20.jpg"]', 10);

INSERT INTO `Note_Destinations` (`note`, `photo_urls`, `destination_id`) VALUES
                                                                             ('Note for destination 1.', '["https://example.com/photo21.jpg", "https://example.com/photo22.jpg"]', 1),
                                                                             ('Note for destination 2.', '["https://example.com/photo23.jpg", "https://example.com/photo24.jpg"]', 2),
                                                                             ('Note for destination 3.', '["https://example.com/photo25.jpg", "https://example.com/photo26.jpg"]', 3),
                                                                             ('Note for destination 4.', '["https://example.com/photo27.jpg", "https://example.com/photo28.jpg"]', 4),
                                                                             ('Note for destination 5.', '["https://example.com/photo29.jpg", "https://example.com/photo30.jpg"]', 5),
                                                                             ('Note for destination 6.', '["https://example.com/photo31.jpg", "https://example.com/photo32.jpg"]', 6),
                                                                             ('Note for destination 7.', '["https://example.com/photo33.jpg", "https://example.com/photo34.jpg"]', 7),
                                                                             ('Note for destination 8.', '["https://example.com/photo35.jpg", "https://example.com/photo36.jpg"]', 8),
                                                                             ('Note for destination 9.', '["https://example.com/photo37.jpg", "https://example.com/photo38.jpg"]', 9),
                                                                             ('Note for destination 10.', '["https://example.com/photo39.jpg", "https://example.com/photo40.jpg"]', 10);

INSERT INTO `Evidences` (`destination_id`, `urls`, `recipient_name`, `recipient_DOB`, `note`, `time`) VALUES
                                                                                                          (1, '["https://example.com/image1.jpg", "https://example.com/image2.jpg"]', 'John Doe', '1990-01-01 00:00:00', 'Sample evidence note 1', '2025-03-09 10:00:00'),
                                                                                                          (2, '["https://example.com/image3.jpg", "https://example.com/image4.jpg"]', 'Jane Smith', '1985-06-15 00:00:00', 'Sample evidence note 2', '2025-03-09 10:10:00'),
                                                                                                          (3, '["https://example.com/image5.jpg", "https://example.com/image6.jpg"]', 'Robert Brown', '1978-03-30 00:00:00', 'Sample evidence note 3', '2025-03-09 10:20:00'),
                                                                                                          (4, '["https://example.com/image7.jpg", "https://example.com/image8.jpg"]', 'Emily Johnson', '1992-07-25 00:00:00', 'Sample evidence note 4', '2025-03-09 10:30:00'),
                                                                                                          (5, '["https://example.com/image9.jpg", "https://example.com/image10.jpg"]', 'Michael Lee', '1995-05-05 00:00:00', 'Sample evidence note 5', '2025-03-09 10:40:00'),
                                                                                                          (6, '["https://example.com/image11.jpg", "https://example.com/image12.jpg"]', 'Sophia Turner', '1988-02-19 00:00:00', 'Sample evidence note 6', '2025-03-09 10:50:00'),
                                                                                                          (7, '["https://example.com/image13.jpg", "https://example.com/image14.jpg"]', 'William Harris', '2000-12-12 00:00:00', 'Sample evidence note 7', '2025-03-09 11:00:00'),
                                                                                                          (8, '["https://example.com/image15.jpg", "https://example.com/image16.jpg"]', 'Olivia Wilson', '1993-11-20 00:00:00', 'Sample evidence note 8', '2025-03-09 11:10:00'),
                                                                                                          (9, '["https://example.com/image17.jpg", "https://example.com/image18.jpg"]', 'James Clark', '1983-09-09 00:00:00', 'Sample evidence note 9', '2025-03-09 11:20:00'),
                                                                                                          (10, '["https://example.com/image19.jpg", "https://example.com/image20.jpg"]', 'Ava Walker', '1998-04-22 00:00:00', 'Sample evidence note 10', '2025-03-09 11:30:00');

-- Insert data into Questions table
INSERT INTO `Questions` (`image_url`, `question_text`, `description`)
VALUES
    ('http://example.com/delivery1.png', 'What is the most important factor in ensuring timely delivery?', 'This question tests knowledge on what is key to meeting delivery deadlines.'),
    ('http://example.com/delivery2.png', 'How should a driver handle customer complaints about a delayed delivery?', 'This question addresses customer service in case of delivery delays.'),
    ('http://example.com/delivery3.png', 'What is the best way for a driver to confirm an address?', 'A question on how drivers should ensure the correct address during deliveries.'),
    ('http://example.com/delivery4.png', 'What should a driver do when encountering a traffic jam during delivery?', 'This question discusses how drivers should handle unexpected delays on the road.'),
    ('http://example.com/delivery5.png', 'What safety measures should be followed while handling hazardous goods?', 'A question about safety protocols when delivering sensitive items.'),
    ('http://example.com/delivery6.png', 'What should a driver do if the customer is not home during a delivery?', 'A question on how drivers should act in case the customer is not available.'),
    ('http://example.com/delivery7.png', 'How can a driver improve fuel efficiency during deliveries?', 'This question tests knowledge on eco-friendly driving for fuel savings.'),
    ('http://example.com/delivery8.png', 'What should a driver do when a vehicle breaks down during a delivery?', 'This question is about emergency actions when a breakdown happens during a delivery.'),
    ('http://example.com/delivery9.png', 'What is the best way to manage delivery routes efficiently?', 'A question on how to optimize delivery routes for time and fuel savings.'),
    ('http://example.com/delivery10.png', 'How should a driver handle delivery in a high-security area?', 'A question on how drivers should manage deliveries in areas with high-security concerns.');

-- Insert data into Question_Options table
INSERT INTO `Question_Options` (`question_id`, `question_option`, `description`, `is_correct`)
VALUES
    -- Question 1: Timely Delivery
    (1, 'Time management', 'Efficiently managing time is essential to meeting delivery deadlines.', TRUE),
    (1, 'Packaging quality', 'Good packaging prevents damage, but doesn’t impact delivery time.', FALSE),
    (1, 'Route optimization', 'Optimizing delivery routes is important for saving time but not directly related to timely delivery.', FALSE),
    (1, 'Driver attitude', 'Having a positive attitude helps with customer interaction but doesn’t directly affect delivery speed.', FALSE),

    -- Question 2: Customer Complaints
    (2, 'Offer a discount on the next delivery', 'Offering discounts can help retain customers but doesn’t resolve the complaint.', FALSE),
    (2, 'Apologize and offer a solution', 'A polite apology with an appropriate solution goes a long way in resolving complaints.', TRUE),
    (2, 'Ignore the complaint', 'Ignoring customer complaints leads to dissatisfaction and negative feedback.', FALSE),
    (2, 'Blame the weather', 'Blaming weather conditions without a solution can worsen the situation.', FALSE),

    -- Question 3: Confirming an Address
    (3, 'Use GPS to find the address', 'GPS can help, but it might not always be accurate or updated.', FALSE),
    (3, 'Call the customer for confirmation', 'Calling the customer ensures the correct address is confirmed directly.', TRUE),
    (3, 'Guess the address based on landmarks', 'Guessing is unreliable and could lead to delays or errors.', FALSE),
    (3, 'Use an online map service', 'An online map service may help, but confirming directly with the customer is best.', FALSE),

    -- Question 4: Traffic Jam Management
    (4, 'Use a different route if possible', 'Switching to an alternative route is often the best option in a traffic jam.', TRUE),
    (4, 'Wait for traffic to clear', 'Waiting in a traffic jam wastes time and impacts delivery efficiency.', FALSE),
    (4, 'Call the customer to inform them of the delay', 'While helpful, it doesnt address the immediate issue of traffic.', FALSE),
    (4, 'Try to drive through the jam anyway', 'Attempting to drive through heavy traffic is inefficient and dangerous.', FALSE),

    -- Question 5: Handling Hazardous Goods
    (5, 'Wear gloves and follow safety guidelines', 'Wearing gloves and following safety guidelines ensures safe handling of hazardous materials.', TRUE),
    (5, 'Avoid talking to the customer', 'Talking to the customer should not impact handling hazardous materials.', FALSE),
    (5, 'Deliver without special precautions', 'Not following safety procedures when handling hazardous goods can be dangerous.', FALSE),
    (5, 'Use the fastest delivery route', 'Speed is important, but safety is the primary concern when handling hazardous materials.', FALSE),

    -- Question 6: Customer Not Home
    (6, 'Leave the package at the door', 'Leaving packages unattended is risky and could result in theft or damage.', FALSE),
    (6, 'Reschedule the delivery or call the customer', 'Contacting the customer or rescheduling the delivery is the best option.', TRUE),
    (6, 'Leave a note for the customer', 'Leaving a note might not resolve the situation or lead to delivery issues.', FALSE),
    (6, 'Take the package back to the warehouse', 'Returning the package to the warehouse should be a last resort.', FALSE),

    -- Question 7: Fuel Efficiency
    (7, 'Drive aggressively to save time', 'Aggressive driving is dangerous and wastes fuel in the long run.', FALSE),
    (7, 'Use air conditioning only when necessary', 'Reducing the use of air conditioning can improve fuel efficiency.', TRUE),
    (7, 'Avoid route planning', 'Not planning routes leads to wasted fuel and unnecessary detours.', FALSE),
    (7, 'Drive with heavy cargo at high speeds', 'Driving at high speeds with heavy cargo wastes fuel and increases risks.', FALSE),

    -- Question 8: Vehicle Breakdown
    (8, 'Contact a roadside assistance service immediately', 'Contacting roadside assistance is the safest option when a breakdown occurs.', TRUE),
    (8, 'Attempt to fix the vehicle without professional help', 'Attempting repairs without expertise can worsen the situation.', FALSE),
    (8, 'Continue driving with the breakdown', 'Driving with a malfunctioning vehicle may cause further damage and delay the delivery.', FALSE),
    (8, 'Abandon the vehicle and continue on foot', 'Abandoning the vehicle is not practical or safe for deliveries.', FALSE),

    -- Question 9: Route Management
    (9, 'Use a delivery route planner app', 'Route planner apps help drivers choose the most efficient route.', TRUE),
    (9, 'Ask for directions at every turn', 'Asking for directions wastes time and disrupts the flow of the delivery.', FALSE),
    (9, 'Drive without a plan and adjust on the fly', 'Not planning routes leads to inefficiency and time loss during deliveries.', FALSE),
    (9, 'Avoid checking for traffic updates', 'Ignoring traffic updates can lead to delays and wasted time.', FALSE),

    -- Question 10: Security Areas
    (10, 'Call ahead to notify security', 'Notifying security in advance ensures smooth access and delivery in high-security areas.', TRUE),
    (10, 'Try to bypass security checks', 'Bypassing security can cause delays and is potentially dangerous.', FALSE),
    (10, 'Only deliver to secure areas at night', 'Delivering at night may not be safe or effective in all cases.', FALSE),
    (10, 'Leave the delivery with a guard', 'Leaving deliveries with a guard is not ideal unless it is explicitly allowed.', FALSE);

-- Rider 1 answers all correctly in the INITIAL_QUIZ
INSERT INTO `Rider_Answers` (`rider_id`, `option_id`, `quiz_key`)
VALUES
    (1, 1, 'INITIAL_QUIZ'),
    (1, 6, 'INITIAL_QUIZ'),
    (1, 37, 'INITIAL_QUIZ'),
    (1, 9, 'INITIAL_QUIZ'),
    (1, 13, 'INITIAL_QUIZ'),
    (1, 17, 'INITIAL_QUIZ'),
    (1, 21, 'INITIAL_QUIZ'),
    (1, 25, 'INITIAL_QUIZ'),
    (1, 29, 'INITIAL_QUIZ'),
    (1, 33, 'INITIAL_QUIZ');

-- Rider 2 answers all incorrectly in the INITIAL_QUIZ
INSERT INTO `Rider_Answers` (`rider_id`, `option_id`, `quiz_key`)
VALUES
    (2, 2, 'INITIAL_QUIZ'),
    (2, 6, 'INITIAL_QUIZ'),
    (2, 37, 'INITIAL_QUIZ'),
    (2, 10, 'INITIAL_QUIZ'),
    (2, 14, 'INITIAL_QUIZ'),
    (2, 18, 'INITIAL_QUIZ'),
    (2, 22, 'INITIAL_QUIZ'),
    (2, 26, 'INITIAL_QUIZ'),
    (2, 30, 'INITIAL_QUIZ'),
    (2, 34, 'INITIAL_QUIZ');

-- Rider 2 answers correctly in the SECOND_QUIZ
INSERT INTO `Rider_Answers` (`rider_id`, `option_id`, `quiz_key`)
VALUES
    (2, 1, 'SECOND_QUIZ'),
    (2, 6, 'SECOND_QUIZ'),
    (2, 37, 'SECOND_QUIZ'),
    (2, 9, 'SECOND_QUIZ'),
    (2, 13, 'SECOND_QUIZ'),
    (2, 17, 'SECOND_QUIZ'),
    (2, 21, 'SECOND_QUIZ'),
    (2, 25, 'SECOND_QUIZ'),
    (2, 29, 'SECOND_QUIZ'),
    (2, 33, 'SECOND_QUIZ');
USE db;
-- Insert data into Sso_Providers table
INSERT INTO `Sso_Providers` (`sso_provider`) VALUES
                                                 ('Google'),
                                                 ('Facebook'),
                                                 ('Apple'),
                                                 ('Microsoft'),
                                                 ('Twitter'),
                                                 ('LinkedIn'),
                                                 ('GitHub'),
                                                 ('Amazon'),
                                                 ('Yahoo'),
                                                 ('Discord');

-- Insert data into Bussiness_Accounts table
INSERT INTO `Bussiness_Accounts` (`company_ABN`, `company_name`, `logo_url`, `is_active`) VALUES
                                                                                              ('12345678901', 'Acme Corporation', 'https://example.com/logos/acme.png', TRUE),
                                                                                              ('23456789012', 'Globex Industries', 'https://example.com/logos/globex.png', TRUE),
                                                                                              ('34567890123', 'Initech Systems', 'https://example.com/logos/initech.png', TRUE),
                                                                                              ('45678901234', 'Massive Dynamic', 'https://example.com/logos/massive.png', TRUE),
                                                                                              ('56789012345', 'Umbrella Corporation', 'https://example.com/logos/umbrella.png', FALSE),
                                                                                              ('67890123456', 'Wayne Enterprises', 'https://example.com/logos/wayne.png', TRUE),
                                                                                              ('78901234567', 'Stark Industries', 'https://example.com/logos/stark.png', TRUE),
                                                                                              ('89012345678', 'Oscorp Industries', 'https://example.com/logos/oscorp.png', TRUE),
                                                                                              ('90123456789', 'Cyberdyne Systems', 'https://example.com/logos/cyberdyne.png', FALSE),
                                                                                              ('01234567890', 'LexCorp', 'https://example.com/logos/lexcorp.png', TRUE);

-- Insert data into States table
INSERT INTO `States` (`name`, `code`, `logo_url`) VALUES
                                                      ('New South Wales', 'NSW', 'https://example.com/logos/nsw.png'),
                                                      ('Victoria', 'VIC', 'https://example.com/logos/vic.png'),
                                                      ('Queensland', 'QLD', 'https://example.com/logos/qld.png'),
                                                      ('Western Australia', 'WA', 'https://example.com/logos/wa.png'),
                                                      ('South Australia', 'SA', 'https://example.com/logos/sa.png'),
                                                      ('Tasmania', 'TAS', 'https://example.com/logos/tas.png'),
                                                      ('Australian Capital Territory', 'ACT', 'https://example.com/logos/act.png'),
                                                      ('Northern Territory', 'NT', 'https://example.com/logos/nt.png'),
                                                      ('New Zealand', 'NZ', 'https://example.com/logos/nz.png'),
                                                      ('External Territory', 'EXT', 'https://example.com/logos/ext.png');

-- Insert data into Users table
INSERT INTO `Users` (`username`, `first_name`, `last_name`, `date_of_birth`, `gender`, `email`, `email_verified`, `phone`, `phone_verified`, `password_hash`, `last_login`, `account_type`, `sso_provider_id`, `bussiness_account_id`, `profile_picture`, `account_status`) VALUES
                                                                                                                                                                                                                                                                                ('john_doe', 'John', 'Doe', '1985-03-15', 'MALE', 'john.doe@example.com', TRUE, '+61412345678', TRUE, '$2a$12$1234567890123456789012', '2025-03-08 09:30:00', 'STANDARD', NULL, 1, 'https://example.com/profiles/john.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('jane_smith', 'Jane', 'Smith', '1990-07-22', 'FEMALE', 'jane.smith@example.com', TRUE, '+61423456789', TRUE, '$2a$12$2345678901234567890123', '2025-03-08 10:15:00', 'STANDARD', NULL, 2, 'https://example.com/profiles/jane.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('michael_brown', 'Michael', 'Brown', '1988-11-05', 'MALE', 'michael.brown@example.com', TRUE, '+61434567890', TRUE, '$2a$12$3456789012345678901234', '2025-03-07 14:20:00', 'STANDARD', NULL, NULL, 'https://example.com/profiles/michael.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('sarah_wilson', 'Sarah', 'Wilson', '1992-04-30', 'FEMALE', 'sarah.wilson@example.com', TRUE, '+61445678901', TRUE, '$2a$12$4567890123456789012345', '2025-03-07 16:45:00', 'STANDARD', NULL, 3, 'https://example.com/profiles/sarah.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('david_jones', 'David', 'Jones', '1983-09-18', 'MALE', 'david.jones@example.com', TRUE, '+61456789012', TRUE, '$2a$12$5678901234567890123456', '2025-03-06 11:30:00', 'STANDARD', 1, NULL, 'https://example.com/profiles/david.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('emma_taylor', 'Emma', 'Taylor', '1995-02-10', 'FEMALE', 'emma.taylor@example.com', FALSE, '+61467890123', FALSE, '$2a$12$6789012345678901234567', NULL, 'STANDARD', NULL, 4, 'https://example.com/profiles/emma.jpg', 'PENDING'),
                                                                                                                                                                                                                                                                                ('james_anderson', 'James', 'Anderson', '1980-12-25', 'MALE', 'james.anderson@example.com', TRUE, '+61478901234', TRUE, '$2a$12$7890123456789012345678', '2025-03-05 08:40:00', 'STANDARD', NULL, NULL, 'https://example.com/profiles/james.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('olivia_thomas', 'Olivia', 'Thomas', '1993-06-08', 'FEMALE', 'olivia.thomas@example.com', TRUE, '+61489012345', TRUE, '$2a$12$8901234567890123456789', '2025-03-04 17:15:00', 'STANDARD', 2, 5, 'https://example.com/profiles/olivia.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('william_white', 'William', 'White', '1987-10-03', 'MALE', 'william.white@example.com', TRUE, '+61490123456', TRUE, '$2a$12$9012345678901234567890', '2025-03-08 13:20:00', 'STANDARD', NULL, NULL, 'https://example.com/profiles/william.jpg', 'SUSPENDED'),
                                                                                                                                                                                                                                                                                ('sophia_martin', 'Sophia', 'Martin', '1991-01-15', 'FEMALE', 'sophia.martin@example.com', TRUE, '+61501234567', TRUE, '$2a$12$0123456789012345678901', '2025-03-07 09:50:00', 'STANDARD', NULL, 6, 'https://example.com/profiles/sophia.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('user1', 'user1', 'user1', '1987-10-03', 'MALE', 'user1@example.com', TRUE, '+61490123456', TRUE, '$2a$12$9012345678901234567890', '2025-03-08 13:20:00', 'STANDARD', NULL, NULL, 'https://example.com/profiles/william.jpg', 'ACTIVE'),
                                                                                                                                                                                                                                                                                ('admin1', 'admin1', 'admin1', '1991-01-15', 'FEMALE', 'admin1@example.com', TRUE, '+61501234567', TRUE, '$2a$12$0123456789012345678901', '2025-03-07 09:50:00', 'STANDARD', NULL, 6, 'https://example.com/profiles/sophia.jpg', 'ACTIVE');

-- Insert data into Service_Areas table
INSERT INTO `Service_Areas` (`name`, `code`, `is_active`, `state_id`) VALUES
                                                                          ('Sydney CBD', 'SYD-CBD', TRUE, 1),
                                                                          ('Melbourne CBD', 'MEL-CBD', TRUE, 2),
                                                                          ('Brisbane CBD', 'BNE-CBD', TRUE, 3),
                                                                          ('Perth Metropolitan', 'PER-MET', TRUE, 4),
                                                                          ('Adelaide Central', 'ADL-CEN', TRUE, 5),
                                                                          ('Hobart City', 'HBT-CTY', FALSE, 6),
                                                                          ('Canberra Central', 'CBR-CEN', TRUE, 7),
                                                                          ('Darwin City', 'DRW-CTY', TRUE, 8),
                                                                          ('Auckland Central', 'AKL-CEN', FALSE, 9),
                                                                          ('Gold Coast', 'GLD-CST', TRUE, 3);

-- Insert data into Billing_Address table
INSERT INTO `Billing_Address` (`billing_email`, `billing_street_address`, `billing_street_address2`, `billing_state_id`, `billing_postcode`, `billing_suburb`, `user_id`) VALUES
                                                                                                                                                                              ('john.doe@example.com', '123 Main Street', 'Apartment 4B', 1, '2000', 'Sydney', 1),
                                                                                                                                                                              ('jane.smith@example.com', '456 Park Avenue', 'Suite 701', 2, '3000', 'Melbourne', 2),
                                                                                                                                                                              ('michael.brown@example.com', '789 Queens Road', NULL, 3, '4000', 'Brisbane', 3),
                                                                                                                                                                              ('sarah.wilson@example.com', '321 King Street', 'Unit 12', 4, '6000', 'Perth', 4),
                                                                                                                                                                              ('david.jones@example.com', '654 Collins Street', NULL, 5, '5000', 'Adelaide', 5),
                                                                                                                                                                              ('emma.taylor@example.com', '987 Murray Street', 'Apartment 3C', 6, '7000', 'Hobart', 6),
                                                                                                                                                                              ('james.anderson@example.com', '147 Northbourne Avenue', NULL, 7, '2600', 'Canberra', 7),
                                                                                                                                                                              ('olivia.thomas@example.com', '258 Mitchell Street', 'Suite 5', 8, '0800', 'Darwin', 8),
                                                                                                                                                                              ('william.white@example.com', '369 Queen Street', NULL, 9, '1010', 'Auckland', 9),
                                                                                                                                                                              ('sophia.martin@example.com', '159 Cavill Avenue', 'Unit 8D', 3, '4217', 'Surfers Paradise', 10);

-- Insert data into Ma_Groups table
INSERT INTO `Ma_Groups` (`name`, `description`, `group_type`) VALUES
                                                                  ('Administrators', 'Users with full system access', 'PERMISSION'),
                                                                  ('Dispatchers', 'Users who can manage orders and riders', 'PERMISSION'),
                                                                  ('Riders', 'Delivery personnel', 'PERMISSION'),
                                                                  ('Customers', 'Regular users who place orders', 'PERMISSION'),
                                                                  ('Support Staff', 'Customer service representatives', 'PERMISSION'),
                                                                  ('Finance Team', 'Users who handle billing and payments', 'PERMISSION'),
                                                                  ('Marketing', 'Users who manage promotions and events', 'PERMISSION'),
                                                                  ('Holiday Sales Event', 'Special event participants', 'EVENT'),
                                                                  ('New Rider Training', 'Training event for new riders', 'EVENT'),
                                                                  ('Customer Appreciation Week', 'Special event for valued customers', 'EVENT');



-- Insert data into Permissions table
INSERT INTO `Permissions` (`permission_name`, `description`) VALUES
                                                                 -- Advertisements
                                                                 ('MANAGE_ADVERTISEMENTS', 'Create, update, and delete advertisements'),
                                                                 ('VIEW_ADVERTISEMENT', 'View advertisement by the user it self'),
                                                                 ('VIEW_ADVERTISEMENT_MANY', 'View multiple advertisements'),
                                                                 ('UPDATE_ADVERTISEMENT_ONE', 'Update advertisement created by the user it self'),
                                                                 ('UPDATE_ADVERTISEMENT_MANY', 'Update multiple advertisements'),
                                                                 ('DELETE_ADVERTISEMENT_ONE', 'Delete advertisement created by the user it self'),
                                                                 ('DELETE_ADVERTISEMENT_MANY', 'Delete multiple advertisements'),

                                                                 -- Announcements
                                                                 ('MANAGE_ANNOUNCEMENTS', 'Create, update, and delete announcements'),
                                                                 ('VIEW_ANNOUNCEMENT', 'View announcement'),
                                                                 ('VIEW_ANNOUNCEMENT_MANY', 'View multiple announcements'),
                                                                 ('UPDATE_ANNOUNCEMENT_ONE', 'Update announcement'),
                                                                 ('UPDATE_ANNOUNCEMENT_MANY', 'Update multiple announcements'),
                                                                 ('DELETE_ANNOUNCEMENT_ONE', 'Delete announcement'),
                                                                 ('DELETE_ANNOUNCEMENT_MANY', 'Delete multiple announcements'),

                                                                 -- App_Versions
                                                                 ('MANAGE_APP_VERSIONS', 'Create, update, and delete app versions'),
                                                                 ('VIEW_APP_VERSION', 'View app version'),
                                                                 ('VIEW_APP_VERSION_MANY', 'View multiple app versions'),
                                                                 ('UPDATE_APP_VERSION_ONE', 'Update app version'),
                                                                 ('UPDATE_APP_VERSION_MANY', 'Update multiple app versions'),
                                                                 ('DELETE_APP_VERSION_ONE', 'Delete app version'),
                                                                 ('DELETE_APP_VERSION_MANY', 'Delete multiple app versions'),

                                                                 -- Billing_Address
                                                                 ('MANAGE_BILLING_ADDRESSES', 'Create, update, and delete billing addresses'),
                                                                 ('VIEW_BILLING_ADDRESS', 'View billing address'),
                                                                 ('VIEW_BILLING_ADDRESS_MANY', 'View multiple billing addresses'),
                                                                 ('UPDATE_BILLING_ADDRESS_ONE', 'Update billing address'),
                                                                 ('UPDATE_BILLING_ADDRESS_MANY', 'Update multiple billing addresses'),
                                                                 ('DELETE_BILLING_ADDRESS_ONE', 'Delete billing address'),
                                                                 ('DELETE_BILLING_ADDRESS_MANY', 'Delete multiple billing addresses'),

                                                                 -- Bussiness_Accounts
                                                                 ('MANAGE_BUSINESS_ACCOUNTS', 'Create, update, and delete business accounts'),
                                                                 ('VIEW_BUSINESS_ACCOUNT', 'View business account'),
                                                                 ('VIEW_BUSINESS_ACCOUNT_MANY', 'View multiple business accounts'),
                                                                 ('UPDATE_BUSINESS_ACCOUNT_ONE', 'Update business account'),
                                                                 ('UPDATE_BUSINESS_ACCOUNT_MANY', 'Update multiple business accounts'),
                                                                 ('DELETE_BUSINESS_ACCOUNT_ONE', 'Delete business account'),
                                                                 ('DELETE_BUSINESS_ACCOUNT_MANY', 'Delete multiple business accounts'),

                                                                 -- Cancellation_Requests
                                                                 ('MANAGE_CANCELLATION_REQUESTS', 'Create, update, and delete cancellation requests'),
                                                                 ('VIEW_CANCELLATION_REQUEST', 'View cancellation request'),
                                                                 ('VIEW_CANCELLATION_REQUEST_MANY', 'View multiple cancellation requests'),
                                                                 ('UPDATE_CANCELLATION_REQUEST_ONE', 'Update cancellation request'),
                                                                 ('UPDATE_CANCELLATION_REQUEST_MANY', 'Update multiple cancellation requests'),
                                                                 ('DELETE_CANCELLATION_REQUEST_ONE', 'Delete cancellation request'),
                                                                 ('DELETE_CANCELLATION_REQUEST_MANY', 'Delete multiple cancellation requests'),

                                                                 -- Coupons
                                                                 ('MANAGE_COUPONS', 'Create, update, and delete coupons'),
                                                                 ('VIEW_COUPON', 'View coupon'),
                                                                 ('VIEW_COUPON_MANY', 'View multiple coupons'),
                                                                 ('UPDATE_COUPON_ONE', 'Update coupon'),
                                                                 ('UPDATE_COUPON_MANY', 'Update multiple coupons'),
                                                                 ('DELETE_COUPON_ONE', 'Delete coupon'),
                                                                 ('DELETE_COUPON_MANY', 'Delete multiple coupons'),

                                                                 -- Delete_Requests
                                                                 ('MANAGE_DELETE_REQUESTS', 'Create, update, and delete delete requests'),
                                                                 ('VIEW_DELETE_REQUEST', 'View delete request'),
                                                                 ('VIEW_DELETE_REQUEST_MANY', 'View multiple delete requests'),
                                                                 ('UPDATE_DELETE_REQUEST_ONE', 'Update delete request'),
                                                                 ('UPDATE_DELETE_REQUEST_MANY', 'Update multiple delete requests'),
                                                                 ('DELETE_DELETE_REQUEST_ONE', 'Delete delete request'),
                                                                 ('DELETE_DELETE_REQUEST_MANY', 'Delete multiple delete requests'),

                                                                 -- Delivery_Details
                                                                 ('MANAGE_DELIVERY_DETAILS', 'Create, update, and delete delivery details'),
                                                                 ('VIEW_DELIVERY_DETAIL', 'View delivery detail'),
                                                                 ('VIEW_DELIVERY_DETAIL_MANY', 'View multiple delivery details'),
                                                                 ('UPDATE_DELIVERY_DETAIL_ONE', 'Update delivery detail'),
                                                                 ('UPDATE_DELIVERY_DETAIL_MANY', 'Update multiple delivery details'),
                                                                 ('DELETE_DELIVERY_DETAIL_ONE', 'Delete delivery detail'),
                                                                 ('DELETE_DELIVERY_DETAIL_MANY', 'Delete multiple delivery details'),

                                                                 -- Destinations
                                                                 ('MANAGE_DESTINATIONS', 'Create, update, and delete destinations'),
                                                                 ('VIEW_DESTINATION', 'View destination'),
                                                                 ('VIEW_DESTINATION_MANY', 'View multiple destinations'),
                                                                 ('UPDATE_DESTINATION_ONE', 'Update destination'),
                                                                 ('UPDATE_DESTINATION_MANY', 'Update multiple destinations'),
                                                                 ('DELETE_DESTINATION_ONE', 'Delete destination'),
                                                                 ('DELETE_DESTINATION_MANY', 'Delete multiple destinations'),

                                                                 -- Driver_Guides
                                                                 ('MANAGE_DRIVER_GUIDES', 'Create, update, and delete driver guides'),
                                                                 ('VIEW_DRIVER_GUIDE', 'View driver guide'),
                                                                 ('VIEW_DRIVER_GUIDE_MANY', 'View multiple driver guides'),
                                                                 ('UPDATE_DRIVER_GUIDE_ONE', 'Update driver guide'),
                                                                 ('UPDATE_DRIVER_GUIDE_MANY', 'Update multiple driver guides'),
                                                                 ('DELETE_DRIVER_GUIDE_ONE', 'Delete driver guide'),
                                                                 ('DELETE_DRIVER_GUIDE_MANY', 'Delete multiple driver guides'),

                                                                 -- Events
                                                                 ('MANAGE_EVENTS', 'Create, update, and delete events'),
                                                                 ('VIEW_EVENT', 'View event'),
                                                                 ('VIEW_EVENT_MANY', 'View multiple events'),
                                                                 ('UPDATE_EVENT_ONE', 'Update event'),
                                                                 ('UPDATE_EVENT_MANY', 'Update multiple events'),
                                                                 ('DELETE_EVENT_ONE', 'Delete event'),
                                                                 ('DELETE_EVENT_MANY', 'Delete multiple events'),

                                                                 -- Faq
                                                                 ('MANAGE_FAQ', 'Create, update, and delete FAQ'),
                                                                 ('VIEW_FAQ', 'View FAQ'),
                                                                 ('VIEW_FAQ_MANY', 'View multiple FAQs'),
                                                                 ('UPDATE_FAQ_ONE', 'Update FAQ'),
                                                                 ('UPDATE_FAQ_MANY', 'Update multiple FAQs'),
                                                                 ('DELETE_FAQ_ONE', 'Delete FAQ'),
                                                                 ('DELETE_FAQ_MANY', 'Delete multiple FAQs'),

                                                                 -- Items
                                                                 ('MANAGE_ITEMS', 'Create, update, and delete items'),
                                                                 ('VIEW_ITEM', 'View item'),
                                                                 ('VIEW_ITEM_MANY', 'View multiple items'),
                                                                 ('UPDATE_ITEM_ONE', 'Update item'),
                                                                 ('UPDATE_ITEM_MANY', 'Update multiple items'),
                                                                 ('DELETE_ITEM_ONE', 'Delete item'),
                                                                 ('DELETE_ITEM_MANY', 'Delete multiple items'),

                                                                 -- Orders
                                                                 ('MANAGE_ORDERS', 'Create, update, and delete orders'),
                                                                 ('VIEW_ORDER', 'View order'),
                                                                 ('VIEW_ORDER_MANY', 'View multiple orders'),
                                                                 ('UPDATE_ORDER_ONE', 'Update order'),
                                                                 ('UPDATE_ORDER_MANY', 'Update multiple orders'),
                                                                 ('DELETE_ORDER_ONE', 'Delete order'),
                                                                 ('DELETE_ORDER_MANY', 'Delete multiple orders'),

                                                                 -- Rider_Answers
                                                                 ('MANAGE_RIDER_ANSWERS', 'Create, update, and delete rider answers'),
                                                                 ('VIEW_RIDER_ANSWER', 'View rider answer'),
                                                                 ('VIEW_RIDER_ANSWER_MANY', 'View multiple rider answers'),
                                                                 ('UPDATE_RIDER_ANSWER_ONE', 'Update rider answer'),
                                                                 ('UPDATE_RIDER_ANSWER_MANY', 'Update multiple rider answers'),
                                                                 ('DELETE_RIDER_ANSWER_ONE', 'Delete rider answer'),
                                                                 ('DELETE_RIDER_ANSWER_MANY', 'Delete multiple rider answers'),

                                                                 -- Riders
                                                                 ('MANAGE_RIDERS', 'Create, update, and delete riders'),
                                                                 ('VIEW_RIDER', 'View rider'),
                                                                 ('VIEW_RIDER_MANY', 'View multiple riders'),
                                                                 ('UPDATE_RIDER_ONE', 'Update rider'),
                                                                 ('UPDATE_RIDER_MANY', 'Update multiple riders'),
                                                                 ('DELETE_RIDER_ONE', 'Delete rider'),
                                                                 ('DELETE_RIDER_MANY', 'Delete multiple riders'),

                                                                 -- Vehicle_Basic_Prices
                                                                 ('MANAGE_VEHICLE_BASIC_PRICES', 'Create, update, and delete vehicle basic prices'),
                                                                 ('VIEW_VEHICLE_BASIC_PRICE', 'View vehicle basic price'),
                                                                 ('VIEW_VEHICLE_BASIC_PRICE_MANY', 'View multiple vehicle basic prices'),
                                                                 ('UPDATE_VEHICLE_BASIC_PRICE_ONE', 'Update vehicle basic price'),
                                                                 ('UPDATE_VEHICLE_BASIC_PRICE_MANY', 'Update multiple vehicle basic prices'),
                                                                 ('DELETE_VEHICLE_BASIC_PRICE_ONE', 'Delete vehicle basic price'),
                                                                 ('DELETE_VEHICLE_BASIC_PRICE_MANY', 'Delete multiple vehicle basic prices'),

                                                                 -- Users
                                                                 ('MANAGE_USERS', 'Create, update, and delete users'),
                                                                 ('VIEW_USER', 'View user'),
                                                                 ('VIEW_USER_MANY', 'View multiple users'),
                                                                 ('UPDATE_USER_ONE', 'Update user'),
                                                                 ('UPDATE_USER_MANY', 'Update multiple users'),
                                                                 ('DELETE_USER_ONE', 'Delete user'),
                                                                 ('DELETE_USER_MANY', 'Delete multiple users'),

                                                                 -- Vehicles
                                                                 ('MANAGE_VEHICLES', 'Create, update, and delete vehicles'),
                                                                 ('VIEW_VEHICLE', 'View vehicle'),
                                                                 ('VIEW_VEHICLE_MANY', 'View multiple vehicles'),
                                                                 ('UPDATE_VEHICLE_ONE', 'Update vehicle'),
                                                                 ('UPDATE_VEHICLE_MANY', 'Update multiple vehicles'),
                                                                 ('DELETE_VEHICLE_ONE', 'Delete vehicle'),
                                                                 ('DELETE_VEHICLE_MANY', 'Delete multiple vehicles'),


                                                                 ('MANAGE_CANCELLATION_RIDER_REQUESTS', 'Create, update, and delete rider cancellation requests'),
                                                                 ('VIEW_CANCELLATION_RIDER_REQUEST', 'View rider cancellation request'),
                                                                 ('VIEW_CANCELLATION_RIDER_REQUEST_MANY', 'View multiple rider cancellation requests'),
                                                                 ('UPDATE_CANCELLATION_RIDER_REQUEST_ONE', 'Update rider cancellation request'),
                                                                 ('UPDATE_CANCELLATION_RIDER_REQUEST_MANY', 'Update multiple rider cancellation requests'),
                                                                 ('DELETE_CANCELLATION_RIDER_REQUEST_ONE', 'Delete rider cancellation request'),
                                                                 ('DELETE_CANCELLATION_RIDER_REQUEST_MANY', 'Delete multiple rider cancellation requests'),

                                                                 ('MANAGE_EVIDENCES', 'Create, update, and delete evidences'),
                                                                 ('VIEW_EVIDENCE', 'View evidence by the user it self'),
                                                                 ('VIEW_EVIDENCE_MANY', 'View multiple evidences'),
                                                                 ('UPDATE_EVIDENCE_ONE', 'Update evidence created by the user it self'),
                                                                 ('UPDATE_EVIDENCE_MANY', 'Update multiple evidences'),
                                                                 ('DELETE_EVIDENCE_ONE', 'Delete evidence created by the user it self'),
                                                                 ('DELETE_EVIDENCE_MANY', 'Delete multiple evidences'),

                                                                 ('MANAGE_EXTRA_FEES', 'Create, update, and delete extra fees'),
                                                                 ('VIEW_EXTRA_FEE', 'View extra fee'),
                                                                 ('VIEW_EXTRA_FEE_MANY', 'View multiple extra fees'),
                                                                 ('UPDATE_EXTRA_FEE_ONE', 'Update extra fee'),
                                                                 ('UPDATE_EXTRA_FEE_MANY', 'Update multiple extra fees'),
                                                                 ('DELETE_EXTRA_FEE_ONE', 'Delete extra fee'),
                                                                 ('DELETE_EXTRA_FEE_MANY', 'Delete multiple extra fees'),


                                                                 ('MANAGE_GROUP_MEMBERS', 'Add or remove members from groups'),
                                                                 ('VIEW_GROUP_MEMBER', 'View a group member'),
                                                                 ('VIEW_GROUP_MEMBER_MANY', 'View multiple group members'),
                                                                 ('UPDATE_GROUP_MEMBER_ONE', 'Update group member details'),
                                                                 ('UPDATE_GROUP_MEMBER_MANY', 'Update multiple group members'),
                                                                 ('DELETE_GROUP_MEMBER_ONE', 'Delete group member'),
                                                                 ('DELETE_GROUP_MEMBER_MANY', 'Delete multiple group members'),

                                                                 ('MANAGE_GROUP_PERMISSIONS', 'Create, update, and delete group permissions'),
                                                                 ('VIEW_GROUP_PERMISSION', 'View group permission'),
                                                                 ('VIEW_GROUP_PERMISSION_MANY', 'View multiple group permissions'),
                                                                 ('UPDATE_GROUP_PERMISSION_ONE', 'Update group permission'),
                                                                 ('UPDATE_GROUP_PERMISSION_MANY', 'Update multiple group permissions'),
                                                                 ('DELETE_GROUP_PERMISSION_ONE', 'Delete group permission'),
                                                                 ('DELETE_GROUP_PERMISSION_MANY', 'Delete multiple group permissions'),

                                                                 ('MANAGE_MA_GROUPS', 'Create, update, and delete ma groups'),
                                                                 ('VIEW_MA_GROUP', 'View ma group'),
                                                                 ('VIEW_MA_GROUP_MANY', 'View multiple ma groups'),
                                                                 ('UPDATE_MA_GROUP_ONE', 'Update ma group'),
                                                                 ('UPDATE_MA_GROUP_MANY', 'Update multiple ma groups'),
                                                                 ('DELETE_MA_GROUP_ONE', 'Delete ma group'),
                                                                 ('DELETE_MA_GROUP_MANY', 'Delete multiple ma groups'),

                                                                 ('MANAGE_Event_Groups', 'Create, update, and delete Event_Groups'),
                                                                 ('VIEW_Event_Groups', 'View ma group'),
                                                                 ('VIEW_Event_Groups_MANY', 'View multiple ma groups'),
                                                                 ('UPDATE_Event_Groups_ONE', 'Update ma group'),
                                                                 ('UPDATE_Event_Groups_MANY', 'Update multiple Event_Groups'),
                                                                 ('DELETE_Event_Groups_ONE', 'Delete Event_Groups'),
                                                                 ('DELETE_Event_Groups_MANY', 'Delete multiple Event_Groups'),



                                                                 ('MANAGE_NONE_BUSINESS_HOUR_RATES', 'Create, update, and delete non-business hour rates'),
                                                                 ('VIEW_NONE_BUSINESS_HOUR_RATE', 'View non-business hour rate'),
                                                                 ('VIEW_NONE_BUSINESS_HOUR_RATE_MANY', 'View multiple non-business hour rates'),
                                                                 ('UPDATE_NONE_BUSINESS_HOUR_RATE_ONE', 'Update non-business hour rate'),
                                                                 ('UPDATE_NONE_BUSINESS_HOUR_RATE_MANY', 'Update multiple non-business hour rates'),
                                                                 ('DELETE_NONE_BUSINESS_HOUR_RATE_ONE', 'Delete non-business hour rate'),
                                                                 ('DELETE_NONE_BUSINESS_HOUR_RATE_MANY', 'Delete multiple non-business hour rates'),

                                                                 ('MANAGE_NOTE_DELIVERY_DETAILS', 'Create, update, and delete note delivery details'),
                                                                 ('VIEW_NOTE_DELIVERY_DETAIL', 'View note delivery detail'),
                                                                 ('VIEW_NOTE_DELIVERY_DETAIL_MANY', 'View multiple note delivery details'),
                                                                 ('UPDATE_NOTE_DELIVERY_DETAIL_ONE', 'Update note delivery detail'),
                                                                 ('UPDATE_NOTE_DELIVERY_DETAIL_MANY', 'Update multiple note delivery details'),
                                                                 ('DELETE_NOTE_DELIVERY_DETAIL_ONE', 'Delete note delivery detail'),
                                                                 ('DELETE_NOTE_DELIVERY_DETAIL_MANY', 'Delete multiple note delivery details'),

                                                                 ('MANAGE_NOTE_DESTINATIONS', 'Create, update, and delete note destinations'),
                                                                 ('VIEW_NOTE_DESTINATION', 'View note destination'),
                                                                 ('VIEW_NOTE_DESTINATION_MANY', 'View multiple note destinations'),
                                                                 ('UPDATE_NOTE_DESTINATION_ONE', 'Update note destination'),
                                                                 ('UPDATE_NOTE_DESTINATION_MANY', 'Update multiple note destinations'),
                                                                 ('DELETE_NOTE_DESTINATION_ONE', 'Delete note destination'),
                                                                 ('DELETE_NOTE_DESTINATION_MANY', 'Delete multiple note destinations'),

                                                                 ('MANAGE_PASSWORD_RESETS', 'Create, update, and delete password reset requests'),
                                                                 ('VIEW_PASSWORD_RESET', 'View password reset request'),
                                                                 ('VIEW_PASSWORD_RESET_MANY', 'View multiple password reset requests'),
                                                                 ('UPDATE_PASSWORD_RESET_ONE', 'Update password reset request'),
                                                                 ('UPDATE_PASSWORD_RESET_MANY', 'Update multiple password reset requests'),
                                                                 ('DELETE_PASSWORD_RESET_ONE', 'Delete password reset request'),
                                                                 ('DELETE_PASSWORD_RESET_MANY', 'Delete multiple password reset requests'),

                                                                 ('MANAGE_PAYMENT_WEBHOOK_PAYLOADS', 'Create, update, and delete payment webhook payloads'),
                                                                 ('VIEW_PAYMENT_WEBHOOK_PAYLOAD', 'View payment webhook payload'),
                                                                 ('VIEW_PAYMENT_WEBHOOK_PAYLOAD_MANY', 'View multiple payment webhook payloads'),
                                                                 ('UPDATE_PAYMENT_WEBHOOK_PAYLOAD_ONE', 'Update payment webhook payload'),
                                                                 ('UPDATE_PAYMENT_WEBHOOK_PAYLOAD_MANY', 'Update multiple payment webhook payloads'),
                                                                 ('DELETE_PAYMENT_WEBHOOK_PAYLOAD_ONE', 'Delete payment webhook payload'),
                                                                 ('DELETE_PAYMENT_WEBHOOK_PAYLOAD_MANY', 'Delete multiple payment webhook payloads'),

                                                                 ('MANAGE_PEAK_TIME_RATES', 'Create, update, and delete peak time rates'),
                                                                 ('VIEW_PEAK_TIME_RATE', 'View peak time rate'),
                                                                 ('VIEW_PEAK_TIME_RATE_MANY', 'View multiple peak time rates'),
                                                                 ('UPDATE_PEAK_TIME_RATE_ONE', 'Update peak time rate'),
                                                                 ('UPDATE_PEAK_TIME_RATE_MANY', 'Update multiple peak time rates'),
                                                                 ('DELETE_PEAK_TIME_RATE_ONE', 'Delete peak time rate'),
                                                                 ('DELETE_PEAK_TIME_RATE_MANY', 'Delete multiple peak time rates'),

                                                                 ('MANAGE_PENALTIES', 'Create, update, and delete penalties'),
                                                                 ('VIEW_PENALTY', 'View penalty'),
                                                                 ('VIEW_PENALTY_MANY', 'View multiple penalties'),
                                                                 ('UPDATE_PENALTY_ONE', 'Update penalty'),
                                                                 ('UPDATE_PENALTY_MANY', 'Update multiple penalties'),
                                                                 ('DELETE_PENALTY_ONE', 'Delete penalty'),
                                                                 ('DELETE_PENALTY_MANY', 'Delete multiple penalties'),

                                                                 ('MANAGE_PERMISSIONS', 'Create, update, and delete permissions'),
                                                                 ('VIEW_PERMISSION', 'View permission'),
                                                                 ('VIEW_PERMISSION_MANY', 'View multiple permissions'),
                                                                 ('UPDATE_PERMISSION_ONE', 'Update permission'),
                                                                 ('UPDATE_PERMISSION_MANY', 'Update multiple permissions'),
                                                                 ('DELETE_PERMISSION_ONE', 'Delete permission'),
                                                                 ('DELETE_PERMISSION_MANY', 'Delete multiple permissions'),

                                                                 ('MANAGE_PICKUP_TIME_BASIC_PRICES', 'Create, update, and delete pickup time basic prices'),
                                                                 ('VIEW_PICKUP_TIME_BASIC_PRICE', 'View pickup time basic price'),
                                                                 ('VIEW_PICKUP_TIME_BASIC_PRICE_MANY', 'View multiple pickup time basic prices'),
                                                                 ('UPDATE_PICKUP_TIME_BASIC_PRICE_ONE', 'Update pickup time basic price'),
                                                                 ('UPDATE_PICKUP_TIME_BASIC_PRICE_MANY', 'Update multiple pickup time basic prices'),
                                                                 ('DELETE_PICKUP_TIME_BASIC_PRICE_ONE', 'Delete pickup time basic price'),
                                                                 ('DELETE_PICKUP_TIME_BASIC_PRICE_MANY', 'Delete multiple pickup time basic prices'),

                                                                 ('MANAGE_QUESTION_OPTIONS', 'Create, update, and delete question options'),
                                                                 ('VIEW_QUESTION_OPTION', 'View question option'),
                                                                 ('VIEW_QUESTION_OPTION_MANY', 'View multiple question options'),
                                                                 ('UPDATE_QUESTION_OPTION_ONE', 'Update question option'),
                                                                 ('UPDATE_QUESTION_OPTION_MANY', 'Update multiple question options'),
                                                                 ('DELETE_QUESTION_OPTION_ONE', 'Delete question option'),
                                                                 ('DELETE_QUESTION_OPTION_MANY', 'Delete multiple question options'),

                                                                 ('MANAGE_QUESTIONS', 'Create, update, and delete questions'),
                                                                 ('VIEW_QUESTION', 'View question'),
                                                                 ('VIEW_QUESTION_MANY', 'View multiple questions'),
                                                                 ('UPDATE_QUESTION_ONE', 'Update question'),
                                                                 ('UPDATE_QUESTION_MANY', 'Update multiple questions'),
                                                                 ('DELETE_QUESTION_ONE', 'Delete question'),
                                                                 ('DELETE_QUESTION_MANY', 'Delete multiple questions'),

                                                                 ('MANAGE_MA_REFERENCES', 'Create, update, and delete ma references'),
                                                                 ('VIEW_MA_REFERENCE', 'View ma reference'),
                                                                 ('VIEW_MA_REFERENCE_MANY', 'View multiple ma references'),
                                                                 ('UPDATE_MA_REFERENCE_ONE', 'Update ma reference'),
                                                                 ('UPDATE_MA_REFERENCE_MANY', 'Update multiple ma references'),
                                                                 ('DELETE_MA_REFERENCE_ONE', 'Delete ma reference'),
                                                                 ('DELETE_MA_REFERENCE_MANY', 'Delete multiple ma references'),

                                                                 ('MANAGE_REVIEWS', 'Create, update, and delete reviews'),
                                                                 ('VIEW_REVIEW', 'View review'),
                                                                 ('VIEW_REVIEW_MANY', 'View multiple reviews'),
                                                                 ('UPDATE_REVIEW_ONE', 'Update review'),
                                                                 ('UPDATE_REVIEW_MANY', 'Update multiple reviews'),
                                                                 ('DELETE_REVIEW_ONE', 'Delete review'),
                                                                 ('DELETE_REVIEW_MANY', 'Delete multiple reviews'),

                                                                 ('MANAGE_RIDER_COMMISSIONS', 'Create, update, and delete rider commissions'),
                                                                 ('VIEW_RIDER_COMMISSION', 'View rider commission'),
                                                                 ('VIEW_RIDER_COMMISSION_MANY', 'View multiple rider commissions'),
                                                                 ('UPDATE_RIDER_COMMISSION_ONE', 'Update rider commission'),
                                                                 ('UPDATE_RIDER_COMMISSION_MANY', 'Update multiple rider commissions'),
                                                                 ('DELETE_RIDER_COMMISSION_ONE', 'Delete rider commission'),
                                                                 ('DELETE_RIDER_COMMISSION_MANY', 'Delete multiple rider commissions'),

                                                                 ('MANAGE_RIDER_PAYMENTS', 'Create, update, and delete rider payments'),
                                                                 ('VIEW_RIDER_PAYMENT', 'View rider payment'),
                                                                 ('VIEW_RIDER_PAYMENT_MANY', 'View multiple rider payments'),
                                                                 ('UPDATE_RIDER_PAYMENT_ONE', 'Update rider payment'),
                                                                 ('UPDATE_RIDER_PAYMENT_MANY', 'Update multiple rider payments'),
                                                                 ('DELETE_RIDER_PAYMENT_ONE', 'Delete rider payment'),
                                                                 ('DELETE_RIDER_PAYMENT_MANY', 'Delete multiple rider payments'),

                                                                 ('MANAGE_SERVICE_AREAS', 'Create, update, and delete service areas'),
                                                                 ('VIEW_SERVICE_AREA', 'View service area'),
                                                                 ('VIEW_SERVICE_AREA_MANY', 'View multiple service areas'),
                                                                 ('UPDATE_SERVICE_AREA_ONE', 'Update service area'),
                                                                 ('UPDATE_SERVICE_AREA_MANY', 'Update multiple service areas'),
                                                                 ('DELETE_SERVICE_AREA_ONE', 'Delete service area'),
                                                                 ('DELETE_SERVICE_AREA_MANY', 'Delete multiple service areas'),

                                                                 ('MANAGE_SIZE_AND_WEIGHT_DESCRIPTIONS', 'Create, update, and delete size and weight descriptions'),
                                                                 ('VIEW_SIZE_AND_WEIGHT_DESCRIPTION', 'View size and weight description'),
                                                                 ('VIEW_SIZE_AND_WEIGHT_DESCRIPTION_MANY', 'View multiple size and weight descriptions'),
                                                                 ('UPDATE_SIZE_AND_WEIGHT_DESCRIPTION_ONE', 'Update size and weight description'),
                                                                 ('UPDATE_SIZE_AND_WEIGHT_DESCRIPTION_MANY', 'Update multiple size and weight descriptions'),
                                                                 ('DELETE_SIZE_AND_WEIGHT_DESCRIPTION_ONE', 'Delete size and weight description'),
                                                                 ('DELETE_SIZE_AND_WEIGHT_DESCRIPTION_MANY', 'Delete multiple size and weight descriptions'),

                                                                 ('MANAGE_SSO_PROVIDERS', 'Create, update, and delete sso providers'),
                                                                 ('VIEW_SSO_PROVIDER', 'View sso provider'),
                                                                 ('VIEW_SSO_PROVIDER_MANY', 'View multiple sso providers'),
                                                                 ('UPDATE_SSO_PROVIDER_ONE', 'Update sso provider'),
                                                                 ('UPDATE_SSO_PROVIDER_MANY', 'Update multiple sso providers'),
                                                                 ('DELETE_SSO_PROVIDER_ONE', 'Delete sso provider'),
                                                                 ('DELETE_SSO_PROVIDER_MANY', 'Delete multiple sso providers'),

                                                                 ('MANAGE_STATES', 'Create, update, and delete states'),
                                                                 ('VIEW_STATE', 'View state'),
                                                                 ('VIEW_STATE_MANY', 'View multiple states'),
                                                                 ('UPDATE_STATE_ONE', 'Update state'),
                                                                 ('UPDATE_STATE_MANY', 'Update multiple states'),
                                                                 ('DELETE_STATE_ONE', 'Delete state'),
                                                                 ('DELETE_STATE_MANY', 'Delete multiple states'),

                                                                 ('MANAGE_SUSPENSIONS', 'Create, update, and delete suspensions'),
                                                                 ('VIEW_SUSPENSION', 'View suspension'),
                                                                 ('VIEW_SUSPENSION_MANY', 'View multiple suspensions'),
                                                                 ('UPDATE_SUSPENSION_ONE', 'Update suspension'),
                                                                 ('UPDATE_SUSPENSION_MANY', 'Update multiple suspensions'),
                                                                 ('DELETE_SUSPENSION_ONE', 'Delete suspension'),
                                                                 ('DELETE_SUSPENSION_MANY', 'Delete multiple suspensions'),

                                                                 ('MANAGE_TRANSPORT_BASIC_PRICES', 'Create, update, and delete transport basic prices'),
                                                                 ('VIEW_TRANSPORT_BASIC_PRICE', 'View transport basic price'),
                                                                 ('VIEW_TRANSPORT_BASIC_PRICE_MANY', 'View multiple transport basic prices'),
                                                                 ('UPDATE_TRANSPORT_BASIC_PRICE_ONE', 'Update transport basic price'),
                                                                 ('UPDATE_TRANSPORT_BASIC_PRICE_MANY', 'Update multiple transport basic prices'),
                                                                 ('DELETE_TRANSPORT_BASIC_PRICE_ONE', 'Delete transport basic price'),
                                                                 ('DELETE_TRANSPORT_BASIC_PRICE_MANY', 'Delete multiple transport basic prices'),

                                                                 ('MANAGE_USER_COUPONS', 'Create, update, and delete user coupons'),
                                                                 ('VIEW_USER_COUPON', 'View user coupon'),
                                                                 ('VIEW_USER_COUPON_MANY', 'View multiple user coupons'),
                                                                 ('UPDATE_USER_COUPON_ONE', 'Update user coupon'),
                                                                 ('UPDATE_USER_COUPON_MANY', 'Update multiple user coupons'),
                                                                 ('DELETE_USER_COUPON_ONE', 'Delete user coupon'),
                                                                 ('DELETE_USER_COUPON_MANY', 'Delete multiple user coupons'),

                                                                 ('MANAGE_USER_FAVORITE_ADDRESSES', 'Create, update, and delete user favorite addresses'),
                                                                 ('VIEW_USER_FAVORITE_ADDRESS', 'View user favorite address'),
                                                                 ('VIEW_USER_FAVORITE_ADDRESS_MANY', 'View multiple user favorite addresses'),
                                                                 ('UPDATE_USER_FAVORITE_ADDRESS_ONE', 'Update user favorite address'),
                                                                 ('UPDATE_USER_FAVORITE_ADDRESS_MANY', 'Update multiple user favorite addresses'),
                                                                 ('DELETE_USER_FAVORITE_ADDRESS_ONE', 'Delete user favorite address'),
                                                                 ('DELETE_USER_FAVORITE_ADDRESS_MANY', 'Delete multiple user favorite addresses');


-- Insert data into Size_And_Weight_Descriptions table
INSERT INTO `Size_And_Weight_Descriptions` (`size`, `size_description`, `weight`, `is_latest`, `previous_id`) VALUES
                                                                                                                  ('SMALL', 'Small size description', '1-5kg', TRUE, NULL),
                                                                                                                  ('MEDIUM', 'Medium size description', '6-10kg', TRUE, NULL),
                                                                                                                  ('LARGE', 'Large size description', '11-20kg', TRUE, NULL);





-- Insert data into Events table
INSERT INTO `Events` (`title`, `link`, `contents`, `start_date`, `end_date`, `send_push_notification`, `banner_image_url`) VALUES
                                                                                                                               ('Summer Sale', 'https://example.com/summer-sale', 'Get the best deals this summer with up to 50% off on all items. Hurry, the offer lasts till the end of the month!', '2025-06-01 00:00:00', '2025-06-30 23:59:59', TRUE, 'https://example.com/images/summer_sale_banner.jpg'),
                                                                                                                               ('New Year Extravaganza', 'https://example.com/new-year', 'Join us for the grand New Year Extravaganza with exciting offers, giveaways, and live events!', '2025-12-31 00:00:00', '2026-01-01 23:59:59', TRUE, 'https://example.com/images/new_year_banner.jpg'),
                                                                                                                               ('Flash Sale Weekend', 'https://example.com/flash-sale', 'Flash sales across all categories! Don’t miss out on the best deals in town!', '2025-05-15 09:00:00', '2025-05-17 23:59:59', TRUE, 'https://example.com/images/flash_sale_banner.jpg'),
                                                                                                                               ('Back to School', 'https://example.com/back-to-school', 'Get everything you need for the new school year at unbeatable prices!', '2025-08-01 00:00:00', '2025-08-31 23:59:59', FALSE, 'https://example.com/images/back_to_school_banner.jpg'),
                                                                                                                               ('Black Friday Deals', 'https://example.com/black-friday', 'Black Friday is here! Grab massive discounts on all products only on our website.', '2025-11-27 00:00:00', '2025-11-28 23:59:59', TRUE, 'https://example.com/images/black_friday_banner.jpg'),
                                                                                                                               ('Christmas Sale', 'https://example.com/christmas-sale', 'Celebrate the Christmas season with huge discounts on all your favorite items.', '2025-12-01 00:00:00', '2025-12-25 23:59:59', TRUE, 'https://example.com/images/christmas_sale_banner.jpg'),
                                                                                                                               ('Weekend Bonanza', 'https://example.com/weekend-bonanza', 'Exclusive weekend deals across all categories. Shop now!', '2025-07-10 00:00:00', '2025-07-12 23:59:59', FALSE, 'https://example.com/images/weekend_bonanza_banner.jpg'),
                                                                                                                               ('Cyber Monday', 'https://example.com/cyber-monday', 'Cyber Monday is here! Get the best tech deals on our platform.', '2025-11-30 00:00:00', '2025-11-30 23:59:59', TRUE, 'https://example.com/images/cyber_monday_banner.jpg'),
                                                                                                                               ('Halloween Special', 'https://example.com/halloween-special', 'Celebrate Halloween with exclusive offers and spooky deals!', '2025-10-31 00:00:00', '2025-10-31 23:59:59', TRUE, 'https://example.com/images/halloween_banner.jpg'),
                                                                                                                               ('Valentine’s Day', 'https://example.com/valentines-day', 'Celebrate love with Valentine’s Day gifts and special discounts!', '2025-02-14 00:00:00', '2025-02-14 23:59:59', FALSE, 'https://example.com/images/valentines_day_banner.jpg');


-- Insert data into Event_Groups table
INSERT INTO `Event_Groups` (`event_id`, `group_id`) VALUES
                                                        (1, 8),
                                                        (2, 9),
                                                        (3, 10);


-- Insert data into Group_Members table
INSERT INTO `Group_Members` (`group_id`, `user_id`) VALUES
                                                        (1, 1),
                                                        (2, 2),
                                                        (3, 3),
                                                        (4, 4),
                                                        (5, 5),
                                                        (6, 6),
                                                        (7, 7),
                                                        (4, 10);

-- Insert data into Group_Permissions table
INSERT INTO `Group_Permissions` (`group_id`, `permission_id`) VALUES
                                                                  (1, 1),
                                                                  (1, 2),
                                                                  (1, 3),
                                                                  (1, 4),
                                                                  (1, 5),
                                                                  (1, 6),
                                                                  (1, 7),
                                                                  (1, 8),
                                                                  (1, 9),
                                                                  (1, 10);

-- Insert data into Riders table
INSERT INTO `Riders` (`user_id`, `latitude`, `longitude`, `is_online`, `is_deleted`, `is_suspend`, `passed_quiz`, `profile_completed`, `status`, `last_location_time`,
                      `emergency_contact_first_name`, `emergency_contact_last_name`, `emergency_contact_phone_number`,
                      `bank_name`, `bsb_number`, `account_number`, `signature`) VALUES
                                                                                    (3, -33.865143, 151.209900, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 08:30:00', 'Emily', 'Brown', '+61412345699', 'Commonwealth Bank', '062-000', '12345678', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (5, -37.813628, 144.963058, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 09:10:00', 'Sarah', 'Jones', '+61423456789', 'ANZ Bank', '013-000', '87654321', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (7, -27.470125, 153.021072, FALSE, FALSE, FALSE, TRUE, TRUE, 'INACTIVE', '2025-03-08 17:45:00', 'Michelle', 'Anderson', '+61434567890', 'NAB', '082-000', '23456789', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (9, -31.950527, 115.860457, FALSE, TRUE, FALSE, TRUE, TRUE, 'DELETED', '2025-03-07 14:20:00', 'Jennifer', 'White', '+61445678901', 'Westpac', '032-000', '34567890', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (2, -34.929229, 138.599503, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 10:30:00', 'Robert', 'Smith', '+61456789012', 'Commonwealth Bank', '062-001', '45678901', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (4, -42.880554, 147.324997, FALSE, FALSE, TRUE, TRUE, TRUE, 'SUSPENDED', '2025-03-06 09:15:00', 'Thomas', 'Wilson', '+61467890123', 'ANZ Bank', '013-001', '56789012', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (6, -35.282001, 149.128998, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 07:45:00', 'Christopher', 'Taylor', '+61478901234', 'NAB', '082-001', '67890123', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (8, -12.462827, 130.841782, FALSE, FALSE, FALSE, TRUE, TRUE, 'APPROVED', '2025-03-08 16:30:00', 'Daniel', 'Thomas', '+61489012345', 'Westpac', '032-001', '78901234', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (1, -36.848461, 174.763336, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 08:00:00', 'Matthew', 'Doe', '+61490123456', 'Commonwealth Bank', '062-002', '89012345', 'data:image/png;base64,iVBORw0KGgoAAAANS...'),
                                                                                    (10, -28.016666, 153.399994, TRUE, FALSE, FALSE, TRUE, TRUE, 'ACTIVE', '2025-03-09 09:45:00', 'Andrew', 'Martin', '+61501234567', 'ANZ Bank', '013-002', '90123456', 'data:image/png;base64,iVBORw0KGgoAAAANS...');

-- Insert data into Vehicles table
INSERT INTO `Vehicles` (`rider_id`, `is_current_vehicle`, `vehicle_type`, `model_year`, `manufacturer`, `transport_photo`,
                        `driver_license`, `insurance_policy`, `driver_license_valid_from`, `driver_license_valid_to`,
                        `insurance_policy_valid_from`, `insurance_policy_valid_to`) VALUES
                                                                                        (1, TRUE, 'BICYCLE', '2023', 'Trek', 'https://example.com/vehicles/trek-bike.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
                                                                                        (2, TRUE, 'MOTORBIKE', '2022', 'Honda', 'https://example.com/vehicles/honda-motorbike.jpg', 'DL12345678', 'IP87654321', '2022-01-15', '2027-01-14', '2024-01-01', '2024-12-31'),
                                                                                        (3, TRUE, 'CAR', '2021', 'Toyota', 'https://example.com/vehicles/toyota-car.jpg', 'DL23456789', 'IP76543210', '2021-03-20', '2026-03-19', '2024-01-01', '2024-12-31'),
                                                                                        (4, TRUE, 'BICYCLE', '2023', 'Specialized', 'https://example.com/vehicles/specialized-bike.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
                                                                                        (5, TRUE, 'MOTORBIKE', '2022', 'Yamaha', 'https://example.com/vehicles/yamaha-motorbike.jpg', 'DL34567890', 'IP65432109', '2022-05-10', '2027-05-09', '2024-01-01', '2024-12-31'),
                                                                                        (6, TRUE, 'CAR', '2020', 'Hyundai', 'https://example.com/vehicles/hyundai-car.jpg', 'DL45678901', 'IP54321098', '2020-07-25', '2025-07-24', '2024-01-01', '2024-12-31'),
                                                                                        (7, TRUE, 'BICYCLE', '2023', 'Giant', 'https://example.com/vehicles/giant-bike.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
                                                                                        (8, TRUE, 'MOTORBIKE', '2021', 'Suzuki', 'https://example.com/vehicles/suzuki-motorbike.jpg', 'DL56789012', 'IP43210987', '2021-09-05', '2026-09-04', '2024-01-01', '2024-12-31'),
                                                                                        (9, TRUE, 'CAR', '2022', 'Mazda', 'https://example.com/vehicles/mazda-car.jpg', 'DL67890123', 'IP32109876', '2022-11-18', '2027-11-17', '2024-01-01', '2024-12-31'),
                                                                                        (10, TRUE, 'BICYCLE', '2023', 'Cannondale', 'https://example.com/vehicles/cannondale-bike.jpg', NULL, NULL, NULL, NULL, NULL, NULL);

-- Insert data into Orders table
INSERT INTO `Orders` (`order_number`, `customer_id`, `customer_full_name`, `message`, `customer_phone_number`,
                      `rider_id`, `total_price`, `total_distance`, `estimated_total_time`, `age_limit`,
                      `vehicle_type`, `order_status`, `paid_at`) VALUES
                                                                     ('ORD-20250309-001', 4, 'Sarah Wilson', 'Please deliver ASAP', '+61445678901', 1, 25.50, 3.2, 25, FALSE, 'BICYCLE', 'DELIVERED', '2025-03-09 09:15:00'),
                                                                     ('ORD-20250309-002', 10, 'Sophia Martin', 'Handle with care', '+61501234567', 2, 32.75, 4.5, 35, FALSE, 'MOTORBIKE', 'DELIVERING', '2025-03-09 10:00:00'),
                                                                     ('ORD-20250309-003', 8, 'Olivia Thomas', 'Ring doorbell on arrival', '+61489012345', 3, 45.20, 7.8, 45, FALSE, 'CAR', 'MATCHED', '2025-03-09 10:30:00'),
                                                                     ('ORD-20250309-004', 6, 'Emma Taylor', 'Leave at reception', '+61467890123', 5, 18.90, 2.1, 20, FALSE, 'BICYCLE', 'BOOKED', '2025-03-09 11:00:00'),
                                                                     ('ORD-20250309-005', 4, 'Sarah Wilson', 'Call on arrival', '+61445678901', NULL, 29.30, 3.5, 30, TRUE, 'MOTORBIKE', 'STANDBY', NULL),
                                                                     ('ORD-20250308-001', 10, 'Sophia Martin', 'ID check required', '+61501234567', 7, 55.40, 9.2, 55, TRUE, 'CAR', 'DELIVERED', '2025-03-08 14:30:00'),
                                                                     ('ORD-20250308-002', 8, 'Olivia Thomas', 'Fragile items', '+61489012345', 9, 22.60, 2.8, 25, FALSE, 'BICYCLE', 'DELIVERED', '2025-03-08 15:45:00'),
                                                                     ('ORD-20250308-003', 6, 'Emma Taylor', 'No contact delivery', '+61467890123', 10, 38.75, 6.4, 40, FALSE, 'MOTORBIKE', 'DELIVERED', '2025-03-08 16:30:00'),
                                                                     ('ORD-20250307-001', 4, 'Sarah Wilson', 'Leave at door', '+61445678901', 1, 42.90, 7.1, 45, FALSE, 'CAR', 'DELIVERED', '2025-03-07 11:15:00'),
                                                                     ('ORD-20250307-002', 10, 'Sophia Martin', 'Call when nearby', '+61501234567', 5, 19.80, 2.3, 20, FALSE, 'BICYCLE', 'CANCELED', '2025-03-07 12:00:00');
-- Insert data into Advertisements table
INSERT INTO `Advertisements` (`title`, `content`, `image_url`) VALUES
                                                                   ('Spring Sale', 'Get up to 50% off on all items! Limited time only.', 'https://example.com/images/spring_sale.jpg'),
                                                                   ('Summer Collection', 'Explore our new summer collection of clothes and accessories.', 'https://example.com/images/summer_collection.jpg'),
                                                                   ('Winter Deals', 'Big discounts on winter coats, boots, and more!', 'https://example.com/images/winter_deals.jpg'),
                                                                   ('Flash Sale', 'Hurry! Up to 70% off on selected products for 24 hours only!', 'https://example.com/images/flash_sale.jpg'),
                                                                   ('Back to School', 'Save on school supplies and clothing for the new semester.', 'https://example.com/images/back_to_school.jpg'),
                                                                   ('New Year Sale', 'Celebrate the New Year with massive discounts on all categories.', 'https://example.com/images/new_year_sale.jpg'),
                                                                   ('Weekend Offer', 'Enjoy special weekend deals on electronics and gadgets.', 'https://example.com/images/weekend_offer.jpg'),
                                                                   ('Buy One Get One Free', 'Buy one item and get another for free! Limited time offer.', 'https://example.com/images/buy_one_get_one.jpg'),
                                                                   ('Holiday Specials', 'Exclusive holiday discounts on travel and leisure packages.', 'https://example.com/images/holiday_specials.jpg'),
                                                                   ('Clearance Sale', 'Everything must go! Up to 80% off on clearance items.', 'https://example.com/images/clearance_sale.jpg');


-- Insert data into Destinations table
INSERT INTO `Destinations` (`destination_latitude`, `destination_longitude`, `destination_address_text`, `sequence`,
                            `recipient_phone_number`, `price`, `estimated_time`, `recipient_name`,
                            `order_id`, `status`, `delivery_by`) VALUES
                                                                     (-33.870743, 151.208530, '45 Market Street, Sydney NSW 2000', 1, '+61412345678', 25.50, 10, 'John Recipient', 1, 'COMPLETED', 1),
                                                                     (-37.818333, 144.968056, '89 Flinders Lane, Melbourne VIC 3000', 1, '+61423456789', 32.75, 15, 'Mary Recipient', 2, 'PENDING', NULL),
                                                                     (-27.465806, 153.027688, '123 Eagle Street, Brisbane QLD 4000', 1, '+61434567890', 45.20, 20, 'Peter Recipient', 3, 'PENDING', NULL),
                                                                     (-31.957542, 115.858366, '78 St Georges Terrace, Perth WA 6000', 1, '+61445678901', 18.90, 10, 'Susan Recipient', 4, 'PENDING', NULL),
                                                                     (-34.922165, 138.603644, '91 King William Street, Adelaide SA 5000', 1, '+61456789012', 29.30, 15, 'Robert Recipient', 5, 'PENDING', NULL),
                                                                     (-42.884286, 147.329013, '45 Elizabeth Street, Hobart TAS 7000', 1, '+61467890123', 55.40, 25, 'Jennifer Recipient', 6, 'COMPLETED', 7),
                                                                     (-35.279966, 149.131360, '25 London Circuit, Canberra ACT 2600', 1, '+61478901234', 22.60, 10, 'Michael Recipient', 7, 'COMPLETED', 9),
                                                                     (-12.459671, 130.839813, '19 Knuckey Street, Darwin NT 0800', 1, '+61489012345', 38.75, 20, 'Elizabeth Recipient', 8, 'COMPLETED', 10),
                                                                     (-36.843419, 174.767211, '15 Shortland Street, Auckland 1010', 1, '+61490123456', 42.90, 20, 'David Recipient', 9, 'COMPLETED', 1),
                                                                     (-28.001887, 153.430369, '22 Elkhorn Avenue, Surfers Paradise QLD 4217', 1, '+61501234567', 19.80, 10, 'Patricia Recipient', 10, 'CANCELLED', NULL);



-- Insert data into Delivery_Details table
INSERT INTO `Delivery_Details` (`pickup_latitude`, `pickup_longitude`, `pickup_address_text`, `estimated_time`,
                                `pickup_time`, `pickup_date_time`, `picked_up_date_time`, `picked_up_by`,
                                `picked_up_notes`, `recipient_phone_number`, `recipient_name`,
                                `pickup_photo_urls`, `order_id`) VALUES
                                                                     (-33.865143, 151.209900, '123 George Street, Sydney NSW 2000', 15, 'ASAP', '2025-03-09 09:00:00', '2025-03-09 09:10:00', 1, 'Picked up from reception', '+61445678901', 'Sarah Wilson', '["https://example.com/pickup/photo1.jpg"]', 1),
                                                                     (-37.813628, 144.963058, '456 Collins Street, Melbourne VIC 3000', 20, 'ASAP', '2025-03-09 10:15:00', NULL, NULL, NULL, '+61501234567', 'Sophia Martin', '["https://example.com/pickup/photo2.jpg"]', 2),
                                                                     (-27.470125, 153.021072, '789 Queen Street, Brisbane QLD 4000', 25, 'TODAY', '2025-03-09 11:00:00', NULL, NULL, NULL, '+61489012345', 'Olivia Thomas', '["https://example.com/pickup/photo3.jpg"]', 3),
                                                                     (-31.950527, 115.860457, '321 Hay Street, Perth WA 6000', 15, 'IN_2_HOURS', '2025-03-09 13:00:00', NULL, NULL, NULL, '+61467890123', 'Emma Taylor', '["https://example.com/pickup/photo4.jpg"]', 4),
                                                                     (-34.929229, 138.599503, '654 North Terrace, Adelaide SA 5000', 20, 'OTHER_DAY', '2025-03-10 10:00:00', NULL, NULL, NULL, '+61445678901', 'Sarah Wilson', '["https://example.com/pickup/photo5.jpg"]', 5),
                                                                     (-42.880554, 147.324997, '987 Elizabeth Street, Hobart TAS 7000', 30, 'ASAP', '2025-03-08 14:00:00', '2025-03-08 14:05:00', 7, 'Package was at security desk', '+61501234567', 'Sophia Martin', '["https://example.com/pickup/photo6.jpg"]', 6),
                                                                     (-35.282001, 149.128998, '147 Northbourne Avenue, Canberra ACT 2600', 15, 'ASAP', '2025-03-08 15:30:00', '2025-03-08 15:40:00', 9, 'Picked up from mailroom', '+61489012345', 'Olivia Thomas', '["https://example.com/pickup/photo7.jpg"]', 7),
                                                                     (-12.462827, 130.841782, '258 Mitchell Street, Darwin NT 0800', 20, 'ASAP', '2025-03-08 16:15:00', '2025-03-08 16:20:00', 10, 'Customer handed package directly', '+61467890123', 'Emma Taylor', '["https://example.com/pickup/photo8.jpg"]', 8),
                                                                     (-36.848461, 174.763336, '369 Queen Street, Auckland 1010', 25, 'ASAP', '2025-03-07 11:00:00', '2025-03-07 11:10:00', 1, 'Package was at reception', '+61445678901', 'Sarah Wilson', '["https://example.com/pickup/photo9.jpg"]', 9),
                                                                     (-28.016666, 153.399994, '159 Cavill Avenue, Gold Coast QLD 4217', 15, 'ASAP', '2025-03-07 12:00:00', '2025-03-07 12:05:00', 5, 'Package collected from store clerk', '+61501234567', 'Sophia Martin', '["https://example.com/pickup/photo10.jpg"]', 10);



INSERT INTO `Note_Delivery_Details` (`note`, `photo_urls`, `delivery_detail_id`) VALUES
                                                                                     ('Note for delivery detail 1.', '["https://example.com/photo1.jpg", "https://example.com/photo2.jpg"]', 1),
                                                                                     ('Note for delivery detail 2.', '["https://example.com/photo3.jpg", "https://example.com/photo4.jpg"]', 2),
                                                                                     ('Note for delivery detail 3.', '["https://example.com/photo5.jpg", "https://example.com/photo6.jpg"]', 3),
                                                                                     ('Note for delivery detail 4.', '["https://example.com/photo7.jpg", "https://example.com/photo8.jpg"]', 4),
                                                                                     ('Note for delivery detail 5.', '["https://example.com/photo9.jpg", "https://example.com/photo10.jpg"]', 5),
                                                                                     ('Note for delivery detail 6.', '["https://example.com/photo11.jpg", "https://example.com/photo12.jpg"]', 6),
                                                                                     ('Note for delivery detail 7.', '["https://example.com/photo13.jpg", "https://example.com/photo14.jpg"]', 7),
                                                                                     ('Note for delivery detail 8.', '["https://example.com/photo15.jpg", "https://example.com/photo16.jpg"]', 8),
                                                                                     ('Note for delivery detail 9.', '["https://example.com/photo17.jpg", "https://example.com/photo18.jpg"]', 9),
                                                                                     ('Note for delivery detail 10.', '["https://example.com/photo19.jpg", "https://example.com/photo20.jpg"]', 10);

INSERT INTO `Note_Destinations` (`note`, `photo_urls`, `destination_id`) VALUES
                                                                             ('Note for destination 1.', '["https://example.com/photo21.jpg", "https://example.com/photo22.jpg"]', 1),
                                                                             ('Note for destination 2.', '["https://example.com/photo23.jpg", "https://example.com/photo24.jpg"]', 2),
                                                                             ('Note for destination 3.', '["https://example.com/photo25.jpg", "https://example.com/photo26.jpg"]', 3),
                                                                             ('Note for destination 4.', '["https://example.com/photo27.jpg", "https://example.com/photo28.jpg"]', 4),
                                                                             ('Note for destination 5.', '["https://example.com/photo29.jpg", "https://example.com/photo30.jpg"]', 5),
                                                                             ('Note for destination 6.', '["https://example.com/photo31.jpg", "https://example.com/photo32.jpg"]', 6),
                                                                             ('Note for destination 7.', '["https://example.com/photo33.jpg", "https://example.com/photo34.jpg"]', 7),
                                                                             ('Note for destination 8.', '["https://example.com/photo35.jpg", "https://example.com/photo36.jpg"]', 8),
                                                                             ('Note for destination 9.', '["https://example.com/photo37.jpg", "https://example.com/photo38.jpg"]', 9),
                                                                             ('Note for destination 10.', '["https://example.com/photo39.jpg", "https://example.com/photo40.jpg"]', 10);

INSERT INTO `Evidences` (`destination_id`, `urls`, `recipient_name`, `recipient_DOB`, `note`, `time`) VALUES
                                                                                                          (1, '["https://example.com/image1.jpg", "https://example.com/image2.jpg"]', 'John Doe', '1990-01-01 00:00:00', 'Sample evidence note 1', '2025-03-09 10:00:00'),
                                                                                                          (2, '["https://example.com/image3.jpg", "https://example.com/image4.jpg"]', 'Jane Smith', '1985-06-15 00:00:00', 'Sample evidence note 2', '2025-03-09 10:10:00'),
                                                                                                          (3, '["https://example.com/image5.jpg", "https://example.com/image6.jpg"]', 'Robert Brown', '1978-03-30 00:00:00', 'Sample evidence note 3', '2025-03-09 10:20:00'),
                                                                                                          (4, '["https://example.com/image7.jpg", "https://example.com/image8.jpg"]', 'Emily Johnson', '1992-07-25 00:00:00', 'Sample evidence note 4', '2025-03-09 10:30:00'),
                                                                                                          (5, '["https://example.com/image9.jpg", "https://example.com/image10.jpg"]', 'Michael Lee', '1995-05-05 00:00:00', 'Sample evidence note 5', '2025-03-09 10:40:00'),
                                                                                                          (6, '["https://example.com/image11.jpg", "https://example.com/image12.jpg"]', 'Sophia Turner', '1988-02-19 00:00:00', 'Sample evidence note 6', '2025-03-09 10:50:00'),
                                                                                                          (7, '["https://example.com/image13.jpg", "https://example.com/image14.jpg"]', 'William Harris', '2000-12-12 00:00:00', 'Sample evidence note 7', '2025-03-09 11:00:00'),
                                                                                                          (8, '["https://example.com/image15.jpg", "https://example.com/image16.jpg"]', 'Olivia Wilson', '1993-11-20 00:00:00', 'Sample evidence note 8', '2025-03-09 11:10:00'),
                                                                                                          (9, '["https://example.com/image17.jpg", "https://example.com/image18.jpg"]', 'James Clark', '1983-09-09 00:00:00', 'Sample evidence note 9', '2025-03-09 11:20:00'),
                                                                                                          (10, '["https://example.com/image19.jpg", "https://example.com/image20.jpg"]', 'Ava Walker', '1998-04-22 00:00:00', 'Sample evidence note 10', '2025-03-09 11:30:00');

-- Insert data into Questions table
INSERT INTO `Questions` (`image_url`, `question_text`, `description`)
VALUES
    ('http://example.com/delivery1.png', 'What is the most important factor in ensuring timely delivery?', 'This question tests knowledge on what is key to meeting delivery deadlines.'),
    ('http://example.com/delivery2.png', 'How should a driver handle customer complaints about a delayed delivery?', 'This question addresses customer service in case of delivery delays.'),
    ('http://example.com/delivery3.png', 'What is the best way for a driver to confirm an address?', 'A question on how drivers should ensure the correct address during deliveries.'),
    ('http://example.com/delivery4.png', 'What should a driver do when encountering a traffic jam during delivery?', 'This question discusses how drivers should handle unexpected delays on the road.'),
    ('http://example.com/delivery5.png', 'What safety measures should be followed while handling hazardous goods?', 'A question about safety protocols when delivering sensitive items.'),
    ('http://example.com/delivery6.png', 'What should a driver do if the customer is not home during a delivery?', 'A question on how drivers should act in case the customer is not available.'),
    ('http://example.com/delivery7.png', 'How can a driver improve fuel efficiency during deliveries?', 'This question tests knowledge on eco-friendly driving for fuel savings.'),
    ('http://example.com/delivery8.png', 'What should a driver do when a vehicle breaks down during a delivery?', 'This question is about emergency actions when a breakdown happens during a delivery.'),
    ('http://example.com/delivery9.png', 'What is the best way to manage delivery routes efficiently?', 'A question on how to optimize delivery routes for time and fuel savings.'),
    ('http://example.com/delivery10.png', 'How should a driver handle delivery in a high-security area?', 'A question on how drivers should manage deliveries in areas with high-security concerns.');

-- Insert data into Question_Options table
INSERT INTO `Question_Options` (`question_id`, `question_option`, `description`, `is_correct`)
VALUES
    -- Question 1: Timely Delivery
    (1, 'Time management', 'Efficiently managing time is essential to meeting delivery deadlines.', TRUE),
    (1, 'Packaging quality', 'Good packaging prevents damage, but doesn’t impact delivery time.', FALSE),
    (1, 'Route optimization', 'Optimizing delivery routes is important for saving time but not directly related to timely delivery.', FALSE),
    (1, 'Driver attitude', 'Having a positive attitude helps with customer interaction but doesn’t directly affect delivery speed.', FALSE),

    -- Question 2: Customer Complaints
    (2, 'Offer a discount on the next delivery', 'Offering discounts can help retain customers but doesn’t resolve the complaint.', FALSE),
    (2, 'Apologize and offer a solution', 'A polite apology with an appropriate solution goes a long way in resolving complaints.', TRUE),
    (2, 'Ignore the complaint', 'Ignoring customer complaints leads to dissatisfaction and negative feedback.', FALSE),
    (2, 'Blame the weather', 'Blaming weather conditions without a solution can worsen the situation.', FALSE),

    -- Question 3: Confirming an Address
    (3, 'Use GPS to find the address', 'GPS can help, but it might not always be accurate or updated.', FALSE),
    (3, 'Call the customer for confirmation', 'Calling the customer ensures the correct address is confirmed directly.', TRUE),
    (3, 'Guess the address based on landmarks', 'Guessing is unreliable and could lead to delays or errors.', FALSE),
    (3, 'Use an online map service', 'An online map service may help, but confirming directly with the customer is best.', FALSE),

    -- Question 4: Traffic Jam Management
    (4, 'Use a different route if possible', 'Switching to an alternative route is often the best option in a traffic jam.', TRUE),
    (4, 'Wait for traffic to clear', 'Waiting in a traffic jam wastes time and impacts delivery efficiency.', FALSE),
    (4, 'Call the customer to inform them of the delay', 'While helpful, it doesnt address the immediate issue of traffic.', FALSE),
    (4, 'Try to drive through the jam anyway', 'Attempting to drive through heavy traffic is inefficient and dangerous.', FALSE),

    -- Question 5: Handling Hazardous Goods
    (5, 'Wear gloves and follow safety guidelines', 'Wearing gloves and following safety guidelines ensures safe handling of hazardous materials.', TRUE),
    (5, 'Avoid talking to the customer', 'Talking to the customer should not impact handling hazardous materials.', FALSE),
    (5, 'Deliver without special precautions', 'Not following safety procedures when handling hazardous goods can be dangerous.', FALSE),
    (5, 'Use the fastest delivery route', 'Speed is important, but safety is the primary concern when handling hazardous materials.', FALSE),

    -- Question 6: Customer Not Home
    (6, 'Leave the package at the door', 'Leaving packages unattended is risky and could result in theft or damage.', FALSE),
    (6, 'Reschedule the delivery or call the customer', 'Contacting the customer or rescheduling the delivery is the best option.', TRUE),
    (6, 'Leave a note for the customer', 'Leaving a note might not resolve the situation or lead to delivery issues.', FALSE),
    (6, 'Take the package back to the warehouse', 'Returning the package to the warehouse should be a last resort.', FALSE),

    -- Question 7: Fuel Efficiency
    (7, 'Drive aggressively to save time', 'Aggressive driving is dangerous and wastes fuel in the long run.', FALSE),
    (7, 'Use air conditioning only when necessary', 'Reducing the use of air conditioning can improve fuel efficiency.', TRUE),
    (7, 'Avoid route planning', 'Not planning routes leads to wasted fuel and unnecessary detours.', FALSE),
    (7, 'Drive with heavy cargo at high speeds', 'Driving at high speeds with heavy cargo wastes fuel and increases risks.', FALSE),

    -- Question 8: Vehicle Breakdown
    (8, 'Contact a roadside assistance service immediately', 'Contacting roadside assistance is the safest option when a breakdown occurs.', TRUE),
    (8, 'Attempt to fix the vehicle without professional help', 'Attempting repairs without expertise can worsen the situation.', FALSE),
    (8, 'Continue driving with the breakdown', 'Driving with a malfunctioning vehicle may cause further damage and delay the delivery.', FALSE),
    (8, 'Abandon the vehicle and continue on foot', 'Abandoning the vehicle is not practical or safe for deliveries.', FALSE),

    -- Question 9: Route Management
    (9, 'Use a delivery route planner app', 'Route planner apps help drivers choose the most efficient route.', TRUE),
    (9, 'Ask for directions at every turn', 'Asking for directions wastes time and disrupts the flow of the delivery.', FALSE),
    (9, 'Drive without a plan and adjust on the fly', 'Not planning routes leads to inefficiency and time loss during deliveries.', FALSE),
    (9, 'Avoid checking for traffic updates', 'Ignoring traffic updates can lead to delays and wasted time.', FALSE),

    -- Question 10: Security Areas
    (10, 'Call ahead to notify security', 'Notifying security in advance ensures smooth access and delivery in high-security areas.', TRUE),
    (10, 'Try to bypass security checks', 'Bypassing security can cause delays and is potentially dangerous.', FALSE),
    (10, 'Only deliver to secure areas at night', 'Delivering at night may not be safe or effective in all cases.', FALSE),
    (10, 'Leave the delivery with a guard', 'Leaving deliveries with a guard is not ideal unless it is explicitly allowed.', FALSE);

-- Rider 1 answers all correctly in the INITIAL_QUIZ
INSERT INTO `Rider_Answers` (`rider_id`, `option_id`, `quiz_key`)
VALUES
    (1, 1, 'INITIAL_QUIZ'),
    (1, 5, 'INITIAL_QUIZ'),
    (1, 37, 'INITIAL_QUIZ'),
    (1, 9, 'INITIAL_QUIZ'),
    (1, 13, 'INITIAL_QUIZ'),
    (1, 17, 'INITIAL_QUIZ'),
    (1, 21, 'INITIAL_QUIZ'),
    (1, 25, 'INITIAL_QUIZ'),
    (1, 29, 'INITIAL_QUIZ'),
    (1, 33, 'INITIAL_QUIZ');

-- Rider 2 answers all incorrectly in the INITIAL_QUIZ
INSERT INTO `Rider_Answers` (`rider_id`, `option_id`, `quiz_key`)
VALUES
    (2, 2, 'INITIAL_QUIZ'),
    (2, 6, 'INITIAL_QUIZ'),
    (2, 37, 'INITIAL_QUIZ'),
    (2, 10, 'INITIAL_QUIZ'),
    (2, 14, 'INITIAL_QUIZ'),
    (2, 18, 'INITIAL_QUIZ'),
    (2, 22, 'INITIAL_QUIZ'),
    (2, 26, 'INITIAL_QUIZ'),
    (2, 30, 'INITIAL_QUIZ'),
    (2, 34, 'INITIAL_QUIZ');

-- Rider 2 answers correctly in the SECOND_QUIZ
INSERT INTO `Rider_Answers` (`rider_id`, `option_id`, `quiz_key`)
VALUES
    (2, 1, 'SECOND_QUIZ'),
    (2, 5, 'SECOND_QUIZ'),
    (2, 37, 'SECOND_QUIZ'),
    (2, 9, 'SECOND_QUIZ'),
    (2, 13, 'SECOND_QUIZ'),
    (2, 17, 'SECOND_QUIZ'),
    (2, 21, 'SECOND_QUIZ'),
    (2, 25, 'SECOND_QUIZ'),
    (2, 29, 'SECOND_QUIZ'),
    (2, 33, 'SECOND_QUIZ');

-- Insert data into Coupons table
INSERT INTO `Coupons`
(`discount_type`, `discount_amount`, `discount_percentage`, `maximum_discount_amount`, `minimum_purchase_price`, `start_date`, `end_date`, `issued_to`, `how_user_was_added`, `code`, `number_of_issued_coupons`, `number_of_used_coupons`, `excel_file_url`, `created_by`)
VALUES
    ('PERCENTAGE', NULL, 15.0, 0, 50.0, '2025-03-01 00:00:00', '2025-03-31 23:59:59', 'MEMBER', 'MANUAL', 'MEMBER15', 100, 25, NULL, 1),
    ('FLATRATE', 10.0, NULL, 0, 30.0, '2025-03-05 00:00:00', '2025-03-25 23:59:59', 'GENERAL', 'IMPORT', 'FLAT10', 200, 100, NULL, 2),
    ('PERCENTAGE', NULL, 25.0, 0, 100.0, '2025-04-01 00:00:00', '2025-04-30 23:59:59', 'MEMBER', 'MANUAL', 'MEMBER25', 150, 50, NULL, 1),
    ('FLATRATE', 20.0, NULL, 0, 50.0, '2025-03-10 00:00:00', '2025-03-20 23:59:59', 'GENERAL', 'IMPORT', 'FLAT20', 300, 200, NULL, 3),
    ('PERCENTAGE', NULL, 10.0, 0, 20.0, '2025-03-15 00:00:00', '2025-04-15 23:59:59', 'GENERAL', 'MANUAL', 'GEN10', 500, 100, NULL, 4),
    ('FLATRATE', 5.0, NULL, 0, 10.0, '2025-03-20 00:00:00', '2025-04-01 23:59:59', 'MEMBER', 'IMPORT', 'MEMBER5', 600, 300, NULL, 1),
    ('PERCENTAGE', NULL, 50.0, 0, 150.0, '2025-03-01 00:00:00', '2025-03-15 23:59:59', 'GENERAL', 'MANUAL', 'GEN50', 50, 10, NULL, 2),
    ('PERCENTAGE', NULL, 5.0, 0, 10.0, '2025-03-25 00:00:00', '2025-04-10 23:59:59', 'GENERAL', 'IMPORT', 'GEN5', 400, 50, NULL, 4),
    ('FLATRATE', 30.0, NULL, 0, 100.0, '2025-03-01 00:00:00', '2025-04-01 23:59:59', 'MEMBER', 'MANUAL', 'MEMBER30', 100, 25, NULL, 3),
    ('FLATRATE', 15.0, NULL, 0, 60.0, '2025-03-20 00:00:00', '2025-03-31 23:59:59', 'MEMBER', 'IMPORT', 'MEMBER15FLAT', 250, 150, NULL, 2);


-- Insert data into User_Coupons table
INSERT INTO `User_Coupons` (`coupon_id`, `user_id`)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);


-- Insert data into Faq table
INSERT INTO `Faq` (`question`, `answer`, `is_for_rider`)
VALUES
    ('How do I request a ride?', 'You can request a ride by opening the app, entering your destination, and confirming your ride request.', TRUE),
    ('How do I pay for my ride?', 'Payment is processed automatically through the app using your saved payment method.', TRUE),
    ('What do I do if I forget something in the car?', 'Contact the driver through the app to retrieve your lost item or reach out to customer support.', TRUE),
    ('How can I update my payment information?', 'You can update your payment method by going to the "Payment" section in the app settings.', TRUE),
    ('Can I cancel a ride?', 'Yes, you can cancel a ride before the driver starts the trip. Cancellation fees may apply depending on the time.', TRUE),
    ('What is the refund policy?', 'Refunds are processed based on the terms mentioned in your ride receipt and the type of service provided.', FALSE),
    ('How do I report a driver?', 'You can report a driver directly from the trip details page within the app, under "Report an Issue."', FALSE),
    ('How can I track my driver?', 'You can track your driver in real-time on the app map until they reach your location.', TRUE),
    ('How do I get a receipt for my ride?', 'You can view and download your ride receipt from the trip history section in the app.', TRUE),
    ('What is the rating system?', 'After completing your ride, you can rate the driver and the trip quality. Ratings help us improve our service.', FALSE);

-- Insert data into Advertisements table
INSERT INTO `Advertisements` (`title`, `content`, `image_url`)
VALUES
    ('Spring Sale - 20% Off All Rides!', 'Enjoy 20% off your next ride with our Spring Sale! Use code SPRING20 at checkout.', 'https://example.com/images/spring_sale.jpg'),
    ('Join Our Driver Program Today!', 'Become a driver with us and enjoy flexible working hours, competitive earnings, and more. Sign up today!', 'https://example.com/images/driver_program.jpg'),
    ('Get Your First Ride Free', 'New to the app? Get your first ride for free with the promo code NEWUSER. Download the app now!', 'https://example.com/images/first_ride_free.jpg'),
    ('Ride More, Save More', 'The more you ride, the more you save! Earn points with every ride to redeem exclusive discounts.', 'https://example.com/images/ride_more_save_more.jpg'),
    ('Refer a Friend and Get $10', 'Refer a friend to our app and earn $10 when they complete their first ride.', 'https://example.com/images/refer_friend.jpg');


-- Insert data into User_Favorite_Address table
INSERT INTO `User_Favorite_Address` (`user_id`, `long_address`, `short_address`, `custom_address`, `nick_name`, `latitude`, `longitude`, `address_type`)
VALUES
    (1, '123 Main Street, Springfield, IL, 62701, USA', '123 Main St, Springfield', 'My Home', 'Home', 39.7817, -89.6501, 'HOME'),
    (1, '456 Elm Street, Springfield, IL, 62701, USA', '456 Elm St, Springfield', 'Office Address', 'Work', 39.7822, -89.6504, 'WORK'),
    (2, '789 Oak Avenue, Chicago, IL, 60601, USA', '789 Oak Ave, Chicago', 'Personal Place', 'Home', 41.8781, -87.6298, 'HOME'),
    (3, '101 Pine Road, Chicago, IL, 60611, USA', '101 Pine Rd, Chicago', 'Client Office', 'Work', 41.8910, -87.6312, 'WORK'),
    (4, '200 Birch Street, Naperville, IL, 60540, USA', '200 Birch St, Naperville', 'Secondary Home', 'Home', 41.7857, -88.1470, 'HOME'),
    (5, '500 Maple Street, Evanston, IL, 60201, USA', '500 Maple St, Evanston', 'Friend’s House', 'Other', 42.0451, -87.6877, 'OTHER'),
    (6, '1234 Oakwood Drive, Oak Park, IL, 60302, USA', '1234 Oakwood Dr, Oak Park', 'Business Center', 'Work', 41.8851, -87.7847, 'WORK'),
    (7, '22 Cedar Lane, Skokie, IL, 60077, USA', '22 Cedar Ln, Skokie', 'Holiday Home', 'Home', 42.0336, -87.7450, 'HOME'),
    (8, '15 Birchwood Drive, Arlington Heights, IL, 60004, USA', '15 Birchwood Dr, Arlington', 'Summer House', 'Other', 42.0853, -87.9836, 'OTHER'),
    (9, '90 River Road, Hinsdale, IL, 60521, USA', '90 River Rd, Hinsdale', 'Vacation Spot', 'Other', 41.7922, -87.9383, 'OTHER');


-- Insert data into App_Versions table
INSERT INTO `App_Versions` (`app_name`, `update_type`, `version`)
VALUES
    ('RIDER', TRUE, '1.0.0'),
    ('CUSTOMER', FALSE, '1.1.2'),
    ('RIDER', TRUE, '1.2.0'),
    ('CUSTOMER', TRUE, '2.0.0'),
    ('RIDER', FALSE, '1.1.5'),
    ('CUSTOMER', TRUE, '1.2.1'),
    ('RIDER', TRUE, '2.1.0'),
    ('CUSTOMER', FALSE, '2.1.2'),
    ('RIDER', FALSE, '2.0.3'),
    ('CUSTOMER', TRUE, '3.0.0');


-- Insert data into Driver_Guides table
INSERT INTO `Driver_Guides` (`file_url`, `description`, `is_important`)
VALUES
    ('https://example.com/guides/driver_guide_1.pdf', 'Driver onboarding guide for new drivers', TRUE),
    ('https://example.com/guides/driver_guide_2.pdf', 'How to maximize your earnings as a driver', TRUE),
    ('https://example.com/guides/driver_guide_3.pdf', 'Safety protocols for drivers during rides', TRUE),
    ('https://example.com/guides/driver_guide_4.pdf', 'In-app navigation tips for drivers', FALSE),
    ('https://example.com/guides/driver_guide_5.pdf', 'Understanding rider ratings and feedback', TRUE),
    ('https://example.com/guides/driver_guide_6.pdf', 'How to deal with customer complaints as a driver', FALSE),
    ('https://example.com/guides/driver_guide_7.pdf', 'Earning bonuses and incentives for drivers', TRUE),
    ('https://example.com/guides/driver_guide_8.pdf', 'How to manage your driving hours and rest time', FALSE),
    ('https://example.com/guides/driver_guide_9.pdf', 'Insurance coverage for drivers', TRUE),
    ('https://example.com/guides/driver_guide_10.pdf', 'How to maintain your car for rideshare', FALSE);



-- Insert data into Rider_Payments table
INSERT INTO `Rider_Payments` (`rider_id`, `distance`, `price`, `payment_cycle`, `is_exported`, `is_paid`)
VALUES
    (1, 15.5, 25.00, '2025-03-01 00:00:00', FALSE, TRUE),
    (2, 10.2, 18.00, '2025-03-01 00:00:00', FALSE, TRUE),
    (3, 7.3, 12.00, '2025-03-02 00:00:00', TRUE, FALSE),
    (4, 12.8, 22.00, '2025-03-02 00:00:00', TRUE, FALSE),
    (5, 9.6, 16.50, '2025-03-03 00:00:00', FALSE, TRUE),
    (6, 14.4, 24.00, '2025-03-03 00:00:00', TRUE, FALSE),
    (7, 5.8, 9.50, '2025-03-04 00:00:00', FALSE, TRUE),
    (8, 16.0, 28.00, '2025-03-04 00:00:00', TRUE, FALSE),
    (9, 18.2, 30.00, '2025-03-05 00:00:00', FALSE, TRUE),
    (10, 11.9, 19.50, '2025-03-05 00:00:00', TRUE, FALSE);

-- Insert data into Ma_References table
INSERT INTO `Ma_References` (`order_ids`, `amount`, `currency`, `psp_reference`, `payment_method`, `result_json`)
VALUES
    ('[1]', 150.00, 'USD', 'PSP-REF-12345', 'Credit Card', '{"status": "Success", "transaction_id": "txn12345", "details": "Payment processed successfully."}'),
    ('[2]', 250.50, 'USD', 'PSP-REF-12346', 'PayPal', '{"status": "Success", "transaction_id": "txn12346", "details": "Payment processed successfully."}'),
    ('[3]', 50.75, 'EUR', 'PSP-REF-12347', 'Bank Transfer', '{"status": "Failed", "transaction_id": "txn12347", "details": "Insufficient funds."}'),
    ('[4]', 180.00, 'GBP', 'PSP-REF-12348', 'Debit Card', '{"status": "Success", "transaction_id": "txn12348", "details": "Payment processed successfully."}'),
    ('[5]', 320.25, 'USD', 'PSP-REF-12349', 'Credit Card', '{"status": "Success", "transaction_id": "txn12349", "details": "Payment processed successfully."}'),
    ('[6]', 99.99, 'AUD', 'PSP-REF-12350', 'Stripe', '{"status": "Failed", "transaction_id": "txn12350", "details": "Card expired."}'),
    ('[7]', 65.00, 'EUR', 'PSP-REF-12351', 'PayPal', '{"status": "Success", "transaction_id": "txn12351", "details": "Payment processed successfully."}'),
    ('[8]', 140.30, 'GBP', 'PSP-REF-12352', 'Credit Card', '{"status": "Success", "transaction_id": "txn12352", "details": "Payment processed successfully."}'),
    ('[9]', 110.60, 'USD', 'PSP-REF-12353', 'Bank Transfer', '{"status": "Failed", "transaction_id": "txn12353", "details": "Account not found."}'),
    ('[10]', 275.40, 'AUD', 'PSP-REF-12354', 'Debit Card', '{"status": "Success", "transaction_id": "txn12354", "details": "Payment processed successfully."}');


-- Insert data into Payment_Webhook_Payloads table
INSERT INTO `Payment_Webhook_Payloads` (`psp_reference`, `merchant_reference`, `original_reference`, `event_code`, `reason`, `payment_method`, `amount`, `success`, `payload`)
VALUES
    ('PSP-REF-12345', 'MERCHANT-REF-1001', 'ORIG-REF-2001', 'PAYMENT_SUCCESS', 'Payment successful', 'Credit Card', '{"amount": 150.00, "currency": "USD"}', TRUE, '{"status": "Completed", "transaction_id": "txn12345", "details": "Payment processed successfully."}'),
    ('PSP-REF-12346', 'MERCHANT-REF-1002', 'ORIG-REF-2002', 'PAYMENT_SUCCESS', 'Payment successful', 'PayPal', '{"amount": 250.50, "currency": "USD"}', TRUE, '{"status": "Completed", "transaction_id": "txn12346", "details": "Payment processed successfully."}'),
    ('PSP-REF-12347', 'MERCHANT-REF-1003', 'ORIG-REF-2003', 'PAYMENT_FAILED', 'Insufficient funds', 'Bank Transfer', '{"amount": 50.75, "currency": "EUR"}', FALSE, '{"status": "Failed", "transaction_id": "txn12347", "details": "Insufficient funds."}'),
    ('PSP-REF-12348', 'MERCHANT-REF-1004', 'ORIG-REF-2004', 'PAYMENT_SUCCESS', 'Payment successful', 'Debit Card', '{"amount": 180.00, "currency": "GBP"}', TRUE, '{"status": "Completed", "transaction_id": "txn12348", "details": "Payment processed successfully."}'),
    ('PSP-REF-12349', 'MERCHANT-REF-1005', 'ORIG-REF-2005', 'PAYMENT_SUCCESS', 'Payment successful', 'Credit Card', '{"amount": 320.25, "currency": "USD"}', TRUE, '{"status": "Completed", "transaction_id": "txn12349", "details": "Payment processed successfully."}'),
    ('PSP-REF-12350', 'MERCHANT-REF-1006', 'ORIG-REF-2006', 'PAYMENT_FAILED', 'Card expired', 'Stripe', '{"amount": 99.99, "currency": "AUD"}', FALSE, '{"status": "Failed", "transaction_id": "txn12350", "details": "Card expired."}'),
    ('PSP-REF-12351', 'MERCHANT-REF-1007', 'ORIG-REF-2007', 'PAYMENT_SUCCESS', 'Payment successful', 'PayPal', '{"amount": 65.00, "currency": "EUR"}', TRUE, '{"status": "Completed", "transaction_id": "txn12351", "details": "Payment processed successfully."}'),
    ('PSP-REF-12352', 'MERCHANT-REF-1008', 'ORIG-REF-2008', 'PAYMENT_SUCCESS', 'Payment successful', 'Credit Card', '{"amount": 140.30, "currency": "GBP"}', TRUE, '{"status": "Completed", "transaction_id": "txn12352", "details": "Payment processed successfully."}'),
    ('PSP-REF-12353', 'MERCHANT-REF-1009', 'ORIG-REF-2009', 'PAYMENT_FAILED', 'Account not found', 'Bank Transfer', '{"amount": 110.60, "currency": "USD"}', FALSE, '{"status": "Failed", "transaction_id": "txn12353", "details": "Account not found."}'),
    ('PSP-REF-12354', 'MERCHANT-REF-1010', 'ORIG-REF-2010', 'PAYMENT_SUCCESS', 'Payment successful', 'Debit Card', '{"amount": 275.40, "currency": "AUD"}', TRUE, '{"status": "Completed", "transaction_id": "txn12354", "details": "Payment processed successfully."}');


-- Insert data into Rider_Commissions table
INSERT INTO `Rider_Commissions` (`basic_commission`, `overtime_rate`, `holiday_rate`, `is_latest`, `previous_id`)
VALUES
    (50.00, 75.00, 100.00, FALSE, NULL),
    (55.00, 80.00, 110.00, FALSE, 1),
    (60.00, 85.00, 120.00, FALSE, NULL),
    (65.00, 90.00, 130.00, FALSE, 3),
    (70.00, 95.00, 140.00, FALSE, NULL),
    (75.00, 100.00, 150.00, FALSE, 5),
    (80.00, 105.00, 160.00, FALSE, NULL),
    (85.00, 110.00, 170.00, FALSE, 7),
    (90.00, 115.00, 180.00, FALSE, NULL),
    (95.00, 120.00, 190.00, TRUE, 9);



-- Insert data into Vehicle_Basic_Prices table
INSERT INTO `Vehicle_Basic_Prices` (`vehicle_type`, `price`, `is_latest`, `previous_id`)
VALUES
    ('BICYCLE', 10.00, FALSE, NULL),
    ('MOTORBIKE', 20.00, FALSE, NULL),
    ('CAR', 50.00, FALSE, NULL),
    ('BICYCLE', 11.00, TRUE, 1),
    ('MOTORBIKE', 21.00, TRUE, 2),
    ('CAR', 51.00, TRUE, 3);


-- Insert data into Pickup_Time_Basic_Prices table
INSERT INTO `Pickup_Time_Basic_Prices` (`pickup_time`, `vehicle_type`, `previous_id`, `price`, `is_latest`)
VALUES
    ('TODAY', 'BICYCLE', NULL, 5.00, FALSE),
    ('ASAP', 'MOTORBIKE', NULL, 10.00, FALSE),
    ('IN_2_HOURS', 'CAR', NULL, 30.00, FALSE),
    ('OTHER_DAY', 'BICYCLE', NULL, 7.00, FALSE),
    ('TODAY', 'MOTORBIKE', NULL, 12.00, FALSE),
    ('TODAY', 'BICYCLE', 1, 6.00, TRUE),
    ('ASAP', 'MOTORBIKE', 2, 12.00, TRUE),
    ('IN_2_HOURS', 'CAR', 3, 33.00, TRUE),
    ('OTHER_DAY', 'BICYCLE', 4, 8.00, TRUE),
    ('TODAY', 'MOTORBIKE', 5, 15.00, TRUE);


-- Insert data into None_Business_Hour_Rates table
INSERT INTO `None_Business_Hour_Rates` (`start_time`, `end_time`, `rate`, `is_latest`, `created_by`)
VALUES
    ('00:00', '06:00', 1.50, TRUE, 12),
    ('06:00', '09:00', 1.20, TRUE, 12),
    ('09:00', '12:00', 1.00, TRUE, 12),
    ('12:00', '18:00', 1.10, TRUE, 12),
    ('18:00', '22:00', 1.30, TRUE, 12),
    ('22:00', '00:00', 1.40, TRUE, 12),
    ('00:00', '06:00', 1.60, FALSE, 12),
    ('06:00', '09:00', 1.25, FALSE, 12),
    ('09:00', '12:00', 1.05, FALSE, 12),
    ('12:00', '18:00', 1.15, FALSE, 12);


-- Insert data into Transport_Basic_Prices table
INSERT INTO `Transport_Basic_Prices` (`previous_id`, `vehicle_type`, `basic_price`, `previous_basic_price`, `price_per_minute`, `pickuptime_asap_price`, `pickuptime_2hours_price`, `pickuptime_today_price`, `pickuptime_otherday_price`, `is_latest`)
VALUES
    (NULL, 'BICYCLE', 10.00, NULL, 0.50, 5.00, 6.00, 7.00, 8.00, FALSE),
    (NULL, 'MOTORBIKE', 20.00, NULL, 1.00, 12.00, 14.00, 16.00, 18.00, FALSE),
    (NULL, 'CAR', 50.00, NULL, 2.00, 30.00, 35.00, 40.00, 45.00, FALSE),
    (1, 'BICYCLE', 12.00, 10.00, 0.55, 6.00, 7.00, 8.00, 9.00, FALSE),
    (2, 'MOTORBIKE', 22.00, 20.00, 1.10, 14.00, 16.00, 18.00, 20.00, FALSE),
    (3, 'CAR', 55.00, 50.00, 2.20, 35.00, 40.00, 45.00, 50.00, FALSE),
    (4, 'BICYCLE', 14.00, NULL, 0.60, 7.00, 8.00, 9.00, 10.00, FALSE),
    (5, 'MOTORBIKE', 25.00, NULL, 1.20, 15.00, 17.00, 19.00, 21.00, TRUE),
    (6, 'CAR', 60.00, NULL, 2.50, 40.00, 45.00, 50.00, 55.00, TRUE),
    (7, 'BICYCLE', 16.00, 14.00, 0.65, 8.00, 9.00, 10.00, 11.00, TRUE);

-- Insert data into Coupons table
INSERT INTO `Coupons`
(`discount_type`, `discount_amount`, `discount_percentage`, `maximum_discount_amount`, `minimum_purchase_price`, `start_date`, `end_date`, `issued_to`, `how_user_was_added`, `code`, `number_of_issued_coupons`, `number_of_used_coupons`, `excel_file_url`, `created_by`)
VALUES
    ('PERCENTAGE', NULL, 15.0, 0, 50.0, '2025-03-01 00:00:00', '2025-03-31 23:59:59', 'MEMBER', 'MANUAL', 'MEMBER15', 100, 25, NULL, 1),
    ('FLATRATE', 10.0, NULL, 0, 30.0, '2025-03-05 00:00:00', '2025-03-25 23:59:59', 'GENERAL', 'IMPORT', 'FLAT10', 200, 100, NULL, 2),
    ('PERCENTAGE', NULL, 25.0, 0, 100.0, '2025-04-01 00:00:00', '2025-04-30 23:59:59', 'MEMBER', 'MANUAL', 'MEMBER25', 150, 50, NULL, 1),
    ('FLATRATE', 20.0, NULL, 0, 50.0, '2025-03-10 00:00:00', '2025-03-20 23:59:59', 'GENERAL', 'IMPORT', 'FLAT20', 300, 200, NULL, 3),
    ('PERCENTAGE', NULL, 10.0, 0, 20.0, '2025-03-15 00:00:00', '2025-04-15 23:59:59', 'GENERAL', 'MANUAL', 'GEN10', 500, 100, NULL, 4),
    ('FLATRATE', 5.0, NULL, 0, 10.0, '2025-03-20 00:00:00', '2025-04-01 23:59:59', 'MEMBER', 'IMPORT', 'MEMBER5', 600, 300, NULL, 1),
    ('PERCENTAGE', NULL, 50.0, 0, 150.0, '2025-03-01 00:00:00', '2025-03-15 23:59:59', 'GENERAL', 'MANUAL', 'GEN50', 50, 10, NULL, 2),
    ('PERCENTAGE', NULL, 5.0, 0, 10.0, '2025-03-25 00:00:00', '2025-04-10 23:59:59', 'GENERAL', 'IMPORT', 'GEN5', 400, 50, NULL, 4),
    ('FLATRATE', 30.0, NULL, 0, 100.0, '2025-03-01 00:00:00', '2025-04-01 23:59:59', 'MEMBER', 'MANUAL', 'MEMBER30', 100, 25, NULL, 3),
    ('FLATRATE', 15.0, NULL, 0, 60.0, '2025-03-20 00:00:00', '2025-03-31 23:59:59', 'MEMBER', 'IMPORT', 'MEMBER15FLAT', 250, 150, NULL, 2);


-- Insert data into User_Coupons table
INSERT INTO `User_Coupons` (`coupon_id`, `user_id`)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);


-- Insert data into Faq table
INSERT INTO `Faq` (`question`, `answer`, `is_for_rider`)
VALUES
    ('How do I request a ride?', 'You can request a ride by opening the app, entering your destination, and confirming your ride request.', TRUE),
    ('How do I pay for my ride?', 'Payment is processed automatically through the app using your saved payment method.', TRUE),
    ('What do I do if I forget something in the car?', 'Contact the driver through the app to retrieve your lost item or reach out to customer support.', TRUE),
    ('How can I update my payment information?', 'You can update your payment method by going to the "Payment" section in the app settings.', TRUE),
    ('Can I cancel a ride?', 'Yes, you can cancel a ride before the driver starts the trip. Cancellation fees may apply depending on the time.', TRUE),
    ('What is the refund policy?', 'Refunds are processed based on the terms mentioned in your ride receipt and the type of service provided.', FALSE),
    ('How do I report a driver?', 'You can report a driver directly from the trip details page within the app, under "Report an Issue."', FALSE),
    ('How can I track my driver?', 'You can track your driver in real-time on the app map until they reach your location.', TRUE),
    ('How do I get a receipt for my ride?', 'You can view and download your ride receipt from the trip history section in the app.', TRUE),
    ('What is the rating system?', 'After completing your ride, you can rate the driver and the trip quality. Ratings help us improve our service.', FALSE);

-- Insert data into Advertisements table
INSERT INTO `Advertisements` (`title`, `content`, `image_url`)
VALUES
    ('Spring Sale - 20% Off All Rides!', 'Enjoy 20% off your next ride with our Spring Sale! Use code SPRING20 at checkout.', 'https://example.com/images/spring_sale.jpg'),
    ('Join Our Driver Program Today!', 'Become a driver with us and enjoy flexible working hours, competitive earnings, and more. Sign up today!', 'https://example.com/images/driver_program.jpg'),
    ('Get Your First Ride Free', 'New to the app? Get your first ride for free with the promo code NEWUSER. Download the app now!', 'https://example.com/images/first_ride_free.jpg'),
    ('Ride More, Save More', 'The more you ride, the more you save! Earn points with every ride to redeem exclusive discounts.', 'https://example.com/images/ride_more_save_more.jpg'),
    ('Refer a Friend and Get $10', 'Refer a friend to our app and earn $10 when they complete their first ride.', 'https://example.com/images/refer_friend.jpg');


-- Insert data into User_Favorite_Address table
INSERT INTO `User_Favorite_Address` (`user_id`, `long_address`, `short_address`, `custom_address`, `nick_name`, `latitude`, `longitude`, `address_type`)
VALUES
    (1, '123 Main Street, Springfield, IL, 62701, USA', '123 Main St, Springfield', 'My Home', 'Home', 39.7817, -89.6501, 'HOME'),
    (1, '456 Elm Street, Springfield, IL, 62701, USA', '456 Elm St, Springfield', 'Office Address', 'Work', 39.7822, -89.6504, 'WORK'),
    (2, '789 Oak Avenue, Chicago, IL, 60601, USA', '789 Oak Ave, Chicago', 'Personal Place', 'Home', 41.8781, -87.6298, 'HOME'),
    (3, '101 Pine Road, Chicago, IL, 60611, USA', '101 Pine Rd, Chicago', 'Client Office', 'Work', 41.8910, -87.6312, 'WORK'),
    (4, '200 Birch Street, Naperville, IL, 60540, USA', '200 Birch St, Naperville', 'Secondary Home', 'Home', 41.7857, -88.1470, 'HOME'),
    (5, '500 Maple Street, Evanston, IL, 60201, USA', '500 Maple St, Evanston', 'Friend’s House', 'Other', 42.0451, -87.6877, 'OTHER'),
    (6, '1234 Oakwood Drive, Oak Park, IL, 60302, USA', '1234 Oakwood Dr, Oak Park', 'Business Center', 'Work', 41.8851, -87.7847, 'WORK'),
    (7, '22 Cedar Lane, Skokie, IL, 60077, USA', '22 Cedar Ln, Skokie', 'Holiday Home', 'Home', 42.0336, -87.7450, 'HOME'),
    (8, '15 Birchwood Drive, Arlington Heights, IL, 60004, USA', '15 Birchwood Dr, Arlington', 'Summer House', 'Other', 42.0853, -87.9836, 'OTHER'),
    (9, '90 River Road, Hinsdale, IL, 60521, USA', '90 River Rd, Hinsdale', 'Vacation Spot', 'Other', 41.7922, -87.9383, 'OTHER');


-- Insert data into App_Versions table
INSERT INTO `App_Versions` (`app_name`, `update_type`, `version`)
VALUES
    ('RIDER', TRUE, '1.0.0'),
    ('CUSTOMER', FALSE, '1.1.2'),
    ('RIDER', TRUE, '1.2.0'),
    ('CUSTOMER', TRUE, '2.0.0'),
    ('RIDER', FALSE, '1.1.5'),
    ('CUSTOMER', TRUE, '1.2.1'),
    ('RIDER', TRUE, '2.1.0'),
    ('CUSTOMER', FALSE, '2.1.2'),
    ('RIDER', FALSE, '2.0.3'),
    ('CUSTOMER', TRUE, '3.0.0');


-- Insert data into Driver_Guides table
INSERT INTO `Driver_Guides` (`file_url`, `description`, `is_important`)
VALUES
    ('https://example.com/guides/driver_guide_1.pdf', 'Driver onboarding guide for new drivers', TRUE),
    ('https://example.com/guides/driver_guide_2.pdf', 'How to maximize your earnings as a driver', TRUE),
    ('https://example.com/guides/driver_guide_3.pdf', 'Safety protocols for drivers during rides', TRUE),
    ('https://example.com/guides/driver_guide_4.pdf', 'In-app navigation tips for drivers', FALSE),
    ('https://example.com/guides/driver_guide_5.pdf', 'Understanding rider ratings and feedback', TRUE),
    ('https://example.com/guides/driver_guide_6.pdf', 'How to deal with customer complaints as a driver', FALSE),
    ('https://example.com/guides/driver_guide_7.pdf', 'Earning bonuses and incentives for drivers', TRUE),
    ('https://example.com/guides/driver_guide_8.pdf', 'How to manage your driving hours and rest time', FALSE),
    ('https://example.com/guides/driver_guide_9.pdf', 'Insurance coverage for drivers', TRUE),
    ('https://example.com/guides/driver_guide_10.pdf', 'How to maintain your car for rideshare', FALSE);



-- Insert data into Rider_Payments table
INSERT INTO `Rider_Payments` (`rider_id`, `distance`, `price`, `payment_cycle`, `is_exported`, `is_paid`)
VALUES
    (1, 15.5, 25.00, '2025-03-01 00:00:00', FALSE, TRUE),
    (2, 10.2, 18.00, '2025-03-01 00:00:00', FALSE, TRUE),
    (3, 7.3, 12.00, '2025-03-02 00:00:00', TRUE, FALSE),
    (4, 12.8, 22.00, '2025-03-02 00:00:00', TRUE, FALSE),
    (5, 9.6, 16.50, '2025-03-03 00:00:00', FALSE, TRUE),
    (6, 14.4, 24.00, '2025-03-03 00:00:00', TRUE, FALSE),
    (7, 5.8, 9.50, '2025-03-04 00:00:00', FALSE, TRUE),
    (8, 16.0, 28.00, '2025-03-04 00:00:00', TRUE, FALSE),
    (9, 18.2, 30.00, '2025-03-05 00:00:00', FALSE, TRUE),
    (10, 11.9, 19.50, '2025-03-05 00:00:00', TRUE, FALSE);

-- Insert data into Ma_References table
INSERT INTO `Ma_References` (`order_ids`, `amount`, `currency`, `psp_reference`, `payment_method`, `result_json`)
VALUES
    ('[1]', 150.00, 'USD', 'PSP-REF-12345', 'Credit Card', '{"status": "Success", "transaction_id": "txn12345", "details": "Payment processed successfully."}'),
    ('[2]', 250.50, 'USD', 'PSP-REF-12346', 'PayPal', '{"status": "Success", "transaction_id": "txn12346", "details": "Payment processed successfully."}'),
    ('[3]', 50.75, 'EUR', 'PSP-REF-12347', 'Bank Transfer', '{"status": "Failed", "transaction_id": "txn12347", "details": "Insufficient funds."}'),
    ('[4]', 180.00, 'GBP', 'PSP-REF-12348', 'Debit Card', '{"status": "Success", "transaction_id": "txn12348", "details": "Payment processed successfully."}'),
    ('[5]', 320.25, 'USD', 'PSP-REF-12349', 'Credit Card', '{"status": "Success", "transaction_id": "txn12349", "details": "Payment processed successfully."}'),
    ('[6]', 99.99, 'AUD', 'PSP-REF-12350', 'Stripe', '{"status": "Failed", "transaction_id": "txn12350", "details": "Card expired."}'),
    ('[7]', 65.00, 'EUR', 'PSP-REF-12351', 'PayPal', '{"status": "Success", "transaction_id": "txn12351", "details": "Payment processed successfully."}'),
    ('[8]', 140.30, 'GBP', 'PSP-REF-12352', 'Credit Card', '{"status": "Success", "transaction_id": "txn12352", "details": "Payment processed successfully."}'),
    ('[9]', 110.60, 'USD', 'PSP-REF-12353', 'Bank Transfer', '{"status": "Failed", "transaction_id": "txn12353", "details": "Account not found."}'),
    ('[10]', 275.40, 'AUD', 'PSP-REF-12354', 'Debit Card', '{"status": "Success", "transaction_id": "txn12354", "details": "Payment processed successfully."}');


-- Insert data into Payment_Webhook_Payloads table
INSERT INTO `Payment_Webhook_Payloads` (`psp_reference`, `merchant_reference`, `original_reference`, `event_code`, `reason`, `payment_method`, `amount`, `success`, `payload`)
VALUES
    ('PSP-REF-12345', 'MERCHANT-REF-1001', 'ORIG-REF-2001', 'PAYMENT_SUCCESS', 'Payment successful', 'Credit Card', '{"amount": 150.00, "currency": "USD"}', TRUE, '{"status": "Completed", "transaction_id": "txn12345", "details": "Payment processed successfully."}'),
    ('PSP-REF-12346', 'MERCHANT-REF-1002', 'ORIG-REF-2002', 'PAYMENT_SUCCESS', 'Payment successful', 'PayPal', '{"amount": 250.50, "currency": "USD"}', TRUE, '{"status": "Completed", "transaction_id": "txn12346", "details": "Payment processed successfully."}'),
    ('PSP-REF-12347', 'MERCHANT-REF-1003', 'ORIG-REF-2003', 'PAYMENT_FAILED', 'Insufficient funds', 'Bank Transfer', '{"amount": 50.75, "currency": "EUR"}', FALSE, '{"status": "Failed", "transaction_id": "txn12347", "details": "Insufficient funds."}'),
    ('PSP-REF-12348', 'MERCHANT-REF-1004', 'ORIG-REF-2004', 'PAYMENT_SUCCESS', 'Payment successful', 'Debit Card', '{"amount": 180.00, "currency": "GBP"}', TRUE, '{"status": "Completed", "transaction_id": "txn12348", "details": "Payment processed successfully."}'),
    ('PSP-REF-12349', 'MERCHANT-REF-1005', 'ORIG-REF-2005', 'PAYMENT_SUCCESS', 'Payment successful', 'Credit Card', '{"amount": 320.25, "currency": "USD"}', TRUE, '{"status": "Completed", "transaction_id": "txn12349", "details": "Payment processed successfully."}'),
    ('PSP-REF-12350', 'MERCHANT-REF-1006', 'ORIG-REF-2006', 'PAYMENT_FAILED', 'Card expired', 'Stripe', '{"amount": 99.99, "currency": "AUD"}', FALSE, '{"status": "Failed", "transaction_id": "txn12350", "details": "Card expired."}'),
    ('PSP-REF-12351', 'MERCHANT-REF-1007', 'ORIG-REF-2007', 'PAYMENT_SUCCESS', 'Payment successful', 'PayPal', '{"amount": 65.00, "currency": "EUR"}', TRUE, '{"status": "Completed", "transaction_id": "txn12351", "details": "Payment processed successfully."}'),
    ('PSP-REF-12352', 'MERCHANT-REF-1008', 'ORIG-REF-2008', 'PAYMENT_SUCCESS', 'Payment successful', 'Credit Card', '{"amount": 140.30, "currency": "GBP"}', TRUE, '{"status": "Completed", "transaction_id": "txn12352", "details": "Payment processed successfully."}'),
    ('PSP-REF-12353', 'MERCHANT-REF-1009', 'ORIG-REF-2009', 'PAYMENT_FAILED', 'Account not found', 'Bank Transfer', '{"amount": 110.60, "currency": "USD"}', FALSE, '{"status": "Failed", "transaction_id": "txn12353", "details": "Account not found."}'),
    ('PSP-REF-12354', 'MERCHANT-REF-1010', 'ORIG-REF-2010', 'PAYMENT_SUCCESS', 'Payment successful', 'Debit Card', '{"amount": 275.40, "currency": "AUD"}', TRUE, '{"status": "Completed", "transaction_id": "txn12354", "details": "Payment processed successfully."}');


-- Insert data into Rider_Commissions table
INSERT INTO `Rider_Commissions` (`basic_commission`, `overtime_rate`, `holiday_rate`, `is_latest`, `previous_id`)
VALUES
    (50.00, 75.00, 100.00, FALSE, NULL),
    (55.00, 80.00, 110.00, FALSE, 1),
    (60.00, 85.00, 120.00, FALSE, NULL),
    (65.00, 90.00, 130.00, FALSE, 3),
    (70.00, 95.00, 140.00, FALSE, NULL),
    (75.00, 100.00, 150.00, FALSE, 5),
    (80.00, 105.00, 160.00, FALSE, NULL),
    (85.00, 110.00, 170.00, FALSE, 7),
    (90.00, 115.00, 180.00, FALSE, NULL),
    (95.00, 120.00, 190.00, TRUE, 9);



-- Insert data into Vehicle_Basic_Prices table
INSERT INTO `Vehicle_Basic_Prices` (`vehicle_type`, `price`, `is_latest`, `previous_id`)
VALUES
    ('BICYCLE', 10.00, FALSE, NULL),
    ('MOTORBIKE', 20.00, FALSE, NULL),
    ('CAR', 50.00, FALSE, NULL),
    ('BICYCLE', 11.00, TRUE, 1),
    ('MOTORBIKE', 21.00, TRUE, 2),
    ('CAR', 51.00, TRUE, 3);


-- Insert data into Pickup_Time_Basic_Prices table
INSERT INTO `Pickup_Time_Basic_Prices` (`pickup_time`, `vehicle_type`, `previous_id`, `price`, `is_latest`)
VALUES
    ('TODAY', 'BICYCLE', NULL, 5.00, FALSE),
    ('ASAP', 'MOTORBIKE', NULL, 10.00, FALSE),
    ('IN_2_HOURS', 'CAR', NULL, 30.00, FALSE),
    ('OTHER_DAY', 'BICYCLE', NULL, 7.00, FALSE),
    ('TODAY', 'MOTORBIKE', NULL, 12.00, FALSE),
    ('TODAY', 'BICYCLE', 1, 6.00, TRUE),
    ('ASAP', 'MOTORBIKE', 2, 12.00, TRUE),
    ('IN_2_HOURS', 'CAR', 3, 33.00, TRUE),
    ('OTHER_DAY', 'BICYCLE', 4, 8.00, TRUE),
    ('TODAY', 'MOTORBIKE', 5, 15.00, TRUE);


-- Insert data into None_Business_Hour_Rates table
INSERT INTO `None_Business_Hour_Rates` (`start_time`, `end_time`, `rate`, `is_latest`, `created_by`)
VALUES
    ('00:00', '06:00', 1.50, TRUE, 12),
    ('06:00', '09:00', 1.20, TRUE, 12),
    ('09:00', '12:00', 1.00, TRUE, 12),
    ('12:00', '18:00', 1.10, TRUE, 12),
    ('18:00', '22:00', 1.30, TRUE, 12),
    ('22:00', '00:00', 1.40, TRUE, 12),
    ('00:00', '06:00', 1.60, FALSE, 12),
    ('06:00', '09:00', 1.25, FALSE, 12),
    ('09:00', '12:00', 1.05, FALSE, 12),
    ('12:00', '18:00', 1.15, FALSE, 12);


-- Insert data into Transport_Basic_Prices table
INSERT INTO `Transport_Basic_Prices` (`previous_id`, `vehicle_type`, `basic_price`, `previous_basic_price`, `price_per_minute`, `pickuptime_asap_price`, `pickuptime_2hours_price`, `pickuptime_today_price`, `pickuptime_otherday_price`, `is_latest`)
VALUES
    (NULL, 'BICYCLE', 10.00, NULL, 0.50, 5.00, 6.00, 7.00, 8.00, FALSE),
    (NULL, 'MOTORBIKE', 20.00, NULL, 1.00, 12.00, 14.00, 16.00, 18.00, FALSE),
    (NULL, 'CAR', 50.00, NULL, 2.00, 30.00, 35.00, 40.00, 45.00, FALSE),
    (1, 'BICYCLE', 12.00, 10.00, 0.55, 6.00, 7.00, 8.00, 9.00, FALSE),
    (2, 'MOTORBIKE', 22.00, 20.00, 1.10, 14.00, 16.00, 18.00, 20.00, FALSE),
    (3, 'CAR', 55.00, 50.00, 2.20, 35.00, 40.00, 45.00, 50.00, FALSE),
    (4, 'BICYCLE', 14.00, NULL, 0.60, 7.00, 8.00, 9.00, 10.00, FALSE),
    (5, 'MOTORBIKE', 25.00, NULL, 1.20, 15.00, 17.00, 19.00, 21.00, TRUE),
    (6, 'CAR', 60.00, NULL, 2.50, 40.00, 45.00, 50.00, 55.00, TRUE),
    (7, 'BICYCLE', 16.00, 14.00, 0.65, 8.00, 9.00, 10.00, 11.00, TRUE);
