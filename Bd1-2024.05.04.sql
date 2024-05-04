-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: schedule
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `discipl`
--

DROP TABLE IF EXISTS `discipl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipl` (
  `iddiscipl` int NOT NULL AUTO_INCREMENT,
  `knamedisc` varchar(14) DEFAULT NULL,
  `pnamedisc` mediumtext NOT NULL,
  PRIMARY KEY (`iddiscipl`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipl`
--

LOCK TABLES `discipl` WRITE;
/*!40000 ALTER TABLE `discipl` DISABLE KEYS */;
INSERT INTO `discipl` VALUES (1,'БД','Базы данных и управление ими'),(2,'ПБД','Проектирование базы данных'),(3,'ТБС','Технология беспроводной связи'),(4,'ЭП','Эксплуатационная практика'),(5,'САПР ТП','Системы автоматизированного проектирования технологических процессов'),(6,'ТАВСО','Технические и аудиовизуальные средства обучения'),(7,'ИСИС','Инструментальные средства информационных систем');
/*!40000 ALTER TABLE `discipl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `idgroups` int NOT NULL AUTO_INCREMENT,
  `gr` varchar(11) NOT NULL,
  `shifr_napr` varchar(8) NOT NULL,
  `napr` mediumtext NOT NULL,
  `prof` mediumtext,
  PRIMARY KEY (`idgroups`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'3.008.2.20 ','09.03.02','Информационные системы и технологии','Информационные системы и технологии в образовании'),(2,'3.054.2.19','44.03.05','Педагогическое образование (с двумя профилями подготовки)','Математика и информатика'),(3,'3.114.2.21','44.03.05','Педагогическое образование (с двумя профилями подготовки)','Технология и дополнительное образование'),(4,'3.124.2.21','09.03.02','Информационные системы и технологии','Образование в сфере аддитивных и наукоемких технологий'),(5,'3.008.1.20','09.03.02','Информационные системы и технологии','Информационные системы и технологии в образовании');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sched`
--

DROP TABLE IF EXISTS `sched`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sched` (
  `num_ned` int NOT NULL,
  `num_par` int NOT NULL,
  `den_ned` varchar(12) NOT NULL,
  `aud` varchar(5) NOT NULL,
  `idgroups` int NOT NULL,
  `iddiscpl` int NOT NULL,
  `idvid_z` int NOT NULL,
  PRIMARY KEY (`num_ned`,`num_par`,`den_ned`,`aud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sched`
--

LOCK TABLES `sched` WRITE;
/*!40000 ALTER TABLE `sched` DISABLE KEYS */;
INSERT INTO `sched` VALUES (1,2,'Суббота','308',5,1,1),(1,3,'Суббота','307',4,3,1),(1,3,'Суббота','308',5,1,1),(1,4,'Суббота','308',5,1,3),(1,4,'Суббота','414',2,4,2),(1,5,'СУббота','414',2,4,2),(1,5,'Суббота','417',3,4,2),(2,2,'Понедельник','307',2,2,1),(2,3,'Вторник','308',3,2,3);
/*!40000 ALTER TABLE `sched` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `idstud` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `dob` date DEFAULT NULL,
  `docum` tinyint DEFAULT NULL,
  `idgroups` int DEFAULT NULL,
  PRIMARY KEY (`idstud`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Беспалова Мария Вадимовна','2001-02-12',1,2),(2,'Иващенко Полина Николаевна','2000-12-04',0,2),(3,'Лукашевич Максим Валерьевич','2001-07-23',0,2),(4,'Ляликова Ксения Васильевна','2001-11-07',1,3),(5,'Митюшкин Никита Дмитриевич','2000-10-30',1,3),(6,'Алимова Мария Дмитриевна','1999-03-08',0,5),(7,'Побединский Владислав Сергеевич','1999-08-14',0,5);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vid_z`
--

DROP TABLE IF EXISTS `vid_z`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vid_z` (
  `idvid_z` int NOT NULL AUTO_INCREMENT,
  `name_z` varchar(40) NOT NULL,
  PRIMARY KEY (`idvid_z`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vid_z`
--

LOCK TABLES `vid_z` WRITE;
/*!40000 ALTER TABLE `vid_z` DISABLE KEYS */;
INSERT INTO `vid_z` VALUES (1,'Лекция'),(2,'Лабораторная'),(3,'Практическая');
/*!40000 ALTER TABLE `vid_z` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04 12:52:49
