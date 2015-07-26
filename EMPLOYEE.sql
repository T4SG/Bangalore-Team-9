-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2015 at 02:07 AM
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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
