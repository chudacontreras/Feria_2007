-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.0.26-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema feria2
--

CREATE DATABASE IF NOT EXISTS feria2;
USE feria2;

--
-- Definition of table `abono`
--

DROP TABLE IF EXISTS `abono`;
CREATE TABLE `abono` (
  `numero` varchar(10) NOT NULL default '0',
  `rif` varchar(15) NOT NULL default '',
  `nombre` varchar(45) NOT NULL default '',
  `direccion` varchar(45) NOT NULL default '',
  `telf` varchar(45) default NULL,
  `fecha` date NOT NULL default '0000-00-00',
  `cant` int(10) unsigned NOT NULL default '0',
  `total` double NOT NULL default '0',
  PRIMARY KEY  (`numero`)
) TYPE=MyISAM;

--
-- Dumping data for table `abono`
--

/*!40000 ALTER TABLE `abono` DISABLE KEYS */;
INSERT INTO `abono` (`numero`,`rif`,`nombre`,`direccion`,`telf`,`fecha`,`cant`,`total`) VALUES 
 ('AB070001','V15960266','Alcaldia de Iribarren','aa','02512312560','2007-08-15',1,180000),
 ('AB070002','V12964945','jhonny escalona','Calle 24 con av. ribereña','0416125896','2007-08-15',2,360000);
/*!40000 ALTER TABLE `abono` ENABLE KEYS */;


--
-- Definition of table `acreditado`
--

DROP TABLE IF EXISTS `acreditado`;
CREATE TABLE `acreditado` (
  `rif` varchar(15) NOT NULL default '',
  `cod_b` varchar(12) NOT NULL default '',
  `cod_v` varchar(45) NOT NULL default '',
  `cedula` varchar(15) NOT NULL default '',
  `nombre` varchar(65) NOT NULL default '',
  `telf` varchar(12) NOT NULL default '',
  `tipacr` int(10) unsigned NOT NULL default '0',
  `foto` varchar(100) NOT NULL default '',
  `estatus` int(10) unsigned NOT NULL default '0',
  `contrato` varchar(45) NOT NULL default '',
  `id` int(10) unsigned NOT NULL auto_increment,
  `fecha_r` date NOT NULL default '0000-00-00',
  `fecha_i` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

--
-- Dumping data for table `acreditado`
--

/*!40000 ALTER TABLE `acreditado` DISABLE KEYS */;
INSERT INTO `acreditado` (`rif`,`cod_b`,`cod_v`,`cedula`,`nombre`,`telf`,`tipacr`,`foto`,`estatus`,`contrato`,`id`,`fecha_r`,`fecha_i`) VALUES 
 ('G20000207-7','053453458267','FB13FH34H34H','V5345345','gfsdfgs','455-4545',15,'fotos/G20000207-7/5345345.jpg',1,'FB070005',1,'2007-08-17','0000-00-00'),
 ('G20000207-7','014523656871','FB66FG4HA36H','E1452365','Petra del Valle','5453-345345',15,'fotos/G20000207-7/1452365.jpg',1,'FB070005',2,'2007-08-17','0000-00-00'),
 ('G20000207-7','056756757308','FB86FH6JH6JH','V5675675','MARIA PETRONILA','3453-345345',15,'fotos/G20000207-7/5675675.jpg',1,'FB070005',4,'2007-08-17','0000-00-00');
/*!40000 ALTER TABLE `acreditado` ENABLE KEYS */;


--
-- Definition of table `anno`
--

DROP TABLE IF EXISTS `anno`;
CREATE TABLE `anno` (
  `an` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`an`)
) TYPE=MyISAM;

--
-- Dumping data for table `anno`
--

/*!40000 ALTER TABLE `anno` DISABLE KEYS */;
INSERT INTO `anno` (`an`) VALUES 
 ('1960'),
 ('1961'),
 ('1962'),
 ('1963'),
 ('1964'),
 ('1965'),
 ('1966'),
 ('1967'),
 ('1968'),
 ('1969'),
 ('1970'),
 ('1971'),
 ('1972'),
 ('1973'),
 ('1974'),
 ('1975'),
 ('1976'),
 ('1977'),
 ('1978'),
 ('1979'),
 ('1980'),
 ('1981'),
 ('1982'),
 ('1983'),
 ('1984'),
 ('1985'),
 ('1986'),
 ('1987'),
 ('1988'),
 ('1989'),
 ('1990'),
 ('1991'),
 ('1992'),
 ('1993'),
 ('1994'),
 ('1995'),
 ('1996'),
 ('1997'),
 ('1998'),
 ('1999'),
 ('2000'),
 ('2001'),
 ('2002'),
 ('2003'),
 ('2004'),
 ('2005'),
 ('2006'),
 ('2007');
('2008');
('2009');
/*!40000 ALTER TABLE `anno` ENABLE KEYS */;


--
-- Definition of table `cantacredita`
--

DROP TABLE IF EXISTS `cantacredita`;
CREATE TABLE `cantacredita` (
  `id` int(10) unsigned NOT NULL default '0',
  `nrocontrato` varchar(10) NOT NULL default '',
  `tipoacre` int(10) unsigned NOT NULL default '0',
  `cant` int(10) unsigned NOT NULL default '0',
  `codcate` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nrocontrato`,`tipoacre`)
) TYPE=MyISAM;

--
-- Dumping data for table `cantacredita`
--

/*!40000 ALTER TABLE `cantacredita` DISABLE KEYS */;
INSERT INTO `cantacredita` (`id`,`nrocontrato`,`tipoacre`,`cant`,`codcate`) VALUES 
 (1,'FB070005',15,3,3),
 (2,'FB070006',15,1,3),
 (3,'FB070006',16,2,3),
 (4,'FB070006',17,2,3),
 (5,'FB070007',15,2,3),
 (6,'FB070007',16,2,3),
 (7,'FB070008',15,2,3),
 (8,'FB070008',16,1,3),
 (9,'FB070009',15,2,3),
 (10,'FB070009',16,1,3),
 (11,'FB070010',15,2,3),
 (12,'FB070011',15,3,3),
 (13,'FB070015',15,5,3),
 (14,'FB070016',6,3,2),
 (15,'FB070016',7,3,2),
 (16,'FB070016',9,3,2),
 (17,'FB070017',6,5,2),
 (18,'FB070018',16,3,3),
 (19,'FB070019',6,5,2),
 (20,'FB070020',6,5,2),
 (21,'FB070021',15,10,3);
/*!40000 ALTER TABLE `cantacredita` ENABLE KEYS */;


--
-- Definition of table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `codcate` int(10) unsigned NOT NULL auto_increment,
  `descrip` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`codcate`)
) TYPE=MyISAM;

--
-- Dumping data for table `categoria`
--

/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`codcate`,`descrip`) VALUES 
 (1,'Patrocinante'),
 (2,'Agropecuaria'),
 (3,'Expositor'),
 (4,'Funcionario Mcpal'),
 (5,'Logistica'),
 (6,'Invitados');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;


--
-- Definition of table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
CREATE TABLE `contrato` (
  `rif` varchar(15) NOT NULL default '',
  `numero` varchar(10) NOT NULL default '',
  `fecha` date NOT NULL default '0000-00-00',
  `productos` varchar(100) default NULL,
  `stand` varchar(100) NOT NULL default '',
  `total` double NOT NULL default '0',
  `resta` double NOT NULL default '0',
  `Statu` varchar(45) NOT NULL default '',
  `ramo` varchar(100) default NULL,
  `totalacred` int(10) unsigned NOT NULL default '0',
  `maxacred` int(10) unsigned NOT NULL default '0',
  `acreregis` int(10) unsigned NOT NULL default '0',
  `acreadici` int(10) unsigned NOT NULL default '0',
  `usuario` varchar(65) NOT NULL default '',
  PRIMARY KEY  (`numero`)
) TYPE=MyISAM;

--
-- Dumping data for table `contrato`
--

/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` (`rif`,`numero`,`fecha`,`productos`,`stand`,`total`,`resta`,`Statu`,`ramo`,`totalacred`,`maxacred`,`acreregis`,`acreadici`,`usuario`) VALUES 
 ('G20000207-7','FB070001','2007-08-15','BISUTERIA','AI-AE01,AI-AE03',9810000,7310000,'1','COMERCIAL',6,6,0,0,''),
 ('G20000207-7','FB070002','2007-08-15','ropa intima femenina y masculina','AI-AE05',4905000,2905000,'1','COMERCIAL',3,3,0,0,''),
 ('V15960266','FB070003','2007-08-16','AAA','AI-AE06',4905000,0,'3','aaa',3,3,0,0,''),
 ('V15960266','FB070004','2007-08-16','sdsdsd','AI-AE08',4905000,0,'3','sdsds',3,3,0,0,''),
 ('G20000207-7','FB070005','2007-08-16','lentes','AI-AE09',4905000,0,'3','COMERCIAL',3,3,0,0,''),
 ('G20000207-7','FB070006','2007-08-16','Artesania','AI-AI04',9810000,0,'3','aaa',5,2,0,0,''),
 ('G20000207-7','FB070007','2007-08-16','Artesania','PA163,PA164',4708800,708800,'1','COMERCIAL',4,4,0,0,''),
 ('V15960266','FB070008','2007-08-16','dfdffdfd','AI-AE14',4905000,2904390,'2','ffdfd',3,3,0,0,''),
 ('G20000207-7','FB070009','2007-08-16','sdsdsdd','AI-AE25',4905000,2905000,'1','dd',3,3,0,0,''),
 ('G20000207-7','FB070010','2007-08-16','sdfdfd','AI-AE13',4905000,2905000,'1','ddd',3,3,0,0,'');
INSERT INTO `contrato` (`rif`,`numero`,`fecha`,`productos`,`stand`,`total`,`resta`,`Statu`,`ramo`,`totalacred`,`maxacred`,`acreregis`,`acreadici`,`usuario`) VALUES 
 ('V15960266','FB070011','2007-08-18','sas','AI-AE17',5886000,2051766,'2','sas',3,3,0,0,''),
 ('V15960266','FB070012','2007-08-18','asa','AI-AE11',5886000,5886000,'1','sasa',3,3,0,0,''),
 ('V15960266','FB070013','2007-08-18','r','AI-AE16',5886000,5885998,'1','t',3,3,0,0,''),
 ('V15960266','FB070014','2007-08-18','sassssss','AI-AE20',5886000,5885979,'2','ssssssssssssss',3,3,0,0,''),
 ('V12964945','FB070015','2007-08-18','pruba1','AI-AI02',12262500,262500,'1','prueba2',5,2,0,0,''),
 ('J123456','FB070016','2007-08-18','BI','AI-AE19,AI-AE24,AI-AE26',17658000,17657990,'1','SU',9,9,0,0,''),
 ('J123456','FB070017','2007-08-18','AQ','AI-AI07',12262500,12262499,'1','WS',5,2,0,0,''),
 ('V15960266','FB070018','2007-08-18','dsds','AI-AE29',5886000,0,'3','dsds',3,3,0,0,'ambar mendoza'),
 ('J123456','FB070019','2007-08-18','dsdssd','AI-AI18',12262500,0,'3','sdsd',5,2,0,0,'ambar mendoza'),
 ('J123456','FB070020','2007-08-18','sassssss','AI-AI23',12262500,0,'3','SU',5,2,0,0,'ambar mendoza');
INSERT INTO `contrato` (`rif`,`numero`,`fecha`,`productos`,`stand`,`total`,`resta`,`Statu`,`ramo`,`totalacred`,`maxacred`,`acreregis`,`acreadici`,`usuario`) VALUES 
 ('V15960266','FB070021','2007-08-19','x','AE01',26687500,687500,'1','x',10,2,0,0,'ambar mendoza');
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;


--
-- Definition of table `costoabono`
--

DROP TABLE IF EXISTS `costoabono`;
CREATE TABLE `costoabono` (
  `precio` double NOT NULL auto_increment,
  PRIMARY KEY  (`precio`)
) TYPE=MyISAM;

--
-- Dumping data for table `costoabono`
--

/*!40000 ALTER TABLE `costoabono` DISABLE KEYS */;
INSERT INTO `costoabono` (`precio`) VALUES 
 (180000);
/*!40000 ALTER TABLE `costoabono` ENABLE KEYS */;


--
-- Definition of table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `rif` varchar(15) NOT NULL default '',
  `nombre` varchar(100) NOT NULL default '',
  `direccion` varchar(100) NOT NULL default '',
  `telf` varchar(45) NOT NULL default '',
  `replegal` varchar(100) default NULL,
  `cedrepre` varchar(15) default NULL,
  `statu` varchar(15) default NULL,
  `regismercan` varchar(100) default NULL,
  `fecharegis` date default '0000-00-00',
  `nrotomo` varchar(10) default NULL,
  `cargo` varchar(100) default NULL,
  `categoria` int(10) unsigned NOT NULL default '0',
  `retensoriva` int(10) unsigned default NULL,
  PRIMARY KEY  (`rif`)
) TYPE=MyISAM;

--
-- Dumping data for table `empresa`
--

/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` (`rif`,`nombre`,`direccion`,`telf`,`replegal`,`cedrepre`,`statu`,`regismercan`,`fecharegis`,`nrotomo`,`cargo`,`categoria`,`retensoriva`) VALUES 
 ('G20000207-7','Alcaldia de Iribarren','Calle 25 con carrera 17 y 18','02517101820','Alcalde','15300222','registro','02154','1964-06-07','123654','alcalde',3,1),
 ('V15960266','Alcaldia','123456','02512312560',NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,3,1),
 ('V12964945','jhonny','calle 24 con av ribereña','04145704292',NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,3,1),
 ('J123456','Alcaldia PALA','CABUDARE','02512312560','SAAA','0214222','registro','026','1961-02-01','0251','GERENTE',2,0),
 ('J14','sds','sdsd','sds','sdsd','dsd','registro','dsds','1960-01-01','sdsd','sdsd',1,0),
 ('V12','S','S','SA',NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,2,1),
 ('V1','d','d','d',NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,1,0);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;


--
-- Definition of table `formapago`
--

DROP TABLE IF EXISTS `formapago`;
CREATE TABLE `formapago` (
  `codpago` int(10) unsigned NOT NULL auto_increment,
  `descrip` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`codpago`)
) TYPE=MyISAM;

--
-- Dumping data for table `formapago`
--

/*!40000 ALTER TABLE `formapago` DISABLE KEYS */;
INSERT INTO `formapago` (`codpago`,`descrip`) VALUES 
 (1,'Cheque'),
 (2,'Baucher');
/*!40000 ALTER TABLE `formapago` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `usuario` varchar(12) NOT NULL default '',
  `clave` varchar(10) NOT NULL default '',
  `codtipo` int(11) NOT NULL default '0',
  `nombre` varchar(50) NOT NULL default '',
  `rifemp` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`usuario`,`clave`),
  KEY `Index_2` (`rifemp`)
) TYPE=MyISAM;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`usuario`,`clave`,`codtipo`,`nombre`,`rifemp`) VALUES 
 ('ambar','123456',5,'Ambar Mendoza','G20000207-7'),
 ('ger','123456',10,'Gerardo Figueroa','G20000207-7'),
 ('ambar2','123456',6,'ambar mendoza','G20000207-7'),
 ('G20000207-7','ijatolur',10,'Alcaldia de Iribarren','G20000207-7'),
 ('V15960266','amisaxub',10,'Alcaldia','V15960266'),
 ('ambar3','123456',8,'Ambar Mendoza','G20000207-7'),
 ('V12964945','alizipal',10,'jhonny','V12964945'),
 ('J123456','ujuduyiy',10,'Alcaldia PALA','J123456');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `mes`
--

DROP TABLE IF EXISTS `mes`;
CREATE TABLE `mes` (
  `nro` varchar(5) NOT NULL default '',
  `descrip` varchar(45) default NULL,
  PRIMARY KEY  (`nro`)
) TYPE=MyISAM;

--
-- Dumping data for table `mes`
--

/*!40000 ALTER TABLE `mes` DISABLE KEYS */;
INSERT INTO `mes` (`nro`,`descrip`) VALUES 
 ('01','Enero'),
 ('02','Febrero'),
 ('07','Julio'),
 ('03','Marzo'),
 ('04','Abril'),
 ('05','Mayo'),
 ('06','Junio'),
 ('08','Agosto'),
 ('09','Septiembre'),
 ('10','Octubre'),
 ('11','Noviembre'),
 ('12','Diciembre');
/*!40000 ALTER TABLE `mes` ENABLE KEYS */;


--
-- Definition of table `stand`
--

DROP TABLE IF EXISTS `stand`;
CREATE TABLE `stand` (
  `codstand` varchar(10) NOT NULL default '',
  `status` varchar(45) NOT NULL default '',
  `codubi` varchar(45) NOT NULL default '',
  `costo` double NOT NULL default '0',
  PRIMARY KEY  (`codstand`)
) TYPE=MyISAM;

--
-- Dumping data for table `stand`
--

/*!40000 ALTER TABLE `stand` DISABLE KEYS */;
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('AI-AE01','vendido','1',0),
 ('AI-AE03','vendido','1',0),
 ('AI-AE05','vendido','1',0),
 ('AI-AE06','vendido','1',0),
 ('AI-AE08','vendido','1',0),
 ('AI-AE09','vendido','1',0),
 ('AI-AE11','vendido','1',0),
 ('AI-AE13','vendido','1',0),
 ('AI-AE14','vendido','1',0),
 ('AI-AE16','vendido','1',0),
 ('AI-AE17','vendido','1',0),
 ('AI-AE19','vendido','1',0),
 ('AI-AE20','vendido','1',0),
 ('AI-AE24','vendido','1',0),
 ('AI-AE25','vendido','1',0),
 ('AI-AE26','vendido','1',0),
 ('AI-AE27','Activo','1',0),
 ('AI-AE28','Activo','1',0),
 ('AI-AE29','vendido','1',0),
 ('AI-AE30','Activo','1',0),
 ('AI-AE31','Activo','1',0),
 ('AI-AE32','Activo','1',0),
 ('AI-AE33','Activo','1',0),
 ('AI-AE37','Activo','1',0),
 ('AI-AE39','Activo','1',0),
 ('AI-AE41','Activo','1',0),
 ('AI-AE42','Activo','1',0),
 ('AI-AE44','Activo','1',0),
 ('AI-AE45','Activo','1',0),
 ('AI-AE46','Activo','1',0),
 ('AI-AI04','vendido','2',0),
 ('AI-AI02','vendido','2',0),
 ('AI-AI07','vendido','2',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('AI-AI10','Activo','2',0),
 ('AI-AI12','Activo','2',0),
 ('AI-AI15','Activo','2',0),
 ('AI-AI18','vendido','2',0),
 ('AI-AI21','Activo','2',0),
 ('AI-AI22','Activo','2',0),
 ('AI-AI23','vendido','2',0),
 ('AI-AI34','Activo','2',0),
 ('AI-AI35','Activo','2',0),
 ('AI-AI36','Activo','2',0),
 ('AI-AI38','Activo','2',0),
 ('AI-AI40','Activo','2',0),
 ('AI-AI43','Activo','2',0),
 ('AI-AI47','Activo','2',0),
 ('AI-AI48','Activo','2',0),
 ('AI-AI49','Activo','2',0),
 ('AI-SE01','Bloqueado','3',0),
 ('AI-SE02','Bloqueado','3',0),
 ('PA163','vendido','4',0),
 ('PA164','vendido','4',0),
 ('PA165','Activo','4',0),
 ('PA166','Activo','4',0),
 ('PA167','Activo','4',0),
 ('PA168','Activo','4',0),
 ('PA169','Activo','4',0),
 ('PA170','Activo','4',0),
 ('PA171','Activo','4',0),
 ('PA172','Activo','4',0),
 ('PA173','Activo','4',0),
 ('PA174','Activo','4',0),
 ('PA175','Activo','4',0),
 ('PA176','Activo','4',0),
 ('PA177','Activo','4',0),
 ('PA178','Activo','4',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('PA179','Activo','4',0),
 ('PA180','Activo','4',0),
 ('PA181','Activo','4',0),
 ('PA182','Activo','4',0),
 ('PA183','Activo','4',0),
 ('PA184','Activo','4',0),
 ('PA185','Activo','4',0),
 ('PA186','Activo','4',0),
 ('PA187','Activo','4',0),
 ('PA188','Activo','4',0),
 ('PA189','Activo','4',0),
 ('PA190','Activo','4',0),
 ('PA191','Activo','4',0),
 ('PA192','Activo','4',0),
 ('PA193','Activo','4',0),
 ('PA194','Activo','4',0),
 ('PA195','Activo','4',0),
 ('PA196','Activo','4',0),
 ('PA197','Activo','4',0),
 ('PA198','Activo','4',0),
 ('PA199','Activo','4',0),
 ('PA200','Activo','4',0),
 ('PA201','Activo','4',0),
 ('PA202','Activo','4',0),
 ('PA203','Activo','4',0),
 ('PA204','Activo','4',0),
 ('PA205','Activo','4',0),
 ('PA206','Activo','4',0),
 ('PA207','Activo','4',0),
 ('PA208','Activo','4',0),
 ('PA209','Activo','4',0),
 ('PA210','Activo','4',0),
 ('PA211','Activo','4',0),
 ('PA212','Activo','4',0),
 ('PA213','Activo','4',0),
 ('PA214','Activo','4',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('PA215','Activo','4',0),
 ('PA216','Activo','4',0),
 ('PA217','Activo','4',0),
 ('PA218','Activo','4',0),
 ('PA219','Activo','4',0),
 ('PA220','Bloqueado','4',0),
 ('PA221','Bloqueado','4',0),
 ('PA222','Bloqueado','4',0),
 ('PA223','Bloqueado','4',0),
 ('PA224','Bloqueado','4',0),
 ('PA225','Bloqueado','4',0),
 ('PA226','Bloqueado','4',0),
 ('PA227','Bloqueado','4',0),
 ('PA228','Bloqueado','4',0),
 ('PA229','Bloqueado','4',0),
 ('PA230','Bloqueado','4',0),
 ('AE01','vendido','5',0),
 ('AE02','Activo','5',0),
 ('AE03','Activo','5',0),
 ('AE04','Activo','5',0),
 ('AE05','Activo','5',0),
 ('AE06','Activo','5',0),
 ('PL-101','Activo','6',0),
 ('PL-102','Activo','6',0),
 ('PL-103','Activo','6',0),
 ('PL-104','Activo','6',0),
 ('PL-105','Activo','6',0),
 ('PL-106','Activo','6',0),
 ('PL-107','Activo','6',0),
 ('PL-108','Activo','6',0),
 ('PL-109','Activo','6',0),
 ('PL-110','Activo','6',0),
 ('PL-111','Activo','6',0),
 ('PL-112','Activo','6',0),
 ('PL-113','Activo','6',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('PL-114','Activo','6',0),
 ('PL-115','Activo','6',0),
 ('PL-116','Activo','6',0),
 ('PL-117','Activo','6',0),
 ('PL-118','Activo','6',0),
 ('PL-119','Activo','6',0),
 ('PL-120','Activo','6',0),
 ('PL-121','Activo','6',0),
 ('PL-122','Activo','6',0),
 ('PL-123','Activo','6',0),
 ('PL-124','Activo','6',0),
 ('PL-125','Activo','6',0),
 ('PL-126','Activo','6',0),
 ('PL-127','Activo','6',0),
 ('PL-128','Activo','6',0),
 ('PL-129','Activo','6',0),
 ('PL-130','Activo','6',0),
 ('PL-131','Activo','6',0),
 ('PL-132','Activo','6',0),
 ('PL-133','Activo','6',0),
 ('PL-134','Activo','6',0),
 ('PL-135','Activo','6',0),
 ('PL-136','Activo','6',0),
 ('PL-137','Activo','6',0),
 ('PL-138','Activo','6',0),
 ('PL-139','Activo','6',0),
 ('PL-140','Activo','6',0),
 ('PL-141','Activo','6',0),
 ('PL-142','Activo','6',0),
 ('PL-143','Activo','6',0),
 ('PL-144','Activo','6',0),
 ('PL-145','Activo','6',0),
 ('PL-146','Activo','6',0),
 ('PL-147','Activo','6',0),
 ('PL-148','Activo','6',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('PL-149','Activo','6',0),
 ('PL-150','Activo','6',0),
 ('PL-151','Activo','6',0),
 ('PL-152','Activo','6',0),
 ('PL-153','Activo','6',0),
 ('PL-154','Activo','6',0),
 ('PL-155','Activo','6',0),
 ('PL-156','Activo','6',0),
 ('PL-157','Activo','6',0),
 ('PL-158','Activo','6',0),
 ('PL-159','Activo','6',0),
 ('PL-160','Activo','6',0),
 ('PL-161','Activo','6',0),
 ('PL-162','Activo','6',0),
 ('PL-163','Activo','6',0),
 ('PL-164','Activo','6',0),
 ('PL-165','Activo','6',0),
 ('PL-166','Activo','6',0),
 ('PL-167','Activo','6',0),
 ('PL-168','Activo','6',0),
 ('PL-169','Activo','6',0),
 ('PL-170','Activo','6',0),
 ('PL-171','Activo','6',0),
 ('PL-172','Activo','6',0),
 ('PL-173','Activo','6',0),
 ('PL-174','Activo','6',0),
 ('PL-175','Activo','6',0),
 ('PL-176','Activo','6',0),
 ('PL-177','Activo','6',0),
 ('PL-178','Activo','6',0),
 ('PL-179','Activo','6',0),
 ('PL-180','Activo','6',0),
 ('PL-181','Activo','6',0),
 ('PL-182','Activo','6',0),
 ('PL-183','Activo','6',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('PL-184','Activo','6',0),
 ('PL-185','Activo','6',0),
 ('PL-186','Activo','6',0),
 ('PL-187','Activo','6',0),
 ('PL-188','Activo','6',0),
 ('PL-189','Activo','6',0),
 ('PL-190','Activo','6',0),
 ('PL-191','Activo','6',0),
 ('PL-192','Activo','6',0),
 ('PL-193','Activo','6',0),
 ('PL-194','Activo','6',0),
 ('PL-SE01','Activo','7',0),
 ('PL-SE02','Activo','7',0),
 ('CB01','Activo','8',3133750),
 ('CB02','Activo','8',3133750),
 ('CB03','Activo','8',3133750),
 ('CB04','Activo','8',0),
 ('CB05','Activo','8',0),
 ('CB06','Activo','8',0),
 ('CB07','Activo','8',0),
 ('CB08','Activo','8',0),
 ('CB09','Activo','8',0),
 ('CB10','Activo','8',0),
 ('CB11','Activo','8',3133750),
 ('CB12','Activo','8',3133750),
 ('CB13','Activo','8',3133750),
 ('CB14','Activo','8',0),
 ('CB15','Activo','8',0),
 ('CB16','Activo','8',0),
 ('CB17','Activo','8',0),
 ('CB18','Activo','8',0),
 ('CB19','Activo','8',0),
 ('CB20','Activo','8',0),
 ('CB21','Activo','8',0),
 ('CB22','Activo','8',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('CB23','Activo','8',0),
 ('CB24','Activo','8',0),
 ('CB25','Activo','8',3133750),
 ('CB26','Activo','8',3133750),
 ('CB27','Activo','8',3133750),
 ('CB28','Activo','8',0),
 ('CB29','Activo','8',0),
 ('CB30','Activo','8',0),
 ('CB31','Activo','8',0),
 ('CB32','Activo','8',0),
 ('CB33','Activo','8',0),
 ('CB34','Activo','8',0),
 ('CB35','Activo','8',3133750),
 ('CB36','Activo','8',3133750),
 ('CB37','Activo','8',3133750),
 ('RC01','Activo','9',3133750),
 ('RC02','Activo','9',3133750),
 ('RC03','Activo','9',3133750),
 ('RC04','Activo','9',0),
 ('RC05','Activo','9',0),
 ('RC06','Activo','9',0),
 ('RC07','Activo','9',0),
 ('RC08','Activo','9',0),
 ('RC09','Activo','9',0),
 ('RC10','Activo','9',0),
 ('RC11','Activo','9',3133750),
 ('RC12','Activo','9',3133750),
 ('RC13','Activo','9',3133750),
 ('RC14','Activo','9',0),
 ('RC15','Activo','9',0),
 ('RC16','Activo','9',0),
 ('RC17','Activo','9',0),
 ('RC18','Activo','9',0),
 ('RC19','Activo','9',0),
 ('RC20','Activo','9',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('RC21','Activo','9',0),
 ('RC22','Activo','9',0),
 ('RC23','Activo','9',0),
 ('RC24','Activo','9',0),
 ('RC25','Activo','9',3133750),
 ('RC26','Activo','9',3133750),
 ('RC27','Activo','9',3133750),
 ('RC28','Activo','9',0),
 ('RC29','Activo','9',0),
 ('RC30','Activo','9',0),
 ('RC31','Activo','9',0),
 ('RC32','Activo','9',0),
 ('RC33','Activo','9',0),
 ('RC34','Activo','9',0),
 ('RC35','Activo','9',3133750),
 ('RC36','Activo','9',3133750),
 ('RC37','Activo','9',3133750),
 ('PA01','Activo','10',0),
 ('PA02','Activo','10',0),
 ('PA03','Activo','10',0),
 ('PA04','Activo','10',0),
 ('PA05','Activo','10',0),
 ('PA06','Activo','10',0),
 ('PA07','Activo','10',0),
 ('PA08','Activo','10',0),
 ('PA09','Activo','10',0),
 ('PA10','Activo','10',0),
 ('PA11','Activo','10',0),
 ('PA12','Activo','10',0),
 ('PA13','Activo','10',0),
 ('PA14','Activo','10',0),
 ('PA15','Activo','10',0),
 ('PA16','Activo','10',0),
 ('PA17','Activo','10',0),
 ('PA18','Activo','10',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('PA19','Activo','10',0),
 ('PA20','Activo','10',0),
 ('PA21','Activo','10',0),
 ('PA22','Activo','10',0),
 ('PA23','Activo','10',0),
 ('PA24','Activo','10',0),
 ('PA25','Activo','10',0),
 ('PA26','Activo','10',0),
 ('PA27','Activo','10',0),
 ('PA28','Activo','10',0),
 ('PA29','Activo','10',0),
 ('PA30','Activo','10',0),
 ('PA31','Activo','10',0),
 ('PA32','Activo','10',0),
 ('PA33','Activo','10',0),
 ('PA34','Activo','10',0),
 ('PA35','Activo','10',0),
 ('PA36','Activo','10',0),
 ('PA37','Activo','10',0),
 ('PA38','Activo','10',0),
 ('PA39','Activo','10',0),
 ('PA40','Activo','10',0);
/*!40000 ALTER TABLE `stand` ENABLE KEYS */;


--
-- Definition of table `statuspago`
--

DROP TABLE IF EXISTS `statuspago`;
CREATE TABLE `statuspago` (
  `codpago` int(10) unsigned NOT NULL default '0',
  `descrip` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`codpago`)
) TYPE=MyISAM;

--
-- Dumping data for table `statuspago`
--

/*!40000 ALTER TABLE `statuspago` DISABLE KEYS */;
INSERT INTO `statuspago` (`codpago`,`descrip`) VALUES 
 (1,'Inicial'),
 (2,'Abono'),
 (3,'Cancelado'),
 (4,'Eliminado');
/*!40000 ALTER TABLE `statuspago` ENABLE KEYS */;


--
-- Definition of table `tipacr`
--

DROP TABLE IF EXISTS `tipacr`;
CREATE TABLE `tipacr` (
  `codtacr` int(10) unsigned NOT NULL default '0',
  `descrip` varchar(45) NOT NULL default '',
  `codcateg` int(11) NOT NULL default '0',
  `desde` date NOT NULL default '2007-09-13',
  `hasta` date NOT NULL default '2007-09-23',
  PRIMARY KEY  (`codtacr`)
) TYPE=MyISAM;

--
-- Dumping data for table `tipacr`
--

/*!40000 ALTER TABLE `tipacr` DISABLE KEYS */;
INSERT INTO `tipacr` (`codtacr`,`descrip`,`codcateg`,`desde`,`hasta`) VALUES 
 (1,'Patocinante VIP',1,'2007-09-13','2007-09-23'),
 (2,'Concesionario',1,'2007-09-13','2007-09-23'),
 (3,'Ayudante Concesionario',1,'2007-09-13','2007-09-23'),
 (4,'Supervisor Concesionario',1,'2007-09-13','2007-09-23'),
 (5,'Promotor',1,'2007-09-13','2007-09-23'),
 (6,'Comision Agropecuaria',2,'2007-09-13','2007-09-23'),
 (7,'Logistica Agropecuaria',2,'2007-09-13','2007-09-23'),
 (9,'Exp Caprino',2,'2007-09-13','2007-09-23'),
 (10,'Exp Western',2,'2007-09-13','2007-09-23'),
 (11,'Exp Rodeo',2,'2007-09-13','2007-09-23'),
 (12,'Exp Canino',2,'2007-09-13','2007-09-23'),
 (13,'Exp Caballo/Paso',2,'2007-09-13','2007-09-23'),
 (14,'Jurado Exposicion',2,'2007-09-13','2007-09-23'),
 (15,'Exp Artesanal',3,'2007-09-13','2007-09-23'),
 (16,'Exp Agropecuario',3,'2007-09-13','2007-09-23'),
 (17,'Exp Comercial',3,'2007-09-13','2007-09-23'),
 (18,'Exp Industrial',3,'2007-09-13','2007-09-23'),
 (19,'Exp Institucional',3,'2007-09-13','2007-09-23'),
 (21,'Director FUNFETUR',4,'2007-09-13','2007-09-23');
INSERT INTO `tipacr` (`codtacr`,`descrip`,`codcateg`,`desde`,`hasta`) VALUES 
 (22,'Empleado FUNFETUR',4,'2007-09-13','2007-09-23'),
 (23,'Gabinete Mcpal',4,'2007-09-13','2007-09-23'),
 (25,'Personal de Control',4,'2007-09-13','2007-09-23'),
 (26,'Organizador',5,'2007-09-13','2007-09-23'),
 (27,'Logistica',5,'2007-09-13','2007-09-23'),
 (28,'Mantenimiento',5,'2007-09-13','2007-09-23'),
 (29,'Seguridad',5,'2007-09-13','2007-09-23'),
 (30,'Asistencia Medica',5,'2007-09-13','2007-09-23'),
 (31,'Produccion Artistica',5,'2007-09-13','2007-09-23'),
 (32,'Personalidad',6,'2007-09-13','2007-09-23'),
 (33,'VIP',6,'2007-09-13','2007-09-23'),
 (34,'Honorario',6,'2007-09-13','2007-09-23'),
 (35,'Prensa',6,'2007-09-13','2007-09-23'),
 (36,'Apoyo Personalidades',6,'2007-09-13','2007-09-23');
/*!40000 ALTER TABLE `tipacr` ENABLE KEYS */;


--
-- Definition of table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
CREATE TABLE `transacciones` (
  `nrocontrato` varchar(15) NOT NULL default '',
  `codstatus` int(10) unsigned NOT NULL default '0',
  `nrocheque` varchar(25) NOT NULL default '',
  `banco` varchar(45) NOT NULL default '',
  `fecha` date NOT NULL default '0000-00-00',
  `monto` double NOT NULL default '0',
  PRIMARY KEY  (`nrocheque`)
) TYPE=MyISAM;

--
-- Dumping data for table `transacciones`
--

/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` (`nrocontrato`,`codstatus`,`nrocheque`,`banco`,`fecha`,`monto`) VALUES 
 ('FB070001',1,'123456789','Central','2007-08-15',2500000),
 ('FB070002',1,'258965','Central','2007-08-15',2000000),
 ('FB070003',3,'144','Canarias','2007-08-16',4905000),
 ('FB070004',3,'259873','Canarias','2007-08-16',4905000),
 ('FB070005',3,'a123','Central','2007-08-16',4905000),
 ('FB070006',3,'159874','Central','2007-08-16',9810000),
 ('FB070007',1,'125897','Central','2007-08-16',4000000),
 ('FB070008',1,'474','Central','2007-08-16',2000000),
 ('FB070009',1,'swe','Canarias','2007-08-16',2000000),
 ('FB070010',1,'dsd','Canarias','2007-08-16',2000000),
 ('FB070008',2,'8','Canarias','2007-08-17',200),
 ('FB070008',2,'9','Canarias','2007-08-17',400),
 ('FB070008',2,'wer','Canarias','2007-08-17',100),
 ('FB070008',2,'10','Canarias','2007-08-17',10),
 ('FB070015',3,'5031','RET. IVA - ISLR','2007-08-17',293750),
 ('FB070033',2,'30626891','CENTRAL','2007-08-18',108000),
 ('FB070011',1,'255/555','Canarias','2007-08-18',3500000),
 ('FB070011',2,'34234234','234234','2007-08-18',234234);
INSERT INTO `transacciones` (`nrocontrato`,`codstatus`,`nrocheque`,`banco`,`fecha`,`monto`) VALUES 
 ('FB070011',2,'67890','dsafd','2007-08-18',100000),
 ('FB070012',1,'','','2007-08-18',0),
 ('FB070013',1,'4','b','2007-08-18',2),
 ('FB070014',1,'159','Central','2007-08-18',19),
 ('FB070015',1,'1','Central','2007-08-18',12000000),
 ('FB070018',3,'258','Central','2007-08-18',5886000),
 ('FB070019',3,'1481','Central','2007-08-18',12262500),
 ('FB070020',3,'2','Central','2007-08-18',12262500),
 ('FB070014',2,'25','Central','2007-08-18',2),
 ('FB070021',1,'1458','Central','2007-08-19',26000000);
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;


--
-- Definition of table `tusuario`
--

DROP TABLE IF EXISTS `tusuario`;
CREATE TABLE `tusuario` (
  `codigo` int(10) unsigned NOT NULL default '0',
  `descripcion` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`codigo`)
) TYPE=MyISAM;

--
-- Dumping data for table `tusuario`
--

/*!40000 ALTER TABLE `tusuario` DISABLE KEYS */;
INSERT INTO `tusuario` (`codigo`,`descripcion`) VALUES 
 (1,'Usuario Administrador General'),
 (2,'Usuario Administrador Acreditacion'),
 (3,'Usuario Acreditador'),
 (4,'Usuario Administrador Abonos'),
 (5,'Usuario Venta de Abonos'),
 (6,'Usuario Administrador Comercializacion'),
 (7,'Usuario Comercializacion'),
 (10,'Usuario Internet de Acreditacion');
/*!40000 ALTER TABLE `tusuario` ENABLE KEYS */;


--
-- Definition of table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
CREATE TABLE `ubicacion` (
  `codubi` int(10) unsigned NOT NULL default '0',
  `descrip` varchar(45) NOT NULL default '',
  `cant` int(11) NOT NULL default '0',
  `metros` double NOT NULL default '0',
  `costo` double NOT NULL default '0',
  `preventa` double NOT NULL default '0',
  `fechainicio` date NOT NULL default '0000-00-00',
  `fechafin` date NOT NULL default '0000-00-00',
  `nroacredi` int(10) unsigned default NULL,
  `maxacred` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`codubi`)
) TYPE=MyISAM;

--
-- Dumping data for table `ubicacion`
--

/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
INSERT INTO `ubicacion` (`codubi`,`descrip`,`cant`,`metros`,`costo`,`preventa`,`fechainicio`,`fechafin`,`nroacredi`,`maxacred`) VALUES 
 (1,'Barquisimeto Arena AI-AE',38,7.5,5886000,4905000,'2007-08-01','2007-08-17',3,3),
 (2,'Barquisimeto Arena  AI-AI',19,25,12262500,9810000,'2007-08-01','2007-08-17',5,2),
 (3,'Barquisimeto Arena AI-SE',2,127,35000000,35000000,'2007-08-01','2007-08-17',0,2),
 (4,'Barquisimeto Arena AS- PA',68,6,2943000,2354400,'2007-08-01','2007-08-17',2,2),
 (5,'Areas Externas AE',6,100,27250000,21800000,'2007-08-01','2007-08-17',10,2),
 (6,'Pabellon Lara PL-1',94,8.6,4360000,3815000,'2007-08-01','2007-08-17',2,2),
 (7,'Pabellon Lara PL-SE',2,18,4905000,5886000,'2007-08-01','2007-08-17',3,2),
 (8,'Cubiro CB',37,7.2,3270000,2725000,'2007-08-01','2007-08-17',2,2),
 (9,'Rio Claro RC',37,7.2,3270000,2725000,'2007-08-01','2007-08-17',2,2),
 (10,'Pabellon Artesanal PA',40,6,1635000,1308000,'2007-08-01','2007-08-17',2,2);
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
