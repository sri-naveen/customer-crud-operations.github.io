CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John','Doe','Male','New York','USA','john.doe@email.com','55512345678'),(2,'Jane','Smith','Female','Los Angeles','USA','jane.smith@email.com','55598765432'),(3,'Michael','Johnson','Male','Chicago','USA','michael.johnson@email.com','55587654321'),(4,'Emily','Brown','Female','Houston','USA','emily.brown@email.com','55523456789'),(5,'Daniel','Miller','Male','Phoenix','USA','daniel.miller@email.com','55578905432'),(6,'Sophia','Davis','Female','Philadelphia','USA','sophia.davis@email.com','55543218765'),(7,'Matthew','Garcia','Male','San Antonio','USA','matthew.garcia@email.com','55534567890'),(8,'Olivia','Martinez','Female','San Diego','USA','olivia.martinez@email.com','55567890123'),(9,'Ethan','Lopez','Male','Dallas','USA','ethan.lopez@email.com','55590123456'),(10,'Ava','Hernandez','Female','San Jose','USA','ava.hernandez@email.com','55554321098'),(11,'Liam','Wang','Male','Mumbai','India','liam.wang@email.com','9876543210'),(12,'Mia','Liu','Female','Delhi','India','mia.liu@email.com','8765432109'),(13,'Jackson','Johnson','Male','Bangalore','India','jackson.johnson@email.com','7654321098'),(14,'Emma','White','Female','Hyderabad','India','emma.white@email.com','6543210987'),(15,'Aiden','Smith','Male','Chennai','India','aiden.smith@email.com','5432109876'),(16,'Isabella','Lee','Female','Kolkata','India','isabella.lee@email.com','4321098765'),(17,'Lucas','Taylor','Male','Bangalore','India','lucas.taylor@email.com','3210987654'),(18,'Aria','Johnson','Female','Pune','India','aria.johnson@email.com','2109876543'),(19,'Noah','Brown','Male','Ahmedabad','India','noah.brown@email.com','1098765432'),(20,'Grace','Davis','Female','Surat','India','grace.davis@email.com','9876543210'),(21,'Carter','Garcia','Male','London','UK','carter.garcia@email.com','2012345678'),(22,'Lily','Martinez','Female','Toronto','Canada','lily.martinez@email.com','4165551234'),(23,'Mason','Lopez','Male','Sydney','Australia','mason.lopez@email.com','298765432'),(24,'Ella','Hernandez','Female','Tokyo','Japan','ella.hernandez@email.com','345678901'),(25,'Logan','Wang','Male','Paris','France','logan.wang@email.com','123456789'),(26,'Alex','Supreme','Male','Mumbai','India','alex@gmail.com','7894562345'),(27,'Sophie','Taylor','Female','Manchester','UK','sophie.taylor@email.com','442071234567'),(28,'Aarav','Kumar','Male','Mumbai','India','aarav.kumar@email.com','9988776655'),(29,'Aria','Gupta','Female','Delhi','India','aria.gupta@email.com','9876543210'),(30,'Leo','Chen','Male','Shanghai','China','leo.chen@email.com','13800138000');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-05  4:46:58
