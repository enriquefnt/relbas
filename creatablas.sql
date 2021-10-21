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
  `Peso` decimal(5,2) NOT NULL,
  `Talla` decimal(5,2) NOT NULL,
  `Observaciones` varchar(455) DEFAULT NULL,
  PRIMARY KEY (`idcontrol`),
  UNIQUE KEY `idcontrol_UNIQUE` (`idcontrol`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4;



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


CREATE TABLE `pesolongitud` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Semana` int(11) NOT NULL DEFAULT -1,
  `Dias` int(11) NOT NULL DEFAULT 0,
  `Meses` int(11) NOT NULL DEFAULT 0,
  `Anio` double NOT NULL DEFAULT 0,
  `Lpo` double NOT NULL DEFAULT 0 COMMENT 'curtosis peso niño',
  `Mpo` double NOT NULL DEFAULT 0 COMMENT 'media peso niño',
  `Spo` double NOT NULL DEFAULT 0 COMMENT 'coeficiente de variación peso niño',
  `S3npo` double NOT NULL DEFAULT 0,
  `S2npo` double NOT NULL DEFAULT 0,
  `S1npo` double NOT NULL DEFAULT 0,
  `S0po` double NOT NULL DEFAULT 0,
  `S1po` double NOT NULL DEFAULT 0,
  `S2po` double NOT NULL DEFAULT 0,
  `S3po` double NOT NULL DEFAULT 0,
  `Lto` double NOT NULL DEFAULT 0 COMMENT 'curtosis longitud niño',
  `Mto` double NOT NULL DEFAULT 0 COMMENT 'media longitud niño',
  `Sto` double NOT NULL DEFAULT 0 COMMENT 'coeficiente de variación longitud niño',
  `S3nto` double NOT NULL DEFAULT 0,
  `S2nto` double NOT NULL DEFAULT 0,
  `S1nto` double NOT NULL DEFAULT 0,
  `S0to` double NOT NULL DEFAULT 0,
  `S1to` double NOT NULL DEFAULT 0,
  `S2to` double NOT NULL DEFAULT 0,
  `S3to` double NOT NULL DEFAULT 0,
  `Lpa` double NOT NULL DEFAULT 0 COMMENT 'curtosis peso niña',
  `Mpa` double NOT NULL DEFAULT 0 COMMENT 'media peso niña',
  `Spa` double NOT NULL DEFAULT 0 COMMENT 'coeficiente de variación peso niña',
  `S3npa` double NOT NULL DEFAULT 0,
  `S2npa` double NOT NULL DEFAULT 0,
  `S1npa` double NOT NULL DEFAULT 0,
  `S0pa` double NOT NULL DEFAULT 0,
  `S1pa` double NOT NULL DEFAULT 0,
  `S2pa` double NOT NULL DEFAULT 0,
  `S3pa` double NOT NULL DEFAULT 0,
  `Lta` double NOT NULL DEFAULT 0 COMMENT 'curtosis longitud niña',
  `Mta` double NOT NULL DEFAULT 0 COMMENT 'media longitud niña',
  `Sta` double NOT NULL DEFAULT 0 COMMENT 'coeficiente de variación longitud niña',
  `S3nta` double NOT NULL DEFAULT 0,
  `S2nta` double NOT NULL DEFAULT 0,
  `S1nta` double NOT NULL DEFAULT 0,
  `S0ta` double NOT NULL DEFAULT 0,
  `S1ta` double NOT NULL DEFAULT 0,
  `S2ta` double NOT NULL DEFAULT 0,
  `S3ta` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COMMENT='TABLA QUE ALMACENA LOS VALORES DE PESO Y LONGITUD PARA EL CALCULO Z';


