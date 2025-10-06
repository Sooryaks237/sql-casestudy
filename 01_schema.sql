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

-- Q-1: Insert the following two rows in the 'customers' table.
-- (495,'Diecast Collectables','Franco','Valarie','Boston','MA','51003','USA','1188',85100),
-- (496,'Kelly\'s Gift Shop','Snowden','Tony','Auckland  ','NULL','NULL','New Zealand','1612',110000)

-- Q-2: In the "employees" table there are some entries where 'SR' is written instead of 'Sales Rep' where office code is equal to 4.
-- Update the 'employees' table by inserting a job title as 'Sales Rep' where office code is equal to 4.

-- Q-3: Insert the following entry into the employee table.
-- (1102, 'Bondur', 'Gerard', 'x5408', 'gbondur@classicmodelcars.com', 4, '1056', 'Sale Manager(EMEA)')

-- Q-4: There is no product under category of boat. Hence, delete the Boat entry from productlines table.

-- Q-5: Convert the 'quantityOrdered' column's data type into int from varchar.

-- Q-6: Print the employees with the job title “Sales Rep”. 
-- What is the first name of the employee that appears on the top after applying this query?

-- Q-7: Find the total number of employees from the 'employees’ table and alias it as "Total_Employees".

-- Q-8: How many customers belongs to Australia? also alias it as "Australia_Customers".

-- Q-9: Print the quantity in stock for "Red Start Diecast" product vendors with product line is "Vintage Cars" from the table "products".

-- Q-10: Count the total number of orders that has not been shipped yet in the "orders" table. 

-- Q-11: Count the entries in "orderdetails" table with "productCode" starts with S18 and "priceEach" greater than 150.

-- Q- 12: What are the top three countries which have the maximum number of customers?

-- Q-13: What is the average credit limit for Singapore from "customers" table?

-- Q-14: What is the total amount to be paid by the customer named as “Euro+ Shopping Channel”?
-- You need to use the “customers” and “payments” tables to answer this question.

-- Q-15: Which month has recieved the maximum aggragated payments from the customers? 
-- Q-16: What is the aggregated value of the payment recieved from that month?

-- Q-17: What is the shipped date of the maximum quantity ordered for "1968 Ford Mustang" product name?

-- Q-18: Inner join:  What is the average value of credit limit corresponds to the customers which have been contacted by the employees with their office located in “Tokyo” city? 

-- Q-19: Outer Join: What is the name of the customer which has paid the lowest amount to the company. 

-- Q-20: Outer Join: What is the city of the employee whose job title is "VP Marketing" ? 

-- Q-21: What is the name of the customer who belongs to ‘France’ and has the maximum creditLimit among the customers in France?

-- Q-22: What will be the remaining stock of the product code that equals ‘S18_1589’ if it is sent to all the customers who have demanded it?

-- Q-23: What is the average amount paid by the customer 'Mini Gifts Distributors Ltd.'?

