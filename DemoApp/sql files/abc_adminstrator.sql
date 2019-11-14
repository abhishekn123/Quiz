-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: abc
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adminstrator`
--

DROP TABLE IF EXISTS `adminstrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminstrator` (
  `Question` varchar(100) DEFAULT NULL,
  `op1` varchar(25) DEFAULT NULL,
  `op2` varchar(25) DEFAULT NULL,
  `op3` varchar(25) DEFAULT NULL,
  `op4` varchar(25) DEFAULT NULL,
  `qnum` varchar(20) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminstrator`
--

LOCK TABLES `adminstrator` WRITE;
/*!40000 ALTER TABLE `adminstrator` DISABLE KEYS */;
INSERT INTO `adminstrator` VALUES ('Grand Central Terminal, Park Avenue','largestrailway','highest railway ','longestrailway','None','1',1),('Entomology is the science that studies','Behavior of human beings','Insects','The origin','The formation','2',2),('Garampani sanctuary is located at','	Junagarh, Gujarat','Diphu, Assam','Kohima, Nagaland','Gangtok, Sikkim','3',3),('\rHitler party which came into power in 1933 is known as','Labour Party','Nazi Party','Ku-Klux-Klan','Democratic Party','4',4),('\rFastest shorthand writer was','Dr. G. D. Bis','J.R.D. Tata','J.M. Tagore','Khudada Khan','5',5),('Epsom (England) is the place associated with','Horse racing','Polo','Shooting','Snooker','6',6),('First Afghan War took place in','1839','1843','1833','1848','7',7),('First China War was fought between','China and Britain','China and France','China and Egypt','China and Greek','8',8),('Guwahati High Court is the judicature of','Nagaland','Arunachal Pradesh','Assam','All of the above','9',9),('Ecology deals with','Birds','Cell formation','organisms','Tissues','10',10);
/*!40000 ALTER TABLE `adminstrator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-14 10:57:55
