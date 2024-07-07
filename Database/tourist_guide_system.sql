-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: tourist_guide_system
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'admin','eMRXJqfQHxUWdejWk5Y1wg==','kadamk33@gmail.com','2021-01-27 04:41:05','2021-01-28 11:53:17');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('16358');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontact` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (1,'Kishor Balasaheb Kadam','kadamk33@gmail.com','+917276763516','Awesome tourist website.','2021-01-26 12:51:49');
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfeedback`
--

DROP TABLE IF EXISTS `tblfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfeedback` (
  `fid` varchar(100) NOT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfeedback`
--

LOCK TABLES `tblfeedback` WRITE;
/*!40000 ALTER TABLE `tblfeedback` DISABLE KEYS */;
INSERT INTO `tblfeedback` VALUES ('F20210127063614','Awesome tourist website.','kishor','2021-01-27 13:06:30'),('F20210127071944','Nice tourist portal.','arun','2021-01-27 13:49:58'),('F20210127072340','Its an awesome and easy to handle tourism website.','sagar','2021-01-27 13:53:55');
/*!40000 ALTER TABLE `tblfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblplaces`
--

DROP TABLE IF EXISTS `tblplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblplaces` (
  `place_id` varchar(100) NOT NULL,
  `place_name` varchar(100) DEFAULT NULL,
  `image_name` varchar(200) DEFAULT NULL,
  `place_image_path` varchar(400) DEFAULT NULL,
  `place_address` varchar(100) DEFAULT NULL,
  `place_area` varchar(100) NOT NULL,
  `place_tags` varchar(100) DEFAULT NULL,
  `place_description` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblplaces`
--

LOCK TABLES `tblplaces` WRITE;
/*!40000 ALTER TABLE `tblplaces` DISABLE KEYS */;
INSERT INTO `tblplaces` VALUES ('T20210127042048','Mahabaleshwar','mahabaleshwar.jpg','F:/project-workspace/TouristGuideSystem/WebContent/upload/mahabaleshwar.jpg','Satara, Maharashtra','Hill Station','#cold','Its a hill station, cool nature, Maharashtra popular tourist place.','2021-01-27 10:51:22','2021-01-28 16:43:32'),('T20210127042220','Kerala','kerala.jpg','F:/project-workspace/TouristGuideSystem/WebContent/upload/kerala.jpg','Kerala','Hill Station','#touristplace','Its a cool nature, popular tourist place.','2021-01-27 10:53:43','2021-01-28 16:44:03'),('T20210128045047','Goa','goa.jpg','F:/project-workspace/TouristGuideSystem/WebContent/upload/goa.jpg','Panaji, Goa.','Sea Area','#sea','Its an beach area.','2021-01-28 11:21:33','2021-01-28 16:51:33');
/*!40000 ALTER TABLE `tblplaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblquestion`
--

DROP TABLE IF EXISTS `tblquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblquestion` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblquestion`
--

LOCK TABLES `tblquestion` WRITE;
/*!40000 ALTER TABLE `tblquestion` DISABLE KEYS */;
INSERT INTO `tblquestion` VALUES (101,'Would you like to go to the beach?'),(102,'Would you like to visit Hill Station?'),(103,'Would you like to have landscape view?'),(104,'Would you like to visit Museum?'),(105,'Would you like to visit Temple?'),(106,'Would you like to visit Fort?');
/*!40000 ALTER TABLE `tblquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluser` (
  `user_id` varchar(100) NOT NULL,
  `user_full_name` varchar(200) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_mobile` varchar(100) DEFAULT NULL,
  `user_address` varchar(100) DEFAULT NULL,
  `uname` varchar(100) NOT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES ('U20210218111209','Kishor Kadam','kadamk33@gmail.com','+917276763516','Bhalawani, Ahmednagar, Maharashtra.','kishor','eMRXJqfQHxUWdejWk5Y1wg==','2021-02-18 05:42:47','2021-02-18 11:12:47'),('U20210218111258','Javed Tamboli','javed.tamboli@gmail.com','8369651475','Charoli, Pune.','javed','eMRXJqfQHxUWdejWk5Y1wg==','2021-02-18 05:44:04','2021-02-18 11:14:04'),('U20210219094358','Sagar Kharmale','sagarkharmale@gmail.com','8456571542','Bhandgaon, Ahmednagar, Maharashtra.','sagar','WKtTP+d151cGfskREhKuJA==','2021-02-19 16:15:27','2021-02-19 21:45:27');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluserquestionanswer`
--

DROP TABLE IF EXISTS `tbluserquestionanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluserquestionanswer` (
  `user_id` varchar(100) DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluserquestionanswer`
--

LOCK TABLES `tbluserquestionanswer` WRITE;
/*!40000 ALTER TABLE `tbluserquestionanswer` DISABLE KEYS */;
INSERT INTO `tbluserquestionanswer` VALUES ('U20210218111209',101,'No'),('U20210218111209',102,'No'),('U20210218111209',103,'Yes'),('U20210218111209',104,'Yes'),('U20210218111209',105,'Yes'),('U20210218111209',106,'Yes'),('U20210218111258',101,'No'),('U20210218111258',102,'Yes'),('U20210218111258',103,'Yes'),('U20210218111258',104,'No'),('U20210218111258',105,'No'),('U20210218111258',106,'Yes'),('U20210219094358',101,'Yes'),('U20210219094358',102,'No'),('U20210219094358',103,'Yes'),('U20210219094358',104,'Yes'),('U20210219094358',105,'No'),('U20210219094358',106,'Yes');
/*!40000 ALTER TABLE `tbluserquestionanswer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 12:27:06
