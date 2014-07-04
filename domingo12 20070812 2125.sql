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
-- Create schema feria
--

CREATE DATABASE IF NOT EXISTS feria;
USE feria;

--
-- Definition of table `abono`
--

DROP TABLE IF EXISTS `abono`;
CREATE TABLE `abono` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `rif` varchar(15) NOT NULL default '',
  `nombre` varchar(45) NOT NULL default '',
  `direccion` varchar(45) NOT NULL default '',
  `telf` varchar(45) default NULL,
  `fecha` date NOT NULL default '0000-00-00',
  `cant` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

--
-- Dumping data for table `abono`
--

/*!40000 ALTER TABLE `abono` DISABLE KEYS */;
/*!40000 ALTER TABLE `abono` ENABLE KEYS */;


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
/*!40000 ALTER TABLE `anno` ENABLE KEYS */;


--
-- Definition of table `cantacredita`
--

DROP TABLE IF EXISTS `cantacredita`;
CREATE TABLE `cantacredita` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nrocontrato` varchar(10) NOT NULL default '',
  `codcate` int(10) unsigned NOT NULL default '0',
  `tipoacre` int(10) unsigned NOT NULL default '0',
  `cant` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

--
-- Dumping data for table `cantacredita`
--

/*!40000 ALTER TABLE `cantacredita` DISABLE KEYS */;
INSERT INTO `cantacredita` (`id`,`nrocontrato`,`codcate`,`tipoacre`,`cant`) VALUES 
 (4,'FB070008',1,2,2),
 (5,'FB070008',1,2,2),
 (6,'FB070010',2,6,2),
 (7,'FB070010',2,8,2),
 (8,'FB070012',1,1,2),
 (9,'FB070012',1,1,2),
 (10,'FB070022',2,6,2),
 (11,'FB070022',2,6,2);
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
  PRIMARY KEY  (`numero`)
) TYPE=MyISAM;

--
-- Dumping data for table `contrato`
--

/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` (`rif`,`numero`,`fecha`,`productos`,`stand`,`total`,`resta`,`Statu`,`ramo`,`totalacred`,`maxacred`) VALUES 
 ('V15960266','FB070001','2007-08-09','ropa intima femenina y masculina','PB-AI02',9000000,9000000,'1','Comercializacion',0,0),
 ('V15960266','FB070002','2007-08-09','ropa intima femenina y masculina','PB-AE01',4000000,0,'3','Comercializacion',0,0),
 ('V15960266','FB070003','2007-08-09','roaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','PB-AE05',4000000,1000000,'1','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',0,0),
 ('V15960266','FB070004','2007-08-09','qwww','PB-AE06',4000000,1000000,'2','weee',0,0),
 ('V15960266','FB070005','2007-08-09','13','PB-AE09',4000000,9390,'2','12',0,0),
 ('G20000207-7','FB070006','2007-08-10','ropa intima femenina y masculina','PB-AE01,PB-AE03',8000000,4000000,'1','Comercializacion',0,0),
 ('V15960266','FB070007','2007-08-10','Ropa Intima Colombiana','AI-AE163,AI-AE164',8000000,6000000,'1','Ropa',0,0),
 ('V15960266','FB070008','2007-08-10','carros','AI-AE165,AI-AE166,AI-AE167',12000000,1000000,'1','carros',15,6),
 ('V15960266','FB070009','2007-08-11','casas','AI-AE168,AI-AE169,AI-AE170',12000000,11000000,'1','casas',15,9);
INSERT INTO `contrato` (`rif`,`numero`,`fecha`,`productos`,`stand`,`total`,`resta`,`Statu`,`ramo`,`totalacred`,`maxacred`) VALUES 
 ('V15960266','FB070010','2007-08-11','s','AI-AE171,AI-AE175',8000000,6000000,'1','s',10,6),
 ('V15960266','FB070011','2007-08-11','d','AI-AE172,AI-AE173,AI-AE174',12000000,10000000,'1','d',15,9),
 ('V15960266','FB070012','2007-08-11','d','AI-AE176,AI-AE177,AI-AE178',12000000,-1000000,'','d',15,9),
 ('V15960266','FB070013','2007-08-11','s','AI-AE179,AI-AE180,AI-AE181',12000000,10800000,'1','d',15,9),
 ('V15960266','FB070014','2007-08-11','dd','AI-AE182,AI-AE183,AI-AE184',12000000,11999996,'1','dd',15,9),
 ('V15960266','FB070015','2007-08-11','df','AI-AE185,AI-AE186,AI-AE187',12000000,1000000,'1','ff',15,9),
 ('V15960266','FB070016','2007-08-11','f','AI-AE189,AI-AE190,AI-AE191',12000000,10000000,'1','f',15,9),
 ('V15960266','FB070017','2007-08-11','f','AI-AE188,AI-AE192,AI-AE193',12000000,-1000000,'','g',15,9),
 ('V15960266','FB070018','2007-08-11','d','AI-AE194,AI-AE195,AI-AE196,AI-AE197',16000000,4000000,'1','d',20,12),
 ('V15960266','FB070019','2007-08-11','d','AI-AE198,AI-AE199',8000000,6000000,'1','d',10,6);
INSERT INTO `contrato` (`rif`,`numero`,`fecha`,`productos`,`stand`,`total`,`resta`,`Statu`,`ramo`,`totalacred`,`maxacred`) VALUES 
 ('V15960266','FB070020','2007-08-11','w','AI-AE200,AI-AE201,AI-AE202',12000000,11000000,'1','e',15,9),
 ('V15960266','FB070021','2007-08-12','fg','AI-AE203,AI-AE204,AI-AE205',12000000,10000000,'2','gf',15,9),
 ('V15960266','FB070022','2007-08-12','t','AI-AE206,AI-AE207,AI-AE208',12000000,2000000,'1','t',15,9),
 ('V15960266','FB070023','2007-08-12','F','AI-AE209,AI-AE210,AI-AE211',12000000,10000000,'1','F',15,9),
 ('V15960266','FB070024','2007-08-12','sasa','AI-AE212,AI-AE213,AI-AE214',12000000,-3000000,'','sas',15,9),
 ('V15960266','FB070025','2007-08-12','fdfdf','AI-AE215,AI-AE216,AI-AE217',12000000,-147000000,'','f',15,9);
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
  PRIMARY KEY  (`rif`)
) TYPE=MyISAM;

--
-- Dumping data for table `empresa`
--

/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` (`rif`,`nombre`,`direccion`,`telf`,`replegal`,`cedrepre`,`statu`,`regismercan`,`fecharegis`,`nrotomo`,`cargo`) VALUES 
 ('V15960266','Ambar Mendoza','Calle 24 con av. ribereña final cuesta lara casa s/n','02512312560,04161505335',NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL),
 ('G20000207-7','Alcaldia de Iribarren','Calle 25 con carrera 17 y 18','02517101820','Alcalde','15300222','registro','021','1963-01-04','0215','Alcalde'),
 ('V14878735','Gerardo','Figueroa','123456',NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL);
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
 ('amendoza','147',6,'Ambar Mendoza','G20000207-7'),
 ('gfigueroa','123456',6,'Lestat de Lioncourt','G20000207-7'),
 ('jtorres','123456',6,'Lic. Jenny Torres',''),
 ('ggil','123456',6,'Lic. Gisela Gil',''),
 ('eperez','123456',6,'Lic. Erick Perez',''),
 ('ediaz','123456',7,'Lic. Erika Diaz',''),
 ('acolmenarez','123456',4,'Abog. Angel Colmenarez','');
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
 ('AI-AE01','Activo','1',0),
 ('AI-AE03','Activo','1',0),
 ('AI-AE05','Activo','1',0),
 ('AI-AE06','Activo','1',0),
 ('AI-AE08','Activo','1',0),
 ('AI-AE09','Activo','1',0),
 ('AI-AE11','Activo','1',0),
 ('AI-AE13','Activo','1',0),
 ('AI-AE14','Activo','1',0),
 ('AI-AE16','Activo','1',0),
 ('AI-AE17','Activo','1',0),
 ('AI-AE19','Activo','1',0),
 ('AI-AE20','Activo','1',0),
 ('AI-AE24','Activo','1',0),
 ('AI-AE25','Activo','1',0),
 ('AI-AE26','Activo','1',0),
 ('AI-AE27','Activo','1',0),
 ('AI-AE28','Activo','1',0),
 ('AI-AE29','Activo','1',0),
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
 ('AI-AI04','Activo','2',0),
 ('AI-AI02','Activo','2',0),
 ('AI-AI07','Activo','2',0),
 ('AI-AI10','Activo','2',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('AI-AI12','Activo','2',0),
 ('AI-AI15','Activo','2',0),
 ('AI-AI18','Activo','2',0),
 ('AI-AI21','Activo','2',0),
 ('AI-AI22','Activo','2',0),
 ('AI-AI23','Activo','2',0),
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
 ('PA163','Activo','4',0),
 ('PA164','Activo','4',0),
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
 ('PA178','Activo','4',0),
 ('PA179','Activo','4',0),
 ('PA180','Activo','4',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
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
 ('PA214','Activo','4',0),
 ('PA215','Activo','4',0),
 ('PA216','Activo','4',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
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
 ('AE01','Activo','5',0),
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
 ('PL-113','Activo','6',0),
 ('PL-114','Activo','6',0),
 ('PL-115','Activo','6',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
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
 ('PL-148','Activo','6',0),
 ('PL-149','Activo','6',0),
 ('PL-150','Activo','6',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
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
 ('PL-183','Activo','6',0),
 ('PL-184','Activo','6',0),
 ('PL-185','Activo','6',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
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
 ('CB01','Activo','8',0),
 ('CB02','Activo','8',0),
 ('CB03','Activo','8',0),
 ('CB04','Activo','8',0),
 ('CB05','Activo','8',0),
 ('CB06','Activo','8',0),
 ('CB07','Activo','8',0),
 ('CB08','Activo','8',0),
 ('CB09','Activo','8',0),
 ('CB10','Activo','8',0),
 ('CB11','Activo','8',0),
 ('CB12','Activo','8',0),
 ('CB13','Activo','8',0),
 ('CB14','Activo','8',0),
 ('CB15','Activo','8',0),
 ('CB16','Activo','8',0),
 ('CB17','Activo','8',0),
 ('CB18','Activo','8',0),
 ('CB19','Activo','8',0),
 ('CB20','Activo','8',0),
 ('CB21','Activo','8',0),
 ('CB22','Activo','8',0),
 ('CB23','Activo','8',0),
 ('CB24','Activo','8',0),
 ('CB25','Activo','8',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('CB26','Activo','8',0),
 ('CB27','Activo','8',0),
 ('CB28','Activo','8',0),
 ('CB29','Activo','8',0),
 ('CB30','Activo','8',0),
 ('CB31','Activo','8',0),
 ('CB32','Activo','8',0),
 ('CB33','Activo','8',0),
 ('CB34','Activo','8',0),
 ('CB35','Activo','8',0),
 ('CB36','Activo','8',0),
 ('CB37','Activo','8',0),
 ('RC01','Activo','9',0),
 ('RC02','Activo','9',0),
 ('RC03','Activo','9',0),
 ('RC04','Activo','9',0),
 ('RC05','Activo','9',0),
 ('RC06','Activo','9',0),
 ('RC07','Activo','9',0),
 ('RC08','Activo','9',0),
 ('RC09','Activo','9',0),
 ('RC10','Activo','9',0),
 ('RC11','Activo','9',0),
 ('RC12','Activo','9',0),
 ('RC13','Activo','9',0),
 ('RC14','Activo','9',0),
 ('RC15','Activo','9',0),
 ('RC16','Activo','9',0),
 ('RC17','Activo','9',0),
 ('RC18','Activo','9',0),
 ('RC19','Activo','9',0),
 ('RC20','Activo','9',0),
 ('RC21','Activo','9',0),
 ('RC22','Activo','9',0),
 ('RC23','Activo','9',0),
 ('RC24','Activo','9',0),
 ('RC25','Activo','9',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
 ('RC26','Activo','9',0),
 ('RC27','Activo','9',0),
 ('RC28','Activo','9',0),
 ('RC29','Activo','9',0),
 ('RC30','Activo','9',0),
 ('RC31','Activo','9',0),
 ('RC32','Activo','9',0),
 ('RC33','Activo','9',0),
 ('RC34','Activo','9',0),
 ('RC35','Activo','9',0),
 ('RC36','Activo','9',0),
 ('RC37','Activo','9',0),
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
 ('PA18','Activo','10',0),
 ('PA19','Activo','10',0),
 ('PA20','Activo','10',0),
 ('PA21','Activo','10',0),
 ('PA22','Activo','10',0),
 ('PA23','Activo','10',0),
 ('PA24','Activo','10',0);
INSERT INTO `stand` (`codstand`,`status`,`codubi`,`costo`) VALUES 
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
  PRIMARY KEY  (`codtacr`)
) TYPE=MyISAM;

--
-- Dumping data for table `tipacr`
--

/*!40000 ALTER TABLE `tipacr` DISABLE KEYS */;
INSERT INTO `tipacr` (`codtacr`,`descrip`,`codcateg`) VALUES 
 (1,'Patocinante VIP',1),
 (2,'Concesionario',1),
 (3,'Ayudante Concesionario',1),
 (4,'Supervisor Concesionario',1),
 (5,'Promotor',1),
 (6,'Comision Agropecuaria',2),
 (7,'Logistica Agropecuaria',2),
 (8,'Exp Ganadero',2),
 (9,'Exp Caprino',2),
 (10,'Exp Western',2),
 (11,'Exp Rodeo',2),
 (12,'Exp Canino',2),
 (13,'Exp Caballo/Paso',2),
 (14,'Jurado Exposicion',2),
 (15,'Exp Artesanal',3),
 (16,'Exp Agropecuario',3),
 (17,'Exp Comercial',3),
 (18,'Exp Industrial',3),
 (19,'Exp Institucional',3),
 (20,'Exp Ambulante',3),
 (21,'Director FUNFETUR',4),
 (22,'Empleado FUNFETUR',4),
 (23,'Gabinete Mcpal',4),
 (24,'Empleado Mcpal',4),
 (25,'Personal de Control',4),
 (26,'Organizador',5),
 (27,'Logistica',5),
 (28,'Mantenimiento',5),
 (29,'Seguridad',5),
 (30,'Asistencia Medica',5),
 (31,'Produccion Artistica',5),
 (32,'Personalidad',6),
 (33,'VIP',6),
 (34,'Honorario',6),
 (35,'Prensa',6),
 (36,'Apoyo Personalidades',6);
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
 ('FB070002',1,'147','Provincial','2007-08-09',3000000),
 ('FB070002',3,'14569','Mercantil','2007-08-09',1000000),
 ('FB070004',1,'1236987','Provincial','2007-08-09',2000000),
 ('FB070004',2,'1239','Provincial','2007-08-09',1000000),
 ('FB070005',1,'1458','Canarias','2007-08-09',2000000),
 ('FB070005',2,'25896547','Casa propia','2007-08-09',1000000),
 ('FB070005',2,'1258','b','2007-08-09',500),
 ('FB070005',2,'1472583654','Canarias','2007-08-09',900000),
 ('FB070005',2,'2365','Canarias','2007-08-09',90000),
 ('FB070005',2,'3258','Mercantil','2007-08-09',90),
 ('FB070005',2,'1478','Mercantil','2007-08-09',20),
 ('FB070006',1,'123-456-78910','Central','2007-08-10',4000000),
 ('FB070007',1,'123456-987','Canarias','2007-08-10',2000000),
 ('FB070008',1,'23','p','2007-08-10',11000000),
 ('FB070009',1,'s','s','2007-08-11',1000000),
 ('FB070010',1,'d','d','2007-08-11',2000000),
 ('FB070012',0,'120','f','2007-08-11',13000000),
 ('FB070014',1,'f','ff4','2007-08-11',4);
INSERT INTO `transacciones` (`nrocontrato`,`codstatus`,`nrocheque`,`banco`,`fecha`,`monto`) VALUES 
 ('FB070015',1,'fdf','fdf','2007-08-11',11000000),
 ('FB070017',0,'gg','g','2007-08-11',13000000),
 ('FB070018',1,'dd','dd','2007-08-11',12000000),
 ('FB070020',1,'df','ff','2007-08-11',1000000),
 ('FB070021',1,'we','','2007-08-12',0),
 ('FB070021',2,'152','sdsd','2007-08-12',2000000),
 ('FB070022',1,'258','Mercantil','2007-08-12',10000000),
 ('FB070023',1,'ssdsd','dsds','2007-08-12',2000000),
 ('FB070024',0,'sssss','sss','2007-08-12',15000000),
 ('FB070025',0,'ff','fff','2007-08-12',159000000);
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
 (1,'Barquisimeto Arena AI-AE',15,7.5,4500000,4000000,'2007-08-01','2007-08-17',5,3),
 (2,'Barquisimeto Arena  AI-AI',19,25,9000000,8000000,'2007-08-01','2007-08-17',3,2),
 (3,'Barquisimeto Arena AI-SE',2,127,35000000,35000000,'2007-08-01','2007-08-17',0,2),
 (4,'Barquisimeto Arena AS- PA',68,6,3000000,3000000,'2007-08-01','2007-08-17',2,2),
 (5,'Areas Externas AE',6,100,20000000,20000000,'2007-08-01','2007-08-17',2,2),
 (6,'Pabellon Lara PL-1',94,6,2100000,0,'2007-08-01','2007-08-17',2,2),
 (7,'Pabellon Lara PL-SE',2,18,4500000,2100000,'2007-08-01','2007-08-17',2,2),
 (8,'Cubiro CB',37,7.2,2500000,2500000,'2007-08-01','2007-08-17',3,2),
 (9,'Rio Claro RC',37,7.2,2500000,2500000,'2007-08-01','2007-08-17',5,2),
 (10,'Pabellon Artesanal PA',40,6,1200000,1200000,'2007-08-01','2007-08-17',0,2);
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
