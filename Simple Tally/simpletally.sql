-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.28 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5127
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for simpletally
DROP DATABASE IF EXISTS `simpletally`;
CREATE DATABASE IF NOT EXISTS `simpletally` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `simpletally`;

-- Dumping structure for table simpletally.tbl_admin
DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) NOT NULL DEFAULT '0',
  `tphone` varchar(50) NOT NULL DEFAULT '0',
  `temail` varchar(50) NOT NULL DEFAULT '0',
  `tphoto` varchar(1000) NOT NULL DEFAULT '0',
  `tpwd` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table simpletally.tbl_admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT IGNORE INTO `tbl_admin` (`id`, `tname`, `tphone`, `temail`, `tphoto`, `tpwd`) VALUES
	(1, '0', 'admin', '0', '0', 'admin');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;

-- Dumping structure for table simpletally.tbl_doac
DROP TABLE IF EXISTS `tbl_doac`;
CREATE TABLE IF NOT EXISTS `tbl_doac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp` varchar(100) NOT NULL DEFAULT '0',
  `txt` varchar(20000) NOT NULL DEFAULT '0',
  `vid` varchar(2000) NOT NULL DEFAULT '0',
  `img` varchar(2000) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table simpletally.tbl_doac: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_doac` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_doac` ENABLE KEYS */;

-- Dumping structure for table simpletally.tbl_group
DROP TABLE IF EXISTS `tbl_group`;
CREATE TABLE IF NOT EXISTS `tbl_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp` varchar(100) NOT NULL DEFAULT '0',
  `txt` varchar(20000) NOT NULL DEFAULT '0',
  `vid` varchar(2000) NOT NULL DEFAULT '0',
  `img` varchar(2000) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table simpletally.tbl_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_group` ENABLE KEYS */;

-- Dumping structure for table simpletally.tbl_ledger
DROP TABLE IF EXISTS `tbl_ledger`;
CREATE TABLE IF NOT EXISTS `tbl_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp` varchar(100) NOT NULL DEFAULT '0',
  `txt` varchar(20000) NOT NULL DEFAULT '0',
  `vid` varchar(2000) NOT NULL DEFAULT '0',
  `img` varchar(2000) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table simpletally.tbl_ledger: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ledger` ENABLE KEYS */;

-- Dumping structure for table simpletally.tbl_tran
DROP TABLE IF EXISTS `tbl_tran`;
CREATE TABLE IF NOT EXISTS `tbl_tran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp` varchar(1000) NOT NULL DEFAULT '0',
  `head1` varchar(1000) NOT NULL DEFAULT '0',
  `cont1` varchar(5000) NOT NULL DEFAULT '0',
  `head2` varchar(1000) NOT NULL DEFAULT '0',
  `cont2` varchar(5000) NOT NULL DEFAULT '0',
  `head3` varchar(1000) NOT NULL DEFAULT '0',
  `cont3` varchar(5000) NOT NULL DEFAULT '0',
  `img` varchar(5000) NOT NULL DEFAULT '0',
  `vid` varchar(5000) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table simpletally.tbl_tran: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_tran` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tran` ENABLE KEYS */;

-- Dumping structure for table simpletally.tbl_voucher
DROP TABLE IF EXISTS `tbl_voucher`;
CREATE TABLE IF NOT EXISTS `tbl_voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp` varchar(100) NOT NULL DEFAULT '0',
  `txt` varchar(20000) NOT NULL DEFAULT '0',
  `vid` varchar(2000) NOT NULL DEFAULT '0',
  `img` varchar(2000) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table simpletally.tbl_voucher: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_voucher` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
