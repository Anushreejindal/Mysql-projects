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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Aarav Sharma','aarav@college.com','B.Com',1),(2,'Ananya Verma','ananya@college.com','B.Sc',2),(3,'Rahul Jain','rahul@college.com','B.A.',3),(4,'Sneha Kapoor','sneha@college.com','BBA',1),(5,'Rohan Mehta','rohan@college.com','BCA',2),(6,'Tanya Singh','tanya@college.com','B.Com',3),(7,'Ishaan Khurana','ishaan@college.com','B.Sc',2),(8,'Kriti Tiwari','kriti@college.com','B.A.',1),(9,'Dev Patel','dev@college.com','BCA',3),(10,'Simran Kaur','simran@college.com','BBA',2),(11,'Neha Bansal','neha@college.com','B.Com',2),(12,'Yash Agarwal','yash@college.com','BCA',1),(13,'Pooja Joshi','pooja@college.com','BBA',3),(14,'Karan Arora','karan@college.com','B.Sc',2),(15,'Meera Sethi','meera@college.com','B.A.',3),(16,'Aditya Rana','aditya@college.com','B.Com',1),(17,'Riya Mathur','riya@college.com','B.Sc',3),(18,'Manav Goyal','manav@college.com','BBA',2),(19,'Shreya Malhotra','shreya@college.com','BCA',2),(20,'Nikhil Sharma','nikhil@college.com','B.Sc',1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
