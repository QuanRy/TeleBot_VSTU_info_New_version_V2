-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: new_last_db_grig
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `_consultations`
--

DROP TABLE IF EXISTS `_consultations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_consultations` (
  `idconsultations` int NOT NULL AUTO_INCREMENT,
  `consultations_date_time` datetime NOT NULL,
  `consultations_content` varchar(50) NOT NULL,
  `idgroups` int NOT NULL,
  PRIMARY KEY (`idconsultations`),
  KEY `idgroups` (`idgroups`),
  CONSTRAINT `_consultations_ibfk_1` FOREIGN KEY (`idgroups`) REFERENCES `_groups` (`idgroups`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_consultations`
--

LOCK TABLES `_consultations` WRITE;
/*!40000 ALTER TABLE `_consultations` DISABLE KEYS */;
INSERT INTO `_consultations` VALUES (1,'2022-11-11 15:55:00','sdfs',8),(2,'2022-11-11 11:11:00','Будет катка!',8),(4,'2022-09-09 15:55:00','asdsfdf',8),(5,'2022-09-09 15:55:00','sdfsdf',8),(7,'2022-09-09 15:00:00','sdfsd',8),(8,'2022-09-09 15:00:00','sdfsfsdffs',8),(9,'2022-07-16 12:12:00','БУдет пир!',8),(10,'2022-11-11 15:55:00','Куку',8),(11,'2022-09-09 15:55:00','ААВПВАП',1);
/*!40000 ALTER TABLE `_consultations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_events`
--

DROP TABLE IF EXISTS `_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_events` (
  `idevents` int NOT NULL AUTO_INCREMENT,
  `events_date_time` datetime NOT NULL,
  `events_content` varchar(50) NOT NULL,
  PRIMARY KEY (`idevents`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_events`
--

LOCK TABLES `_events` WRITE;
/*!40000 ALTER TABLE `_events` DISABLE KEYS */;
INSERT INTO `_events` VALUES (2,'2022-09-09 15:55:00','sfsdfsdf'),(4,'2022-09-09 15:55:00','будет пир!');
/*!40000 ALTER TABLE `_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_groups`
--

DROP TABLE IF EXISTS `_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_groups` (
  `idgroups` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(10) NOT NULL,
  PRIMARY KEY (`idgroups`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_groups`
--

LOCK TABLES `_groups` WRITE;
/*!40000 ALTER TABLE `_groups` DISABLE KEYS */;
INSERT INTO `_groups` VALUES (1,'ИВТ-160'),(2,'ИВТ-161'),(3,'ИВТ-162'),(4,'ИВТ-163'),(5,'ИВТ-260'),(6,'ИВТ-261'),(7,'ИВТ-262'),(8,'ИВТ-263'),(9,'ИВТ-360'),(10,'ИВТ-363'),(11,'ИВТ-365'),(12,'ИВТ-460'),(13,'ИВТ-461'),(14,'ИВТ-463'),(15,'ИВТ-465');
/*!40000 ALTER TABLE `_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_notes`
--

DROP TABLE IF EXISTS `_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_notes` (
  `idnotes` int NOT NULL AUTO_INCREMENT,
  `note_date_time` datetime NOT NULL,
  `note_content` varchar(50) NOT NULL,
  `idusers` int NOT NULL,
  PRIMARY KEY (`idnotes`),
  KEY `idusers` (`idusers`),
  CONSTRAINT `_notes_ibfk_1` FOREIGN KEY (`idusers`) REFERENCES `_users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_notes`
--

LOCK TABLES `_notes` WRITE;
/*!40000 ALTER TABLE `_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_users`
--

DROP TABLE IF EXISTS `_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_users` (
  `idusers` int NOT NULL,
  `user_chat` int NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `status_elder` int NOT NULL DEFAULT '0',
  `idgroups` int NOT NULL,
  PRIMARY KEY (`idusers`),
  KEY `idgroups` (`idgroups`),
  CONSTRAINT `_users_ibfk_1` FOREIGN KEY (`idgroups`) REFERENCES `_groups` (`idgroups`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_users`
--

LOCK TABLES `_users` WRITE;
/*!40000 ALTER TABLE `_users` DISABLE KEYS */;
INSERT INTO `_users` VALUES (458927235,458927235,'ckdjdjdj',0,1);
/*!40000 ALTER TABLE `_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-20  0:55:09
