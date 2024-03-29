-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2015 at 02:08 AM
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
-- Table structure for table `FEED_STUD`
--

CREATE TABLE IF NOT EXISTS `FEED_STUD` (
  `TEXT` varchar(1000) NOT NULL,
  `EID` varchar(5) NOT NULL,
  `SID` int(11) NOT NULL,
  `ENTER_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`EID`,`SID`,`ENTER_TIME`),
  KEY `SID` (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `FEED_STUD`
--
ALTER TABLE `FEED_STUD`
  ADD CONSTRAINT `FEED_STUD_ibfk_2` FOREIGN KEY (`SID`) REFERENCES `STUDENT` (`SID`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FEED_STUD_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `EMPLOYEE` (`EMP_ID`) ON DELETE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
