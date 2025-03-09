-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: eventmanagment
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `attendees`
--

DROP TABLE IF EXISTS `attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE attendees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE `attendees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_id` bigint DEFAULT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PHONE` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_event1` (`event_id`),
  CONSTRAINT `fk_event` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  CONSTRAINT `fk_event1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  CONSTRAINT `FKgf6p1osteer5pa826gv0c32d1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendees`
--

LOCK TABLES `attendees` WRITE;
/*!40000 ALTER TABLE `attendees` DISABLE KEYS */;
INSERT INTO `attendees` VALUES (25,14,'nivedh@gmail.com','1245632580','Nivedh'),(27,NULL,'kirshna12@gmail.com','1245635890','Krishna'),(29,3,'Shiva@gmail.com','1245354785','Shiva'),(30,12,'reddy@gmail.com','4524875210','Reddy'),(31,17,'charan@gmail.com','4524789510','Charan'),(32,NULL,'cherry@gmail.com','45214563','Cherry');
/*!40000 ALTER TABLE `attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (3,'Food Expo 2024','A large-scale food exhibition with international cuisines.','Chicago And sanfranscico','2024-06-05','2024-02-01'),(4,'Health & Wellness Summit','A summit focusing on health and wellness.','San Francisc','2024-08-20','2024-03-12'),(12,'New Year Party','Enjoy the Day With Our Organization','Benga',NULL,'2024-12-14'),(14,'Dasara','Enjoy Day With Our Organization','Bengaluru',NULL,'2024-12-04'),(17,'Christamas','Enjoy the Day With Our Organization','Hebbal',NULL,'2024-12-20');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_attendees`
--

DROP TABLE IF EXISTS `events_attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_attendees` (
  `event_id` bigint NOT NULL,
  `attendees_id` bigint NOT NULL,
  UNIQUE KEY `UK1h0rjbh0uwal7q8erc129d814` (`attendees_id`),
  KEY `FK5x6j3ovtp7g5rrsfr0x0uupap` (`event_id`),
  CONSTRAINT `FK5x6j3ovtp7g5rrsfr0x0uupap` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  CONSTRAINT `FKmt10c3523csp6r615o1wxu39b` FOREIGN KEY (`attendees_id`) REFERENCES `attendees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_attendees`
--

LOCK TABLES `events_attendees` WRITE;
/*!40000 ALTER TABLE `events_attendees` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_tasks`
--

DROP TABLE IF EXISTS `events_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_tasks` (
  `event_id` bigint NOT NULL,
  `tasks_id` bigint NOT NULL,
  UNIQUE KEY `UKtog91l8ackktso8r043spb536` (`tasks_id`),
  KEY `FK3dosrv7ouglmavtdy1j3ypkh1` (`event_id`),
  CONSTRAINT `FK3dosrv7ouglmavtdy1j3ypkh1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  CONSTRAINT `FK4h1m5lhtc02rk3ck7e2nq4nuh` FOREIGN KEY (`tasks_id`) REFERENCES `tasks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_tasks`
--

LOCK TABLES `events_tasks` WRITE;
/*!40000 ALTER TABLE `events_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `event_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKso3gaw278lqccjow3yxkck6wx` (`event_id`),
  CONSTRAINT `FKso3gaw278lqccjow3yxkck6wx` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (5,'Confirm Guest Speakers','Pending',3),(7,'Decorate Venue','Completed',4),(19,'Mehandi','Completed',14),(23,'Chandu','Completed',4),(25,'Caterren','Completed',17),(26,'Caterren','Completed',14);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-04  0:09:15
