CREATE DATABASE `baserel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;


CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Nacimiento` date NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `AOP` varchar(45) NOT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `control` (
  `idcontrol` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` int(11) NOT NULL,
  `FechaControl` date NOT NULL,
  `Peso` decimal(3,0) NOT NULL,
  `Talla` decimal(3,0) NOT NULL,
  `Observaciones` varchar(455) DEFAULT NULL,
  PRIMARY KEY (`idcontrol`),
  UNIQUE KEY `idcontrol_UNIQUE` (`idcontrol`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `AÑODECIMAL` (
  `Dia` int(11) NOT NULL COMMENT 'Indica los Dias del mes de 1 a 31',
  `En` varchar(3) NOT NULL DEFAULT '000' COMMENT 'indica el valor de mes de enero',
  `Fb` varchar(3) NOT NULL DEFAULT '000',
  `Mz` varchar(3) NOT NULL DEFAULT '000',
  `Ab` varchar(3) NOT NULL DEFAULT '000',
  `My` varchar(3) NOT NULL DEFAULT '000',
  `Jn` varchar(3) NOT NULL DEFAULT '000',
  `Jl` varchar(3) NOT NULL DEFAULT '000',
  `Ag` varchar(3) NOT NULL DEFAULT '000',
  `Se` varchar(3) NOT NULL DEFAULT '000',
  `Oc` varchar(3) NOT NULL DEFAULT '000',
  `Nv` varchar(3) NOT NULL DEFAULT '000',
  `Dc` varchar(45) NOT NULL DEFAULT '000',
  PRIMARY KEY (`Dia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TABLA QUE ALMACENA LOS AÑOS DECIMALES CORRESPONDIENTE A LOS DIAS';
