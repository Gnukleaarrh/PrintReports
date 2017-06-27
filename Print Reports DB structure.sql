-- --------------------------------------------------------
-- Host:                         wiki
-- Server version:               5.1.73 - Source distribution
-- Server OS:                    redhat-linux-gnu
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table PrintReports.PC_client
CREATE TABLE IF NOT EXISTS `PC_client` (
  `Client_id` int(10) NOT NULL AUTO_INCREMENT,
  `Client_name` char(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table PrintReports.printer
CREATE TABLE IF NOT EXISTS `printer` (
  `printer_id` int(10) NOT NULL AUTO_INCREMENT,
  `printer_name` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`printer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table PrintReports.printJobs
CREATE TABLE IF NOT EXISTS `printJobs` (
  `PrintId` timestamp NULL DEFAULT NULL,
  `User` varchar(20) DEFAULT NULL,
  `Pages` smallint(6) DEFAULT NULL,
  `Copies` smallint(6) DEFAULT NULL,
  `Printer` varchar(50) DEFAULT NULL,
  `DocumentName` varchar(100) DEFAULT NULL,
  `Client` varchar(30) DEFAULT NULL,
  `Papersize` varchar(5) DEFAULT NULL,
  `Language` varchar(6) DEFAULT NULL,
  `Duplex` enum('Y','N') DEFAULT NULL,
  `Grayscale` enum('Y','N') DEFAULT NULL,
  `Size` smallint(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table PrintReports.User_name
CREATE TABLE IF NOT EXISTS `User_name` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` char(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
