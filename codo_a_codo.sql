-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.14-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para ecommerce
CREATE DATABASE IF NOT EXISTS `codo_a_codo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `codo_a_codo`;

-- Volcando estructura para tabla ecommerce.bancos
CREATE TABLE IF NOT EXISTS `articulos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(40) NOT NULL,
  `cuerpo` varchar(40) NOT NULL,
  `fecha_publicacion` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla ecommerce.bancos: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` (`ID`, `titulo`,`cuerpo`,`fecha_publicacion`) VALUES
	(1, 'Titulo 1', 'Lorem 1', '2020-11-01 19:53:00'),
	(2, 'Titulo 1', 'Lorem 1', '2020-11-01 13:54:00'),
	(3, 'Titulo 1', 'Lorem 1', '2020-11-01 17:12:00'),
	(4, 'Titulo 1', 'Lorem 1', '2020-11-01 11:23:00'),
	(5, 'Titulo 1', 'Lorem 1', '2020-11-01 12:21:00');
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;

-- Volcando estructura para vista ecommerce.banco_clientes


/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
