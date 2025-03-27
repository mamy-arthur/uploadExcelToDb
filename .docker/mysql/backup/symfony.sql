-- MySQL dump 10.13  Distrib 8.4.3, for Linux (x86_64)
--
-- Host: localhost    Database: symfony
-- ------------------------------------------------------
-- Server version	8.4.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `business_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_event_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_number` int DEFAULT NULL,
  `wording_civility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_vehicles_owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_complement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int DEFAULT NULL,
  `home_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_entry_into_circulation` date DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `last_event_date` date DEFAULT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_wording` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mileage` int DEFAULT NULL,
  `energy_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_vn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_vo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_vnvo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_intermediary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'LABOHYMEA','GIDAHYCOU','GIDAHYCOU',2,'Mr','','AZIZA','JULIEN','1BIS RUE CREUSE','','MAROLLES EN BRIE',22,'','0624536655','','julien.aziza@orange.fr','2015-09-29','2015-09-29','2021-04-14','HYUNDAI','TUCSON','1.7 CRDI 115ch Creative 2WD','TMAJ3815AGJ009703','DW-750-CH','PARTICULIER',4,'DIESEL','','','OPX','VN','','','2021-04-14','Atelier'),(2,'LABOHYMEA','GIDAHYMAX','GIDAHYMAX',24,'','ALIPIO TEIXEIRA B&TP','ALIPIO TEIXEIRA B&TP','','18 RUE DES CERISIERS','','LAIGNEVILLE',23,'','0662302010','','alipioteixeira@yahoo.fr','2022-02-11','2022-02-11','2022-02-28','HYUNDAI','','TUCSON NG CRDI 136 DCT 48V NLINE EXE TO','TMAJB81AGMJ127866','GE-630-QL','SOCIETE',10,'DIESEL','HEDIN LEA','','','VN','VN301519','','2022-02-28','Atelier'),(3,'LABOHYMEA','GIDAHYBEA','GIDAHYBEA',18,'Mme','ANSEL','ANSEL','MARIE CHRISTINE','2 ROUTE DE FORMERIE','','BOUVRESSE',14,'','0677950397','','','2019-07-16',NULL,'2022-03-01','HYUNDAI','TUCSON','','TMAJ3817GKJ885874','FH-945-WZ','PARTICULIER',26,'','','','','','','','2021-05-04','Atelier'),(4,'LABOHYMEA','GIDAHYCOU','GIDAHYCOU',16,'','ARVAL','ARVAL','','111 RUE DE REUILLY','','PARIS-12E__ARRONDISSEMENT',16,'','0788190227','','','2021-03-01',NULL,'2022-03-02','HYUNDAI','TUCSON','','TMAJC81AGMJ009537','FX-389-MZ','PARTICULIER',19,'','','','AD BLUE','','','','2022-03-02','Atelier'),(5,'LABOHYMEA','GIDAHYCOU','GIDAHYCOU',7,'','AOUANA','AOUANA','YANIS','7 RUE DE JUSSIEU','','MONTIGNY LENCOUP',28,'','0698942487','','yanisaouana@yahoo.fr','2019-04-04',NULL,'2022-03-02','HYUNDAI','KONA','','KMHK581GFKU027670','FF-499-EQ','PARTICULIER',26,'','','','MAJ GPS','','','','2021-10-25','Atelier'),(6,'LABOHYMEA','GIDAHYBUS','VNVOHYBUS',30,'','','ASCIER','','11 RUE CHARLES CORDIER','','FERRIERES',7,'0160436116','','','compta@ascier.fr','2018-09-27','2022-02-23','2022-03-04','PEUGEOT','PARTNER VU','PREMIUM PACK STANDARD BLUE  HDI 75 BVM5','VF37BBHW6JJ771713','FA-307-SB','SOCIETE',26,'DIESEL','','','PREPA VO','VO','VO900402','','2022-03-02','Atelier'),(7,'LABOHYMEA','GIDAHYMEA','GIDAHYMEA',29,'Mr','ATTALI','ATTALI','WILLIAM','19 RUE PIERRE DE NAVARRE','','MEAUX',2,'','0633584700','','william.attali@gmail.com','2022-03-02','2022-02-25','2022-03-04','HYUNDAI','','SANTA FE FL HEV 230 BVA6 INTUITIVE.','KMHS2811BNU026983','GE-814-ZL','PARTICULIER',6,'PLUG-IN','AUGEY PATRICK','','','VN','VN003696','','2022-03-04','Atelier'),(8,'LABOHYMEA','GIDAHYMEA','GIDAHYMEA',15,'Mr','ANDRIEUX','ANDRIEUX','KEVIN','70 RUE EMILE ZOLA','','CREGY LES MEAUX',26,'','0626744790','','kevinandrieux1989@gmail.com','2022-03-09','2022-03-03','2022-03-14','HYUNDAI','','I20 NG 1.2 84 INTUITIVE','NLHBN51HANZ144399','GF-344-CC','PARTICULIER',6,'ESSENCE','AUGEY PATRICK','','','VN','VN003674','','2022-03-14','Atelier'),(9,'LABOHYMEA','GIDAHYMEA','GIDAHYMEA',25,'','ATLAS AUTO','ATLAS AUTO','','','','MEAUX',2,'','','','','2019-06-17',NULL,'2022-03-14','HYUNDAI','','','KMHC751HFKU046772','FH-810-AC','PARTICULIER',27,'','','','','','','','2022-03-14','Atelier'),(10,'LABOHYMEA','GIDAHYBEA','GIDAHYMAX',8,'Mr','ADEM','ADEM','LOUNES','39 RUE FRANCOIS VILLON','','BRUYERES SUR OISE',5,'','0626422683','','ademlounes@gmail.com','2020-06-22','2020-06-22','2022-03-16','HYUNDAI','','TUCSON A20 CRDI 115 48V CREA','TMAJ3817ALJ082238','FQ-102-RY','PARTICULIER',12,'DIESEL','VILLAIN URSULLA','','','VN','VN500204','','2022-03-01','Atelier'),(11,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',8,'','ATHLON CAR LEASE','ATHLON CAR LEASE','','53 AVENUE JEAN JAURES','','LE BOURGET',31,'','0674441722','','georges.dossantos@gmail.com',NULL,'2022-02-24','2022-03-17','HYUNDAI','','KONA HYB BUSINESS','KMHK381EGNU081404','','SOCIETE',10,'HYBRIDE','MIROGLIO CLARISSE','','PLAQUE','VN','VN002881','','2022-03-17','Atelier'),(12,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',8,'','ATHLON CAR LEASE','ATHLON CAR LEASE','','53 AVENUE JEAN JAURES','','LE BOURGET',31,'','0674441722','','georges.dossantos@gmail.com',NULL,'2022-02-25','2022-03-17','HYUNDAI','','KONA HYBRID FL BUSINESS','KMHK381EGNU083078','','SOCIETE',10,'HYBRIDE','','','PLAQUE','VN','VN002881','','2022-03-17','Atelier'),(13,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',1,'','ALPHABET','ALPHABET','','TSA 90001','','ST QUENTIN',19,'','0778346392','','','2021-03-22','2020-09-26','2022-03-17','HYUNDAI','','CRDI 136 DCT7 48V NLINE EXECUTIVE','TMAJ3817GLJ132557','FX-845-ZS','SOCIETE',7,'DIESEL','AMALOU KEVIN','','MALR','VN','VN400589','','2021-04-21','Atelier'),(14,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',10,'','ANTONY','ANTONY','FRANCOIS-XAVIER','12 RUE DES TOURNELLES','','VILLENEUVE SAINT DENIS',17,'','0615471798','','','2018-06-05',NULL,'2022-03-17','HYUNDAI','','','KMHC751DGJU081495','EX-840-XQ','PARTICULIER',6,'','','','REV 60 000 KM ET 48 MOIS','','','','2022-03-17','Atelier'),(15,'LABOHYMEA','GIDAHYBEA','VNVOHYMEA',7,'Mme','ADELON','ADELON','CATHY','14 CHEMIN PARE','','COULOMMES',27,'','0626624754','','koulie@hotmail.fr','2021-06-25','2022-03-18','2022-03-18','HYUNDAI','','I20 NG TGDI 100DCT 48V NLINE+NAV+BITON','NLHBR51GGNZ053534','GA-304-GQ','PARTICULIER',10,'ESSENCE','AUGEY PATRICK','','PREPA VD','VN','VN003743','','2021-07-28','Atelier'),(16,'LABOHYMEA','GIDAHYMAX','GIDAHYMAX',21,'Mme','ALLIET','ALLIET','TIFFANY','235 RUE DES PETITS PRES','','HEILLES',14,'0614071011','0614071011','','alliettiffany@gmail.com','2018-11-30','2021-05-21','2022-03-18','HYUNDAI','TUCSON','CRDI 136 CDT-7 CREA RDS','TMAJ3817GKJ738781','FC-301-EB','PARTICULIER',13,'DIESEL','','','','VO','VO080681','','2020-08-25','Atelier'),(17,'LABOHYMEA','GIDAHYMAX','GIDAHYMAX',14,'Ste','ASMH','ASMH','','RUE DU PONT DE SAINT LEU','','GOUVIEUX',3,'','0658460269','','annesophiebichut@gmail.com','2019-11-26',NULL,'2022-03-18','HYUNDAI','','N LINE','TMAJ3817GLJ019165','FP-736-FH','PARTICULIER',12,'','','','','','','','2022-03-18','Atelier'),(18,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',8,'','ATHLON CAR LEASE','ATHLON CAR LEASE','','53 AVENUE JEAN JAURES','','LE BOURGET',31,'','0674441722','','georges.dossantos@gmail.com','2022-03-14','2022-03-18','2022-03-22','HYUNDAI','','TUCSON NG PHEV 265 HTRAC EXE','TMAJE812DNJ080026','GF-536-EF','SOCIETE',10,'PLUG-IN','','','PREPA VN','VN','VN002881','','2022-03-22','Atelier'),(19,'LABOHYMEA','GIDAHYMEA','GIDAHYMEA',22,'Mr','ASSELINEAU','ASSELINEAU','FREDERIC','31 AVENUE DE LA REPUBLIQUE','','MEAUX',2,'','0626496372','','','2021-02-10',NULL,'2022-03-22','HYUNDAI','','','TMAJE811BMJ007740','FX-340-BN','PARTICULIER',25,'','','','','','','','2022-03-22','Atelier'),(20,'LABOHYMEA','GIDACOU','GIDAHYCOU',15,'Mr','','ALAVOINE','PATRICK','14 RUE DE LA GARENNE','','CERNEUX',10,'','0649624031','','patrickalavoine77@hotmail.fr','2017-03-20','2020-12-31','2022-03-23','HYUNDAI','TUCSON','CRDI 141 DCT7 EDITION LOUNGE','TMAJ3815GHJ382366','EK-198-XV','PARTICULIER',11,'DIESEL','','FERNANDES ANTHONY','','VO','VO061609','','2019-06-04','Atelier'),(21,'LABOHYMEA','GIDAHYMEA','GIDAHYMEA',15,'Mr','ANCART','ANCART','BENJAMIN','13 RUE JEAN MOULIN','','COULOMMIERS',22,'','0682246586','','benjamin.ancart@gmail.com','2022-02-28','2022-02-25','2022-03-23','HYUNDAI','','HYB 230 EXECUTIVE','TMAJE811BNJ078473','GE-078-YW','PARTICULIER',10,'HYBRIDE','AVILES JEROME','','','VN','VN003435','','2022-03-23','Atelier'),(22,'LABOHYMEA','VNVOHYMEA','VNVOHYMEA',11,'','ASS MAINTIEN DOMICILE PERSONNE','ASS MAINTIEN DOMICILE PERSONNE','','98 AVENUE DE FONTAINEBLEAU','','SAINT FARGEAU PONTHIERRY',31,'010101010101','','','apmad@orange.fr',NULL,'2022-03-25','2022-03-25','HYUNDAI','','I10 1.0 67 ECO 4P INTUITIVE','NLHDN51AANZ114042','','SOCIETE',0,'ESSENCE','FERNANDES ANTHONY','','','VN','VN003727','','2022-03-25','Véhicule neuf'),(23,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',4,'','ALTO INGENIERIE','ALTO INGENIERIE','','1 DU GUE LANGLOIS','','BUSSY SAINT GEORGES',16,'','0635078680','','','2021-12-01',NULL,'2022-03-28','HYUNDAI','','','TMAJC811BMJ061510','GD-335-GX','PARTICULIER',5,'','','','CAMPAGNE','','','','2022-03-28','Atelier'),(24,'LABOHYMEA','GIDACARPRO','GIDAHYMEA',1,'Mme','AKAKPO','AKAKPO','DONANON','8 AVENUE LEON BLUM','','NEUILLY SUR MARNE',11,'','0621208476','','maryse.todome@gmail.com','2021-02-17','2022-03-16','2022-03-29','SUZUKI','SWIFT','1.2 DUALJET HYBRID 83CH PACK AUTO','JSAAZCA3S00408936','FX-311-EN','PARTICULIER',11,'ESSENCE','','','REMISE EN ETAT V O','VO','VO061870','','2021-12-16','Atelier'),(25,'LABOHYMEA','GIDAHYCOU','GIDAHYMEA',3,'Mr','ASANDULUI','ASANDULUI','CONSTANTIN','31 RUE PIERRE MENDES FRANCE','','NANTEUIL LES MEAUX',2,'','0629432757','','tica.asandului@gmail.com','2019-10-08','2022-03-24','2022-03-29','HYUNDAI','TUCSON','1.6 CRDI 136 DCT-7 PREM  RDS','TMAJ3817GLJ992299','FK-827-RX','PARTICULIER',19,'DIESEL','','','NUL','VO','VO061964','','2021-06-07','Atelier'),(26,'LABOHYMEA','GIDAHYMAX','GIDAHYMAX',8,'Ste','ARVAL SERVICE LEASE','ARVAL SERVICE LEASE','','22 RUE DES 2 GARES','','RUEIL MALMAISON CEDEX',5,'','','','','2020-08-03',NULL,'2022-03-29','HYUNDAI','','','KMHC751DGLU217281','FR-074-WS','SOCIETE',12,'','','','','','','','2022-03-29','Atelier'),(27,'LABOHYMEA','VNVOHYBUS','VNVOHYBUS',23,'Ste','AUTOS LINE','AUTOS LINE','','255 RN6','','VERT SAINT DENIS',22,'0160636319','','','','2006-04-12','2022-03-29','2022-03-29','TOYOTA','AYGO','aygo 1.0vvt i 68ch','JTDKG18C50N049285','CZ-631-LY','SOCIETE',1,'ESSENCE','','','','VO','','','2022-03-24','Véhicule d\'occasion'),(28,'LABOHYMEA','VNVOHYBUS','VNVOHYBUS',23,'Ste','AUTOS LINE','AUTOS LINE','','255 RN6','','VERT SAINT DENIS',22,'0160636319','','','','2010-04-13','2022-03-29','2022-03-29','PEUGEOT','3008','1.6 HDi 16v 110CH fap BMP6 BLUE LION PREMIUM Pack','VF30U9HZHAS097492','AQ-463-FG','SOCIETE',4,'DIESEL','','','','VO','','','2022-03-22','Véhicule d\'occasion'),(29,'LABOHYMEA','VNVOHYBUS','VNVOHYBUS',23,'Ste','AUTOS LINE','AUTOS LINE','','255 RN6','','VERT SAINT DENIS',22,'0160636319','','','','2011-10-19','2022-03-29','2022-03-29','AUDI','A4','V6 2.7 TDI 190DPF AMBITION LUXE MULTIRONIC A','WAUZZZ8K6CA058214','BW-417-NN','SOCIETE',15,'DIESEL','','','','VO','','','2022-03-15','Véhicule d\'occasion'),(30,'LABOHYMEA','VNVOHYBUS','VNVOHYBUS',23,'Ste','AUTOS LINE','AUTOS LINE','','255 RN6','','VERT SAINT DENIS',22,'0160636319','','','','2014-04-08','2022-03-29','2022-03-29','HYUNDAI','I30','i 30 1.6 crdi 128ch','TMAD351UAEJ127657','DE-404-SV','SOCIETE',28,'DIESEL','','','','VO','','','2022-03-24','Véhicule d\'occasion'),(31,'LABOHYMEA','GIDAHYCOU','GIDAHYCOU',26,'Ste','ARVAL SERVICE LEASE','ARVAL SERVICE LEASE','','85 87 AVENUE DU GENERAL DE GAULLE','','CRETEIL',11,'0680777385','0672162143','','','2021-05-19','2021-04-30','2022-03-30','HYUNDAI','','TUCSON NG HYBRID 230 CREATIVE','TMAJD811BMJ027162','FZ-434-HT','SOCIETE',20,'HYBRIDE','BROSSARD JULIEN','','OPX','VN','','','2021-09-28','Atelier'),(32,'LABOHYMEA','GIDAHYCOU','VNVOHYMEA',23,'Ste','AUTOS LINE','AUTOS LINE','','255 RN6','','VERT SAINT DENIS',22,'0160636319','','','','2012-02-16','2022-03-30','2022-03-30','HYUNDAI','I20','1.2 PACK INVENTIVE','NLHBA51BACZ099364','CB-578-NQ','SOCIETE',18,'ESSENCE','','','','VO','','','2020-01-06','Atelier'),(33,'LABOHYMEA','GIDAHYMEA','VNVOHYMEA',23,'Ste','AUTOS LINE','AUTOS LINE','','255 RN6','','VERT SAINT DENIS',22,'0160636319','','','','2013-08-28','2022-03-30','2022-03-30','HYUNDAI','I30','1.6 CRDI 110 PACK SENSATION BLUE DRIVE 5P','TMAD351UAEJ110847','CY-705-CC','SOCIETE',6,'DIESEL','','','remise','VO','','','2018-01-24','Atelier'),(34,'LABOHYMEA','VNVOHYMEA','VNVOHYMEA',23,'Ste','','AUTOS LINE','','255 RN6','','VERT SAINT DENIS',22,'0160636319','','','','2011-04-05','2022-03-30','2022-03-30','PEUGEOT','5008','1.6 HDi112 FAP Allure 7pl','VF3OE9HR8BS104842','BL-105-NP','SOCIETE',14,'DIESEL','','','','VO','','','2022-03-22','Véhicule d\'occasion'),(35,'LABOHYMEA','VNVOHYMEA','VNVOHYMEA',23,'Ste','AUTOS LINE','AUTOS LINE','','255 RN6','','VERT SAINT DENIS',22,'0160636319','','','','2010-04-14','2022-03-30','2022-03-30','PEUGEOT','308','1.6 hdi 110 fap premium pack','VF34C9HZC9S199531','AQ-781-HR','SOCIETE',21,'DIESEL','','','','VO','','','2022-01-17','Véhicule d\'occasion'),(36,'LABOHYMEA','GIDAHYMAX','GIDAHYMAX',8,'','A.S.R.A.','A.S.R.A.','','80 IMPASSE BOIS SAVONNETTE','','LE LAMENTIN',17,'','0613433465','','ka360pro@gmail.com','2022-03-25','2022-02-21','2022-04-04','HYUNDAI','','TUCSON NG PHEV 265 HTRAC NLINE EX+TO','TMAJB812DNJ079208','GF-357-KM','SOCIETE',9,'PLUG-IN','LAURENT SEBASTIEN','','','VN','VN301386','','2022-04-04','Atelier'),(37,'LABOHYMEA','GIDACOU','GIDAHYCOU',20,'','AUDEMAR','AUDEMAR','CEDRIC','3 AVENUE DU GENERAL DE GAULLE','','LIZY SUR OURCQ',8,'','0695204769','','','2011-12-29',NULL,'2022-04-05','HYUNDAI','IX35','','TMAJU81VACJ231649','BZ-300-SR','PARTICULIER',13,'','','','','','','','2021-05-17','Atelier'),(38,'LABOHYMEA','GIDAHYMEA','GIDAHYMEA',23,'Ste','ARVAL','ARVAL','','1 RUE CHEMIN BLANC','','LONGJUMEAU',1,'','0752635442','','','2021-12-28',NULL,'2022-04-06','HYUNDAI','','','KMHK381EGNU077843','GD-323-WK','PARTICULIER',16,'','','','','','','','2022-04-06','Atelier'),(39,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',26,'Ste','ARVAL SERVICE LEASE','ARVAL SERVICE LEASE','','85 87 AVENUE DU GENERAL DE GAULLE','','CRETEIL',11,'0680777385','0672162143','','','2022-03-09','2022-03-29','2022-04-07','HYUNDAI','','TUCSON NG PHEV 265 HTRAC EXE','TMAJE812DNJ080121','GF-112-CG','SOCIETE',10,'PLUG-IN','ROUBAUDI HUGO','','PREPA VN','VN','','','2022-04-07','Atelier'),(40,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',8,'','ATHLON CAR LEASE','ATHLON CAR LEASE','','53 AVENUE JEAN JAURES','','LE BOURGET',31,'','0674441722','','georges.dossantos@gmail.com','2022-02-21','2022-02-24','2022-04-07','HYUNDAI','','TUCSON NG CRDI 136 DCT 48V BUSINESS','TMAJC81AGNJ164034','GE-375-VB','SOCIETE',10,'HYBRIDE','MIROGLIO CLARISSE','','','VN','VN002881','','2022-04-07','Magasin'),(41,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',8,'','ATHLON CAR LEASE','ATHLON CAR LEASE','','53 AVENUE JEAN JAURES','','LE BOURGET',31,'','0674441722','','georges.dossantos@gmail.com','2022-03-02','2022-02-18','2022-04-07','HYUNDAI','','TUCSON NG CRDI 136 DCT 48V BUSINESS','TMAJC81AGNJ163698','GE-562-ZW','SOCIETE',10,'HYBRIDE','MIROGLIO CLARISSE','','PREPA VN','VN','VN002881','','2022-04-07','Atelier'),(42,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',8,'','ATHLON CAR LEASE','ATHLON CAR LEASE','','53 AVENUE JEAN JAURES','','LE BOURGET',31,'','0674441722','','georges.dossantos@gmail.com',NULL,'2022-03-31','2022-04-08','HYUNDAI','','KONA HYB BUSINESS','KMHK381EGNU088038','','SOCIETE',0,'HYBRIDE','MIROGLIO CLARISSE','','','VN','VN002881','','2022-04-08','Magasin'),(43,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',8,'','ATHLON CAR LEASE','ATHLON CAR LEASE','','53 AVENUE JEAN JAURES','','LE BOURGET',31,'','0674441722','','georges.dossantos@gmail.com',NULL,'2022-03-31','2022-04-08','HYUNDAI','','KONA HYB BUSINESS','KMHK381EGNU088039','','SOCIETE',0,'HYBRIDE','MIROGLIO CLARISSE','','','VN','VN002881','','2022-04-08','Magasin'),(44,'LABOHYMEA','GIDAHYCOU','GIDAHYCOU',27,'Mme','ADIN','ADIN','JULIA','2 RUE DE FLORE','','CREGY LES MEAUX',26,'','0695821538','','julanj@orange.fr','2021-03-31','2021-02-24','2022-04-08','HYUNDAI','','I10 NG 1.0 67 ECO 4P INITIA MY21','NLHDM51AAMZ059841','FY-262-GZ','PARTICULIER',13,'ESSENCE','FERNANDES ANTHONY','','','VN','VN002950','','2021-03-26','Magasin'),(45,'LABOHYMEA','GIDAHYMEA','GIDAHYMEA',22,'Mr','AMKHAOU','AMKHAOU','TAHAR','8 RUE JULES LOPARD','','ESBLY',18,'','0621970696','','','2017-05-11',NULL,'2022-04-08','HYUNDAI','','','KMHC751CGHU028166','EM-346-HY','PARTICULIER',6,'','','','rev 105000 kms','','','','2022-04-08','Atelier'),(46,'LABOHYMEA','GIDACOU','GIDAHYCOU',9,'','AUTOMATIC SYSTEMS','AUTOMATIC SYSTEMS','','22 RUE DU 8 MAI 1945','','PERSAN',10,'','0613214171','','','2018-02-28',NULL,'2022-04-11','HYUNDAI','','','TMAH3517AJJ061192','EV-728-KD','PARTICULIER',5,'','','','CHOC','','','','2020-01-28','Atelier'),(47,'LABOHYMEA','GIDAHYCOU','GIDAHYMEA',25,'','APTIV HOLDING FRANCE','APTIV HOLDING FRANCE','','RUE DES LONGS REAGES','','EPERNON',15,'','0684367621','','henri.lefevre@aptiv.com','2021-01-15',NULL,'2022-04-13','HYUNDAI','','','TMAJE811BMJ006127','FW-299-MV','PARTICULIER',8,'','','','nul','','','','2021-11-18','Atelier'),(48,'LABOHYMEA','GIDAHYMAX','GIDAHYMAX',8,'Ste','ARVAL SERVICE LEASE','ARVAL SERVICE LEASE','','22 RUE DES 2 GARES','','RUEIL MALMAISON CEDEX',5,'','','','','2021-06-10',NULL,'2022-04-13','HYUNDAI','','','TMAJE812DNJ033343','FZ-279-XC','SOCIETE',19,'','','','','','','','2022-04-11','Atelier'),(49,'LABOHYMEA','GIDACARPRO','GIDAHYCOU',19,'Mr','','AGOUDJIL','HAMID','2 B RUE ST AIGNAN','','LECHELLE',14,'','0616500734','','h.agoudjil02@yahoo.fr','2020-10-13','2022-02-25','2022-04-15','HYUNDAI','IONIQ','ioniq fl hyb creative','KMHC851CGLU202194','FT-476-JD','PARTICULIER',11,'HYBRIDE','','','remise en etat v o','VO','VO061843','','2022-03-16','Atelier'),(50,'LABOHYMEA','GIDACOU','GIDAHYCOU',20,'','AUDEMAR','AUDEMAR','CEDRIC','3 AVENUE DU GENERAL DE GAULLE','','LIZY SUR OURCQ',8,'','0695204769','','','2019-08-28',NULL,'2022-04-15','HYUNDAI','SANTA FE','','KMHS381BDLU199918','FJ-646-SK','PARTICULIER',13,'','','','carro','','','','2022-04-15','Atelier'),(51,'LABOHYMEA','GIDAHYMAX','GIDAHYMAX',4,'Gge','ABCIS PICARDIE','ABCIS PICARDIE','','62 RUE DES DROITS DE L HOMME','','SAINT MAXIMIN',18,'0344646060','','','elodie.duretz@emilfrey.fr','2017-06-16',NULL,'2022-04-15','HYUNDAI','','','TMAJ3815AJJ474031','JJ474031','SOCIETE',0,'','','','','','','','2022-04-15','Atelier'),(52,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',26,'Ste','ARVAL SERVICE LEASE','ARVAL SERVICE LEASE','','85 87 AVENUE DU GENERAL DE GAULLE','','CRETEIL',11,'0680777385','0672162143','','','2022-04-07','2022-03-29','2022-04-19','HYUNDAI','','IONIQ 5 73 KWH EXE','KMHKR81AFNU074781','16161','SOCIETE',11,'ELECTRIQUE','MIROGLIO CLARISSE','','PREPA VN','VN','','','2022-04-07','Atelier'),(53,'LABOHYMEA','GIDAHYBEA','GIDAHYBEA',8,'Ste','ARVAL SERVICE LEASE','ARVAL SERVICE LEASE','','22 RUE DES 2 GARES','','RUEIL MALMAISON CEDEX',5,'','','','','2020-09-22','2020-10-02','2022-04-20','HYUNDAI','','CRDI 136 DCT-7 48V NLINE EDITION + TO','TMAJ3817GLJ131994','FS-836-WN','SOCIETE',16,'DIESEL','VILLAIN URSULLA','','MALR','VN','','','2020-09-17','Atelier'),(54,'LABOHYMEA','GIDACOU','GIDACOU',8,'','AFMTBT','AFMTBT','','1 RUE TRISTAN TZARA','TZARA','PARIS-18E__ARRONDISSEMENT',22,'','0675333649','','prestiajo@yahoo.fr','2018-01-25','2022-02-24','2022-04-21','HYUNDAI','IONIQ','MY 18 HYBRID INTUITIVE','KMHC751CGJU070624','ET-113-PG','SOCIETE',31,'DIESEL','','','','VO','VO900403','','2022-04-20','Atelier'),(55,'LABOHYMEA','VNVOHYMAX','VNVOHYMAX',5,'Ste','AUTO LINE','AUTO LINE','','255 ROUTE DEPARTEMENTALE 306','','VERT SAINT DENIS',22,'','','','','2010-07-27','2022-04-21','2022-04-21','VOLKSWAGEN','TIGUAN','2.0 TDI 140CH FAP SPORT & STYLE 4X2','WVGZZZ5NZBW015078','AX-658-ML','PARTICULIER',3,'DIESEL','','','','VO','VO061007','','2022-03-30','Véhicule d\'occasion'),(56,'LABOHYMEA','GIDAHYMAX','GIDAHYMAX',8,'Ste','ARVAL SERVICE LEASE','ARVAL SERVICE LEASE','','22 RUE DES 2 GARES','','RUEIL MALMAISON CEDEX',5,'','','','','2021-10-08',NULL,'2022-04-22','HYUNDAI','','','TMAJE812DNJ045741','GC-937-GP','SOCIETE',13,'','','','','','','','2022-04-22','Atelier'),(57,'LABOHYMEA','GIDAHYMAX','GIDAHYMAX',25,'','ASSISTANCE SERRURERIE ANTONIO','ASSISTANCE SERRURERIE ANTONIO','','36 RUE LEON BOUFFLET','','SAINT MAXIMIN',18,'','0603811973','','asantoniopalma@yahoo.fr','2022-04-19','2022-04-19','2022-04-22','HYUNDAI','','KONA ELECRTIC FL 64 KWH INTUITIVE PACK','TMAK281GFNJ056897','GF-008-WT','SOCIETE',2,'ELECTRIQUE','LAURENT SEBASTIEN','','','VN','VN301551','','2022-04-22','Atelier'),(58,'LABOHYMEA','GIDAHYMEA','GIDAHYMEA',18,'','AUTO SAINT MARD','AUTO SAINT MARD','','2 ALLEE FONTAINE DES TOURNELLES','','SAINT MARD',12,'0164025818','','','asmsl.77@wanadoo.fr','2020-01-28',NULL,'2022-04-22','HYUNDAI','','','KMHK381EGLU009044','FP-551-CE','SOCIETE',26,'','','','','','','','2022-04-22','Atelier'),(59,'LABOHYMEA','GIDAHYMEA','VNVOHYMEA',8,'Ste','ARVAL SERVICE LEASE','ARVAL SERVICE LEASE','','22 RUE DES 2 GARES','','RUEIL MALMAISON CEDEX',5,'','','','','2022-04-13','2022-04-22','2022-04-22','HYUNDAI','','TUCSON NG HYBRID 230 BUSINESS+SS','TMAJC811BNJ085608','GF-562-VG','SOCIETE',6,'HYBRIDE','AUGEY PATRICK','','','VN','','','2022-04-20','Atelier'),(60,'LABOHYMEA','GIDAHYBEA','GIDAHYBEA',8,'Ste','ARVAL SERVICE LEASE','ARVAL SERVICE LEASE','','22 RUE DES 2 GARES','','RUEIL MALMAISON CEDEX',5,'','','','','2021-06-01',NULL,'2022-04-25','HYUNDAI','','','TMAJC81AGMJ031770','FZ-936-QX','SOCIETE',12,'','','','','','','','2022-04-25','Atelier'),(61,'LABOHYMEA','GIDAHYBUS','GIDAHYBUS',8,'','ATHLON CAR LEASE','ATHLON CAR LEASE','','53 AVENUE JEAN JAURES','','LE BOURGET',31,'','0674441722','','georges.dossantos@gmail.com','2022-04-25','2022-03-29','2022-04-25','HYUNDAI','','IONIQ 5 73KWH INTUITIVE','KMHKM81AFNU044549','*1**','SOCIETE',1,'ELECTRIQUE','MIROGLIO CLARISSE','','PREPA VN','VN','VN002881','','2022-04-25','Atelier'),(62,'LABOHYMEA','VNVOHYBUS','VNVOHYBUS',8,'','ATHLON CAR LEASE','ATHLON CAR LEASE','','53 AVENUE JEAN JAURES','','LE BOURGET',31,'','0674441722','','georges.dossantos@gmail.com',NULL,'2022-04-25','2022-04-25','HYUNDAI','','KONA HYBRID FL BUSINESS','KMHK381EGNU088738','','SOCIETE',0,'HYBRIDE','MIROGLIO CLARISSE','','','VN','VN002881','','2022-04-25','Véhicule neuf'),(63,'LABOHYMEA','','',0,'','','','','','','',0,'','','','',NULL,NULL,NULL,'','','','','','',0,'','','','','','','',NULL,'');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20250326212206','2025-03-27 07:07:34',164);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (1,'testtechnique-import-1-2-67e4ebeac54db678837029.xlsx','2025-03-27 07:10:50');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-27  6:54:21
