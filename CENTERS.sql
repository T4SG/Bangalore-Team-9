-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2015 at 02:06 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pratham`
--

-- --------------------------------------------------------

--
-- Table structure for table `CENTERS`
--

CREATE TABLE IF NOT EXISTS `CENTERS` (
  `ID` varchar(10) NOT NULL DEFAULT '',
  `CEN_NAME` varchar(20) DEFAULT NULL,
  `CENTER_HEAD_ID` varchar(5) DEFAULT NULL,
  `PHNO` varchar(15) DEFAULT NULL,
  `LOCATION` varchar(20) DEFAULT NULL,
  `COURSE_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`,`COURSE_ID`),
  KEY `CENTER_HEAD_ID` (`CENTER_HEAD_ID`),
  KEY `COURSE_ID` (`COURSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CENTERS`
--

INSERT INTO `CENTERS` (`ID`, `CEN_NAME`, `CENTER_HEAD_ID`, `PHNO`, `LOCATION`, `COURSE_ID`) VALUES
('CEN01', 'HYDERABAD', 'E01', '814389909', 'HYDERABAD', ''),
('CEN02', 'BANGALORE', 'E02', '7701234572', 'BANGALORE', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CENTERS`
--
ALTER TABLE `CENTERS`
  ADD CONSTRAINT `CENTERS_ibfk_1` FOREIGN KEY (`CENTER_HEAD_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
