-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2015 at 02:05 AM
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
-- Table structure for table `BATCHES`
--

CREATE TABLE IF NOT EXISTS `BATCHES` (
  `ID` varchar(5) NOT NULL DEFAULT '',
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `COURSE_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COURSE_ID` (`COURSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BATCHES`
--

INSERT INTO `BATCHES` (`ID`, `START_DATE`, `END_DATE`, `COURSE_ID`) VALUES
('b01', '2015-07-15', '2015-07-31', 'c03'),
('b02', '2015-07-01', '2015-07-31', 'c01');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `BATCHES`
--
ALTER TABLE `BATCHES`
  ADD CONSTRAINT `BATCHES_ibfk_1` FOREIGN KEY (`COURSE_ID`) REFERENCES `COURSES` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
