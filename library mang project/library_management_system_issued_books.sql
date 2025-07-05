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
-- Table structure for table `issued_books`
--

DROP TABLE IF EXISTS `issued_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issued_books` (
  `issue_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `issue_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `book_id` (`book_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `issued_books_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  CONSTRAINT `issued_books_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issued_books`
--

LOCK TABLES `issued_books` WRITE;
/*!40000 ALTER TABLE `issued_books` DISABLE KEYS */;
INSERT INTO `issued_books` VALUES (1,1,1,'2025-06-01','2025-06-15'),(2,2,2,'2025-06-02','2025-06-16'),(3,3,3,'2025-05-28','2025-06-11'),(4,4,4,'2025-06-05','2025-06-19'),(5,5,5,'2025-05-20','2025-06-03'),(6,6,6,'2025-06-10','2025-06-24'),(7,7,7,'2025-06-11','2025-06-25'),(8,8,8,'2025-06-04','2025-06-18'),(9,9,9,'2025-06-12','2025-06-26'),(10,10,10,'2025-05-30','2025-06-13'),(11,11,11,'2025-06-01','2025-06-15'),(12,12,12,'2025-06-02','2025-06-16'),(13,13,13,'2025-06-03','2025-06-17'),(14,14,14,'2025-06-04','2025-06-18'),(15,15,15,'2025-06-05','2025-06-19'),(16,16,16,'2025-06-06','2025-06-20'),(17,17,17,'2025-06-07','2025-06-21'),(18,18,18,'2025-06-08','2025-06-22'),(19,19,19,'2025-06-09','2025-06-23'),(20,20,20,'2025-06-10','2025-06-24'),(21,3,5,'2025-07-01','2025-07-08'),(22,1,12,'2025-07-01','2025-07-08');
/*!40000 ALTER TABLE `issued_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-05 17:16:03
