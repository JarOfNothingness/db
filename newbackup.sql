-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: lnhs
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (10,'Testing','test 1','2024-09-28 09:45:33');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_history`
--

DROP TABLE IF EXISTS `approval_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `approval_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `admin_id` int NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `action_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_history`
--

LOCK TABLES `approval_history` WRITE;
/*!40000 ALTER TABLE `approval_history` DISABLE KEYS */;
INSERT INTO `approval_history` VALUES (32,14,14,'123','2024-10-05 17:54:32'),(33,15,15,'TRY','2024-10-05 18:03:51'),(34,16,16,'Alternative account to use as a teacher','2024-10-05 18:04:57'),(35,17,12,'1','2024-10-05 18:35:46'),(36,18,18,'gp','2024-10-05 18:36:54'),(37,19,12,'Go','2024-10-05 19:02:32'),(38,20,20,'123','2024-10-05 19:03:43'),(39,21,22,'123','2024-10-05 19:07:03'),(40,22,22,'123','2024-10-05 19:07:07'),(41,23,23,'A Teacher in the school','2024-10-08 15:42:40'),(42,26,12,'a','2024-10-19 14:40:43');
/*!40000 ALTER TABLE `approval_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_summary`
--

DROP TABLE IF EXISTS `assessment_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_summary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `quarter` enum('1st','2nd','3rd','4th') COLLATE utf8mb4_unicode_ci NOT NULL,
  `written_works_total` float DEFAULT NULL,
  `written_works_ps` float DEFAULT NULL,
  `written_works_ws` float DEFAULT NULL,
  `performance_tasks_total` float DEFAULT NULL,
  `performance_tasks_ps` float DEFAULT NULL,
  `performance_tasks_ws` float DEFAULT NULL,
  `quarterly_assessment_score` float DEFAULT NULL,
  `quarterly_assessment_ps` float DEFAULT NULL,
  `quarterly_assessment_ws` float DEFAULT NULL,
  `initial_grade` float DEFAULT NULL,
  `quarterly_grade` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_summary`
--

LOCK TABLES `assessment_summary` WRITE;
/*!40000 ALTER TABLE `assessment_summary` DISABLE KEYS */;
INSERT INTO `assessment_summary` VALUES (1,157,2,'1st',10,40,12,0,0,0,0,0,0,NULL,63),(2,158,1,'1st',0,0,0,45,90,45,0,0,0,NULL,71),(3,158,1,'1st',0,0,0,45,90,45,0,0,0,NULL,71),(4,158,1,'1st',0,0,0,45,90,45,0,0,0,NULL,71),(5,158,1,'1st',0,0,0,45,90,45,0,0,0,NULL,71),(6,157,2,'1st',10,40,12,0,0,0,0,0,0,NULL,63),(7,158,1,'1st',0,0,0,45,90,45,0,0,0,NULL,71),(8,157,2,'1st',10,40,12,0,0,0,0,0,0,NULL,63);
/*!40000 ALTER TABLE `assessment_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_types`
--

DROP TABLE IF EXISTS `assessment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` int NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_types`
--

LOCK TABLES `assessment_types` WRITE;
/*!40000 ALTER TABLE `assessment_types` DISABLE KEYS */;
INSERT INTO `assessment_types` VALUES (1,'WRITTEN WORKS',30,1),(2,'PERFORMANCE TASKS',50,1),(3,'QUARTERLY ASSESSMENT',20,1),(82,'WRITTEN WORKS',30,2),(83,'PERFORMANCE TASKS',50,2),(84,'QUARTERLY ASSESSMENT',20,2),(85,'WRITTEN WORKS',40,3),(86,'PERFORMANCE TASKS',40,3),(87,'QUARTERLY ASSESSMENT',20,3),(88,'WRITTEN WORKS',40,4),(89,'PERFORMANCE TASKS',40,4),(90,'QUARTERLY ASSESSMENT',20,4),(91,'WRITTEN WORKS',30,5),(92,'PERFORMANCE TASKS',50,5),(93,'QUARTERLY ASSESSMENT',20,5),(94,'WRITTEN WORKS',20,6),(95,'PERFORMANCE TASKS',60,6),(96,'QUARTERLY ASSESSMENT',20,6),(97,'WRITTEN WORKS',20,7),(98,'PERFORMANCE TASKS',60,7),(99,'QUARTERLY ASSESSMENT',20,7),(100,'WRITTEN WORKS',30,8),(101,'PERFORMANCE TASKS',50,8),(102,'QUARTERLY ASSESSMENT',20,8),(103,'WRITTEN WORKS',30,9),(104,'PERFORMANCE TASKS',50,9),(105,'QUARTERLY ASSESSMENT',20,9);
/*!40000 ALTER TABLE `assessment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessments`
--

DROP TABLE IF EXISTS `assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject_id` int NOT NULL DEFAULT '0',
  `grade_section` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assessment_type_id` int NOT NULL,
  `max_score` float NOT NULL,
  `quarter` enum('1st','2nd','3rd','4th') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessments`
--

LOCK TABLES `assessments` WRITE;
/*!40000 ALTER TABLE `assessments` DISABLE KEYS */;
INSERT INTO `assessments` VALUES (1,2,'7- Rose',94,25,'1st','2024-10-20 00:17:54','2024-10-20 00:17:54'),(2,1,'7- Gumamela',2,50,'1st','2024-10-20 01:35:28','2024-10-20 01:35:28');
/*!40000 ALTER TABLE `assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `user_id` int NOT NULL,
  `section` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` int NOT NULL,
  `month` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_01` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_02` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_03` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_04` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_05` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_06` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_07` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_08` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_09` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_10` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_11` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_12` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_13` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_14` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_15` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_16` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_17` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_18` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_19` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_20` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_21` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_22` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_23` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_24` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_25` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_26` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_27` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_28` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_29` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_30` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `day_31` enum('P','A','L','E') COLLATE utf8mb4_unicode_ci DEFAULT 'P',
  `total_present` int DEFAULT '0',
  `total_absent` int DEFAULT '0',
  `total_late` int DEFAULT '0',
  `total_excused` int DEFAULT '0',
  `total_points` int DEFAULT '0',
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,157,10,'7- Rose',2,'2024-10','P','P','P','P','P','P','A','P','P','P','P','P','P','P','P','P','P','P','P','P','P','P','P','P','P','P','P','P','P','P','P',22,1,0,0,220,NULL),(2,158,10,'7- Gumamela',1,'2024-10','A','A','P','P','P','P','P','P','P','P','P','P','P','L','P','P','P','P','P','P','L','P','P','A','E','P','P','E','P','P','L',15,3,3,2,165,NULL);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encoded_learner_data`
--

DROP TABLE IF EXISTS `encoded_learner_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encoded_learner_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `learner_id` int DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_extension` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lrn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elementary_completer` tinyint(1) DEFAULT NULL,
  `general_average` decimal(5,2) DEFAULT NULL,
  `citation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elementary_school_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pept_passer` tinyint(1) DEFAULT NULL,
  `pept_rating` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `als_a_e_passer` tinyint(1) DEFAULT NULL,
  `als_rating` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others_specify` tinyint(1) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `testing_center` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adviser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_year` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encoded_learner_data`
--

LOCK TABLES `encoded_learner_data` WRITE;
/*!40000 ALTER TABLE `encoded_learner_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `encoded_learner_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileserver_files`
--

DROP TABLE IF EXISTS `fileserver_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fileserver_files` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `folder_id` int NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileserver_files`
--

LOCK TABLES `fileserver_files` WRITE;
/*!40000 ALTER TABLE `fileserver_files` DISABLE KEYS */;
INSERT INTO `fileserver_files` VALUES (10,14,'grading_management (10).sql.gz','uploads/grading_management (10).sql.gz','2024-09-14 14:18:25');
/*!40000 ALTER TABLE `fileserver_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileserver_folders`
--

DROP TABLE IF EXISTS `fileserver_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fileserver_folders` (
  `folder_id` int NOT NULL AUTO_INCREMENT,
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`folder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileserver_folders`
--

LOCK TABLES `fileserver_folders` WRITE;
/*!40000 ALTER TABLE `fileserver_folders` DISABLE KEYS */;
INSERT INTO `fileserver_folders` VALUES (14,'Test','$2y$10$Rcb65WF9DtG0jhROHuwv/e2Hc8vK.mgoD8uIp872vsykpO3o0cvHq');
/*!40000 ALTER TABLE `fileserver_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` decimal(5,2) NOT NULL,
  `quarter` enum('1st','2nd','3rd','4th') COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime_added` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grading_scale`
--

DROP TABLE IF EXISTS `grading_scale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grading_scale` (
  `id` int NOT NULL AUTO_INCREMENT,
  `initial_grade_min` decimal(5,2) DEFAULT NULL,
  `initial_grade_max` decimal(5,2) DEFAULT NULL,
  `transmuted_grade` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grading_scale`
--

LOCK TABLES `grading_scale` WRITE;
/*!40000 ALTER TABLE `grading_scale` DISABLE KEYS */;
INSERT INTO `grading_scale` VALUES (1,100.00,100.00,100),(2,98.40,99.99,99),(3,96.80,98.39,98),(4,95.20,96.79,97),(5,93.60,95.19,96),(6,92.00,93.59,95),(7,90.40,91.99,94),(8,88.80,90.39,93),(9,87.20,88.79,92),(10,85.60,87.19,91),(11,84.00,85.59,90),(12,82.40,83.99,89),(13,80.80,82.39,88),(14,79.20,80.79,87),(15,77.60,79.19,86),(16,76.00,77.59,85),(17,74.40,75.99,84),(18,72.80,74.39,83),(19,71.20,72.79,82),(20,69.60,71.19,81),(21,68.00,69.59,80),(22,66.40,67.99,79),(23,64.80,66.39,78),(24,63.20,64.79,77),(25,61.60,63.19,76),(26,60.00,61.59,75),(27,56.00,59.99,74),(28,52.00,55.99,73),(29,48.00,51.99,72),(30,44.00,47.99,71),(31,40.00,43.99,70),(32,36.00,39.99,69),(33,32.00,35.99,68),(34,28.00,31.99,67),(35,24.00,27.99,66),(36,20.00,23.99,65),(37,16.00,19.99,64),(38,12.00,15.99,63),(39,8.00,11.99,62),(40,4.00,7.99,61),(41,0.00,3.99,60);
/*!40000 ALTER TABLE `grading_scale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_setter`
--

DROP TABLE IF EXISTS `point_setter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_setter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `subject_id` int NOT NULL,
  `points_present` int NOT NULL DEFAULT '10',
  `points_absent` int NOT NULL DEFAULT '0',
  `points_late` int NOT NULL DEFAULT '5',
  `points_excused` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_setter`
--

LOCK TABLES `point_setter` WRITE;
/*!40000 ALTER TABLE `point_setter` DISABLE KEYS */;
INSERT INTO `point_setter` VALUES (1,10,2,10,0,5,0),(2,10,1,10,0,5,0);
/*!40000 ALTER TABLE `point_setter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_questions`
--

DROP TABLE IF EXISTS `security_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_questions`
--

LOCK TABLES `security_questions` WRITE;
/*!40000 ALTER TABLE `security_questions` DISABLE KEYS */;
INSERT INTO `security_questions` VALUES (1,'What is your favorite color?'),(2,'What is your favorite book?'),(3,'What is the name of your favorite hobby?'),(4,'What is your favorite food?'),(5,'What is your favorite movie?'),(6,'What is the name of your favorite vacation spot?'),(7,'What is your favorite sport?'),(8,'What was your favorite subject in school?'),(9,'What is the name of your favorite music artist?'),(10,'What is your favorite animal?');
/*!40000 ALTER TABLE `security_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_grades`
--

DROP TABLE IF EXISTS `student_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_grades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `written_exam` float DEFAULT NULL,
  `performance_task` float DEFAULT NULL,
  `quarterly_exam` float DEFAULT NULL,
  `final_grade` float DEFAULT NULL,
  `highest_possible_score` decimal(5,2) DEFAULT NULL,
  `lowest_score` decimal(5,2) DEFAULT NULL,
  `average_mean` decimal(5,2) DEFAULT NULL,
  `mps` decimal(5,2) DEFAULT NULL,
  `students_75_percent` int DEFAULT NULL,
  `percentage_75_percent` decimal(5,2) DEFAULT NULL,
  `quarter` tinyint NOT NULL,
  `academic_year` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4th_quarter` decimal(5,2) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quiz1` int DEFAULT '0',
  `quiz2` int DEFAULT '0',
  `quiz3` int DEFAULT '0',
  `quiz4` int DEFAULT '0',
  `quiz5` int DEFAULT '0',
  `quiz6` int DEFAULT '0',
  `quiz7` int DEFAULT '0',
  `quiz8` int DEFAULT '0',
  `quiz9` int DEFAULT '0',
  `quiz10` int DEFAULT '0',
  `written_scores_total` int DEFAULT '0',
  `act1` int DEFAULT '0',
  `act2` int DEFAULT '0',
  `act3` int DEFAULT '0',
  `act4` int DEFAULT '0',
  `act5` int DEFAULT '0',
  `act6` int DEFAULT '0',
  `act7` int DEFAULT '0',
  `act8` int DEFAULT '0',
  `act9` int DEFAULT '0',
  `act10` int DEFAULT '0',
  `performance_task_total` int DEFAULT '0',
  `date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `transmuted_grade` float DEFAULT NULL,
  `highest_written_exam_score` decimal(5,2) DEFAULT NULL,
  `highest_performance_task_score` decimal(5,2) DEFAULT NULL,
  `highest_quarterly_exam_score` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_student_grades_student` (`student_id`),
  KEY `fk_student_grades_subject` (`subject_id`),
  CONSTRAINT `fk_student_grades_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `fk_student_grades_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_grades`
--

LOCK TABLES `student_grades` WRITE;
/*!40000 ALTER TABLE `student_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_quiz`
--

DROP TABLE IF EXISTS `student_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `user_id` int NOT NULL,
  `assessment_id` int NOT NULL,
  `subject_id` int DEFAULT NULL,
  `assessment_type_id` int DEFAULT NULL,
  `raw_score` float NOT NULL,
  `weighted_score` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_student_quiz_student` (`student_id`),
  CONSTRAINT `fk_student_quiz_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_quiz`
--

LOCK TABLES `student_quiz` WRITE;
/*!40000 ALTER TABLE `student_quiz` DISABLE KEYS */;
INSERT INTO `student_quiz` VALUES (1,157,10,1,NULL,NULL,10,8,'2024-10-20 00:17:54','2024-10-20 00:18:01'),(2,158,10,2,NULL,NULL,45,18,'2024-10-20 01:35:28','2024-10-20 01:39:51');
/*!40000 ALTER TABLE `student_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_subjects`
--

DROP TABLE IF EXISTS `student_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_subjects` (
  `student_id` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_subjects`
--

LOCK TABLES `student_subjects` WRITE;
/*!40000 ALTER TABLE `student_subjects` DISABLE KEYS */;
INSERT INTO `student_subjects` VALUES (157,'English'),(158,'Math'),(158,'Science'),(158,'English'),(158,'Araling Panlipunan'),(158,'Mapeh'),(158,'TLE'),(158,'Filipino'),(158,'Values');
/*!40000 ALTER TABLE `student_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `learners_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_year` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade & section` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime_added` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `quarter` enum('1st','2nd','3rd','4th') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (157,'Salili, Karl','2024-2025','Male','7- Rose','2024-10-20 00:17:19',10,NULL),(158,'Miya, Alfar','2024-2025','Female','7- Gumamela','2024-10-20 01:27:02',10,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `student_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Araling Panlipunan',NULL,NULL),(2,'English',NULL,NULL),(3,'Math',NULL,NULL),(4,'Science',NULL,NULL),(5,'Filipino',NULL,NULL),(6,'TLE',NULL,NULL),(7,'Mapeh',NULL,NULL),(8,'ESP',NULL,NULL),(9,'Values',NULL,NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `security_question` int DEFAULT NULL,
  `security_answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `security_question_id` int DEFAULT NULL,
  `hashed_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10,'Anna','Anna','Anna@gmail.com','Teacher',NULL,'cat','approved',1,'$2y$10$UWt5ibEzkyGrxVAtO7ayrOPz12ySWfKMP2mMBHUeNXJucwSVLnA9.'),(12,'Jose','masteradmin','Jose@gmail.com','Admin',NULL,'dog','',1,'$2y$10$RBuTNCMaRwno9nHWAbdnE.zCJ2Mb2yVWTOT6bkqt5avhBPZOU1ZY2'),(14,'Testingg101','test1235','testing101@gmail.com','Teacher',NULL,'123','approved',3,'$2y$10$QmCjdUXZ7rky90WU0CvxmePJApxFsKqJ3NYriAZjHfkQa.8Z2q/f.'),(15,'TRIAL','TRYTRY123','TRIAL@GMAIL.COM','Teacher',NULL,'TRY','approved',9,'$2y$10$EArS79m1.GJCiA/rLV1ENOCS9RJPXVfl8TTAwpmu9zSLQv1MlD95a'),(16,'Jose NiÃ±o Macasero Rama','LuckyBoywonder123','JoseR@gmail.com','Teacher',NULL,'loli','approved',9,'$2y$10$6jO1/rlygqrcgHKhvGhoVuZy7z1vBLen8ESoiMzy4WeQDibCIDj1m'),(17,'forgotpasswordtest','forgot123','forgot@gmail.com','Teacher',NULL,'Gelo','approved',10,'$2y$10$3BWGqyyXB6WCJR8pzfTJae71czfanJxwvvgfT7VjmAAxCjAQwSJI6'),(18,'Kimberly Torreon','KimB123','KimB@gmail.com','Teacher',NULL,'Neon','approved',1,'$2y$10$T.Q2WgO6pgKXA9gxvXhow.JsOHvBMOqcJ8Moe9iFSTUcKASaVw7bi'),(19,'Mommy','Mommy123','Mommy@gmail.com','Teacher',NULL,'Mami','approved',6,'$2y$10$k6u/8xW1z2wGtkoOiA4JSecJPj2AwkWol8rJPjkj8IZqWqvQOgJsO'),(20,'Melon','MelonoRamyon123','Melono123@gmail.com','Teacher',NULL,'Kiwi','approved',2,'$2y$10$jyBUZwZaK7XoA5XhV4TjFem9Yj9A0XYbd6PzxnMDujXSLoqrlNu1W'),(21,'Chloe Klum','Chloe123','Chloe@gmail.com','Teacher',NULL,'Frozen','rejected',9,'$2y$10$Gr6Swd3vPwn0xm3K1akioOYWUBVbIrIOpFL7Nvx2XOPF/TBDZnMwW'),(22,'Klyde Matabang','Klyde123','Klydematabang@gmail.com','Teacher',NULL,'123','approved',10,'$2y$10$NEgvIMhE.RchtxKeBhyT7eBpTWAGQh/SBL4XMcmNanrDkSj5HBZLG'),(23,'Marlyn tester','Marlyn123','Marlyn@gmail.com','Admin',NULL,'Volleyball','approved',7,'$2y$10$wDhFyLX8.iquBRCVq5a0Q.zsXSg8wgg3Sg8BmRJPkz0Lspgl1G/pq'),(24,'test','test123','test@gmail.com','Teacher',NULL,'evemil','approved',10,'$2y$10$0lgXys/byN8FbrY/rjg3TeHx/s4afGhMckxChroqw1Tl5AtCMG.Oq'),(25,'ShellaCora','ShelaCor','she@gmail.com','Teacher',NULL,'Zebra','pending',10,'$2y$10$3fYtaoj/8djfaLZmo.AO6uwPANCqkFuZ49eKOQHdbzYjJVaql1.GO'),(26,'Ines Vanguardia','ines2020','ines@gmail.com','Teacher',NULL,'pink','approved',1,'$2y$10$xdn0B4ICcViXfVxzHvFw3.eUP5YHkanYvkg5B.X9GT8jpvAylAyae'),(27,'my ness','myness','myness@gmail.com','Teacher',NULL,'pink','approved',1,'$2y$10$2s9jteXzm.K4wJ5EvQr10eqPRszgerduazGoDDhLCy5aJgKivSJiu');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userfileserverfiles`
--

DROP TABLE IF EXISTS `userfileserverfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userfileserverfiles` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `folder_id` int NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userfileserverfiles`
--

LOCK TABLES `userfileserverfiles` WRITE;
/*!40000 ALTER TABLE `userfileserverfiles` DISABLE KEYS */;
INSERT INTO `userfileserverfiles` VALUES (1,1,'Form 14.jpg','uploads/Form 14.jpg','2024-08-28 09:02:41',0),(2,1,'Account Settings.png','uploads/Account Settings.png','2024-08-28 09:10:34',0),(3,1,'1233333.png','uploads/1233333.png','2024-08-28 09:11:13',0),(4,1,'1233333.zip','uploads/1233333.zip','2024-08-28 09:12:46',0),(5,2,'Form 14.jpg','uploads/Form 14.jpg','2024-08-28 09:14:10',0),(6,3,'1233333 (1).png','uploads/1233333 (1).png','2024-08-28 09:52:37',0),(9,13,'456724193_885042150151321_5238812809017422679_n.jpg','uploads/456724193_885042150151321_5238812809017422679_n.jpg','2024-08-28 10:16:56',0),(13,2,'1233333 (1).png','uploads/1233333 (1).png','2024-08-28 11:29:26',0),(15,27,'Step 1 Implementation.txt','uploads/Step 1 Implementation.txt','2024-08-28 13:13:25',0),(16,14,'457273835_1196100201718595_6999637955955575012_n.jpg','C:\\xampp\\htdocs\\LanaoNationalHighschoolTeachersPortal\\Home/uploads/457273835_1196100201718595_6999637955955575012_n.jpg','2024-08-29 11:49:37',0),(19,13,'grading_management (10).sql.gz','C:\\xampp\\htdocs\\LanaoNationalHighschoolTeachersPortal\\Home/uploads/grading_management (10).sql.gz','2024-09-14 06:17:35',10);
/*!40000 ALTER TABLE `userfileserverfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userfileserverfolders`
--

DROP TABLE IF EXISTS `userfileserverfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userfileserverfolders` (
  `folder_id` int NOT NULL AUTO_INCREMENT,
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`folder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userfileserverfolders`
--

LOCK TABLES `userfileserverfolders` WRITE;
/*!40000 ALTER TABLE `userfileserverfolders` DISABLE KEYS */;
INSERT INTO `userfileserverfolders` VALUES (1,'Goods','$2y$10$.xih6UQdMqRfD34H8aizqOAOxvGehuQ7C.cEmwWR5YZbogufoKOai',0),(2,'123','$2y$10$GtBBd5sK8uKo4nCp4DaB4ejP7JOVtQS08MBn6rTpRG0vbO91UiFvC',0),(3,'321','$2y$10$RMelRG50D8hIuPZYwvGu/.JWWVd1rFsAIF3IZUM0nuYRiMsOqC1yy',0),(4,'321','$2y$10$GCJpzzxyvbQRDAm64ID7h.x3VPakIgQp0by4PGAlX9Cmi2SQG996W',0),(13,'Antonio','$2y$10$qVtfsJfguWIKtwiRqE0VGOI2LlD707b8856Ca1k99d/xVXN/myv4m',10),(14,'Testing','$2y$10$cnLK3WBVEDPJjwPRIxmNhux7Pyk5bb75EzmMY/Og9HNGIHvz4V6h2',10),(15,'Degz','$2y$10$9NszVMgM0.jyGzGsQfuIBuJ6TVNx4J96vLi.FHQooaaAcM8czBL6O',8),(16,'123','$2y$10$1XRGH6BvvJTXdGyUF7bbeOc4ofR9DFIoaFR/mRS9JUByRwRNsSvO2',12),(19,'123','$2y$10$tcENnGUeIgsrLEV0.oqOeOZKmNuF2GRLGUuzygKc3qGFw17P6xj5C',8),(21,'123','$2y$10$MzHYF5VOkdKGHMPu6eHqReFzbdTZ7HzkWHuqMZ3DLwGuqYsDgBlru',10),(23,'Delete','$2y$10$FvXWgA.20gz.9kSgj9jXi.zZTLZpmfJ1VeM8Ly3N9kMmtD8AquWAe',8),(24,'123','$2y$10$qE5iBpIHQqo/xMkLtRRPG.8tiYzY.kHGOK0zRbnfGaKuFkJNztbLW',8),(25,'123','$2y$10$wHMGPZbJA1Ql6093k/pfX.r8fTTzKX1tjWHKoHl8Wvz7BEMX9gTYm',12),(26,'SchoolWorks','$2y$10$sjifcUo8WaqobHUSr0CoHex4esEgYZFvOtLHQIOYelgpet761MOBW',93),(27,'SchoolWorksv2','$2y$10$BXDPfrvEQGEpWSK25cUi8uLBu1kUgd59ANXBzLN9kPUBRkVGZV0ya',93),(28,'Degoma\'s folder','$2y$10$e.Azbb3XEBSu3jJ3aHx/DeukByGcs9Y52MbmUGNCcf2i8TfpPXBKG',94),(29,'Userfolder','$2y$10$c28THa1mHfIKGFhA5TtYUurd0B9HYZCAvzF0NFfKsCKJI/DO5sTZq',12),(30,'sample tester','$2y$10$nCvHttUetn69u6Gqvs8aNe0dgElJSPIXyZbOg2Y.r8AIbH7sLYYPe',10),(31,'123','$2y$10$NF6qrcTxBQg9X20FWvT/6OHN1UrR2CVLYqtLIENTIMYx.BWAiGh/u',104),(32,'ssssssssssssss','$2y$10$nkwDeraZWmrANVCrgn566O49SFUEOHUHWaG3oFMwypplqQqpfQdUC',104),(34,'Marie\'s documents','$2y$10$2CxmUVHQna6YqYthrO330eb5y1zbd2moUHeAGAN0kf8E45Y6wWuYC',131);
/*!40000 ALTER TABLE `userfileserverfolders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-20 11:51:23
