-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: library_management_system
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `returned_books`
--

DROP TABLE IF EXISTS `returned_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returned_books` (
  `return_id` int NOT NULL AUTO_INCREMENT,
  `issue_id` int DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`return_id`),
  KEY `issue_id` (`issue_id`),
  CONSTRAINT `returned_books_ibfk_1` FOREIGN KEY (`issue_id`) REFERENCES `issued_books` (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returned_books`
--

LOCK TABLES `returned_books` WRITE;
/*!40000 ALTER TABLE `returned_books` DISABLE KEYS */;
INSERT INTO `returned_books` VALUES (1,1,'2025-06-14'),(2,2,'2025-06-15'),(3,3,'2025-06-13'),(4,4,'2025-06-18'),(5,5,'2025-06-05'),(6,6,'2025-06-24'),(7,7,'2025-06-25'),(8,8,'2025-06-18'),(9,9,'2025-06-20'),(10,10,'2025-06-12'),(11,11,'2025-06-15'),(12,12,'2025-06-18'),(13,13,'2025-06-17'),(14,14,'2025-06-18'),(15,15,'2025-06-22'),(16,16,NULL),(17,17,NULL),(18,18,NULL),(19,19,NULL),(20,20,NULL),(22,21,'2025-07-08');
/*!40000 ALTER TABLE `returned_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-05 17:16:04
