-- =========================================================
-- Schema DDL extracted from SQL_CaseStudy1.sql
-- This file contains database creation and table definitions.
-- =========================================================


-- Create "company" database.
create database company;

use company;

-- Create the 'offices' table.
DROP TABLE IF EXISTS `offices`;

CREATE TABLE `offices` (
  `officeCode` int(11) NOT NULL,
  `office_city` varchar(25) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `addressLine1` varchar(25) DEFAULT NULL,
  `addressLine2` varchar(12) DEFAULT NULL,
  `state` varchar(12) DEFAULT NULL,
  `country` varchar(12) DEFAULT NULL,
  `postalCode` varchar(12) DEFAULT NULL,
  `territory` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`officeCode`)
);

-- create 'employees' table.
DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employeeNumber` varchar(5) NOT NULL,
  `lastName` varchar(12) DEFAULT NULL,
  `firstName` varchar(12) DEFAULT NULL,
  `extension` varchar(5) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `officeCode` int(11) NOT NULL,
  `reportsTo` varchar(5) DEFAULT NULL,
  `jobTitle` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`employeeNumber`),
  CONSTRAINT `officecode` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`)
);

-- create 'customers' table.
DROP TABLE IF EXISTS `customers`;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `customers` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(45) DEFAULT NULL,
  `contactLastName` varchar(25) DEFAULT NULL,
  `contactFirstName` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `postalCode` varchar(12) DEFAULT NULL,
  `country` varchar(12) DEFAULT NULL,
  `salesRepEmployeeNumber` varchar(5) DEFAULT NULL,
  `creditLimit` int(11) NOT NULL,
  PRIMARY KEY (`customerNumber`),
  CONSTRAINT `emp_no` FOREIGN KEY (`salesRepEmployeeNumber`) REFERENCES `employees` (`employeeNumber`)
);

-- Create `orders` table
DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` datetime DEFAULT NULL,
  `requiredDate` datetime DEFAULT NULL,
  `shippedDate` varchar(25) DEFAULT NULL,
  `status` varchar(12) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `customerNumber` int(11) NOT NULL,
  PRIMARY KEY (`orderNumber`),
  CONSTRAINT `customer_no` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
  ) ;

Customer doesn\'t like the colors and precision of the models.',452),(10165,'2003-10-22 00:00:00','2003-10-31 00:00:00','26-12-2003 00:00:00','Shipped','This order was on hold because customers\'s credit limit had been exceeded. Order will ship when payment is received',148),(10166,'2003-10-21 00:00:00','2003-10-30 00:00:00','27-10-2003 00:00:00','Shipped','NULL',462),(10167,'2003-10-23 00:00:00','2003-10-30 00:00:00','NULL','Cancelled','Customer called to cancel. The warehouse was notified in time and the order didn\'t ship.',448),(10168,'2003-10-28 00:00:00','2003-11-03 00:00:00','01-11-2003 00:00:00','Shipped','NULL',161),(10169,'2003-11-04 00:00:00','2003-11-14 00:00:00','09-11-2003 00:00:00','Shipped','NULL',276),(10170,'2003-11-04 00:00:00','2003-11-12 00:00:00','07-11-2003 00:00:00','Shipped','NULL',452),(10171,'2003-11-05 00:00:00','2003-11-13 00:00:00','07-11-2003 00:00:00','Shipped','NULL',233),(10172,'2003-11-05 00:00:00','2003-11-14 00:00:00','11-11-2003 00:00:00','Shipped','NULL',175),(10173,'2003-11-05 00:00:00','2003-11-15 00:00:00','09-11-2003 00:00:00','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.',278),(10174,'2003-11-06 00:00:00','2003-11-15 00:00:00','10-11-2003 00:00:00','Shipped','NULL',333),(10175,'2003-11-06 00:00:00','2003-11-14 00:00:00','09-11-2003 00:00:00','Shipped','NULL',324),(10176,'2003-11-06 00:00:00','2003-11-15 00:00:00','12-11-2003 00:00:00','Shipped','NULL',386),(10177,'2003-11-07 00:00:00','2003-11-17 00:00:00','12-11-2003 00:00:00','Shipped','NULL',344),(10178,'2003-11-08 00:00:00','2003-11-16 00:00:00','10-11-2003 00:00:00','Shipped','Custom shipping instructions sent to warehouse',242),(10179,'2003-11-11 00:00:00','2003-11-17 00:00:00','13-11-2003 00:00:00','Cancelled','Customer cancelled due to urgent budgeting issues. Must be cautious when dealing with them in the future.',496),(10180,'2003-11-11 00:00:00','2003-11-19 00:00:00','14-11-2003 00:00:00','Shipped','NULL',171),(10181,'2003-11-12 00:00:00','2003-11-19 00:00:00','15-11-2003 00:00:00','Shipped','NULL',167),(10182,'2003-11-12 00:00:00','2003-11-21 00:00:00','18-11-2003 00:00:00','Shipped','NULL',124),(10183,'2003-11-13 00:00:00','2003-11-22 00:00:00','15-11-2003 00:00:00','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',339),(10184,'2003-11-14 00:00:00','2003-11-22 00:00:00','20-11-2003 00:00:00','Shipped','NULL',484),(10185,'2003-11-14 00:00:00','2003-11-21 00:00:00','20-11-2003 00:00:00','Shipped','NULL',320),(10186,'2003-11-14 00:00:00','2003-11-20 00:00:00','18-11-2003 00:00:00','Shipped','They want to reevaluate their terms agreement with the VP of Sales',489),(10187,'2003-11-15 00:00:00','2003-11-24 00:00:00','16-11-2003 00:00:00','Shipped','NULL',211),(10188,'2003-11-18 00:00:00','2003-11-26 00:00:00','24-11-2003 00:00:00','Shipped','NULL',167),(10189,'2003-11-18 00:00:00','2003-11-25 00:00:00','24-11-2003 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',205),(10190,'2003-11-19 00:00:00','2003-11-29 00:00:00','20-11-2003 00:00:00','Shipped','NULL',141),(10191,'2003-11-20 00:00:00','2003-11-30 00:00:00','24-11-2003 00:00:00','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',259),(10192,'2003-11-20 00:00:00','2003-11-29 00:00:00','25-11-2003 00:00:00','Shipped','NULL',363),(10193,'2003-11-21 00:00:00','2003-11-28 00:00:00','27-11-2003 00:00:00','Shipped','NULL',471),(10194,'2003-11-25 00:00:00','2003-12-02 00:00:00','26-11-2003 00:00:00','Shipped','NULL',146),(10195,'2003-11-25 00:00:00','2003-12-01 00:00:00','28-11-2003 00:00:00','Shipped','NULL',319),(10196,'2003-11-26 00:00:00','2003-12-03 00:00:00','01-12-2003 00:00:00','Shipped','NULL',455),(10197,'2003-11-26 00:00:00','2003-12-02 00:00:00','01-12-2003 00:00:00','Shipped','Customer inquired about remote controlled models and gold models.',216),(10198,'2003-11-27 00:00:00','2003-12-06 00:00:00','03-12-2003 00:00:00','Shipped','NULL',385),(10199,'2003-12-01 00:00:00','2003-12-10 00:00:00','06-12-2003 00:00:00','Shipped','NULL',475),(10200,'2003-12-01 00:00:00','2003-12-09 00:00:00','06-12-2003 00:00:00','Shipped','NULL',211),(10201,'2003-12-01 00:00:00','2003-12-11 00:00:00','02-12-2003 00:00:00','Shipped','NULL',129),(10202,'2003-12-02 00:00:00','2003-12-09 00:00:00','06-12-2003 00:00:00','Shipped','NULL',357),(10203,'2003-12-02 00:00:00','2003-12-11 00:00:00','07-12-2003 00:00:00','Shipped','NULL',141),(10204,'2003-12-02 00:00:00','2003-12-10 00:00:00','04-12-2003 00:00:00','Shipped','NULL',151),(10205,'2003-12-03 00:00:00','2003-12-09 00:00:00','07-12-2003 00:00:00','Shipped',' I need all the information I can get on our competitors.',141),(10206,'2003-12-05 00:00:00','2003-12-13 00:00:00','08-12-2003 00:00:00','Shipped','Can we renegotiate this one?',202),(10207,'2003-12-09 00:00:00','2003-12-17 00:00:00','11-12-2003 00:00:00','Shipped','Check on availability.',495),(10208,'2004-01-02 00:00:00','2004-01-11 00:00:00','04-01-2004 00:00:00','Shipped','NULL',146),(10209,'2004-01-09 00:00:00','2004-01-15 00:00:00','12-01-2004 00:00:00','Shipped','NULL',347),(10210,'2004-01-12 00:00:00','2004-01-22 00:00:00','20-01-2004 00:00:00','Shipped','NULL',177),(10211,'2004-01-15 00:00:00','2004-01-25 00:00:00','18-01-2004 00:00:00','Shipped','NULL',406),(10212,'2004-01-16 00:00:00','2004-01-24 00:00:00','18-01-2004 00:00:00','Shipped','NULL',141),(10213,'2004-01-22 00:00:00','2004-01-28 00:00:00','27-01-2004 00:00:00','Shipped','Difficult to negotiate with customer. We need more marketing materials',489),(10214,'2004-01-26 00:00:00','2004-02-04 00:00:00','29-01-2004 00:00:00','Shipped','NULL',458),(10215,'2004-01-29 00:00:00','2004-02-08 00:00:00','01-02-2004 00:00:00','Shipped','Customer requested that FedEx Ground is used for this shipping',475),(10216,'2004-02-02 00:00:00','2004-02-10 00:00:00','04-02-2004 00:00:00','Shipped','NULL',256),(10217,'2004-02-04 00:00:00','2004-02-14 00:00:00','06-02-2004 00:00:00','Shipped','NULL',166),(10218,'2004-02-09 00:00:00','2004-02-16 00:00:00','11-02-2004 00:00:00','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shipment',473),(10219,'2004-02-10 00:00:00','2004-02-17 00:00:00','12-02-2004 00:00:00','Shipped','NULL',487),(10220,'2004-02-12 00:00:00','2004-02-19 00:00:00','16-02-2004 00:00:00','Shipped','NULL',189),(10221,'2004-02-18 00:00:00','2004-02-26 00:00:00','19-02-2004 00:00:00','Shipped','NULL',314),(10222,'2004-02-19 00:00:00','2004-02-27 00:00:00','20-02-2004 00:00:00','Shipped','NULL',239),(10223,'2004-02-20 00:00:00','2004-02-29 00:00:00','24-02-2004 00:00:00','Shipped','NULL',114),(10224,'2004-02-21 00:00:00','2004-03-02 00:00:00','26-02-2004 00:00:00','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',171),(10225,'2004-02-22 00:00:00','2004-03-01 00:00:00','24-02-2004 00:00:00','Shipped','NULL',298),(10226,'2004-02-26 00:00:00','2004-03-06 00:00:00','02-03-2004 00:00:00','Shipped','NULL',239),(10227,'2004-03-02 00:00:00','2004-03-12 00:00:00','08-03-2004 00:00:00','Shipped','NULL',146),(10228,'2004-03-10 00:00:00','2004-03-18 00:00:00','13-03-2004 00:00:00','Shipped','NULL',173),(10229,'2004-03-11 00:00:00','2004-03-20 00:00:00','12-03-2004 00:00:00','Shipped','NULL',124),(10230,'2004-03-15 00:00:00','2004-03-24 00:00:00','20-03-2004 00:00:00','Shipped','Customer very concerned about the exact color of the models.',128),(10231,'2004-03-19 00:00:00','2004-03-26 00:00:00','25-03-2004 00:00:00','Shipped','NULL',344),(10232,'2004-03-20 00:00:00','2004-03-30 00:00:00','25-03-2004 00:00:00','Shipped','NULL',240),(10233,'2004-03-29 00:00:00','2004-04-04 00:00:00','02-04-2004 00:00:00','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',328),(10234,'2004-03-30 00:00:00','2004-04-05 00:00:00','02-04-2004 00:00:00','Shipped','NULL',412),(10235,'2004-04-02 00:00:00','2004-04-12 00:00:00','06-04-2004 00:00:00','Shipped','NULL',260),(10236,'2004-04-03 00:00:00','2004-04-11 00:00:00','08-04-2004 00:00:00','Shipped','NULL',486),(10237,'2004-04-05 00:00:00','2004-04-12 00:00:00','10-04-2004 00:00:00','Shipped','NULL',181),(10238,'2004-04-09 00:00:00','2004-04-16 00:00:00','10-04-2004 00:00:00','Shipped','NULL',145),(10239,'2004-04-12 00:00:00','2004-04-21 00:00:00','17-04-2004 00:00:00','Shipped','NULL',311),(10240,'2004-04-13 00:00:00','2004-04-20 00:00:00','20-04-2004 00:00:00','Shipped','NULL',177),(10241,'2004-04-13 00:00:00','2004-04-20 00:00:00','19-04-2004 00:00:00','Shipped','NULL',209),(10242,'2004-04-20 00:00:00','2004-04-28 00:00:00','25-04-2004 00:00:00','Shipped','Customer is interested in buying more Ferrari models',456),(10243,'2004-04-26 00:00:00','2004-05-03 00:00:00','28-04-2004 00:00:00','Shipped','NULL',495),(10244,'2004-04-29 00:00:00','2004-05-09 00:00:00','04-05-2004 00:00:00','Shipped','NULL',141),(10245,'2004-05-04 00:00:00','2004-05-12 00:00:00','09-05-2004 00:00:00','Shipped','NULL',455),(10246,'2004-05-05 00:00:00','2004-05-13 00:00:00','06-05-2004 00:00:00','Shipped','NULL',141),(10247,'2004-05-05 00:00:00','2004-05-11 00:00:00','08-05-2004 00:00:00','Shipped','NULL',334),(10248,'2004-05-07 00:00:00','2004-05-14 00:00:00','NULL','Cancelled','Order was mistakenly placed. The warehouse noticed the lack of documentation.',131),(10249,'2004-05-08 00:00:00','2004-05-17 00:00:00','11-05-2004 00:00:00','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',173),(10250,'2004-05-11 00:00:00','2004-05-19 00:00:00','15-05-2004 00:00:00','Shipped','NULL',450),(10251,'2004-05-18 00:00:00','2004-05-24 00:00:00','24-05-2004 00:00:00','Shipped','NULL',328),(10252,'2004-05-26 00:00:00','2004-06-04 00:00:00','29-05-2004 00:00:00','Shipped','NULL',406),(10253,'2004-06-01 00:00:00','2004-06-09 00:00:00','02-06-2004 00:00:00','Cancelled','Customer disputed the order and we agreed to cancel it.',201),(10254,'2004-06-03 00:00:00','2004-06-13 00:00:00','04-06-2004 00:00:00','Shipped','Customer requested that DHL is used for this shipping',323),(10255,'2004-06-04 00:00:00','2004-06-12 00:00:00','09-06-2004 00:00:00','Shipped','NULL',209),(10256,'2004-06-08 00:00:00','2004-06-16 00:00:00','10-06-2004 00:00:00','Shipped','NULL',145),(10257,'2004-06-14 00:00:00','2004-06-24 00:00:00','15-06-2004 00:00:00','Shipped','NULL',450),(10258,'2004-06-15 00:00:00','2004-06-25 00:00:00','23-06-2004 00:00:00','Shipped','NULL',398),(10259,'2004-06-15 00:00:00','2004-06-22 00:00:00','17-06-2004 00:00:00','Shipped','NULL',166),(10260,'2004-06-16 00:00:00','2004-06-22 00:00:00','NULL','Cancelled','Customer heard complaints from their customers and called to cancel this order. Will notify the Sales Manager.',357),(10261,'2004-06-17 00:00:00','2004-06-25 00:00:00','22-06-2004 00:00:00','Shipped','NULL',233),(10262,'2004-06-24 00:00:00','2004-07-01 00:00:00','NULL','Cancelled','This customer found a better offer from one of our competitors. Will call back to renegotiate.',141),(10263,'2004-06-28 00:00:00','2004-07-04 00:00:00','02-07-2004 00:00:00','Shipped','NULL',175),(10264,'2004-06-30 00:00:00','2004-07-06 00:00:00','01-07-2004 00:00:00','Shipped','Customer will send a truck to our local warehouse on 7/1/2004',362),(10265,'2004-07-02 00:00:00','2004-07-09 00:00:00','07-07-2004 00:00:00','Shipped','NULL',471),(10266,'2004-07-06 00:00:00','2004-07-14 00:00:00','10-07-2004 00:00:00','Shipped','NULL',386),(10267,'2004-07-07 00:00:00','2004-07-17 00:00:00','09-07-2004 00:00:00','Shipped','NULL',151),(10268,'2004-07-12 00:00:00','2004-07-18 00:00:00','14-07-2004 00:00:00','Shipped','NULL',412),(10269,'2004-07-16 00:00:00','2004-07-22 00:00:00','18-07-2004 00:00:00','Shipped','NULL',382),(10270,'2004-07-19 00:00:00','2004-07-27 00:00:00','24-07-2004 00:00:00','Shipped','Can we renegotiate this one?',282),(10271,'2004-07-20 00:00:00','2004-07-29 00:00:00','23-07-2004 00:00:00','Shipped','NULL',124),(10272,'2004-07-20 00:00:00','2004-07-26 00:00:00','22-07-2004 00:00:00','Shipped','NULL',157),(10273,'2004-07-21 00:00:00','2004-07-28 00:00:00','22-07-2004 00:00:00','Shipped','NULL',314),(10274,'2004-07-21 00:00:00','2004-07-29 00:00:00','22-07-2004 00:00:00','Shipped','NULL',379),(10275,'2004-07-23 00:00:00','2004-08-02 00:00:00','29-07-2004 00:00:00','Shipped','NULL',119),(10276,'2004-08-02 00:00:00','2004-08-11 00:00:00','08-08-2004 00:00:00','Shipped','NULL',204),(10277,'2004-08-04 00:00:00','2004-08-12 00:00:00','05-08-2004 00:00:00','Shipped','NULL',148),(10278,'2004-08-06 00:00:00','2004-08-16 00:00:00','09-08-2004 00:00:00','Shipped','NULL',112),(10279,'2004-08-09 00:00:00','2004-08-19 00:00:00','15-08-2004 00:00:00','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',141),(10280,'2004-08-17 00:00:00','2004-08-27 00:00:00','19-08-2004 00:00:00','Shipped','NULL',249),(10281,'2004-08-19 00:00:00','2004-08-28 00:00:00','23-08-2004 00:00:00','Shipped','NULL',157),(10282,'2004-08-20 00:00:00','2004-08-26 00:00:00','22-08-2004 00:00:00','Shipped','NULL',124),(10283,'2004-08-20 00:00:00','2004-08-30 00:00:00','23-08-2004 00:00:00','Shipped','NULL',260),(10284,'2004-08-21 00:00:00','2004-08-29 00:00:00','26-08-2004 00:00:00','Shipped','Custom shipping instructions sent to warehouse',299),(10285,'2004-08-27 00:00:00','2004-09-04 00:00:00','31-08-2004 00:00:00','Shipped','NULL',286),(10286,'2004-08-28 00:00:00','2004-09-06 00:00:00','01-09-2004 00:00:00','Shipped','NULL',172),(10287,'2004-08-30 00:00:00','2004-09-06 00:00:00','01-09-2004 00:00:00','Shipped','NULL',298),(10288,'2004-09-01 00:00:00','2004-09-11 00:00:00','05-09-2004 00:00:00','Shipped','NULL',166),(10289,'2004-09-03 00:00:00','2004-09-13 00:00:00','04-09-2004 00:00:00','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',167),(10290,'2004-09-07 00:00:00','2004-09-15 00:00:00','13-09-2004 00:00:00','Shipped','NULL',198),(10291,'2004-09-08 00:00:00','2004-09-17 00:00:00','14-09-2004 00:00:00','Shipped','NULL',448),(10292,'2004-09-08 00:00:00','2004-09-18 00:00:00','11-09-2004 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',131),(10293,'2004-09-09 00:00:00','2004-09-18 00:00:00','14-09-2004 00:00:00','Shipped','NULL',249),(10294,'2004-09-10 00:00:00','2004-09-17 00:00:00','14-09-2004 00:00:00','Shipped','NULL',204),(10295,'2004-09-10 00:00:00','2004-09-17 00:00:00','14-09-2004 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',362),(10296,'2004-09-15 00:00:00','2004-09-22 00:00:00','16-09-2004 00:00:00','Shipped','NULL',415),(10297,'2004-09-16 00:00:00','2004-09-22 00:00:00','21-09-2004 00:00:00','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',189),(10298,'2004-09-27 00:00:00','2004-10-05 00:00:00','01-10-2004 00:00:00','Shipped','NULL',103),(10299,'2004-09-30 00:00:00','2004-10-10 00:00:00','01-10-2004 00:00:00','Shipped','NULL',186),(10300,'2003-10-04 00:00:00','2003-10-13 00:00:00','09-10-2003 00:00:00','Shipped','NULL',128),(10301,'2003-10-05 00:00:00','2003-10-15 00:00:00','08-10-2003 00:00:00','Shipped','NULL',299),(10302,'2003-10-06 00:00:00','2003-10-16 00:00:00','07-10-2003 00:00:00','Shipped','NULL',201),(10303,'2004-10-06 00:00:00','2004-10-14 00:00:00','09-10-2004 00:00:00','Shipped','Customer inquired about remote controlled models and gold models.',484),(10304,'2004-10-11 00:00:00','2004-10-20 00:00:00','17-10-2004 00:00:00','Shipped','NULL',256),(10305,'2004-10-13 00:00:00','2004-10-22 00:00:00','15-10-2004 00:00:00','Shipped','Check on availability.',286),(10306,'2004-10-14 00:00:00','2004-10-21 00:00:00','17-10-2004 00:00:00','Shipped','NULL',187),(10307,'2004-10-14 00:00:00','2004-10-23 00:00:00','20-10-2004 00:00:00','Shipped','NULL',339),(10308,'2004-10-15 00:00:00','2004-10-24 00:00:00','20-10-2004 00:00:00','Shipped','Customer requested that FedEx Ground is used for this shipping',319),(10309,'2004-10-15 00:00:00','2004-10-24 00:00:00','18-10-2004 00:00:00','Shipped','NULL',121),(10310,'2004-10-16 00:00:00','2004-10-24 00:00:00','18-10-2004 00:00:00','Shipped','NULL',259),(10311,'2004-10-16 00:00:00','2004-10-23 00:00:00','20-10-2004 00:00:00','Shipped','Difficult to negotiate with customer. We need more marketing materials',141),(10312,'2004-10-21 00:00:00','2004-10-27 00:00:00','23-10-2004 00:00:00','Shipped','NULL',124),(10313,'2004-10-22 00:00:00','2004-10-28 00:00:00','25-10-2004 00:00:00','Shipped','Customer requested that FedEx Ground is used for this shipping',202),(10314,'2004-10-22 00:00:00','2004-11-01 00:00:00','23-10-2004 00:00:00','Shipped','NULL',227),(10315,'2004-10-29 00:00:00','2004-11-08 00:00:00','30-10-2004 00:00:00','Shipped','NULL',119),(10316,'2004-11-01 00:00:00','2004-11-09 00:00:00','07-11-2004 00:00:00','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',240),(10317,'2004-11-02 00:00:00','2004-11-12 00:00:00','08-11-2004 00:00:00','Shipped','NULL',161),(10318,'2004-11-02 00:00:00','2004-11-09 00:00:00','07-11-2004 00:00:00','Shipped','NULL',157),(10319,'2004-11-03 00:00:00','2004-11-11 00:00:00','06-11-2004 00:00:00','Shipped','Customer requested that DHL is used for this shipping',456),(10320,'2004-11-03 00:00:00','2004-11-13 00:00:00','07-11-2004 00:00:00','Shipped','NULL',144),(10321,'2004-11-04 00:00:00','2004-11-12 00:00:00','07-11-2004 00:00:00','Shipped','NULL',462),(10322,'2004-11-04 00:00:00','2004-11-12 00:00:00','10-11-2004 00:00:00','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',363),(10323,'2004-11-05 00:00:00','2004-11-12 00:00:00','09-11-2004 00:00:00','Shipped','NULL',128),(10324,'2004-11-05 00:00:00','2004-11-11 00:00:00','08-11-2004 00:00:00','Shipped','NULL',181),(10325,'2004-11-05 00:00:00','2004-11-13 00:00:00','08-11-2004 00:00:00','Shipped','NULL',121),(10326,'2004-11-09 00:00:00','2004-11-16 00:00:00','10-11-2004 00:00:00','Shipped','NULL',144),(10327,'2004-11-10 00:00:00','2004-11-19 00:00:00','13-11-2004 00:00:00','Resolved','Order was disputed and resolved on 12/1/04. The Sales Manager was involved. Customer claims the scales of the models don\'t match what was discussed.',145),(10328,'2004-11-12 00:00:00','2004-11-21 00:00:00','18-11-2004 00:00:00','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',278),(10329,'2004-11-15 00:00:00','2004-11-24 00:00:00','16-11-2004 00:00:00','Shipped','NULL',131),(10330,'2004-11-16 00:00:00','2004-11-25 00:00:00','21-11-2004 00:00:00','Shipped','NULL',385),(10331,'2004-11-17 00:00:00','2004-11-23 00:00:00','23-11-2004 00:00:00','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',486),(10332,'2004-11-17 00:00:00','2004-11-25 00:00:00','18-11-2004 00:00:00','Shipped','NULL',187),(10333,'2004-11-18 00:00:00','2004-11-27 00:00:00','20-11-2004 00:00:00','Shipped','NULL',129),(10334,'2004-11-19 00:00:00','2004-11-28 00:00:00','NULL','On Hold','The outstaniding balance for this customer exceeds their credit limit. Order will be shipped when a payment is received.',144),(10335,'2004-11-19 00:00:00','2004-11-29 00:00:00','23-11-2004 00:00:00','Shipped','NULL',124),(10336,'2004-11-20 00:00:00','2004-11-26 00:00:00','24-11-2004 00:00:00','Shipped','Customer requested that DHL is used for this shipping',172),(10337,'2004-11-21 00:00:00','2004-11-30 00:00:00','26-11-2004 00:00:00','Shipped','NULL',424),(10338,'2004-11-22 00:00:00','2004-12-02 00:00:00','27-11-2004 00:00:00','Shipped','NULL',381),(10339,'2004-11-23 00:00:00','2004-11-30 00:00:00','30-11-2004 00:00:00','Shipped','NULL',398),(10340,'2004-11-24 00:00:00','2004-12-01 00:00:00','25-11-2004 00:00:00','Shipped','Customer is interested in buying more Ferrari models',216),(10341,'2004-11-24 00:00:00','2004-12-01 00:00:00','29-11-2004 00:00:00','Shipped','NULL',382),(10342,'2004-11-24 00:00:00','2004-12-01 00:00:00','29-11-2004 00:00:00','Shipped','NULL',114),(10343,'2004-11-24 00:00:00','2004-12-01 00:00:00','26-11-2004 00:00:00','Shipped','NULL',353),(10344,'2004-11-25 00:00:00','2004-12-02 00:00:00','29-11-2004 00:00:00','Shipped','NULL',350),(10345,'2004-11-25 00:00:00','2004-12-01 00:00:00','26-11-2004 00:00:00','Shipped','NULL',103),(10346,'2004-11-29 00:00:00','2004-12-05 00:00:00','30-11-2004 00:00:00','Shipped','NULL',112),(10347,'2004-11-29 00:00:00','2004-12-07 00:00:00','30-11-2004 00:00:00','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',114),(10348,'2004-11-01 00:00:00','2004-11-08 00:00:00','05-11-2004 00:00:00','Shipped','NULL',458),(10349,'2004-12-01 00:00:00','2004-12-07 00:00:00','03-12-2004 00:00:00','Shipped','NULL',151),(10350,'2004-12-02 00:00:00','2004-12-08 00:00:00','05-12-2004 00:00:00','Shipped','NULL',141),(10351,'2004-12-03 00:00:00','2004-12-11 00:00:00','07-12-2004 00:00:00','Shipped','NULL',324),(10352,'2004-12-03 00:00:00','2004-12-12 00:00:00','09-12-2004 00:00:00','Shipped','NULL',198),(10353,'2004-12-04 00:00:00','2004-12-11 00:00:00','05-12-2004 00:00:00','Shipped','NULL',447),(10354,'2004-12-04 00:00:00','2004-12-10 00:00:00','05-12-2004 00:00:00','Shipped','NULL',323),(10355,'2004-12-07 00:00:00','2004-12-14 00:00:00','13-12-2004 00:00:00','Shipped','NULL',141),(10356,'2004-12-09 00:00:00','2004-12-15 00:00:00','12-12-2004 00:00:00','Shipped','NULL',250),(10357,'2004-12-10 00:00:00','2004-12-16 00:00:00','14-12-2004 00:00:00','Shipped','NULL',124),(10358,'2004-12-10 00:00:00','2004-12-16 00:00:00','16-12-2004 00:00:00','Shipped','Customer requested that DHL is used for this shipping',141),(10359,'2004-12-15 00:00:00','2004-12-23 00:00:00','18-12-2004 00:00:00','Shipped','NULL',353),(10360,'2004-12-16 00:00:00','2004-12-22 00:00:00','18-12-2004 00:00:00','Shipped','NULL',496),(10361,'2004-12-17 00:00:00','2004-12-24 00:00:00','20-12-2004 00:00:00','Shipped','NULL',282),(10362,'2005-01-05 00:00:00','2005-01-16 00:00:00','10-01-2005 00:00:00','Shipped','NULL',161),(10363,'2005-01-06 00:00:00','2005-01-12 00:00:00','10-01-2005 00:00:00','Shipped','NULL',334),(10364,'2005-01-06 00:00:00','2005-01-17 00:00:00','09-01-2005 00:00:00','Shipped','NULL',350),(10365,'2005-01-07 00:00:00','2005-01-18 00:00:00','11-01-2005 00:00:00','Shipped','NULL',320),(10366,'2005-01-10 00:00:00','2005-01-19 00:00:00','12-01-2005 00:00:00','Shipped','NULL',381),(10367,'2005-01-12 00:00:00','2005-01-21 00:00:00','16-01-2005 00:00:00','Resolved','This order was disputed and resolved on 2/1/2005. Customer claimed that container with shipment was damaged. FedEx\'s investigation proved this wrong.',205),(10368,'2005-01-19 00:00:00','2005-01-27 00:00:00','24-01-2005 00:00:00','Shipped','Can we renegotiate this one?',124),(10369,'2005-01-20 00:00:00','2005-01-28 00:00:00','24-01-2005 00:00:00','Shipped','NULL',379),(10370,'2005-01-20 00:00:00','2005-02-01 00:00:00','25-01-2005 00:00:00','Shipped','NULL',276),(10371,'2005-01-23 00:00:00','2005-02-03 00:00:00','25-01-2005 00:00:00','Shipped','NULL',124),(10372,'2005-01-26 00:00:00','2005-02-05 00:00:00','28-01-2005 00:00:00','Shipped','NULL',398),(10373,'2005-01-31 00:00:00','2005-02-08 00:00:00','06-02-2005 00:00:00','Shipped','NULL',311),(10374,'2005-02-02 00:00:00','2005-02-09 00:00:00','03-02-2005 00:00:00','Shipped','NULL',333),(10375,'2005-02-03 00:00:00','2005-02-10 00:00:00','06-02-2005 00:00:00','Shipped','NULL',119),(10376,'2005-02-08 00:00:00','2005-02-18 00:00:00','13-02-2005 00:00:00','Shipped','NULL',219),(10377,'2005-02-09 00:00:00','2005-02-21 00:00:00','12-02-2005 00:00:00','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.',186),(10378,'2005-02-10 00:00:00','2005-02-18 00:00:00','11-02-2005 00:00:00','Shipped','NULL',141),(10379,'2005-02-10 00:00:00','2005-02-18 00:00:00','11-02-2005 00:00:00','Shipped','NULL',141),(10380,'2005-02-16 00:00:00','2005-02-24 00:00:00','18-02-2005 00:00:00','Shipped','NULL',141),(10381,'2005-02-17 00:00:00','2005-02-25 00:00:00','18-02-2005 00:00:00','Shipped','NULL',321),(10382,'2005-02-17 00:00:00','2005-02-23 00:00:00','18-02-2005 00:00:00','Shipped','Custom shipping instructions sent to warehouse',124),(10383,'2005-02-22 00:00:00','2005-03-02 00:00:00','25-02-2005 00:00:00','Shipped','NULL',141),(10384,'2005-02-23 00:00:00','2005-03-06 00:00:00','27-02-2005 00:00:00','Shipped','NULL',321),(10385,'2005-02-28 00:00:00','2005-03-09 00:00:00','01-03-2005 00:00:00','Shipped','NULL',124),(10386,'2005-03-01 00:00:00','2005-03-09 00:00:00','06-03-2005 00:00:00','Resolved','Disputed then Resolved on 3/15/2005. Customer doesn\'t like the craftsmaship of the models.',141),(10387,'2005-03-02 00:00:00','2005-03-09 00:00:00','06-03-2005 00:00:00','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',148),(10388,'2005-03-03 00:00:00','2005-03-11 00:00:00','09-03-2005 00:00:00','Shipped','NULL',462),(10389,'2005-03-03 00:00:00','2005-03-09 00:00:00','08-03-2005 00:00:00','Shipped','NULL',448),(10390,'2005-03-04 00:00:00','2005-03-11 00:00:00','07-03-2005 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',124),(10391,'2005-03-09 00:00:00','2005-03-20 00:00:00','15-03-2005 00:00:00','Shipped','NULL',276),(10392,'2005-03-10 00:00:00','2005-03-18 00:00:00','12-03-2005 00:00:00','Shipped','NULL',452),(10393,'2005-03-11 00:00:00','2005-03-22 00:00:00','14-03-2005 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',323),(10394,'2005-03-15 00:00:00','2005-03-25 00:00:00','19-03-2005 00:00:00','Shipped','NULL',141),(10395,'2005-03-17 00:00:00','2005-03-24 00:00:00','23-03-2005 00:00:00','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',250),(10396,'2005-03-23 00:00:00','2005-04-02 00:00:00','28-03-2005 00:00:00','Shipped','NULL',124),(10397,'2005-03-28 00:00:00','2005-04-09 00:00:00','01-04-2005 00:00:00','Shipped','NULL',242),(10398,'2005-03-30 00:00:00','2005-04-09 00:00:00','31-03-2005 00:00:00','Shipped','NULL',353),(10399,'2005-04-01 00:00:00','2005-04-12 00:00:00','03-04-2005 00:00:00','Shipped','NULL',496),(10400,'2005-04-01 00:00:00','2005-04-11 00:00:00','04-04-2005 00:00:00','Shipped','Customer requested that DHL is used for this shipping',450),(10401,'2005-04-03 00:00:00','2005-04-14 00:00:00','NULL','On Hold','Customer credit limit exceeded. Will ship when a payment is received.',328),(10402,'2005-04-07 00:00:00','2005-04-14 00:00:00','12-04-2005 00:00:00','Shipped','NULL',406),(10403,'2005-04-08 00:00:00','2005-04-18 00:00:00','11-04-2005 00:00:00','Shipped','NULL',201),(10404,'2005-04-08 00:00:00','2005-04-14 00:00:00','11-04-2005 00:00:00','Shipped','NULL',323),(10405,'2005-04-14 00:00:00','2005-04-24 00:00:00','20-04-2005 00:00:00','Shipped','NULL',209),(10406,'2005-04-15 00:00:00','2005-04-25 00:00:00','21-04-2005 00:00:00','Disputed','Customer claims container with shipment was damaged during shipping and some items were missing.',145),(10407,'2005-04-22 00:00:00','2005-05-04 00:00:00','NULL','On Hold','Customer credit limit exceeded. Will ship when a payment is received.',450),(10408,'2005-04-22 00:00:00','2005-04-29 00:00:00','27-04-2005 00:00:00','Shipped','NULL',398),(10409,'2005-04-23 00:00:00','2005-05-05 00:00:00','24-04-2005 00:00:00','Shipped','NULL',166),(10410,'2005-04-29 00:00:00','2005-05-10 00:00:00','30-04-2005 00:00:00','Shipped','NULL',357),(10411,'2005-05-01 00:00:00','2005-05-08 00:00:00','06-05-2005 00:00:00','Shipped','NULL',233),(10412,'2005-05-03 00:00:00','2005-05-13 00:00:00','05-05-2005 00:00:00','Shipped','NULL',141),(10413,'2005-05-05 00:00:00','2005-05-14 00:00:00','09-05-2005 00:00:00','Shipped','Customer requested that DHL is used for this shipping',175),(10414,'2005-05-06 00:00:00','2005-05-13 00:00:00','NULL','On Hold','Customer credit limit exceeded. Will ship when a payment is received.',362),(10415,'2005-05-09 00:00:00','2005-05-20 00:00:00','12-05-2005 00:00:00','Disputed','Customer claims the scales of the models don\'t match what was discussed.',471),(10416,'2005-05-10 00:00:00','2005-05-16 00:00:00','14-05-2005 00:00:00','Shipped','NULL',386),(10417,'2005-05-13 00:00:00','2005-05-19 00:00:00','19-05-2005 00:00:00','Disputed','Customer doesn\'t like the colors and precision of the models.',141),(10418,'2005-05-16 00:00:00','2005-05-24 00:00:00','20-05-2005 00:00:00','Shipped','NULL',412),(10419,'2005-05-17 00:00:00','2005-05-28 00:00:00','19-05-2005 00:00:00','Shipped','NULL',382),(10420,'2005-05-29 00:00:00','2005-06-07 00:00:00','NULL','In Process','NULL',282),(10421,'2005-05-29 00:00:00','2005-06-06 00:00:00','NULL','In Process','Custom shipping instructions were sent to warehouse',124),(10422,'2005-05-30 00:00:00','2005-06-11 00:00:00','NULL','In Process','NULL',157),(10423,'2005-05-30 00:00:00','2005-06-05 00:00:00','NULL','In Process','NULL',314),(10424,'2005-05-31 00:00:00','2005-06-08 00:00:00','NULL','In Process','NULL',141),(10425,'2005-05-31 00:00:00','2005-06-07 00:00:00','NULL','In Process','NULL',119);

-- Create `orderdetails` table.
DROP TABLE IF EXISTS `orderdetails`;

CREATE TABLE `orderdetails` (
  `orderNumber` int(11) NOT NULL,
  `productCode` varchar(12) NOT NULL,
  `quantityOrdered` varchar(11) NOT NULL,
  `priceEach` decimal(12,2) DEFAULT NULL,
  `orderLineNumber` int(11) NOT NULL,
  PRIMARY KEY (`orderNumber`,`productCode`)
);

-- Create `payments` table
DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `customerNumber` int(11) NOT NULL,
  `checkNumber` varchar(12) NOT NULL,
  `paymentDate` datetime DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`customerNumber`,`checkNumber`)
);

-- Create `productlines` table
DROP TABLE IF EXISTS `productlines`;

CREATE TABLE `productlines` (
  `productLine` varchar(25) NOT NULL,
  `textDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productLine`)
);

-- Create `products` table
DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `productCode` varchar(12) NOT NULL,
  `productName` varchar(45) DEFAULT NULL,
  `productLine` varchar(25) DEFAULT NULL,
  `productScale` varchar(25) DEFAULT NULL,
  `productVendor` varchar(25) DEFAULT NULL,
  `quantityInStock` varchar(5) DEFAULT NULL,
  `buyPrice` varchar(12) DEFAULT NULL,
  `MSRP` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`productCode`),
  CONSTRAINT `product_line` FOREIGN KEY (`productLine`) REFERENCES `productlines` (`productLine`)
);

-- Print the first 5 entries of "employees" tables.
SELECT * FROM `employees` LIMIT 0, 5;

-- Print the first 5 entries of "offices" tables.
SELECT * FROM `offices` LIMIT 0, 5;

-- Print the first 5 entries of "customers" tables.
SELECT * FROM `customers` LIMIT 0, 5;

-- Print the first 5 entries of "orders" tables.
SELECT * FROM `orders` LIMIT 0, 5;

-- Print the first 5 entries of "orderdetails" tables.
SELECT * FROM `orderdetails` LIMIT 0, 5;

-- Print the first 5 entries of "payments" tables.
SELECT * FROM `payments` LIMIT 0, 5;

-- Print the first 5 entries of "products" tables.
SELECT * FROM `products` LIMIT 0, 5;

-- Print the first 5 entries of "productlines" tables.
SELECT * FROM `productlines` LIMIT 0, 5;

-- Questions:

-- Q-6: Insert the following two rows in the 'customers' table.
-- (495,'Diecast Collectables','Franco','Valarie','Boston','MA','51003','USA','1188',85100),
-- (496,'Kelly\'s Gift Shop','Snowden','Tony','Auckland  ','NULL','NULL','New Zealand','1612',110000)
insert into customers values
(495,'Diecast Collectables','Franco','Valarie','Boston','MA','51003','USA','1188',85100),
(496,'Kelly\'s Gift Shop','Snowden','Tony','Auckland  ','NULL','NULL','New Zealand','1612',110000);

-- Q-7: In the "employees" table there are some entries where 'SR' is written instead of 'Sales Rep' where office code is equal to 4.
-- Update the 'employees' table by inserting a job title as 'Sales Rep' where office code is equal to 4.
update employees 
set jobTitle='Sales Rep' where officeCode=4;

-- Insert the following entry into the employee table.
insert into employees 
values
(1102, 'Bondur', 'Gerard', 'x5408', 'gbondur@classicmodelcars.com', 4, '1056', 'Sale Manager(EMEA)');

-- Q-8: There is no product under category of boat. Hence, delete the Boat entry from productlines table.
delete from productlines where productLine='Boats';
	
select * from employees;

select * from productlines;

-- Q-9: Convert the 'quantityOrdered' column's data type into int from varchar.
alter table orderdetails 
modify column quantityOrdered int;

describe orderdetails;

-- Q-10: Print the employees with the job title “Sales Rep”. 
-- What is the first name of the employee that appears on the top after applying this query?
select firstName from employees where jobTitle='Sales Rep';

-- Q-10: Find the total number of employees from the 'employees’ table and alias it as "Total_Employees".
select count(*) as Total_Employees from employees;

-- Q-10: How many customers belongs to Australia? also alias it as "Australia_Customers".
select count(*) as Australia_Customers from customers where country='Australia';

-- Q-11: Print the quantity in stock for "Red Start Diecast" product vendors with product line is "Vintage Cars" from the table "products".
select sum(quantityInStock) from products
where productVendor='Red Start Diecast' and productLine='Vintage Cars';

-- Q-11: Count the total number of orders that has not been shipped yet in the "orders" table. 
select count(*) from orders where status!='Shipped';

-- Q-12: Count the entries in "orderdetails" table with "productCode" starts with S18 and "priceEach" greater than 150.
select count(*) from orderdetails
where productCode like 'S18%' and priceEach>150;

-- Q- 13: What are the top three countries which have the maximum number of customers?
select country, count(customerNumber) as customer_count from customers
group by 1 order by 2 desc
limit 3;

-- Q-14: What is the average credit limit for Singapore from "customers" table?
select country, avg(creditLimit) as credit_limit from customers
where country='Singapore';

-- Q-15: What is the total amount to be paid by the customer named as “Euro+ Shopping Channel”?
-- You need to use the “customers” and “payments” tables to answer this question.
select customerNumber, customerName from customers
where customerName='Euro+ Shopping Channel';

select customerNumber, sum(amount) as total_amount from payments
where customerNumber=141;

-- Q-16: Which month has recieved the maximum aggragated payments from the customers? 
-- Q-16: What is the aggregated value of the payment recieved from that month?
select month(paymentDate) as paymentmonth, sum(amount) as totalamount from payments 
group by 1 order by 2 desc limit 1;

-- Q-17: What is the shipped date of the maximum quantity ordered for "1968 Ford Mustang" product name?
select a.shippedDate 
from orders a
where a.orderNumber=
	(select b.orderNumber 
    from orderdetails b join products c 
    on b.productCode=c.productCode
    where c.productName='1968 Ford Mustang'
    group by b.orderNumber
    order by sum(b.quantityOrdered) desc
    limit 1);

-- Q-18: Inner join:  What is the average value of credit limit corresponds to the customers which have been contacted by the employees with their office located in “Tokyo” city? 
select avg(a.creditLimit)
from customers a inner join employees b
on a.salesRepEmployeeNumber=b.employeeNumber
where officeCode=
	(select officeCode 
    from offices
    where office_city='Tokyo');

-- Q-19: Outer Join: What is the name of the customer which has paid the lowest amount to the company. 
select CustomerName, sum(amount) as totalamount
from payments a left join customers b
on a.customerNumber=b.customerNumber
group by 1
order by 2
limit 1;

-- Q-20: Outer Join: What is the city of the employee whose job title is "VP Marketing" ? 
select office_city, jobTitle
from employees a left join offices b
on a.officeCode=b.officeCode
where jobTitle='VP Marketing';

-- Q-21: What is the name of the customer who belongs to ‘France’ and has the maximum creditLimit among the customers in France?
select customerName, country
from customers
where creditLimit=(select max(creditLimit) from customers where country='France'
group by country);

-- Q-22: What will be the remaining stock of the product code that equals ‘S18_1589’ if it is sent to all the customers who have demanded it?
select quantityInStock from products where productCode='S18_1589';

select sum(quantityOrdered) from orderdetails where productCode='S18_1589';

-- Ans: 9042-350=8692

-- Q-23: What is the average amount paid by the customer 'Mini Gifts Distributors Ltd.'?
select customerName,avg(amount)
from customers a inner join payments b
on a.customerNumber=b.customerNumber
where customerName='Mini Gifts Distributors Ltd.';
