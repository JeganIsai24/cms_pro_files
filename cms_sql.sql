drop database if exists cms_71041;

create database cms_71041;

use cms_71041;

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `CUS_ID` int NOT NULL AUTO_INCREMENT,
  `CUS_NAME` varchar(50) NOT NULL,
  `CUS_PHN_NO` varchar(50) NOT NULL,
  `CUS_USERNAME` varchar(50) NOT NULL,
  `CUS_PASSWORD` varchar(50) NOT NULL,
  `CUS_EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`CUS_ID`),
  UNIQUE KEY `CUS_PHN_NO` (`CUS_PHN_NO`),
  UNIQUE KEY `CUS_USERNAME` (`CUS_USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=9122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `customer` VALUES (1,'Harihar','8881413278','hari','hari@123','hari@gmail.com'),
(2,'Jishnesh','8939339398','jish','jish@123','jishnesh@gmail.com'),
(3,'pavithra','6369704556','pavi','pavi@123','pavi@gmail.com'),
(4,'Vijay','9786978601','vijay123','vijay@321','vijay@gmail.com'),
(5,'Siva','8232140882','sivask','siva@123','siva@gmail.com'),
(6,'akash','9898761234','akash12','akash@123','akash@gmail.com'),
(7,'Rambo','9900334321','rambo123','rambo@123','rambo@gmail.com'),
(8,'kanmani','7639182717','kanmani12','kanmani@123','kanmani@gmail.com'),
(9,'Deekshith','8078022990','deeksh','d@123','deekshith@gmail.com');


DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `MEN_ID` int NOT NULL AUTO_INCREMENT,
  `MEN_ITEM` varchar(50) DEFAULT NULL,
  `MEN_PRICE` decimal(9,2) DEFAULT NULL,
  `MEN_CALORIES` double NOT NULL,
  `MEN_SPECIALITY` varchar(50) NOT NULL,
  PRIMARY KEY (`MEN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `menu` VALUES (1,'BIRIYANI',350.00,839,'NON-VEG'),
(2,'Pongal',120.00,436,'VEG'),
(3,'GOBI 65',280.00,512,'VEG'),
(4,'CHICKEN TIKKA',460.00,613,'NON-VEG'),
(5,'MEALS',550.00,856,'VEG'),
(6,'CHILLY PAROTTA',275.00,430,'VEG'),
(7,'FRIED RICE',350.00,830,'NON-VEG'),
(8,'VEG BIRIYANI',300.00,420,'VEG'),
(9,'PRAWN FRY',500.00,546,'NON-VEG'),
(10,'TANDOORI',499.00,734,'NON-VEG');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ORD_ID` int NOT NULL AUTO_INCREMENT,
  `CUS_ID` int unsigned NOT NULL,
  `VEN_ID` int unsigned NOT NULL,
  `WAL_SOURCE` varchar(30) DEFAULT NULL,
  `MEN_ID` int NOT NULL,
  `ORD_DATE` date DEFAULT NULL,
  `ORD_QUANTITY` int DEFAULT NULL,
  `ORD_BILLAMOUNT` double DEFAULT NULL,
  `ORD_STATUS` enum('ACCEPTED','DENIED','PENDING') DEFAULT 'PENDING',
  `ORD_COMMENTS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ORD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `orders` VALUES (1,1,1,'PAYTM',1,NULL,1,856,'ACCEPTED','GREAT'),
(2,1,2,'GPAY',1,NULL,1,856,'DENIED','NOT GOOD'),
(3,2,1,'PHONEPE',1,NULL,1,399,'PENDING','NOT BAD'),
(4,1,1,'GPAY',1,NULL,1,377,'PENDING','NOT BAD'),
(5,2,2,'AMAZON PAY',1,'2022-04-01',1,799,'ACCEPTED','OKAY'),
(6,1,1,'PAYTM',1,'2022-04-01',1,660,'PENDING','VERY BAD'),
(7,2,1,'PAYTM',1,'2022-04-01',1,540,'PENDING','TOO LATE'),
(8,1,1,'PHONEPE',1,NULL,1,780,'ACCEPTED','SUPER SLOW'),
(9,2,2,'PAYTM',6,NULL,1,560,'PENDING','YET TO RECEIVE'),
(10,1,2,'PAYTM',2,'2022-04-01',1,760,'DENIED','BE ON TIME'),
(11,1,1,'GPAY',1,'2022-04-01',2,280,'PENDING','MAKE FAST'),
(12,1,1,'PHONEPE',1,'2021-11-08',2,1712,'DENIED','TERRIBLE'),
(13,1,1,'PAYTM',1,'2021-11-08',12,10272,'PENDING','VERY SLOW'),
(14,1,1,'GPAY',1,'2021-11-08',1,856,'ACCEPTED','SUPERB');

DROP TABLE IF EXISTS `ordersnew`;
CREATE TABLE `ordersnew` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `custId` int DEFAULT NULL,
  `venId` int DEFAULT NULL,
  `MenuId` int DEFAULT NULL,
  `WalSource` varchar(30) DEFAULT NULL,
  `qtyord` int DEFAULT NULL,
  `billAmount` double DEFAULT NULL,
  `ordstatus` enum('ACCEPTED','DENIED','PENDING') DEFAULT 'PENDING',
  `comments` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `ordersnew` VALUES (1,1,1,1,'PAYTM',1,48585,'PENDING','abc');

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE `vendor` (
  `VEN_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `VEN_NAME` varchar(50) NOT NULL,
  `VEN_PHN_NO` varchar(40) NOT NULL,
  `VEN_USERNAME` varchar(40) NOT NULL,
  `VEN_PASSWORD` varchar(30) NOT NULL,
  `VEN_EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`VEN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `vendor` VALUES (1,'Ish','6369535411','Ish12','Ish@123','Ish@gmail.com'),
(2,'Arun','7284565405','arun','arun@123','arun@gmail.com'),
(3,'Bala','7235878012','bala12','bala@123','bala@gmail.com'),
(4,'Harish','9876455021','Harish','harish@123','harish@gmail.com'),
(5,'Abhai','8877991234','Abhai','Abhai@123','abhai@gmail.com'),
(6,'Suraj','9878691208','suraj','suraj@123','suraj@gmail.com');

DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet` (
  `CUS_ID` int unsigned DEFAULT NULL,
  `WAL_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `WAL_AMOUNT` double unsigned NOT NULL,
  `WAL_SOURCE` enum('PAYTM','CREDIT_CARD','DEBIT_CARD') DEFAULT 'DEBIT_CARD',
  PRIMARY KEY (`WAL_ID`),
  UNIQUE KEY `CUS_ID` (`CUS_ID`,`WAL_SOURCE`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `wallet` VALUES (1,1,4215,'PAYTM'),
(1,2,3000,'DEBIT_CARD'),
(1,3,5602.36,'CREDIT_CARD'),
(2,4,4500.36,'DEBIT_CARD'),
(3,5,485.23,'CREDIT_CARD'),
(2,6,3000,'CREDIT_CARD'),
(2,7,4560,'PAYTM'),
(3,8,56.36,'PAYTM'),
(3,9,4566,'DEBIT_CARD');