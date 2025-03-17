USE db;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE `Note_Destinations`;
ALTER TABLE `Note_Destinations` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Note_Delivery_Details`;
ALTER TABLE `Note_Delivery_Details` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Items`;
ALTER TABLE `Items` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Evidences`;
ALTER TABLE `Evidences` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Destinations`;
ALTER TABLE `Destinations` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Delivery_Details`;
ALTER TABLE `Delivery_Details` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Extr_Fees`;
ALTER TABLE `Extr_Fees` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Cancellation_Rider_Requests`;
ALTER TABLE `Cancellation_Rider_Requests` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Cancellation_Requests`;
ALTER TABLE `Cancellation_Requests` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Reviews`;
ALTER TABLE `Reviews` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Orders`;
ALTER TABLE `Orders` AUTO_INCREMENT = 1;

TRUNCATE TABLE `User_Coupons`;
ALTER TABLE `User_Coupons` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Coupons`;
ALTER TABLE `Coupons` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Rider_Payments`;
ALTER TABLE `Rider_Payments` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Rider_Answers`;
ALTER TABLE `Rider_Answers` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Question_Options`;
ALTER TABLE `Question_Options` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Questions`;
ALTER TABLE `Questions` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Suspensions`;
ALTER TABLE `Suspensions` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Penalities`;
ALTER TABLE `Penalities` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Vehicles`;
ALTER TABLE `Vehicles` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Riders`;
ALTER TABLE `Riders` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Password_Resets`;
ALTER TABLE `Password_Resets` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Delete_Requests`;
ALTER TABLE `Delete_Requests` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Group_Members`;
ALTER TABLE `Group_Members` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Group_Permissions`;
ALTER TABLE `Group_Permissions` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Event_Groups`;
ALTER TABLE `Event_Groups` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Permissions`;
ALTER TABLE `Permissions` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Ma_Groups`;
ALTER TABLE `Ma_Groups` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Billing_Address`;
ALTER TABLE `Billing_Address` AUTO_INCREMENT = 1;

TRUNCATE TABLE `User_Favorite_Address`;
ALTER TABLE `User_Favorite_Address` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Users`;
ALTER TABLE `Users` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Bussiness_Accounts`;
ALTER TABLE `Bussiness_Accounts` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Sso_Providers`;
ALTER TABLE `Sso_Providers` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Service_Areas`;
ALTER TABLE `Service_Areas` AUTO_INCREMENT = 1;

TRUNCATE TABLE `States`;
ALTER TABLE `States` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Transport_Basic_Prices`;
ALTER TABLE `Transport_Basic_Prices` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Peak_Time_Rates`;
ALTER TABLE `Peak_Time_Rates` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Rider_Commissions`;
ALTER TABLE `Rider_Commissions` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Vehicle_Basic_Prices`;
ALTER TABLE `Vehicle_Basic_Prices` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Pickup_Time_Basic_Prices`;
ALTER TABLE `Pickup_Time_Basic_Prices` AUTO_INCREMENT = 1;

TRUNCATE TABLE `None_Business_Hour_Rates`;
ALTER TABLE `None_Business_Hour_Rates` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Size_And_Weight_Descriptions`;
ALTER TABLE `Size_And_Weight_Descriptions` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Payment_Webhook_Payloads`;
ALTER TABLE `Payment_Webhook_Payloads` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Ma_References`;
ALTER TABLE `Ma_References` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Advertisements`;
ALTER TABLE `Advertisements` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Announcements`;
ALTER TABLE `Announcements` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Driver_Guides`;
ALTER TABLE `Driver_Guides` AUTO_INCREMENT = 1;

TRUNCATE TABLE `Faq`;
ALTER TABLE `Faq` AUTO_INCREMENT = 1;

TRUNCATE TABLE `App_Versions`;
ALTER TABLE `App_Versions` AUTO_INCREMENT = 1;

SET FOREIGN_KEY_CHECKS = 1;
