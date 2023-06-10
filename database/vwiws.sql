-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 07, 2023 at 09:39 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vwiws`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
CREATE TABLE IF NOT EXISTS `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `dateOfBirth` varchar(45) DEFAULT NULL,
  `contactNumber` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `streetAddress` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `province` varchar(45) NOT NULL,
  `postalCode` varchar(45) NOT NULL,
  `createdOn` datetime NOT NULL,
  `createdBy` varchar(45) NOT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`id`, `fname`, `lname`, `position`, `dateOfBirth`, `contactNumber`, `email`, `streetAddress`, `city`, `province`, `postalCode`, `createdOn`, `createdBy`, `updatedOn`, `updatedBy`) VALUES
(5, 'Nathaniel', 'Sison', 'Manager', '2023-01-04', '09295271894', 'sison@gmail.com', 'hi', 'hello', 'metro', '1622', '2023-06-01 14:13:10', 'Admin', NULL, NULL),
(6, 'Nathaniel', 'Sison', 'Manager', '2023-01-04', '09295271894', 'sison@gmail.com', 'hi', 'hello', 'metro', '1622', '2023-06-01 14:15:20', 'Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminId` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(65) NOT NULL,
  `status` varchar(45) NOT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `last_login` varchar(45) DEFAULT NULL,
  `createdOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedOn` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_admin_login_administrators1_idx` (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `adminId`, `username`, `password`, `status`, `remarks`, `last_login`, `createdOn`, `createdBy`, `updatedOn`, `updatedBy`) VALUES
(1, 6, 'anielsison', '$2y$10$xn0Euqzln.T0Mjs3mwJpcOCO7ihibTUTJYvtAcS7D33tz6QSMKbNK', '1', 'Newly Added', NULL, '2023-06-01 14:15:20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `dateOfBirth` varchar(45) DEFAULT NULL,
  `contactNumber` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `streetAddress` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `province` varchar(45) NOT NULL,
  `postalCode` varchar(45) NOT NULL,
  `createdOn` datetime NOT NULL,
  `createdBy` varchar(45) NOT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customerId_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fname`, `lname`, `dateOfBirth`, `contactNumber`, `email`, `streetAddress`, `city`, `province`, `postalCode`, `createdOn`, `createdBy`, `updatedOn`, `updatedBy`) VALUES
(5, 'Nathaniel', 'Sison', '2001-11-05', '09295271894', 'anielsison@gmail.com', '5th street', 'Pasig', 'Metro Manila', '1611', '2023-06-01 14:05:59', 'Customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cust_login`
--

DROP TABLE IF EXISTS `cust_login`;
CREATE TABLE IF NOT EXISTS `cust_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custId` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(65) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `last_login` varchar(45) DEFAULT NULL,
  `createdOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedOn` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `loginToCust_idx` (`custId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_login`
--

INSERT INTO `cust_login` (`id`, `custId`, `username`, `password`, `status`, `remarks`, `last_login`, `createdOn`, `createdBy`, `updatedOn`, `updatedBy`) VALUES
(1, 5, 'nmsison', '$2y$10$LWPsfQaZUxp85I4BP2QkJOQStqczib6WVRsieBQL1yYakXCgYYQzy', '1', 'Newly Added', NULL, '2023-06-01 14:05:59', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transactionID` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `method` varchar(45) NOT NULL,
  `shippingAddress` varchar(128) NOT NULL,
  `shippingFee` decimal(6,2) DEFAULT NULL,
  `shippingDate` datetime DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deliveryToTrans_idx` (`transactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `transactionID`, `status`, `method`, `shippingAddress`, `shippingFee`, `shippingDate`, `createdDate`, `createdBy`, `updatedDate`, `updatedBy`) VALUES
(27, 29, 'PENDING', 'delivery', '5th street Pasig Metro Manila 1611', NULL, NULL, '2023-06-08 04:56:04', 'Customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
CREATE TABLE IF NOT EXISTS `order_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `product_varID` int(11) NOT NULL,
  `transactionId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `createdBy` varchar(45) NOT NULL,
  `createdOn` datetime NOT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `ordersToProducts_idx` (`productId`),
  KEY `ordersToTrans_idx` (`transactionId`),
  KEY `ordersToProduct_vars_idx` (`product_varID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `productId`, `product_varID`, `transactionId`, `quantity`, `createdBy`, `createdOn`, `updatedBy`, `updatedOn`) VALUES
(10, 7, 5, 29, 1, 'Customer', '2023-06-08 04:55:58', NULL, NULL),
(11, 8, 7, 30, 1, 'Customer', '2023-06-08 05:21:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transactionId` int(11) NOT NULL,
  `method` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `amount` double NOT NULL,
  `paidDate` datetime NOT NULL,
  `paidBy` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `paymentToTrans_idx` (`transactionId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `transactionId`, `method`, `status`, `amount`, `paidDate`, `paidBy`) VALUES
(9, 29, 'cash', 'FOR PAYMENT', 3000, '2023-06-08 04:56:04', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `img` varchar(60) DEFAULT 'default_product_img00.png',
  `details` varchar(100) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT 0,
  `createdOn` datetime NOT NULL,
  `createdBy` varchar(45) NOT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category`, `img`, `details`, `active`, `createdOn`, `createdBy`, `updatedOn`, `updatedBy`) VALUES
(6, 'D16', 'Panel Door', 'img_D16_6.jpg', 'Type: Solid Core\r\nLocation of use: Interior and Exterior\r\nMaterials: Honduran Mahogany', 0, '2023-06-01 14:19:10', 'System', '2023-06-01 14:19:24', 'System'),
(7, 'D7', 'Flush Door', 'img_D7_7.jpg', 'Type: Laminated Core\r\nLocation of use: Interior and Public Buildings\r\nMaterials: Plywood Mahogany', 1, '2023-06-01 14:23:14', 'System', '2023-06-01 14:23:20', 'System'),
(8, 'D12', 'Panel Door', 'img_D12_8.jpg', 'Type: Solid Core\r\nLocation of use: Interior and Exterior\r\nMaterials: Honduran Mahogany', 1, '2023-06-01 14:51:55', 'System', '2023-06-01 14:52:02', 'System'),
(9, 'D30', 'Panel Door', 'img_D30_9.jpg', 'Type: Solid Core\r\nLocation of use: Interior and Exterior\r\nMaterials: Honduran Mahogany', 0, '2023-06-05 14:09:16', 'System', '2023-06-05 14:09:33', 'System');

-- --------------------------------------------------------

--
-- Table structure for table `product_var`
--

DROP TABLE IF EXISTS `product_var`;
CREATE TABLE IF NOT EXISTS `product_var` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `color` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `createdOn` datetime NOT NULL,
  `createdBy` varchar(45) NOT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `product_varsToProducts_idx` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_var`
--

INSERT INTO `product_var` (`id`, `productId`, `color`, `size`, `img`, `stock`, `price`, `featured`, `createdOn`, `createdBy`, `updatedOn`, `updatedBy`) VALUES
(4, 6, 'Mahogany', '60cm  x 210cm', 'img_D16_6_var4.jpg', 12, '3000.00', 0, '2023-06-01 14:20:26', 'System', '2023-06-01 14:20:46', 'System'),
(5, 7, 'Mahogany', '60cm  x 210cm', 'img_D7_7_var5.jpg', 11, '3000.00', 1, '2023-06-01 14:24:02', 'System', '2023-06-08 04:56:04', 'System'),
(6, 7, 'Mahogany', '70cm x 210cm', 'img_D7_7_var6.jpg', 11, '4000.00', 0, '2023-06-01 14:46:44', 'System', '2023-06-08 04:25:47', 'System'),
(7, 8, 'Mahogany', '60cm  x 210cm', 'img_D12_8_var7.jpg', 11, '3000.00', 1, '2023-06-01 15:20:00', 'System', '2023-06-08 04:25:47', 'System');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `amount` decimal(45,2) DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `discount` decimal(6,2) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `transToCust_idx` (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customerId`, `status`, `active`, `amount`, `dateTime`, `discount`, `createdOn`, `createdBy`, `updatedOn`, `updatedBy`) VALUES
(29, 5, 'COMPLETED', 0, '3000.00', NULL, NULL, '2023-06-08 04:55:50', 'System', '2023-06-08 05:18:08', 'System'),
(30, 5, 'PENDING', 1, NULL, NULL, NULL, '2023-06-08 05:18:08', 'System', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD CONSTRAINT `fk_admin_login_administrators1` FOREIGN KEY (`adminId`) REFERENCES `administrators` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cust_login`
--
ALTER TABLE `cust_login`
  ADD CONSTRAINT `fk_cust_login_customers1` FOREIGN KEY (`custId`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `deliveryToTrans` FOREIGN KEY (`transactionID`) REFERENCES `transactions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `ordersToProduct_vars` FOREIGN KEY (`product_varID`) REFERENCES `product_var` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ordersToProducts` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ordersToTrans` FOREIGN KEY (`transactionId`) REFERENCES `transactions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `paymentToTrans` FOREIGN KEY (`transactionId`) REFERENCES `transactions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_var`
--
ALTER TABLE `product_var`
  ADD CONSTRAINT `product_varsToProducts` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transToCust` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
