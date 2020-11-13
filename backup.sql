-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 35.228.55.226    Database: mydbs
-- ------------------------------------------------------
-- Server version	5.7.25-google-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `keks`
--

DROP TABLE IF EXISTS `keks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keks` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `disc_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disc_tag` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nr_keks` int(11) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COMMENT='Keks counter test';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keks`
--

LOCK TABLES `keks` WRITE;
/*!40000 ALTER TABLE `keks` DISABLE KEYS */;
INSERT INTO `keks` VALUES (1,'Datalin','8875',1883),(2,'KeksCounter','1927',40),(3,'Bucovineanu','7483',2347),(4,'Arhanghelul Samael','2314',3496),(5,'😎Chaim🤙','6437',5067),(6,'King of bones','3720',591),(7,'ZEN','8517',1658),(8,'Chandrian','3169',869),(9,'alekhin','2531',843),(10,'Ungern','9260',3154),(11,'Oswald Mosley','8491',52),(12,'wide putin','0549',1565),(13,'bne','3554',3683),(14,'⩩ Akinji ⩩','6314',385),(15,'Cojocel Popa','4941',2247),(16,'BIO','4760',2485),(17,'S.P.Q.R','0048',740),(18,'ᠳᠠᠣᠭ','1999',15),(19,'Zelel','7665',837),(20,'Daco','2233',134),(21,'Nedland','0702',1970),(22,'raoul','4826',508),(23,'JeFF','8034',469),(24,'random frog','5520',2029),(25,'MEGA','7751',1477),(26,'Vicario del eterno padre','8972',369),(27,'Chriss','7162',105),(28,'Gabrilovich','0673',1332),(29,'Dogstein','6848',2052),(30,'Mv','2628',63),(31,'Voievod','1859',1126),(32,'Avramescu','4581',300),(33,'ill','7860',28),(34,'Nano','6009',288),(35,'Iulius Caesar','8491',134),(36,'Vasilian','3178',783),(37,'Strugurel M-a Blocat','2338',57),(38,'bruhmoment','7076',27),(39,'☦Quentin Quarantino☦','3339',392),(40,'Dyno','3861',131),(41,'TWAIN','1475',493),(42,'Sevengarcia','4218',107),(43,'Ion Rîmaru','0429',2546),(44,'Vlad Țepeș','7853',371),(45,'România','2182',347),(46,'☦Spartacus☦','7262',34),(47,'Talan','7313',266),(48,'Dv','2919',17),(49,'Natoporus','0866',2),(50,'ApocaLipsă','8697',107),(51,'desslekk','6995',12),(52,'Zdrada','0199',134),(53,'Romilitant14','5721',10),(54,'Kucyk','4760',264),(55,'mitzah','8015',21),(56,'FOX','1421',5),(57,'Mike Bloomberg','2233',29),(58,'compotel','8821',338),(59,'donte','7076',173),(60,'BULGEaryan nationalist','2233',4),(61,'Ladislav','4723',26),(62,'Vadim Tudorist','2233',1),(63,'Romanian Intellectual','2233',378),(64,'JIgSaW','3137',26),(65,'ᠳᠠᠣᠭ','0991',9),(66,'Zalmoxis2001','8457',1),(67,'jayfiller','8561',7),(68,'cirno fanatic','6645',21),(69,'卍ZIRAXES卍','4590',3),(70,'Greta Thundercok','8972',36),(71,'Δάοι','0991',72),(72,'EiS','1622',25),(73,'farri','3948',20),(74,'thomas destroyer','6555',17),(75,'Neoliberalistul','8972',76),(76,'iron','9737',35),(77,'Nicadorul Neamului','9686',3),(78,'Apestain','6848',21),(79,'yakkesz','2013',9),(80,'d4vend4','8600',8),(81,'RomanianHero','5063',17),(82,'Chrysamere','5445',18),(83,'Guillaume Durocher','7694',6),(84,'Medievalist','8491',10),(85,'xxxfatboixdxxx','5182',8),(86,'C o t t o n','8329',9),(87,'Tatsu','8792',2),(88,'[TDZ]➤Mihai✓ᴵᶰᶠ','2480',8),(89,'Aleks','6607',6),(90,'Frate de Cruce','1601',315),(91,'Akinji','6314',211),(92,'†ZIRAXES†','4590',12),(93,'Vazlui Iq 98','8972',2),(94,'Chan Guevara','4218',29),(95,'Vapex','3169',2),(96,'Chandrian','8214',191),(97,'Guillaume Durocher','1658',12),(98,'Abraxas','0734',2),(99,'Aleks','0007',9),(100,'Blitz','4760',29),(101,'Clotilde Armand','1232',7),(102,'Ludovic Orban','1859',12),(103,'PrEnAnDeZ','0767',3),(104,'sonozaki','0673',2),(105,'Vasyl','3048',11),(106,'☨Enrich☨','3230',5),(107,'McKing','8486',27),(108,'Cojocel Floppa','4941',678),(109,'Sultan','4296',8),(110,'Nerone','0739',20),(111,'wide putin','4296',367),(112,'Voievod','7460',170),(113,'Romanian Intellectual','8486',45),(114,'Frate de Floppa','1601',10),(115,'partridge','7064',35),(116,'Chandrian','3190',258),(117,'Cefort','9047',9),(118,'Rares','9072',35),(119,'Chicken Coop','5071',8),(120,'[Just Me]','9016',1),(121,'Moldovan Aristocrat','5071',12),(122,'Dornan','0616',7),(123,'Picu','3915',258),(124,'McNuggets','5388',6),(125,'Pat Bateman','4296',197),(126,'Andreas_Leonhardt','6776',274),(127,'Romanian Intellectual','5071',271),(128,'Ros','2619',12),(129,'Gleb','6312',16),(130,'DeusVult','6808',10),(131,'Bubbles','6516',71),(132,'dejaealtreileanumerespins','0491',20),(133,'Imperator Constantinus','0491',41),(134,'Denis.','7663',5),(135,'Nasty','3623',7);
/*!40000 ALTER TABLE `keks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 20:41:57
