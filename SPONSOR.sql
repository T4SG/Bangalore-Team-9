-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2015 at 01:52 AM
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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `SPONSOR`
--
ALTER TABLE `SPONSOR`
  ADD CONSTRAINT `SPONSOR_ibfk_1` FOREIGN KEY (`COUR_ID`) REFERENCES `COURSES` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
