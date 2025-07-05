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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `author_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `published_year` int DEFAULT NULL,
  `total_copies` int DEFAULT NULL,
  `available_copies` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `author_id` (`author_id`),
  KEY `category_id` (`category_id`),
  KEY `publisher_id` (`publisher_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`Category_id`),
  CONSTRAINT `books_ibfk_3` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Harry Potter and the Philosopher\'s Stone',1,6,4,1997,10,3),(2,'A Song of Ice and Fire',2,6,1,1996,8,2),(3,'Five Point Someone',3,15,7,2004,12,6),(4,'The Da Vinci Code',4,5,2,2003,10,1),(5,'The Alchemist',5,19,1,1988,9,0),(6,'Murder on the Orient Express',6,4,4,1934,5,1),(7,'It',7,11,5,1986,6,3),(8,'I Too Had a Love Story',8,3,7,2008,10,2),(9,'The Kite Runner',9,1,2,2003,9,4),(10,'Pride and Prejudice',10,19,9,1813,4,0),(11,'The Subtle Art of Not Giving a F*ck',11,9,3,2016,6,2),(12,'The God of Small Things',12,15,13,1997,7,1),(13,'Not a Penny More, Not a Penny Less',13,5,1,1976,8,3),(14,'The Fault in Our Stars',14,3,2,2012,6,2),(15,'The Room on the Roof',15,14,6,1956,5,1),(16,'Norwegian Wood',16,14,5,1987,7,3),(17,'Wise and Otherwise',17,7,7,2002,6,2),(18,'The Notebook',18,3,11,1996,10,5),(19,'The Immortals of Meluha',19,6,14,2010,8,3),(20,'Fifty Shades of Grey',20,3,2,2011,9,4);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
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
