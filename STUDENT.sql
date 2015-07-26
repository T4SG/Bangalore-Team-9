-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2015 at 01:44 AM
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
-- Table structure for table `STUDENT`
--

CREATE TABLE IF NOT EXISTS `STUDENT` (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `SNAME` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `AGE` int(11) NOT NULL,
  `GENDER` varchar(20) NOT NULL,
  `PH_NO` varchar(10) DEFAULT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `COURSE_ID` varchar(10) CHARACTER SET latin1 NOT NULL,
  `AMT_PAID` int(11) NOT NULL,
  `SPONSOR_ID` varchar(5) CHARACTER SET latin1 NOT NULL,
  `IS_PLACED` int(11) DEFAULT NULL,
  `IS_DROPPED` int(11) DEFAULT NULL,
  `IS_CERTIFIED` int(11) DEFAULT NULL,
  `GRADE` varchar(1) DEFAULT NULL,
  `PLACEMENT_ID` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `MODIFIED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BATCH_ID` varchar(5) CHARACTER SET latin1 NOT NULL,
  `RESULT_ID` int(11) DEFAULT NULL,
  `ASSESMENT_SCORE` int(11) DEFAULT NULL,
  `EID` varchar(5) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `COURSE_ID` (`COURSE_ID`,`SPONSOR_ID`,`PLACEMENT_ID`,`BATCH_ID`,`RESULT_ID`),
  KEY `SPONSOR_ID` (`SPONSOR_ID`),
  KEY `PLACEMENT_ID` (`PLACEMENT_ID`),
  KEY `BATCH_ID` (`BATCH_ID`),
  KEY `RESULT_ID` (`RESULT_ID`),
  KEY `EID` (`EID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`SID`, `SNAME`, `DOB`, `AGE`, `GENDER`, `PH_NO`, `ADDRESS`, `EMAIL`, `COURSE_ID`, `AMT_PAID`, `SPONSOR_ID`, `IS_PLACED`, `IS_DROPPED`, `IS_CERTIFIED`, `GRADE`, `PLACEMENT_ID`, `PASSWORD`, `MODIFIED_TIME`, `BATCH_ID`, `RESULT_ID`, `ASSESMENT_SCORE`, `EID`) VALUES
(1, 'rohila', '2015-07-02', 1, 'f', '7777777777', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', 'rohila@gmail.com', 'c02', 1000, 's02', 0, 0, 1, 'A', 'com02', 'rohila', '2015-07-25 22:25:24', 'b01', 1, 40, 'E02'),
(2, 'pratyusha', '2015-07-15', 2, 'f', '0000000000', 'dddddddddddddd', NULL, 'c02', 600, 's02', 1, NULL, NULL, NULL, NULL, 'prathyusha', '2015-07-25 22:25:49', 'b01', NULL, 60, 'E01'),
(3, 'keerthi', '2015-07-09', 2, 'f', '555555555', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, 'c03', 500, 's02', NULL, NULL, NULL, NULL, NULL, 'keerthi', '2015-07-25 20:27:28', 'b02', NULL, 50, 'E02'),
(6, 'keerthi', '2015-07-09', 2, 'f', '555555555', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, 'c03', 500, 's02', NULL, NULL, NULL, NULL, NULL, 'keerthi', '2015-07-26 00:45:18', 'b02', NULL, 50, 'E02'),
(7, 'asdf', '2015-07-09', 2, 'f', '555555555', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, 'c03', 500, 's02', NULL, NULL, NULL, NULL, NULL, 'keerthi', '2015-07-26 00:48:09', 'b02', NULL, 50, 'E02'),
(8, 'Pragya Daga', '2015-07-09', 2, 'f', '555555555', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, 'c03', 500, 's02', NULL, NULL, NULL, NULL, NULL, 'keerthi', '2015-07-26 01:04:31', 'b02', NULL, 50, 'E02');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD CONSTRAINT `STUDENT_ibfk_1` FOREIGN KEY (`RESULT_ID`) REFERENCES `RESULT` (`ID`) ON DELETE NO ACTION,
  ADD CONSTRAINT `STUDENT_ibfk_2` FOREIGN KEY (`BATCH_ID`) REFERENCES `BATCHES` (`ID`),
  ADD CONSTRAINT `STUDENT_ibfk_3` FOREIGN KEY (`COURSE_ID`) REFERENCES `COURSES` (`ID`),
  ADD CONSTRAINT `STUDENT_ibfk_4` FOREIGN KEY (`EID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `STUDENT_ibfk_5` FOREIGN KEY (`SPONSOR_ID`) REFERENCES `SPONSOR` (`SPO_ID`),
  ADD CONSTRAINT `STUDENT_ibfk_6` FOREIGN KEY (`PLACEMENT_ID`) REFERENCES `PLACEMENT` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
