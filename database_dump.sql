-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.47 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table laravel.countries
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel.countries: ~0 rows (approximately)
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
REPLACE INTO `countries` (`id`, `code`, `description`) VALUES
	(1, 'CH', 'Switzerland'),
	(2, 'FR', 'France'),
	(3, 'DE', 'Germany');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
