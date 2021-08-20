CREATE TABLE `control` (
  `idcontrol` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` varchar(45) NOT NULL,
  `FechaControl` date NOT NULL,
  `Peso` decimal(3,0) NOT NULL,
  `Talla` decimal(3,0) NOT NULL,
  `Observaciones` varchar(455) DEFAULT NULL,
  PRIMARY KEY (`idcontrol`,`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL,
  `Nombre` int(11) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Nacimiento` date NOT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
