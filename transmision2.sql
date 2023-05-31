/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.28-MariaDB : Database - transmision
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`transmision` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `transmision`;

/*Table structure for table `archivos` */

DROP TABLE IF EXISTS `archivos`;

CREATE TABLE `archivos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_archivo` varchar(240) DEFAULT NULL,
  `folder` varchar(240) DEFAULT NULL,
  `equipo_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `archivos` */

insert  into `archivos`(`id`,`nombre_archivo`,`folder`,`equipo_id`) values (1,'PCYM NIZ 73480','PDF',NULL),(2,'PCYM TIN 73C60','PDF',NULL),(3,'PCYM TIN 73C80','PDF',NULL),(4,'PCYM TIN 87B 115KV_1','PDF',NULL),(5,'PCYM TIN 87B 115KV_2','PDF',NULL),(6,'PCYM TIN 73480','PDF',NULL),(7,'PCYM TIN 77000_1','PDF',NULL),(8,'PCYM TIN ESMAR','PDF',NULL),(9,'PCYM TIN MMF','PDF',NULL);

/*Table structure for table `caracteristicas_de_equipos` */

DROP TABLE IF EXISTS `caracteristicas_de_equipos`;

CREATE TABLE `caracteristicas_de_equipos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `equipo_id` int(10) DEFAULT NULL,
  `caracteristica_id` int(10) DEFAULT NULL,
  `valor` longtext DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `caracteristicas_de_equipos` */

insert  into `caracteristicas_de_equipos`(`id`,`equipo_id`,`caracteristica_id`,`valor`) values (1,34,1,'192.168.1.256'),(2,103,2,'HIM 7000'),(3,34,2,'HIM 7000'),(4,103,1,'192.168.1.256');

/*Table structure for table `departamento` */

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `departamento` */

/*Table structure for table `equipos` */

DROP TABLE IF EXISTS `equipos`;

CREATE TABLE `equipos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `tipoEquipo` int(10) DEFAULT NULL,
  `modeloEquipo` int(10) DEFAULT NULL,
  `marca` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tipoEquipo` (`tipoEquipo`),
  KEY `modeloEquipo` (`modeloEquipo`),
  KEY `marca` (`marca`),
  CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`tipoEquipo`) REFERENCES `tipo_equipo` (`id`),
  CONSTRAINT `equipos_ibfk_2` FOREIGN KEY (`modeloEquipo`) REFERENCES `modelo_equipo` (`id`),
  CONSTRAINT `equipos_ibfk_3` FOREIGN KEY (`marca`) REFERENCES `marcas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `equipos` */

insert  into `equipos`(`id`,`nombre`,`tipoEquipo`,`modeloEquipo`,`marca`) values (0,'OPLAT',4,6,1),(1,'Organizador ',18,20,5),(2,'Teleprot Analogica',6,7,1),(12,'Teleprot Digital',7,22,1),(16,'NODO',29,23,3),(17,'DISTRIBUIDOR DE CARGAS',30,24,2),(18,'ORGANIZADOR HOR 19\"',31,25,2),(19,'TERMOSTATO',NULL,NULL,NULL),(20,'PATCH PANEL TELEFÓNICO',37,31,NULL),(21,'ORG PANEL 1UR',38,37,NULL),(22,'ORG PANEL 2UR',39,41,NULL),(23,'PATCH PANEL 24PTS RJ45 ',41,42,NULL),(24,'ROUTER',2,1,4),(25,'SWITCH CISCO',3,3,4),(26,'PATCH PANEL 24PTS RJ45 OP',41,43,6),(27,'ODF 48-SC',1,44,7),(28,'ORGANIZADOR 1UR FMT',42,45,8),(29,'ODF 24-LC',43,46,8),(30,'SWITCH GE',3,17,1),(31,'PP1',3,8,1),(32,'PP2',9,9,1),(36,'UCB',10,10,1),(37,'MM',12,11,10),(38,'MCAD',44,47,1),(39,'PBF',23,8,1),(40,'PB',22,12,1),(41,'SWICT SERL',3,14,9),(42,'GPS',17,15,1),(43,'MONITOR IHM',45,48,21),(44,'TECLADO',46,49,22),(45,'CPU ',47,50,23),(46,'FIREWALL',48,51,24),(47,'RELEVADOR RTAC',22,14,9),(48,'MONITOR IHM',45,52,25),(49,'GATEWAY',49,53,1),(50,'RD',28,13,26),(51,'PMU',27,16,9),(52,'MEDIDORES',12,11,10),(53,'CARGADOR DE BAT 130 VCD',16,18,2),(54,'CARGADOR DE BAT 48 VCD',16,19,2),(55,'CARGADOR DE BAT 12 VCD ',16,54,2);

/*Table structure for table `gabinetes` */

DROP TABLE IF EXISTS `gabinetes`;

CREATE TABLE `gabinetes` (
  `id` int(10) DEFAULT NULL,
  `subestacion` int(10) DEFAULT NULL,
  `etiqueta` varchar(3) DEFAULT NULL,
  `archivo` tinyint(1) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `gabinetes` */

insert  into `gabinetes`(`id`,`subestacion`,`etiqueta`,`archivo`) values (1,1,'100',NULL),(2,1,'A2',NULL),(3,1,'A3',NULL),(4,1,'A4',NULL),(5,1,'A5',NULL),(29,1,'A29',NULL),(7,1,'A7',NULL),(30,1,'A30',NULL),(31,1,'A31',NULL),(33,1,'A33',NULL),(34,1,'B1',NULL),(35,1,'B2',NULL),(36,1,'B3',NULL),(37,1,'B4',NULL),(38,1,'B5',NULL),(39,1,'B6',NULL),(39,1,'B6',NULL),(39,1,'B6',NULL),(42,1,'B9',NULL),(42,1,'B9',NULL),(44,1,'B11',NULL),(53,1,'B16',NULL),(56,1,'C1',NULL),(57,1,'C2',NULL),(58,1,'C3',NULL),(59,1,'C4',NULL),(60,1,'C5',NULL),(61,1,'C6',NULL),(62,1,'C7',NULL),(63,1,'C8',NULL),(64,1,'C9',NULL),(65,1,'C10',NULL),(66,1,'C11',NULL),(67,1,'C12',NULL),(68,1,'C13',NULL),(69,1,'C14',NULL),(70,1,'C15',NULL),(71,1,'C16',NULL),(72,1,'C17',NULL),(73,1,'C18',NULL),(74,1,'C19',NULL),(75,1,'C20',NULL),(76,1,'C21',NULL),(77,1,'C22',NULL),(78,1,'C23',NULL),(79,1,'C24',NULL),(100,2,'A1',0),(101,2,'A2',2),(102,2,'A3',3),(103,2,'A4',1),(104,2,'A5',7),(105,2,'A6',6),(106,2,'A7',5),(107,2,'A8',8),(108,2,'A9',4),(109,2,'A10',9),(110,2,'B1',NULL),(111,2,'B2',NULL),(112,2,'B3',NULL),(113,2,'B4',NULL),(114,2,'B5',NULL),(115,2,'B6',NULL),(116,2,'B7',NULL),(117,2,'B8',NULL),(118,2,'B9',NULL),(119,2,'B10',NULL),(120,2,'B11',NULL),(121,2,'B12',NULL),(122,2,'B13',NULL),(123,2,'C1',NULL),(124,2,'C2',NULL),(125,2,'C3',NULL),(126,2,'C4',NULL),(127,2,'C5',NULL),(128,2,'C6',NULL),(129,2,'C7',NULL),(130,2,'C8',NULL),(131,2,'C9',NULL),(132,2,'C10',NULL),(133,2,'C11',NULL),(134,2,'C12',NULL),(135,2,'C13',NULL),(136,2,'C14',NULL),(137,2,'D1',NULL),(138,2,'D2',NULL),(139,2,'D3',NULL),(140,2,'D4',NULL),(141,2,'D5',NULL),(142,2,'D12',NULL),(143,2,'D13',NULL),(144,2,'D14',NULL),(145,2,'D15',NULL);

/*Table structure for table `lista_de_equipos` */

DROP TABLE IF EXISTS `lista_de_equipos`;

CREATE TABLE `lista_de_equipos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `equipo` int(10) DEFAULT NULL,
  `etiquetaTablero` varchar(260) DEFAULT NULL,
  `numeroR3` int(10) DEFAULT NULL,
  `serialNumber` varchar(20) NOT NULL,
  `gabinete` int(10) DEFAULT NULL,
  `posicionRackStart` int(10) DEFAULT NULL,
  `posicionRackEnd` int(10) DEFAULT NULL,
  `puertos_especificos` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`,`serialNumber`),
  KEY `equipo` (`equipo`),
  KEY `gabinete` (`gabinete`),
  CONSTRAINT `lista_de_equipos_ibfk_1` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`id`),
  CONSTRAINT `lista_de_equipos_ibfk_2` FOREIGN KEY (`gabinete`) REFERENCES `gabinetes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `lista_de_equipos` */

insert  into `lista_de_equipos`(`id`,`nombre`,`equipo`,`etiquetaTablero`,`numeroR3`,`serialNumber`,`gabinete`,`posicionRackStart`,`posicionRackEnd`,`puertos_especificos`) values (1,'OPLAT TIN-CEX',0,'OPLAT TIN-CEX',NULL,'',111,37,33,0),(2,'Teleprot AN TIN-CEX',2,'Teleprot AN TIN-CEX',NULL,'FR-LUD6120350006',111,29,26,0),(3,'ORGANIZADOR 1UR',1,'ORG HOR 1UR',NULL,'',111,23,23,0),(4,'OPLAT TIN-NIZ',0,'OPLAT TIN-NIZ',NULL,'',112,37,33,0),(9,'ORGANIZADOR 1UR',1,'ORG HOR 1UR',NULL,'',112,31,31,0),(10,'Teleprot AN TIN-NIZ',2,'Teleprot AN TIN-NIZ',NULL,'FR-LUD612035003',112,29,26,0),(11,'ORGANIZADOR 1UR',1,'ORG HOR 1UR',NULL,'',112,23,23,0),(12,'Teleprot DI TIN-CEX',12,'Teleprot DI TIN-CEX',NULL,'FR-LUD6120420037',113,38,35,0),(13,'ORGANIZADOR 1UR',1,'ORG HOR 1UR',NULL,'',113,32,32,0),(14,'Teleprot DI TIN-NIZ',12,'Teleprot DI TIN-NIZ',NULL,'FR-LUD6120420035',113,30,27,0),(15,'ORGANIZADOR 1UR',1,'ORG HOR 1UR',NULL,'',113,25,25,0),(16,'DISTRIBUIDOR DE CARGAS',17,'PDA',NULL,'',114,35,33,0),(17,'NODO DE AGREGACIÓN',16,'XT2210A',NULL,'',114,30,28,0),(18,'ORG HOR 19\"',18,'OFO-3',NULL,'',114,1,1,0),(19,'TERMOSTARO',19,'T1 F100',NULL,'',114,26,26,0),(20,'PATCH PANEL TELEFÓNICO',20,'MDF',NULL,'',114,24,24,0),(21,'ORG PANEL 1UR',21,'OFO-1',NULL,'',114,11,11,0),(22,'ORG PANEL 2UR',22,'OFO-2',NULL,'',114,27,27,0),(24,'PATCH PANEL 24PTS RJ45',23,'ETH-1',NULL,'',114,8,7,0),(26,'ORG PANEL 1UR',21,'OFO-7',NULL,'',114,4,3,0),(27,'RT CISCO',24,'RT CISCO',NULL,'',115,33,32,0),(28,'ORGANIZADOR 1UR',1,'ORG HOR 1UR',NULL,'',115,30,30,0),(29,'SW CISCO',25,'SW CISCO',NULL,'',115,28,28,0),(30,'ORGANIZADOR 1UR',1,'ORG HOR 1UR',NULL,'',115,26,26,0),(31,'PATCH PANEL 24PTS RJ45',26,'PATCH PANEL 24PTS RJ45',NULL,'',115,24,24,0),(32,'ODF 48-SC',27,'ODF TIN-CEX',NULL,'',116,38,30,0),(33,'ORGANIZADOR FMT',28,'ORG FMT 1UR',NULL,'',116,28,28,0),(34,'ODF 48-SC',27,'ODF TIN-NIZ',NULL,'',116,26,18,1),(35,'ORGANIZADOR FMT',28,'ORG FMT 1UR',NULL,'',116,16,16,0),(36,'ODF 48-SC',27,'ODF SERVICE',NULL,'',117,38,30,0),(37,'ORGANIZADOR FMT',28,'ORG FMT 1UR',NULL,'',117,28,28,0),(38,'ODF 48-SC',27,'ODF SERVICE',NULL,'',117,26,28,0),(39,'ORGANIZADOR FMT',28,'ORG FMT 1UR',NULL,'',117,16,16,0),(41,'ODF 24-LC',29,'ODF 24-LC',NULL,'',117,14,14,0),(42,'ORGANIZADOR FMT',28,'ORG FMT 1UR',NULL,'',117,12,12,0),(43,'ODF 24-LC',29,'ODF 24-LC',NULL,'',117,10,10,0),(44,'ORGANIZADOR FMT',28,'ORG FMT 1UR',NULL,'',117,8,8,0),(46,'SW GE',30,'SW 11',NULL,'90045735',120,40,40,0),(47,'MCAD GE',38,'MCAD01',NULL,'36281757',120,16,20,0),(48,'MCAD GE',38,'MCAD02',NULL,'36281758',120,23,27,0),(49,'SW GE',30,'SW 12',NULL,'90045743',121,40,40,0),(50,'CCL ',43,'MONITOR',NULL,'',121,30,30,0),(51,'TECLADO',44,'TECLADO Y MOUSE',NULL,'81220051487',121,28,27,0),(52,'CPU ',45,'CPU',NULL,'TAHIE1014281',121,26,24,0),(53,'SW GE',30,'SW01',NULL,'90045642',122,40,39,0),(54,'SW GE',30,'SW02',NULL,'90045643',122,38,37,0),(55,'GPS GE',42,'GPS',NULL,'90046857',122,36,35,0),(56,'FIREWALL',46,'FW01',NULL,'',122,30,29,0),(57,'FIREWALL',46,'FW02',NULL,'',122,29,28,0),(58,'MONITOR',48,'MONITOR',NULL,'S2026070520153-1020-',122,26,22,0),(59,'GATEWAY',49,'GW01',NULL,'66718833',122,20,18,0),(60,'GATEWAY',49,'GW02',NULL,'66718802',122,16,14,0),(61,'SWICHT GENERAL ELECTRIC ',30,'SWO4',NULL,'900455744',100,40,40,0),(62,'PP1 73C70',31,'PP1 73C70',NULL,'32265565',100,37,35,0),(63,'PP2 73C70',32,'PP2 73C70',NULL,'1230557282',100,33,31,0),(64,'UCB 73C70',36,'UCB 73C70',NULL,'36281752',100,29,27,0),(65,'BPV1/ BPV2',0,'BPV1/BPV2',NULL,'',100,28,28,0),(66,'MEDIDOR 73C70',37,'MM73C70',NULL,'ELW065',100,27,23,0),(67,'BLOC DE PRUEBAS',0,'BP1-7',NULL,'',100,19,17,0),(68,'SWICHT GENERAL ELECTRIC ',30,'SWO3',NULL,'900455740',100,40,40,0),(69,'PP1 73C60',31,'PP1 73C60',NULL,'36265557',101,37,35,0),(70,'PP2 73060',32,'PP2 73C60',NULL,'1230587043',101,33,31,0),(71,'UCB 73C60',36,'USB 73C60',NULL,'36281754',101,29,27,0),(72,'BPV1/ BPV2',0,'BPV1/BPV2',NULL,'',101,28,28,0),(73,'MEDIDOR 73C60',37,'MM73C60',NULL,'ELW064',101,27,23,0),(74,'BLOC DE PRUEBAS',0,'BP1-7',NULL,'',101,19,17,0),(75,'SWICHT GENERAL ELECTRIC ',30,'SW',NULL,'900455745',102,40,40,0),(76,'PP1 73C80',31,'PP1 73C80',NULL,'36265558',102,37,35,0),(77,'PP2 73C80',32,'PP2 73C80',NULL,'1230557281',102,33,31,0),(78,'UCB 73C80',36,'USB 73C80',NULL,'36281750',102,29,27,0),(79,'BPV1/ BPV2',0,'BPV1/BPV2',NULL,'',102,28,28,0),(80,'MEDIDOR 73C80',37,'MM73C80',NULL,'ELW068',102,27,23,0),(81,'BLOC DE PRUEBAS',0,'BP1-7',NULL,'',102,19,17,0),(82,'SWICHT GENERAL ELECTRIC ',30,'SW06',NULL,'900455741',103,40,40,0),(83,'PP1 73480',31,'PP1 73480',NULL,'36265561',103,37,35,0),(84,'PP2 73480',32,'PP2 73480',NULL,'1230587042',103,33,31,0),(85,'UCB 73480',36,'USB 73480',NULL,'36281749',103,29,27,0),(86,'BPV1/ BPV2',0,'BPV1/BPV2',NULL,'',103,28,28,0),(87,'MEDIDOR 73C80',37,'MM73C80',NULL,'ELW070',103,27,23,0),(88,'BLOC DE PRUEBAS',0,'BP1-7',NULL,'',103,19,17,0),(89,'SWICHT GENERAL ELECTRIC ',30,'SWO7',NULL,'900455738',104,40,40,0),(90,'PBF 77000',39,'PBF 77000',NULL,'5392126887/10',104,34,31,0),(91,'UCB 77000',36,'UCB 77000',NULL,'36281753',104,28,28,0),(92,'SWICHT GENERAL ELECTRIC ',30,'SWO8',NULL,'900455736',107,40,40,0),(93,'PBA ',40,'PBA',NULL,'AA6C2300032',107,20,22,0),(94,'PBB',40,'PBB',NULL,'AA6C2300030',107,26,24,0),(95,'PBC',40,'PBC',NULL,'AA6C2300031',107,24,22,0),(96,'SWICHT GENERAL ELECTRIC ',30,'SWO8',NULL,'900455737',108,40,40,0),(97,'RELEVADOR RTAC EPL',47,'EPL',NULL,'11831760458',108,37,37,0),(98,'GPS',42,'GPS',NULL,'',108,35,35,0),(99,'RD',50,'RD',NULL,'22131-24',108,22,21,0),(100,'PMU',51,'PMU',NULL,'1230557247',108,28,24,0),(101,'ESMAR',51,'ESMAR',NULL,'1230587123',108,33,30,0),(102,'SWICHT GENERAL ELECTRIC ',30,'SWO9',NULL,'900455739',109,40,40,0),(103,'GPS',42,'GPS',NULL,'90045739',109,38,38,0),(104,'MEDIDOR MM 1',52,'MEDIDOR MM',NULL,'ELW061',109,34,32,0),(105,'MEDIDOR MM 2',52,'MEDIDOR MM',NULL,'ELW068',109,34,32,0),(106,'MEDIDOR MM 3',52,'MEDIDOR MM  ',NULL,'ELW069',109,32,30,0),(107,'MEDIDOR MM 4',52,'MEDIDOR MM',NULL,'ELW063',109,32,30,0),(108,'CARGADOR BAT 130 VCD',53,'125 VCD N-1',NULL,'B2209P100252',138,1,1,0),(109,'CARGADOR BAT 130 VCD ',53,'125 VCD N-2',NULL,'B2209P100253',139,1,1,0),(110,'CARGADOR BAT 130 VCD',53,'125 VCD N-3',NULL,'B2209P100254',137,1,1,0),(111,'CARGADOR BAT 48 VCD N-1',54,'48 VCD N-1',NULL,'B2209P100244',142,1,1,0),(112,'CARGADOR BAT 48 VCD N-2',54,'48 VCD N-2',NULL,'B2209P100245',143,1,1,0),(113,'CARGADOR BAT 48 VCD N-3',54,'48 VCD N-3',NULL,'B2209P100246',144,1,1,0),(114,'CARGADOR BAT 12 VCD N-1',55,'EQ VCD 12',NULL,'C2209P100317',145,1,1,0),(115,'CARGADOR BAT 12 VCD N-2',55,'EQ VCD 12',NULL,'B2209P100240',145,2,2,0),(116,'CARGADOR BAT 12 VCD N-3 ',55,'EQ VCD 12',NULL,'B2209P100239',145,3,3,0),(117,'ORGANIZADOR 1UR',1,'ORG HOR 1UR',NULL,'S/N',111,31,31,0);

/*Table structure for table `marcas` */

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `logo` int(10) DEFAULT NULL,
  `pais` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `marcas` */

insert  into `marcas`(`id`,`nombre`,`logo`,`pais`) values (0,'',NULL,NULL),(1,'General Electric',1,75),(2,'MEI',2,146),(3,'OTN SYSTEMS',3,75),(4,'CISCO',4,75),(5,'PANDUIT',5,75),(6,'OPTRONICS',6,146),(7,'ADC',7,75),(8,'COMMSCOPE',8,75),(9,'SEL',9,75),(10,'SCHNEIDER ELECTRIC',10,82),(11,'SIEMENS',11,4),(12,'ECI Telelecom',12,73),(13,'ABB',13,208),(14,'ARUBA',14,75),(15,'OSAKA',15,73),(16,'MOTOROLA ',16,75),(17,'TAIT',17,164),(19,'T-LINK',19,47),(20,'RAD',20,180),(21,'ADVANTECH',21,212),(22,'IKEY',22,75),(23,'MOXA',23,212),(24,'FORTIGATE',24,75),(25,'STEALTH',25,0),(26,'ERL',26,75);

/*Table structure for table `modelo_equipo` */

DROP TABLE IF EXISTS `modelo_equipo`;

CREATE TABLE `modelo_equipo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(260) NOT NULL,
  `tipoEquipo` int(10) DEFAULT NULL,
  `marca` int(10) DEFAULT NULL,
  `imgActive` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`,`modelo`),
  KEY `tipoEquipo` (`tipoEquipo`),
  KEY `marca` (`marca`),
  CONSTRAINT `modelo_equipo_ibfk_1` FOREIGN KEY (`tipoEquipo`) REFERENCES `tipo_equipo` (`id`),
  CONSTRAINT `modelo_equipo_ibfk_2` FOREIGN KEY (`marca`) REFERENCES `marcas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `modelo_equipo` */

insert  into `modelo_equipo`(`id`,`modelo`,`tipoEquipo`,`marca`,`imgActive`) values (1,'CGR-2010',2,4,1),(2,'ASR-903',2,4,1),(3,'4010',3,4,1),(4,'SC-48',1,7,1),(5,'SC-24',1,7,0),(6,'GRIDCOM T390',4,1,1),(7,'GRIDCOM DIP Analógica',6,1,1),(8,'MIcom P40 Agile',8,1,1),(9,'SEL-411L ',9,9,1),(10,'Multilin C650 ',10,1,1),(11,'Power Logic 10N8650',12,10,1),(12,'Multin B90 ',27,1,1),(13,'Tesla 4000',28,1,1),(14,'SEL-3530',21,9,1),(15,'Reason RT430 GNSS',17,1,1),(16,'SEL-487E ',20,9,1),(17,'Reason S20 Ethernet Switch',3,1,1),(18,'IKFT50-130+TR',16,2,1),(19,'IKCT-50-50+TR',16,2,1),(20,'PANDUIT U1 19\"',18,5,1),(21,'IKCR-25-12',16,2,0),(22,'E-TERRAGRICOM',7,1,1),(23,'MPLS XTRAN 2210',29,3,1),(24,'PENDIENTE TAB_DIS_DUAL',30,2,1),(25,'ORG HOR 19\" 1UR',31,2,1),(26,'F100',36,15,1),(27,'NTP 1020',34,12,0),(28,'NTP 1200 ',35,12,0),(29,'FOX 515',32,13,0),(30,'FOX 615',33,13,0),(31,'PENDIENTE_PANELTELEFONICO',37,NULL,1),(32,'CATALYST 3560 ',3,4,0),(33,'CGS-2520-24TC',3,4,0),(34,'3945',3,4,0),(35,'T-LINK',3,19,0),(36,'CATALYST 3550',3,4,0),(37,'ORG PANEL 1UR',38,NULL,1),(38,'2930F',3,14,0),(39,'CP-7811',40,4,0),(40,'NSD570 ',7,13,0),(41,'ORG PANEL 2UR',39,NULL,1),(42,'PATCH PANEL 24PTS RJ45',41,0,1),(43,'PATCH PANEL 24PTS RJ45',41,6,1),(44,'ODF 48-SC',1,7,1),(45,'ORGANIZADOR 1UR FMT ',42,8,1),(46,'ODF 24-LC 1UR',43,8,0),(47,'MULTILIN C650',44,1,1),(48,'MONITOR',45,21,1),(49,'RDC-5K-FSR',46,22,0),(50,'DA-820',47,23,1),(51,'RUGGED 60F',48,24,1),(52,'FR-1010-19W-HDMI-USB-125V',48,25,1),(53,'G500',49,1,1),(54,'IKCR-25-12',16,2,1);

/*Table structure for table `paises` */

DROP TABLE IF EXISTS `paises`;

CREATE TABLE `paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `paises` */

insert  into `paises`(`id`,`iso`,`nombre`) values (1,'AF','Afganistán'),(2,'AX','Islas Gland'),(3,'AL','Albania'),(4,'DE','Alemania'),(5,'AD','Andorra'),(6,'AO','Angola'),(7,'AI','Anguilla'),(8,'AQ','Antártida'),(9,'AG','Antigua y Barbuda'),(10,'AN','Antillas Holandesas'),(11,'SA','Arabia Saudí'),(12,'DZ','Argelia'),(13,'AR','Argentina'),(14,'AM','Armenia'),(15,'AW','Aruba'),(16,'AU','Australia'),(17,'AT','Austria'),(18,'AZ','Azerbaiyán'),(19,'BS','Bahamas'),(20,'BH','Bahréin'),(21,'BD','Bangladesh'),(22,'BB','Barbados'),(23,'BY','Bielorrusia'),(24,'BE','Bélgica'),(25,'BZ','Belice'),(26,'BJ','Benin'),(27,'BM','Bermudas'),(28,'BT','Bhután'),(29,'BO','Bolivia'),(30,'BA','Bosnia y Herzegovina'),(31,'BW','Botsuana'),(32,'BV','Isla Bouvet'),(33,'BR','Brasil'),(34,'BN','Brunéi'),(35,'BG','Bulgaria'),(36,'BF','Burkina Faso'),(37,'BI','Burundi'),(38,'CV','Cabo Verde'),(39,'KY','Islas Caimán'),(40,'KH','Camboya'),(41,'CM','Camerún'),(42,'CA','Canadá'),(43,'CF','República Centroafricana'),(44,'TD','Chad'),(45,'CZ','República Checa'),(46,'CL','Chile'),(47,'CN','China'),(48,'CY','Chipre'),(49,'CX','Isla de Navidad'),(50,'VA','Ciudad del Vaticano'),(51,'CC','Islas Cocos'),(52,'CO','Colombia'),(53,'KM','Comoras'),(54,'CD','República Democrática del Congo'),(55,'CG','Congo'),(56,'CK','Islas Cook'),(57,'KP','Corea del Norte'),(58,'KR','Corea del Sur'),(59,'CI','Costa de Marfil'),(60,'CR','Costa Rica'),(61,'HR','Croacia'),(62,'CU','Cuba'),(63,'DK','Dinamarca'),(64,'DM','Dominica'),(65,'DO','República Dominicana'),(66,'EC','Ecuador'),(67,'EG','Egipto'),(68,'SV','El Salvador'),(69,'AE','Emiratos Árabes Unidos'),(70,'ER','Eritrea'),(71,'SK','Eslovaquia'),(72,'SI','Eslovenia'),(73,'ES','España'),(74,'UM','Islas ultramarinas de Estados Unidos'),(75,'US','Estados Unidos'),(76,'EE','Estonia'),(77,'ET','Etiopía'),(78,'FO','Islas Feroe'),(79,'PH','Filipinas'),(80,'FI','Finlandia'),(81,'FJ','Fiyi'),(82,'FR','Francia'),(83,'GA','Gabón'),(84,'GM','Gambia'),(85,'GE','Georgia'),(86,'GS','Islas Georgias del Sur y Sandwich del Sur'),(87,'GH','Ghana'),(88,'GI','Gibraltar'),(89,'GD','Granada'),(90,'GR','Grecia'),(91,'GL','Groenlandia'),(92,'GP','Guadalupe'),(93,'GU','Guam'),(94,'GT','Guatemala'),(95,'GF','Guayana Francesa'),(96,'GN','Guinea'),(97,'GQ','Guinea Ecuatorial'),(98,'GW','Guinea-Bissau'),(99,'GY','Guyana'),(100,'HT','Haití'),(101,'HM','Islas Heard y McDonald'),(102,'HN','Honduras'),(103,'HK','Hong Kong'),(104,'HU','Hungría'),(105,'IN','India'),(106,'ID','Indonesia'),(107,'IR','Irán'),(108,'IQ','Iraq'),(109,'IE','Irlanda'),(110,'IS','Islandia'),(111,'IL','Israel'),(112,'IT','Italia'),(113,'JM','Jamaica'),(114,'JP','Japón'),(115,'JO','Jordania'),(116,'KZ','Kazajstán'),(117,'KE','Kenia'),(118,'KG','Kirguistán'),(119,'KI','Kiribati'),(120,'KW','Kuwait'),(121,'LA','Laos'),(122,'LS','Lesotho'),(123,'LV','Letonia'),(124,'LB','Líbano'),(125,'LR','Liberia'),(126,'LY','Libia'),(127,'LI','Liechtenstein'),(128,'LT','Lituania'),(129,'LU','Luxemburgo'),(130,'MO','Macao'),(131,'MK','ARY Macedonia'),(132,'MG','Madagascar'),(133,'MY','Malasia'),(134,'MW','Malawi'),(135,'MV','Maldivas'),(136,'ML','Malí'),(137,'MT','Malta'),(138,'FK','Islas Malvinas'),(139,'MP','Islas Marianas del Norte'),(140,'MA','Marruecos'),(141,'MH','Islas Marshall'),(142,'MQ','Martinica'),(143,'MU','Mauricio'),(144,'MR','Mauritania'),(145,'YT','Mayotte'),(146,'MX','México'),(147,'FM','Micronesia'),(148,'MD','Moldavia'),(149,'MC','Mónaco'),(150,'MN','Mongolia'),(151,'MS','Montserrat'),(152,'MZ','Mozambique'),(153,'MM','Myanmar'),(154,'NA','Namibia'),(155,'NR','Nauru'),(156,'NP','Nepal'),(157,'NI','Nicaragua'),(158,'NE','Níger'),(159,'NG','Nigeria'),(160,'NU','Niue'),(161,'NF','Isla Norfolk'),(162,'NO','Noruega'),(163,'NC','Nueva Caledonia'),(164,'NZ','Nueva Zelanda'),(165,'OM','Omán'),(166,'NL','Países Bajos'),(167,'PK','Pakistán'),(168,'PW','Palau'),(169,'PS','Palestina'),(170,'PA','Panamá'),(171,'PG','Papúa Nueva Guinea'),(172,'PY','Paraguay'),(173,'PE','Perú'),(174,'PN','Islas Pitcairn'),(175,'PF','Polinesia Francesa'),(176,'PL','Polonia'),(177,'PT','Portugal'),(178,'PR','Puerto Rico'),(179,'QA','Qatar'),(180,'GB','Reino Unido'),(181,'RE','Reunión'),(182,'RW','Ruanda'),(183,'RO','Rumania'),(184,'RU','Rusia'),(185,'EH','Sahara Occidental'),(186,'SB','Islas Salomón'),(187,'WS','Samoa'),(188,'AS','Samoa Americana'),(189,'KN','San Cristóbal y Nevis'),(190,'SM','San Marino'),(191,'PM','San Pedro y Miquelón'),(192,'VC','San Vicente y las Granadinas'),(193,'SH','Santa Helena'),(194,'LC','Santa Lucía'),(195,'ST','Santo Tomé y Príncipe'),(196,'SN','Senegal'),(197,'CS','Serbia y Montenegro'),(198,'SC','Seychelles'),(199,'SL','Sierra Leona'),(200,'SG','Singapur'),(201,'SY','Siria'),(202,'SO','Somalia'),(203,'LK','Sri Lanka'),(204,'SZ','Suazilandia'),(205,'ZA','Sudáfrica'),(206,'SD','Sudán'),(207,'SE','Suecia'),(208,'CH','Suiza'),(209,'SR','Surinam'),(210,'SJ','Svalbard y Jan Mayen'),(211,'TH','Tailandia'),(212,'TW','Taiwán'),(213,'TZ','Tanzania'),(214,'TJ','Tayikistán'),(215,'IO','Territorio Británico del Océano Índico'),(216,'TF','Territorios Australes Franceses'),(217,'TL','Timor Oriental'),(218,'TG','Togo'),(219,'TK','Tokelau'),(220,'TO','Tonga'),(221,'TT','Trinidad y Tobago'),(222,'TN','Túnez'),(223,'TC','Islas Turcas y Caicos'),(224,'TM','Turkmenistán'),(225,'TR','Turquía'),(226,'TV','Tuvalu'),(227,'UA','Ucrania'),(228,'UG','Uganda'),(229,'UY','Uruguay'),(230,'UZ','Uzbekistán'),(231,'VU','Vanuatu'),(232,'VE','Venezuela'),(233,'VN','Vietnam'),(234,'VG','Islas Vírgenes Británicas'),(235,'VI','Islas Vírgenes de los Estados Unidos'),(236,'WF','Wallis y Futuna'),(237,'YE','Yemen'),(238,'DJ','Yibuti'),(239,'ZM','Zambia'),(240,'ZW','Zimbabue');

/*Table structure for table `puertos` */

DROP TABLE IF EXISTS `puertos`;

CREATE TABLE `puertos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `numero_de_puerto` int(10) DEFAULT NULL,
  `tipo_cable` varchar(250) DEFAULT NULL,
  `dir_origen` varchar(250) DEFAULT NULL,
  `dir_destino` varchar(250) DEFAULT NULL,
  `atenuacion_origen` varchar(250) DEFAULT NULL,
  `atenuacion_destino` varchar(250) DEFAULT NULL,
  `servicio` varchar(250) DEFAULT NULL,
  `observacion` longtext DEFAULT NULL,
  `equipo_id` int(10) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `puertos` */

insert  into `puertos`(`id`,`numero_de_puerto`,`tipo_cable`,`dir_origen`,`dir_destino`,`atenuacion_origen`,`atenuacion_destino`,`servicio`,`observacion`,`equipo_id`) values (1,1,'F SM','NIZ','OTN [B6] PT1','.01','.01','OTN',NULL,34),(2,2,'F SM','NIZ','OTN [B6] PT2','.01','.01','OTN','Esta fibra esta empalmada directamente al odf de balam',34),(3,3,'F SM','NIZ','ROUTER CGR [B6] G/0/0 ',NULL,NULL,'ENLACE ROUTER NIZ-TIN',NULL,34),(4,4,'F SM','NIZ','ROUTER CGR [B6] G/0/0 ',NULL,NULL,'ENLACE ROUTER NIZ-TIN',NULL,34);

/*Table structure for table `puesto` */

DROP TABLE IF EXISTS `puesto`;

CREATE TABLE `puesto` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `puesto` */

/*Table structure for table `subestaciones` */

DROP TABLE IF EXISTS `subestaciones`;

CREATE TABLE `subestaciones` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `alias` varchar(10) DEFAULT NULL,
  `ubicacion` longtext DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  `instalaciones` varchar(20) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `subestaciones` */

insert  into `subestaciones`(`id`,`nombre`,`alias`,`ubicacion`,`descripcion`,`instalaciones`,`active`) values (1,'NIZUC','NIZ',NULL,NULL,'1,2,8,9',0),(2,'TINTAL','TIN',NULL,NULL,'1,15',1),(3,'BALAM','BLM',NULL,NULL,'1',0),(4,'RIVIERA MAYA','RMY',NULL,NULL,'1,3,4,5',0),(5,'PLAYA DEL CARMEN','PCN',NULL,NULL,'1,7,8',0),(6,'CANCUN','CNC',NULL,NULL,'1,10',0),(7,'BONANPACK','BNP',NULL,NULL,'1',0);

/*Table structure for table `tipo_caracteristicas` */

DROP TABLE IF EXISTS `tipo_caracteristicas`;

CREATE TABLE `tipo_caracteristicas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `caracteristica` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tipo_caracteristicas` */

insert  into `tipo_caracteristicas`(`id`,`caracteristica`) values (1,'DIRECCION IP'),(2,'SOFTWARE DE GESTIÓN'),(3,'INSTALACIÓN'),(4,'LINEA '),(5,'TIPO DE CONECTOR '),(6,'VERSIÓN FIRMWARE'),(7,'FREQ TX'),(8,'FREQ RX'),(9,'POTENICIA '),(10,'IDENTIFICADOR'),(11,'PTU'),(12,'IDENTIFICADOR LADO EQUIPO'),(13,'SERVICIO'),(14,'TIPO DE CABLE '),(15,'REGISTRO DE SERVICIO'),(16,'IDENTIFICADOR LADO SWICHT'),(17,'IDENTIFICADOR PP USUARIO LADO RACK'),(18,'DISPARO'),(19,'NO. DE FIBRAS'),(20,'DIRECCIÓN '),(21,'CIRCUITO'),(22,'LONGITUD DE ENLACE'),(23,'PUERTOS DISPONIBLES '),(24,'TIPO DE FIBRA '),(25,'ATENUACIÓN TOTAL (dB)'),(26,'ATENUACIÓN (dB/Km)'),(27,'OBSERVACIONES '),(28,'EXTENSIÓN '),(29,'IP POR MOXA'),(30,'TIPO DE PROTECCIÓN '),(31,'CLIENTE'),(32,'PUERTO ECI '),(33,'SITIO');

/*Table structure for table `tipo_de_instalacion` */

DROP TABLE IF EXISTS `tipo_de_instalacion`;

CREATE TABLE `tipo_de_instalacion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(240) DEFAULT NULL,
  `alias` varchar(240) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tipo_de_instalacion` */

insert  into `tipo_de_instalacion`(`id`,`nombre`,`alias`) values (1,'CASETA DE CONTROL','CASETA'),(2,'COMPENSADOR ESTATICO DE VARS','CEV'),(3,'SUBESTACION AISLADA POR GAS 115 KV','GIS 115 KV'),(4,'SUBESTACION AISLADA POR GAS 230 KV','GIS 230 KV'),(5,'SUBESTACION AISLADA POR GAS 400 KV','GIS 400 KV'),(6,'HOTEL DE TELECOMUNICACIONES GRANDE','HTG'),(7,'HOTEL DE TELECOMUNICACIONES MEDIADO','HTM'),(8,'HOTEL DE COMUNICACIONES CONFIABILIDAD','CONFIABILIDAD'),(9,'CASETA DE MICRONDAS','M.O'),(10,'CASETA DE OPLAT','OPLAT'),(11,'CASETA DE HICOM','HICOM'),(12,'ALMACEN DE TRANSMISION','ALMACEN'),(13,'ZONA DE OPERACION DE TRANSMISION CANCUN','ZOT'),(14,'ZONA DE TRANSMISION ','ZT'),(15,'DIAGRAMA UNIFILAR','UNIFILAR');

/*Table structure for table `tipo_equipo` */

DROP TABLE IF EXISTS `tipo_equipo`;

CREATE TABLE `tipo_equipo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tipo_equipo` */

insert  into `tipo_equipo`(`id`,`nombre`,`tipo`,`alias`,`descripcion`) values (1,'Distribuidor optico SM','T-DISTOPT','ODF SM SC',NULL),(2,'Router','T-ROUTER','ROUTER',NULL),(3,'Switch','T-SWITCH','SWITCH',NULL),(4,'OPLAT','T-TELEPRO','OPLAT ',NULL),(5,'Multiplexor','T-TOPTICA','MULTIPLEXOR',NULL),(6,'Teleprotecion Analógica  ','T-TELEPRO','Teleprot A',NULL),(7,'Teleprotección Digital','T-TELEPRO','Teleprot D',NULL),(8,'Proteccion Primaria ','T-PROTEC','PP1',NULL),(9,'Proteccion Primaria Respaldo ','T-PROTEC','PP2',NULL),(10,'Unidad de Control de BAHIA','T-PROTEC','UCB',NULL),(11,'Planta de Fuerza 48 VCD','T-ENERGIA','PLANTA 48',NULL),(12,'Medidor Multifunción ','T-PROTEC','MMF',NULL),(13,'Bloc de Pruebas','T-PROTEC','BP',NULL),(14,'Distribudor óptico MM','T-DISTOPT','ODF MM',NULL),(16,'CARGADOR DE BATERIAS ','T-CARBAT','CARGADOR BATERIAS',NULL),(17,'GPS','T-GPS','GPS',NULL),(18,'Organizador Eléctrico','T-DATA','PANDUIT',NULL),(19,'Organizador Óptico','T-OPTICA','PANDUIT ',NULL),(20,'Protección Diferencial ','T-PROTEC','87',NULL),(21,'Controlador de automatización en tiempo real','T-PROTEC','RTAC PLC',NULL),(22,'RELEVADOR ','T-PROTEC','87B',NULL),(23,'RELEVADOR 50FI','T-PROTEC','PBF',NULL),(24,'LED INDICADORES','T-PROTEC','86B/86BU',NULL),(25,'CONCENTRADOR DE PUERTOS','T-PROTEC','CP',NULL),(26,'Esquema de Accion Remedial','T-PROTEC','ESMAR',NULL),(27,'Unidad Medicion Fasorial','T-PROTEC','PMU',NULL),(28,'Registrador de Disturbios','T-PROTEC','RD',NULL),(29,'Nodo de agregación','T-OPTICA','NODO OTN ',NULL),(30,'Tablero de distribución dual','T-FUERZA','DISTRIBUIDOR DE CARGAS',NULL),(31,'PENDIENTE MEI ORG HOR 19\" 1UR ','T-FUERZA','ORGANIZADOR ',NULL),(32,'MULTIPLEXOR FOX 515','T-OPTICAL','FOX 515',NULL),(33,'MULTIPLEXOR FOX 616','T-OPTICAL','FOX 616',NULL),(34,'NODO NTP 1020 ECI','T-OPTICAL','ECI 1020',NULL),(35,'NODO NTP 1200 ECI','T-OPTICAL','ECI 1200',NULL),(36,'TERMOSTATO','T-INSTRUMENTACIÓN ','TERMOMETRO',NULL),(37,'PATCH PANEL TELEFONICO','T-DATA','PATCH PANEL',NULL),(38,'ORG PANEL 1UR','T-DATA','ORGANIZADOR 1UR',NULL),(39,'ORG PANEL 2UR','T-DATA','ORGANIZADOR 2UR',NULL),(40,'TELEFONO VOIP ','T-VOIP','TEL VOIP',NULL),(41,'PATCH PANEL 24PTOS RJ45','T-DATA','PATCH PANEL OP',NULL),(42,'ORGANIZADOR FO FMT','T-OPTICAL','ORGANIZADOR FO',NULL),(43,'DISTRIBUIDOR ÓPTICO LC','T-DISTOPT','ODF SM LC',NULL),(44,'MCAD','T-CONTROL','MCAD GE',NULL),(45,'MONITOR','T-CONTROL','CCL',NULL),(46,'TECLADO','T-CONTROL','TECLADO',NULL),(47,'CPU','T-CONTROL','CPU',NULL),(48,'FIREWALL','T-CONTROL','FIREWALL',NULL),(49,'GATEWAY',NULL,NULL,NULL);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `apellido` varchar(260) DEFAULT NULL,
  `rp` varchar(5) NOT NULL,
  `depto` int(10) DEFAULT NULL,
  `puesto` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`rp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `usuarios` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
