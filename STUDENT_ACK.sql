-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2015 at 01:49 AM
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
-- Table structure for table `STUDENT_ACK`
--

CREATE TABLE IF NOT EXISTS `STUDENT_ACK` (
  `SNAME` varchar(100) NOT NULL,
  `COURSE_ID` varchar(5) NOT NULL,
  `ID` varchar(100) NOT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `SNAME` (`SNAME`),
  KEY `COURSE_ID` (`COURSE_ID`),
  KEY `SNAME_2` (`SNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STUDENT_ACK`
--

INSERT INTO `STUDENT_ACK` (`SNAME`, `COURSE_ID`, `ID`, `CREATED_TIME`) VALUES
('Chris', 'c01', '9703098040', '0000-00-00 00:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `STUDENT_ACK`
--
ALTER TABLE `STUDENT_ACK`
  ADD CONSTRAINT `STUDENT_ACK_ibfk_1` FOREIGN KEY (`COURSE_ID`) REFERENCES `COURSES` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
