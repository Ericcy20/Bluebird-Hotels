-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 11:19 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluebirdhotel`
-- User: `bluebird_user`
-- Password:   `password`
--
DROP DATABASE IF EXISTS BLUEBIRDHOTEL;

CREATE DATABASE IF NOT EXISTS BLUEBIRDHOTEL;

DROP USER IF EXISTS'bluebird_user'@'%';

CREATE USER IF NOT EXISTS 'bluebird_user'@'%' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON BLUEBIRDHOTEL.* TO 'bluebird_user'@'%';

USE BLUEBIRDHOTEL;

-- --------------------------------------------------------

--
-- Table structure for table `emp_login`
--

CREATE TABLE `EMP_LOGIN` (
  `EMPID` INT(100) NOT NULL,
  `EMP_EMAIL` VARCHAR(50) NOT NULL,
  `EMP_PASSWORD` VARCHAR(50) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `emp_login`
--

INSERT INTO `EMP_LOGIN` (
  `EMPID`,
  `EMP_EMAIL`,
  `EMP_PASSWORD`
) VALUES (
  1,
  'Admin@gmail.com',
  '1234'
);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `PAYMENT` (
  `ID` INT(30) NOT NULL,
  `NAME` VARCHAR(30) NOT NULL,
  `EMAIL` VARCHAR(30) NOT NULL,
  `ROOMTYPE` VARCHAR(30) NOT NULL,
  `BED` VARCHAR(30) NOT NULL,
  `NOOFROOM` INT(30) NOT NULL,
  `CIN` DATE NOT NULL,
  `COUT` DATE NOT NULL,
  `NOOFDAYS` INT(30) NOT NULL,
  `ROOMTOTAL` DOUBLE(8, 2) NOT NULL,
  `BEDTOTAL` DOUBLE(8, 2) NOT NULL,
  `MEAL` VARCHAR(30) NOT NULL,
  `MEALTOTAL` DOUBLE(8, 2) NOT NULL,
  `FINALTOTAL` DOUBLE(8, 2) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `payment`
--

INSERT INTO `PAYMENT` (
  `ID`,
  `NAME`,
  `EMAIL`,
  `ROOMTYPE`,
  `BED`,
  `NOOFROOM`,
  `CIN`,
  `COUT`,
  `NOOFDAYS`,
  `ROOMTOTAL`,
  `BEDTOTAL`,
  `MEAL`,
  `MEALTOTAL`,
  `FINALTOTAL`
) VALUES (
  41,
  'Tushar pankhaniya',
  'pankhaniyatushar9@gmail.com',
  'Single Room',
  'Single',
  1,
  '2022-11-09',
  '2022-11-10',
  1,
  1000.00,
  10.00,
  'Room only',
  0.00,
  1010.00
);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `ROOM` (
  `ID` INT(30) NOT NULL,
  `TYPE` VARCHAR(50) NOT NULL,
  `BEDDING` VARCHAR(50) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `room`
--

INSERT INTO `ROOM` (
  `ID`,
  `TYPE`,
  `BEDDING`
) VALUES (
  4,
  'Superior Room',
  'Single'
),
(
  6,
  'Superior Room',
  'Triple'
),
(
  7,
  'Superior Room',
  'Quad'
),
(
  8,
  'Deluxe Room',
  'Single'
),
(
  9,
  'Deluxe Room',
  'Double'
),
(
  10,
  'Deluxe Room',
  'Triple'
),
(
  11,
  'Guest House',
  'Single'
),
(
  12,
  'Guest House',
  'Double'
),
(
  13,
  'Guest House',
  'Triple'
),
(
  14,
  'Guest House',
  'Quad'
),
(
  16,
  'Superior Room',
  'Double'
),
(
  20,
  'Single Room',
  'Single'
),
(
  22,
  'Superior Room',
  'Single'
),
(
  23,
  'Deluxe Room',
  'Single'
),
(
  24,
  'Deluxe Room',
  'Triple'
),
(
  27,
  'Guest House',
  'Double'
),
(
  30,
  'Deluxe Room',
  'Single'
);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `ROOMBOOK` (
  `ID` INT(10) NOT NULL,
  `NAME` VARCHAR(50) NOT NULL,
  `EMAIL` VARCHAR(50) NOT NULL,
  `COUNTRY` VARCHAR(30) NOT NULL,
  `PHONE` VARCHAR(30) NOT NULL,
  `ROOMTYPE` VARCHAR(30) NOT NULL,
  `BED` VARCHAR(30) NOT NULL,
  `MEAL` VARCHAR(30) NOT NULL,
  `NOOFROOM` VARCHAR(30) NOT NULL,
  `CIN` DATE NOT NULL,
  `COUT` DATE NOT NULL,
  `NODAYS` INT(50) NOT NULL,
  `STAT` VARCHAR(30) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `roombook`
--

INSERT INTO `ROOMBOOK` (
  `ID`,
  `NAME`,
  `EMAIL`,
  `COUNTRY`,
  `PHONE`,
  `ROOMTYPE`,
  `BED`,
  `MEAL`,
  `NOOFROOM`,
  `CIN`,
  `COUT`,
  `NODAYS`,
  `STAT`
) VALUES (
  41,
  'Tushar pankhaniya',
  'pankhaniyatushar9@gmail.com',
  'India',
  '9313346569',
  'Single Room',
  'Single',
  'Room only',
  '1',
  '2022-11-09',
  '2022-11-10',
  1,
  'Confirm'
);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `SIGNUP` (
  `USERID` INT(100) NOT NULL,
  `USERNAME` VARCHAR(50) NOT NULL,
  `EMAIL` VARCHAR(50) NOT NULL,
  `PASSWORD` VARCHAR(50) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `signup`
--
INSERT INTO `SIGNUP` (
  `USERID`,
  `USERNAME`,
  `EMAIL`,
  `PASSWORD`
) VALUES (
  1,
  'Tushar Pankhaniya',
  'tusharpankhaniya2202@gmail.com',
  '123'
);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `STAFF` (
  `ID` INT(30) NOT NULL,
  `NAME` VARCHAR(30) NOT NULL,
  `WORK` VARCHAR(30) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `staff`
--

INSERT INTO `STAFF` (
  `ID`,
  `NAME`,
  `WORK`
) VALUES (
  1,
  'Tushar pankhaniya',
  'Manager'
),
(
  3,
  'rohit patel',
  'Cook'
),
(
  4,
  'Dipak',
  'Cook'
),
(
  5,
  'tirth',
  'Helper'
),
(
  6,
  'mohan',
  'Helper'
),
(
  7,
  'shyam',
  'cleaner'
),
(
  8,
  'rohan',
  'weighter'
),
(
  9,
  'hiren',
  'weighter'
),
(
  10,
  'nikunj',
  'weighter'
),
(
  11,
  'rekha',
  'Cook'
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_login`
--
ALTER TABLE `EMP_LOGIN`
  ADD PRIMARY KEY (
    `EMPID`
  );

--
-- Indexes for table `payment`
--
ALTER TABLE `PAYMENT`
  ADD PRIMARY KEY (
    `ID`
  );

--
-- Indexes for table `room`
--
ALTER TABLE `ROOM`
  ADD PRIMARY KEY (
    `ID`
  );

--
-- Indexes for table `roombook`
--
ALTER TABLE `ROOMBOOK`
  ADD PRIMARY KEY (
    `ID`
  );

--
-- Indexes for table `signup`
--
ALTER TABLE `SIGNUP`
  ADD PRIMARY KEY (
    `USERID`
  );

--
-- Indexes for table `staff`
--
ALTER TABLE `STAFF`
  ADD PRIMARY KEY (
    `ID`
  );

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp_login`
--
ALTER TABLE `EMP_LOGIN` MODIFY `EMPID` INT(
  100
) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `ROOM` MODIFY `ID` INT(
  30
) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `ROOMBOOK` MODIFY `ID` INT(
  10
) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `SIGNUP` MODIFY `USERID` INT(
  100
) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `STAFF` MODIFY `ID` INT(
  30
) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;