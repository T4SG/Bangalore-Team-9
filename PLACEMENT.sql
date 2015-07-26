-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2015 at 01:58 AM
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
