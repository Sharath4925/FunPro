-- MySQL dump 10.17  Distrib 10.3.20-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cryptoDB
-- ------------------------------------------------------
-- Server version	10.3.20-MariaDB-1

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
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `user_id` varchar(400) NOT NULL,
  `email` varchar(400) NOT NULL,
  `walletAddress` varchar(1000) DEFAULT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `Address` varchar(400) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `PostalCode` varchar(15) DEFAULT NULL,
  `AboutMe` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES ('user_39480312345_merch@gmail.com','merch@gmail.com','0458f1b16647fddffa84f9a5fb0dd10b07da461ebaf220513124f0d873d57007bff02eb77164b1d698e35ac84da5a8ec5477d823dbcb9ace728c48f83ca98ad08b','merchant','merch','12345','','','','','',''),('user_54833108884500811_sarathjyothis1997@gmail.com','sarathjyothis1997@gmail.com','04bb02b86dfb25ec9f8509a923e9a1c5beb024e78ee9b6a62851e1f3bc9d2c4e360cc0f42c3ff6298dcc749dab9eebd15caed08017f23e4bde4716548ebeccee67','Sarath','Jyothis','08884500811','','','','','','');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` varchar(400) NOT NULL,
  `email` varchar(400) NOT NULL,
  `password` varchar(500) NOT NULL,
  `address` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('user_39480312345_merch@gmail.com','merch@gmail.com','0cc175b9c0f1b6a831c399e269772661','0458f1b16647fddffa84f9a5fb0dd10b07da461ebaf220513124f0d873d57007bff02eb77164b1d698e35ac84da5a8ec5477d823dbcb9ace728c48f83ca98ad08b'),('user_54833108884500811_sarathjyothis1997@gmail.com','sarathjyothis1997@gmail.com','0cc175b9c0f1b6a831c399e269772661','04bb02b86dfb25ec9f8509a923e9a1c5beb024e78ee9b6a62851e1f3bc9d2c4e360cc0f42c3ff6298dcc749dab9eebd15caed08017f23e4bde4716548ebeccee67');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-25 16:59:52
