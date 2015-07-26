-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2015 at 02:00 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `COURSES`
--

CREATE TABLE IF NOT EXISTS `COURSES` (
  `ID` varchar(10) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `FEE` int(11) DEFAULT NULL,
  `DURATION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COURSES`
--

INSERT INTO `COURSES` (`ID`, `NAME`, `FEE`, `DURATION`) VALUES
('c01', 'hotel management', 10000, 3),
('c02', 'machinery', 8000, 2),
('c03', 'carpentry', 5000, 2),
('c04', 'mechanics', 6000, 4),
('c05', 'Nurse', 4000, 12),
('c06', 'Beauticiar', 5000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE IF NOT EXISTS `EMPLOYEE` (
  `EMP_ID` varchar(5) NOT NULL,
  `ENAME` varchar(100) DEFAULT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `PH_NO` varchar(10) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `ROLE_ID` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`EMP_ID`, `ENAME`, `ROLE_ID`, `PASSWORD`, `PH_NO`, `AGE`, `GENDER`, `EMAIL_ID`) VALUES
('E01', 'JOHN', 1, 'ABC', '8143464575', 40, 'M', 'ABC@ABC.COM'),
('E02', 'SMITH', 1, 'ABC', '8143464577', 35, 'M', 'DEF@DEF.COM'),
('E03', 'VENUS', 2, 'ABC', '8134567645', 26, 'F', 'PRATHYU@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `FEEDBACK_COURSE`
--

CREATE TABLE IF NOT EXISTS `FEEDBACK_COURSE` (
  `TEXT` varchar(1000) NOT NULL,
  `SID` int(5) NOT NULL,
  `CID` varchar(5) NOT NULL,
  `ENTRY_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `SID` (`SID`,`CID`),
  KEY `SID_2` (`SID`,`CID`),
  KEY `CID` (`CID`,`ENTRY_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Stand-in structure for view `final_fee_list`
--
CREATE TABLE IF NOT EXISTS `final_fee_list` (
`SID` int(11)
,`SNAME` varchar(100)
,`rem` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `pay_fee`
--
CREATE TABLE IF NOT EXISTS `pay_fee` (
`ID` varchar(10)
,`NAME` varchar(20)
,`FEE` int(11)
,`DURATION` int(11)
,`SPO_ID` varchar(5)
,`SPONAME` varchar(100)
,`YEAR` varchar(9)
,`COUR_ID` varchar(5)
,`MONEY` int(11)
,`diff` bigint(12)
);
-- --------------------------------------------------------

--
-- Table structure for table `PLACEMENT`
--

CREATE TABLE IF NOT EXISTS `PLACEMENT` (
  `COMPANY_NAME` varchar(20) DEFAULT NULL,
  `ID` varchar(5) NOT NULL DEFAULT '',
  `TYPE` varchar(20) DEFAULT NULL,
  `PLACED_DATE` date DEFAULT NULL,
  `PACKAGE` int(11) DEFAULT NULL,
  `LOCATION` varchar(20) DEFAULT NULL,
  `PHNO` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PLACEMENT`
--

INSERT INTO `PLACEMENT` (`COMPANY_NAME`, `ID`, `TYPE`, `PLACED_DATE`, `PACKAGE`, `LOCATION`, `PHNO`) VALUES
('jpmc', 'com01', 'it', '2015-07-09', 7, 'hyd', '8888888888'),
('oracle', 'com02', 'it', '2015-07-18', 9, 'bangalore', '63636363'),
('microsoft', 'com03', 'it', '2015-07-01', 10, 'hyd', '444444444'),
('taj', 'com04', 'hotelmanagement', '2015-07-17', 3, 'bangalore', '666666666');

-- --------------------------------------------------------

--
-- Table structure for table `RESULT`
--

CREATE TABLE IF NOT EXISTS `RESULT` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `STATUS` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RESULT`
--

INSERT INTO `RESULT` (`ID`, `STATUS`) VALUES
(1, 'pass'),
(2, 'fail');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `ROLE_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`ID`, `ROLE_NAME`) VALUES
(1, 'center head'),
(2, 'mentor');

-- --------------------------------------------------------

--
-- Table structure for table `SPONSOR`
--

CREATE TABLE IF NOT EXISTS `SPONSOR` (
  `SPO_ID` varchar(5) NOT NULL,
  `SPONAME` varchar(100) DEFAULT NULL,
  `YEAR` varchar(9) DEFAULT NULL,
  `COUR_ID` varchar(5) DEFAULT NULL,
  `MONEY` int(11) NOT NULL,
  PRIMARY KEY (`SPO_ID`),
  KEY `COUR_ID` (`COUR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SPONSOR`
--

INSERT INTO `SPONSOR` (`SPO_ID`, `SPONAME`, `YEAR`, `COUR_ID`, `MONEY`) VALUES
('s01', 'Mohan', '2015', 'c01', 0),
('s02', 'Rama', '2015', 'c02', 3000),
('s03', 'Uma', '2015', 'c03', 0),
('s04', 'Devi ', '2015', 'c04', 0);

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

-- --------------------------------------------------------

--
-- Structure for view `final_fee_list`
--
DROP TABLE IF EXISTS `final_fee_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `final_fee_list` AS select `s`.`SID` AS `SID`,`s`.`SNAME` AS `SNAME`,(`p`.`diff` - `s`.`AMT_PAID`) AS `rem` from (`STUDENT` `s` join `pay_fee` `p` on((`s`.`COURSE_ID` = `p`.`ID`)));

-- --------------------------------------------------------

--
-- Structure for view `pay_fee`
--
DROP TABLE IF EXISTS `pay_fee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pay_fee` AS select `c`.`ID` AS `ID`,`c`.`NAME` AS `NAME`,`c`.`FEE` AS `FEE`,`c`.`DURATION` AS `DURATION`,`s`.`SPO_ID` AS `SPO_ID`,`s`.`SPONAME` AS `SPONAME`,`s`.`YEAR` AS `YEAR`,`s`.`COUR_ID` AS `COUR_ID`,`s`.`MONEY` AS `MONEY`,(`c`.`FEE` - `s`.`MONEY`) AS `diff` from (`COURSES` `c` join `SPONSOR` `s` on((`s`.`COUR_ID` = `c`.`ID`)));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `BATCHES`
--
ALTER TABLE `BATCHES`
  ADD CONSTRAINT `BATCHES_ibfk_1` FOREIGN KEY (`COURSE_ID`) REFERENCES `COURSES` (`ID`);

--
-- Constraints for table `CENTERS`
--
ALTER TABLE `CENTERS`
  ADD CONSTRAINT `CENTERS_ibfk_1` FOREIGN KEY (`CENTER_HEAD_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`);

--
-- Constraints for table `FEEDBACK_COURSE`
--
ALTER TABLE `FEEDBACK_COURSE`
  ADD CONSTRAINT `FEEDBACK_COURSE_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `COURSES` (`ID`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FEEDBACK_COURSE_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `STUDENT` (`SID`) ON DELETE NO ACTION;

--
-- Constraints for table `FEED_STUD`
--
ALTER TABLE `FEED_STUD`
  ADD CONSTRAINT `FEED_STUD_ibfk_2` FOREIGN KEY (`SID`) REFERENCES `STUDENT` (`SID`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FEED_STUD_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `EMPLOYEE` (`EMP_ID`) ON DELETE NO ACTION;

--
-- Constraints for table `SPONSOR`
--
ALTER TABLE `SPONSOR`
  ADD CONSTRAINT `SPONSOR_ibfk_1` FOREIGN KEY (`COUR_ID`) REFERENCES `COURSES` (`ID`);

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

--
-- Constraints for table `STUDENT_ACK`
--
ALTER TABLE `STUDENT_ACK`
  ADD CONSTRAINT `STUDENT_ACK_ibfk_1` FOREIGN KEY (`COURSE_ID`) REFERENCES `COURSES` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
