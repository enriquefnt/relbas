CREATE TABLE `baserel`.`aopzonas` (
  `idaop` INT NOT NULL,
  `areaoperativa` VARCHAR(45) NOT NULL,
  `zona` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idaop`));

INSERT INTO `aopzonas` (`idaop`,`areaoperativa`,`zona`)
VALUES
('1','Colonia Santa Rosa','Norte'),
('2','Pichanal','Norte'),
('3','Aguaray','Norte'),
('4','Morillo','Norte'),
('5','Sta Victoria Oeste','Oeste'),
('6','Iruya','Oeste'),
('7','Salvador Mazza','Norte'),
('8','Sta Victoria Este','Norte'),
('9','Embarcacion','Norte'),
('10','Nazareno','Oeste'),
('11','Oran','Norte'),
('12','Tartagal','Norte'),
('13','Rivadavia Banda Sur','Norte'),
('14','Lajitas','Sur'),
('15','JV Gonzalez','Sur'),
('16','El Quebrachal','Sur'),
('17','El Galpon','Sur'),
('18','R de la Frontera','Sur'),
('19','Metán','Sur'),
('21','El Tala','Sur'),
('22','Gral Guemes','Sur'),
('23','Apolinario Saravia','Sur'),
('24','Cafayate','Oeste'),
('25','San Carlos','Oeste'),
('26','Molinos','Oeste'),
('27','Cachi','Oeste'),
('28','Mosconi','Norte'),
('29','San Antonio de los Cobres','Oeste'),
('30','Cerrillos','Oeste'),
('31','Hipolito Irigoyen','Norte'),
('32','R de Lerma','Oeste'),
('33','Chicoana','Oeste'),
('34','El Carril','Oeste'),
('35','Coronal Moldes','Oeste'),
('36','La Viña','Oeste'),
('37','Guachipas','Oeste'),
('38','El Potrero','Sur'),
('39','La Caldera','Oeste'),
('44','Alto La Sierra','Norte'),
('45','Capital-Norte','Centro'),
('46','Campo Quijano','Oeste'),
('48','Seclantas','Oeste'),
('49','Urundel','Norte'),
('50','La Merced','Oeste'),
('51','La Unión','Norte'),
('52','La Poma','Oeste'),
('53','Angastaco','Oeste'),
('55','Capital-Sur','Centro'),
('99','ExtraProvincial','Extra Provincial');
