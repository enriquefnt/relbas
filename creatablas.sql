CREATE DATABASE `baserel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

CREATE TABLE `control` (
  `idcontrol` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` int(11) NOT NULL,
  `FechaControl` date NOT NULL,
  `Peso` decimal(3,0) NOT NULL,
  `Talla` decimal(3,0) NOT NULL,
  `Observaciones` varchar(455) DEFAULT NULL,
  PRIMARY KEY (`idcontrol`),
  KEY `idPersona` (`idPersona`),
  CONSTRAINT `idPersona` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Nacimiento` date NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `AOP` varchar(45) NOT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
