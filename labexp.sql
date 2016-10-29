-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 29, 2016 at 06:04 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labexp`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `customer_address` varchar(20) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `pstal_code` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`customer_id`, `customer_name`, `customer_address`, `city`, `state`, `pstal_code`) VALUES
('1', 'Richard Johns', '382 Sunrise Blvd.', 'New York', 'NT', '0010059'),
('2', 'Mary johns', '342 killer Blvd.', 'New York', 'NT', '0010039'),
('3', 'joseph Johns', '322 baby Blvd.', 'New York', 'NT', '0010056'),
('4', 'Cathy Cook', '4010 Speedway', 'Tucson', 'AZ', '0085719'),
('5', 'Richard Newman', '2040 Riverside Rd.', 'San Diego', 'CA', '0092010'),
('6', 'Mary Smith', '6900 Main St.', 'San Franci', 'CA', '0094032'),
('7', 'John Doe', '392 Sunset Blvd.', 'New York', 'NT', '0010059');

-- --------------------------------------------------------

--
-- Table structure for table `Orderquantity`
--

CREATE TABLE `Orderquantity` (
  `order_id` varchar(10) NOT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `ordered_quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orderquantity`
--

INSERT INTO `Orderquantity` (`order_id`, `product_id`, `price`, `ordered_quantity`) VALUES
('100', '4000', 10, 10000),
('101', '2000', 20, 20000),
('102', '2000', 12, 34560),
('103', '4001', 14, 1000),
('104', '2000', 10, 2000),
('105', '3001', 20, 30005),
('106', '3000', 12, 20500),
('107', '4001', 5, 40100);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `order_id` varchar(10) NOT NULL,
  `order_date` varchar(10) DEFAULT NULL,
  `customer_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`order_id`, `order_date`, `customer_id`) VALUES
('100', '01-OCT-14', '1'),
('101', '01-OCT-14', '2'),
('102', '02-OCT-14', '3'),
('103', '03-OCT-14', '2'),
('104', '10-OCT-14', '1'),
('105', '10-OCT-14', '4'),
('106', '10-OCT-14', '2'),
('107', '10-OCT-14', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `product_id` varchar(10) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` varchar(10) DEFAULT NULL,
  `product_finish` varchar(10) DEFAULT NULL,
  `product_line_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`product_id`, `product_quantity`, `product_description`, `product_finish`, `product_line_id`, `price`) VALUES
('1000', 10, 'Office Des', 'Cherry', 10, 10),
('1001', 20, 'Manager''s ', 'Red Oak', 10, 10),
('2000', 20, 'Office Cha', 'Cherry', 20, 20),
('2001', 10, 'Manager''s ', 'Natural Oa', 20, 20),
('3000', 20, 'Book Shelf', 'Natural As', 30, 30),
('3001', 10, 'Duplex Boo', 'White Ash', 30, 30),
('4000', 50, 'Table Lamp', 'Natural As', 40, 40),
('4001', 40, 'Duplex Tab', 'White Ash', 40, 40),
('9999', 20, 'Keyboard', 'Plastic', 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `Supplier`
--

CREATE TABLE `Supplier` (
  `s_id` varchar(10) NOT NULL,
  `s_name` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `s_date` varchar(10) DEFAULT NULL,
  `p_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Supplier`
--

INSERT INTO `Supplier` (`s_id`, `s_name`, `gender`, `s_date`, `p_id`) VALUES
('S1', 'aaa', 'M', '11-NOV-14', '1000'),
('S2', 'bbb', 'F', '01-NOV-14', '2000'),
('S3', 'ccc', 'M', '20-OCT-14', '9999'),
('S4', 'ddd', 'F', '05-NOV-14', '4001'),
('S5', 'eee', 'M', '13-NOV-14', '1001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `Orderquantity`
--
ALTER TABLE `Orderquantity`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`);

--
-- Constraints for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD CONSTRAINT `Supplier_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `Product` (`product_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
