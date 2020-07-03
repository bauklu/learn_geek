-- MySQL dump 10.13  Distrib 5.7.24, for Win32 (AMD64)
--
-- Host: localhost    Database: registry
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course_taken`
--

DROP TABLE IF EXISTS `course_taken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_taken` (
  `course_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cust_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `study_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id` (`course_id`),
  KEY `index_of_cust_id` (`cust_id`),
  KEY `course_taken_ibfl1` (`study_id`),
  CONSTRAINT `course_taken_ibfl1` FOREIGN KEY (`study_id`) REFERENCES `study_course` (`study_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `index_of_cust_id` FOREIGN KEY (`cust_id`) REFERENCES `registered` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_taken`
--

LOCK TABLES `course_taken` WRITE;
/*!40000 ALTER TABLE `course_taken` DISABLE KEYS */;
INSERT INTO `course_taken` VALUES (1,1,1,'2019-05-11 00:00:00','2020-01-15 00:00:00'),(2,2,2,'2019-08-05 00:00:00','2020-01-15 00:00:00'),(3,3,3,'2019-08-11 00:00:00','2020-01-15 00:00:00'),(4,4,4,'2019-09-21 00:00:00','2020-01-15 00:00:00'),(5,5,5,'2019-09-25 00:00:00','2020-02-21 00:00:00'),(6,6,6,'2019-09-30 00:00:00','2020-03-03 00:00:00'),(7,7,7,'2019-05-11 00:00:00','2020-03-18 00:00:00'),(8,8,8,'2019-05-11 00:00:00','2020-04-15 00:00:00'),(9,9,9,'2020-01-28 00:00:00','2020-04-16 00:00:00'),(10,10,10,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(11,11,11,'2019-05-11 00:00:00','2020-01-15 00:00:00'),(12,12,1,'2019-08-05 00:00:00','2020-01-15 00:00:00'),(13,13,2,'2019-08-11 00:00:00','2020-01-15 00:00:00'),(14,14,3,'2019-09-21 00:00:00','2020-01-15 00:00:00'),(15,15,4,'2019-09-25 00:00:00','2020-02-21 00:00:00'),(16,16,5,'2019-09-30 00:00:00','2020-03-03 00:00:00'),(17,17,6,'2019-05-11 00:00:00','2020-03-18 00:00:00'),(18,18,7,'2019-05-11 00:00:00','2020-04-15 00:00:00'),(19,19,8,'2020-01-28 00:00:00','2020-04-16 00:00:00'),(20,20,9,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(21,21,10,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(22,22,11,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(23,23,1,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(24,24,2,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(25,25,3,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(26,26,4,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(27,27,5,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(28,28,6,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(29,29,7,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(30,30,8,'2020-02-11 00:00:00','2020-05-20 00:00:00'),(31,31,9,'2020-02-11 00:00:00','2020-05-20 00:00:00');
/*!40000 ALTER TABLE `course_taken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `profile_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `inst_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rank` int(20) DEFAULT NULL,
  `year` int(20) DEFAULT NULL,
  PRIMARY KEY (`profile_id`,`inst_id`),
  KEY `education_ibfk_2` (`inst_id`),
  CONSTRAINT `education_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `education_ibfk_2` FOREIGN KEY (`inst_id`) REFERENCES `institution` (`inst_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,12,1,2008),(2,20,1,2016),(3,6,1,2015),(3,12,2,2016),(4,1,3,2019),(4,6,1,2006),(4,18,2,2011),(5,10,2,2013),(5,12,1,2011),(6,7,1,2018),(6,18,2,2019),(7,4,1,2005),(7,9,2,2010),(8,6,1,2000),(9,7,1,2017),(9,8,2,2019),(10,2,2,2018),(10,20,1,2011),(11,19,1,2016),(12,2,1,2016),(13,8,1,2014),(13,15,2,2015),(14,3,3,2015),(14,4,2,2012),(14,18,1,2005),(15,6,1,2013),(15,16,2,2017),(16,12,1,2012),(17,1,1,2014),(17,13,2,2018),(18,2,2,2015),(18,18,1,2006),(19,8,1,2013),(20,13,1,2001),(21,6,1,2013),(22,1,2,2015),(22,12,1,2008),(23,13,1,2018),(24,16,1,2017),(25,13,1,2011),(25,18,2,2015),(26,11,2,2019),(26,14,1,2013),(27,6,1,2019),(28,20,1,2011),(29,14,1,2015),(29,17,2,2019),(30,8,1,2000),(45,15,1,2014);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `groups_and_courses`
--

DROP TABLE IF EXISTS `groups_and_courses`;
/*!50001 DROP VIEW IF EXISTS `groups_and_courses`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `groups_and_courses` AS SELECT 
 1 AS `group`,
 1 AS `courses`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution` (
  `inst_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`inst_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES (20,'Belgorod State Agricultural Academy'),(12,'College '),(1,'Duke University'),(14,'Far Eastern Federal University'),(13,'Krasnoyarsk State Pedagogical University'),(15,'Kuban State University'),(2,'MEPHI'),(3,'Michigan State University'),(4,'Mississippi State University'),(5,'Montana State University'),(16,'Moscow City Teachers Training University'),(17,'Murmansk State Technical University'),(18,'New Economic School'),(6,'School'),(19,'Siberian State Transport University'),(7,'Stanford University'),(8,'University of Cambridge'),(9,'University of Michigan'),(10,'University of Oxford'),(11,'University of Virginia');
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `position_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` bigint(20) unsigned NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT 'РЅР°Р·РІР°РЅРёРµ РґРѕР»Р¶РЅРѕСЃС‚Рё',
  `profarea_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`position_id`),
  KEY `position_ibfk_1` (`profile_id`),
  KEY `position_ibfk_2` (`profarea_id`),
  CONSTRAINT `position_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `position_ibfk_2` FOREIGN KEY (`profarea_id`) REFERENCES `profarea` (`profarea_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,1,1,2010,'school teacher\n',9),(2,2,1,2017,'copywriter\n\n\n\n\n\n',5),(3,45,1,2015,'waiter',12),(4,45,2,2018,'insurance agent',11),(5,12,1,2016,'ingineer',15),(6,12,2,2018,'manager',4),(7,4,1,2006,'station conductor',13),(8,4,2,2012,'accountant',3),(9,3,1,2015,'administrator',2),(10,4,3,2019,'architect',5),(11,2,2,2018,'clerk',2),(12,5,1,2011,'cook',12),(13,6,1,2018,'film director',5),(14,7,1,2005,'doctor',7),(15,3,2,2017,'guard',10),(16,8,1,2000,'hairdresser',10),(17,2,3,2019,'laborer',10),(18,1,2,2013,'lecturer',9),(19,9,1,2017,'nurse',7),(20,10,1,2011,'plumber',10),(21,11,1,2017,'professor',9),(22,5,2,2013,'salesman',8),(23,8,2,2003,'receptionist',12),(24,8,3,2005,'travel agent',12),(25,11,2,2018,'baker',12),(26,12,3,2019,'Car wash',1),(27,7,2,2010,'programmer',15),(28,12,4,2019,'Car mechanic',1),(29,6,2,2019,'accountant',3),(30,13,1,2014,'counselor',6),(31,4,2,2010,'software engineering',15),(32,13,2,2016,'librarian',14),(33,9,2,2019,'doctor',7),(34,10,2,2018,'programmer',15),(35,14,1,2005,'programmer',15),(36,14,2,2012,'school teacher\n',9),(37,14,3,2015,'professor',9),(38,15,1,2013,'Car wash',1),(39,15,2,2015,'plumber',10),(40,15,3,2017,'school teacher\n',9),(41,16,1,2012,'cook',12),(42,16,2,2013,'waiter',12),(43,16,3,2015,'travel agent',12),(44,17,1,2014,'librarian',14),(45,17,2,2016,'school teacher\n',9),(46,17,3,2018,'lecturer',9),(47,18,1,2006,'accountant',3),(48,18,2,2010,'Car wash',1),(49,18,3,2012,'waiter',12),(50,18,4,2015,'programmer',15),(51,19,1,2013,'actor',5),(52,19,2,2018,'film director',5),(53,20,1,2001,'clerk',2),(54,21,1,2014,'waiter',12),(55,22,1,2008,'vet',7),(56,22,2,2011,'film director',5),(57,22,3,2015,'accountant',3),(58,23,1,2018,'school teacher\n',9),(59,24,1,2017,'guard',10),(60,24,2,2018,'seller',8),(61,25,1,2011,'copywriter\n\n\n\n\n\n',5),(62,25,2,2013,'school teacher\n',9),(63,25,3,2015,'accountant',3),(64,26,1,2013,'nurse',7),(65,26,2,2016,'teacher\n',9),(66,26,3,2019,'librarian',14),(67,27,1,2019,'Car wash',1),(68,28,1,2012,'travel agent',12),(69,29,1,2015,'school teacher\n',9),(70,29,2,2019,'professor',9),(71,30,1,2000,'hairdresser',10);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profarea`
--

DROP TABLE IF EXISTS `profarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profarea` (
  `profarea_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'РџСЂРѕС„РµСЃСЃРёРѕРЅР°Р»СЊРЅР°СЏ РѕР±Р»Р°СЃС‚СЊ',
  PRIMARY KEY (`profarea_id`),
  UNIQUE KEY `profarea_id` (`profarea_id`),
  KEY `profarea_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profarea`
--

LOCK TABLES `profarea` WRITE;
/*!40000 ALTER TABLE `profarea` DISABLE KEYS */;
INSERT INTO `profarea` VALUES (3,'accounting, management accounting, enterprise finance'),(2,'administrative staff'),(5,'art, entertainment, mass media'),(1,'automobile business'),(6,'consulting'),(15,'information technology, internet, telecom'),(11,'insurance'),(7,'medicine'),(14,'public service, non-profit organizations'),(8,'sales'),(9,'science, education'),(4,'top management'),(13,'transport, logistics'),(12,'travel, hotel, restaurant business'),(10,'workers');
/*!40000 ALTER TABLE `profarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `profile_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `profile_ibfk_2` (`user_id`),
  CONSTRAINT `profile_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,5,'Reuben\'','Nienow\'','arlo50@example.org\''),(2,3,'Frederik\'','Upton\'','terrence.cartwright@example.org\''),(3,1,'Unique\'','Windler\'','rupert55@example.org\''),(4,2,'Norene\'','West\'','rebekah29@example.net\''),(5,1,'Frederick\'','Effertz\'','von.bridget@example.net\''),(6,4,'Victoria\'','Medhurst\'','sstehr@example.net\''),(7,6,'Austyn\'','Braun\'','itzel.beahan@example.com\''),(8,4,'Jaida\'','Kilback\'','johnathan.wisozk@example.com\''),(9,4,'Mireya\'','Orn\'','missouri87@example.org\''),(10,2,'Jordyn\'','Jerde\'','edach@example.com\''),(11,3,'Thad\'','McDermott\'','shaun.ferry@example.org\''),(12,5,'Aiden\'','Runolfsdottir\'','doug57@example.net\''),(13,4,'Bernadette\'','Haag\'','lhoeger@example.net\''),(14,2,'Dedric\'','Stanton\'','tconsidine@example.org\''),(15,3,'Clare\'','Wolff\'','effertz.laverna@example.org\''),(16,2,'Lina\'','Macejkovic\'','smitham.demarcus@example.net\''),(17,4,'Jerrell\'','Stanton\'','deja00@example.com\''),(18,5,'Golden\'','Wisozk\'','frida19@example.com\''),(19,6,'Elisa\'','Balistreri\'','romaine27@example.org\''),(20,1,'Reed\'','Bogan\'','zhyatt@example.com\''),(21,1,'Gwendolyn\'','McClure\'','zluettgen@example.net\''),(22,3,'Luz\'','Bailey\'','tillman.iliana@example.org\''),(23,5,'Alyce\'','Toy\'','russel.ewell@example.com\''),(24,6,'Oma\'','Ortiz\'','jailyn.feest@example.com\''),(25,3,'Valentine\'','Goldner\'','matteo.wiza@example.net\''),(26,6,'Rasheed\'','Ebert\'','brenden32@example.net\''),(27,1,'Misael\'','Lakin\'','benjamin.hilpert@example.com\''),(28,4,'Shaun\'','Fritsch\'','wwiegand@example.org\''),(29,6,'Katarina\'','Sipes\'','jenifer.gislason@example.net\''),(30,5,'Newton\'','Koss\'','beatty.river@example.org\''),(31,4,'Selmer\'','Quitzon\'','ztromp@example.net\''),(32,2,'Margarete\'','Koepp\'','idell70@example.net\''),(33,4,'Donavon\'','Bauch\'','michele.lakin@example.com\''),(34,5,'Ashlynn\'','Cummerata\'','weber.tatyana@example.net\''),(35,6,'Fletcher\'','Lang\'','mona94@example.com\''),(36,1,'Amiya\'','Leuschke\'','mathilde.macejkovic@example.com\''),(37,2,'Terrance\'','West\'','ebert.magnus@example.org\''),(38,5,'Keara\'','Kiehn\'','audie.franecki@example.net\''),(39,6,'Wyatt\'','Olson\'','jarvis92@example.org\''),(40,2,'Paula\'','Shields\'','casey.bayer@example.org\''),(41,4,'Ivah\'','Bernier\'','paris15@example.com\''),(42,2,'Liza\'','Howe\'','hadley72@example.org\''),(43,6,'Kevon\'','Gerhold\'','fhilll@example.com\''),(44,5,'Hermina\'','Lubowitz\'','amalia.reichel@example.org\''),(45,3,'Cara\'','Quigley\'','hailee.beier@example.net\''),(46,2,'Kian\'','Weimann\'','tankunding@example.net\''),(47,4,'Madelynn\'','Hahn\'','pleffler@example.org\''),(48,6,'Hassie\'','Monahan\'','lowe.amelia@example.net\''),(49,6,'Taryn\'','Kuvalis\'','aschneider@example.net\''),(50,1,'Hollis\'','Padberg\'','cathryn40@example.net\''),(51,2,'Henriette\'','Lindgren\'','allie.witting@example.com\''),(52,3,'Keven\'','DuBuque\'','durward83@example.com\''),(53,4,'Chaz\'','Yundt\'','stamm.bret@example.net\''),(54,2,'Rosalee\'','Dickens\'','concepcion.conn@example.net\''),(55,3,'Kip\'','Schoen\'','ibeer@example.com\'');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registered`
--

DROP TABLE IF EXISTS `registered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registered` (
  `cust_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `cust_id` (`cust_id`),
  KEY `index_of_profile` (`profile_id`),
  CONSTRAINT `index_of_profile` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered`
--

LOCK TABLES `registered` WRITE;
/*!40000 ALTER TABLE `registered` DISABLE KEYS */;
INSERT INTO `registered` VALUES (1,18,'2019-05-11 00:00:00','2020-07-03 19:29:20'),(2,27,'2019-08-05 00:00:00','2020-07-03 19:29:20'),(3,45,'2019-08-11 00:00:00','2020-01-15 00:00:00'),(4,8,'2019-09-21 00:00:00','2020-07-03 19:29:20'),(5,4,'2019-09-25 00:00:00','2020-02-21 00:00:00'),(6,13,'2019-09-30 00:00:00','2020-07-03 19:29:20'),(7,1,'2019-05-11 00:00:00','2020-07-03 19:29:20'),(8,12,'2019-05-11 00:00:00','2020-07-03 19:29:20'),(9,3,'2020-01-28 00:00:00','2020-07-03 19:29:20'),(10,15,'2020-02-11 00:00:00','2020-07-03 19:29:20'),(11,9,'2020-03-06 00:00:00','2020-05-28 00:00:00'),(12,23,'2020-03-15 00:00:00','2020-07-03 19:29:20'),(13,45,'2020-03-19 00:00:00','2020-07-03 19:29:20'),(14,13,'2020-03-23 00:00:00','2020-05-29 00:00:00'),(15,5,'2020-04-04 00:00:00','2020-07-03 19:29:20'),(16,11,'2020-04-12 00:00:00','2020-07-03 19:29:21'),(17,7,'2020-04-18 00:00:00','2020-07-03 19:29:21'),(18,2,'2020-04-22 00:00:00','2020-07-03 19:29:21'),(19,6,'2020-04-22 00:00:00','2020-07-03 19:29:21'),(20,8,'2020-05-02 00:00:00','2020-07-03 19:29:21'),(21,10,'2020-05-10 00:00:00','2020-07-03 19:29:21'),(22,16,'2020-05-11 00:00:00','2020-07-03 19:29:21'),(23,14,'2020-05-16 00:00:00','2020-07-03 19:29:21'),(24,15,'2020-05-21 00:00:00','2020-07-03 19:29:21'),(25,6,'2020-05-21 00:00:00','2020-07-03 19:29:21'),(26,19,'2020-06-03 00:00:00','2020-07-03 19:29:21'),(27,8,'2020-06-10 00:00:00','2020-07-03 19:29:21'),(28,1,'2020-06-15 00:00:00','2020-07-03 19:29:21'),(29,13,'2020-06-15 00:00:00','2020-07-03 19:29:21'),(30,17,'2020-06-18 00:00:00','2020-07-03 19:29:21'),(31,7,'2020-06-18 00:00:00','2020-07-03 19:29:21'),(32,18,'2020-03-18 00:00:00','2020-03-18 00:00:00'),(33,3,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(34,20,'2020-01-03 00:00:00','2020-01-03 00:00:00'),(35,29,'2020-01-23 00:00:00','2020-01-23 00:00:00'),(36,29,'2020-05-28 00:00:00','2020-05-28 00:00:00'),(37,22,'2020-02-08 00:00:00','2020-02-08 00:00:00'),(38,15,'2020-04-02 00:00:00','2020-04-02 00:00:00'),(39,30,'2020-04-15 00:00:00','2020-04-16 00:00:00'),(40,21,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(41,27,'2020-03-01 00:00:00','2020-03-01 00:00:00'),(42,25,'2020-03-15 00:00:00','2020-03-15 00:00:00'),(43,5,'2020-03-15 00:00:00','2020-03-15 00:00:00'),(44,26,'2020-03-15 00:00:00','2020-03-15 00:00:00'),(45,23,'2020-06-15 00:00:00','2020-06-15 00:00:00'),(46,23,'2020-01-15 00:00:00','2020-01-15 00:00:00'),(47,12,'2020-01-30 00:00:00','2020-01-30 00:00:00'),(48,28,'2020-01-31 00:00:00','2020-01-31 00:00:00'),(49,16,'2020-01-31 00:00:00','2020-01-31 00:00:00'),(50,24,'2020-01-31 00:00:00','2020-01-31 00:00:00'),(51,24,'2020-03-31 00:00:00','2020-03-31 00:00:00'),(52,19,'2020-05-31 00:00:00','2020-05-31 00:00:00'),(53,13,'2020-05-31 00:00:00','2020-05-31 00:00:00'),(54,8,'2020-05-31 00:00:00','2020-05-31 00:00:00'),(55,1,'2020-05-31 00:00:00','2020-05-31 00:00:00');
/*!40000 ALTER TABLE `registered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `student_groups`
--

DROP TABLE IF EXISTS `student_groups`;
/*!50001 DROP VIEW IF EXISTS `student_groups`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `student_groups` AS SELECT 
 1 AS `student`,
 1 AS `group_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `study_course`
--

DROP TABLE IF EXISTS `study_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `study_course` (
  `study_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`study_id`),
  UNIQUE KEY `study_id` (`study_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_course`
--

LOCK TABLES `study_course` WRITE;
/*!40000 ALTER TABLE `study_course` DISABLE KEYS */;
INSERT INTO `study_course` VALUES (1,'Critical Thinking'),(2,'Recruiting For Human Resourses Positions'),(3,'Decision Making Skills'),(4,'Delegating For Results'),(5,'Customer Service Traning'),(6,'Coaching'),(7,'Candidate Selection Training'),(8,'Improving Managerial Effectiveness'),(9,'Handling Emotions in the Workplace'),(10,'Building and Managing Highly Effective Teams'),(11,'Job Performance Training');
/*!40000 ALTER TABLE `study_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_group`
--

DROP TABLE IF EXISTS `study_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `study_group` (
  `group_id` bigint(20) unsigned NOT NULL,
  `profile_id` bigint(20) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  KEY `group_ibfk_1` (`group_id`),
  KEY `group_ibfk_2` (`profile_id`),
  CONSTRAINT `group_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `study_course` (`study_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `group_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_group`
--

LOCK TABLES `study_group` WRITE;
/*!40000 ALTER TABLE `study_group` DISABLE KEYS */;
INSERT INTO `study_group` VALUES (1,1,'A'),(4,2,'B'),(7,3,'C'),(10,4,'D'),(2,5,'A'),(5,6,'B'),(8,7,'C'),(11,8,'D'),(3,9,'A'),(6,10,'B'),(9,11,'C'),(10,12,'D'),(1,13,'A'),(6,14,'B'),(8,15,'C'),(11,16,'D'),(3,17,'A'),(4,18,'B'),(7,19,'C'),(10,20,'D'),(1,21,'A'),(5,22,'B'),(8,23,'C'),(11,24,'D'),(3,25,'A'),(4,26,'B'),(9,27,'C'),(10,28,'D'),(1,29,'A'),(5,30,'B'),(8,45,'C'),(3,3,'A'),(6,4,'B'),(7,5,'C'),(11,6,'D'),(1,7,'A'),(4,8,'B'),(11,9,'D'),(2,10,'A'),(3,11,'A'),(5,21,'B'),(10,22,'D'),(6,23,'B'),(1,24,'A'),(1,25,'A'),(2,26,'A'),(10,27,'D'),(2,28,'A'),(6,29,'B'),(8,13,'C'),(3,14,'A'),(4,15,'B'),(3,16,'A'),(9,17,'C'),(4,18,'B');
/*!40000 ALTER TABLE `study_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `email` (`email`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Miguel','hassan.kuphal@example.org','5858'),(2,'Gregory','weimann.richard@example.com','1122'),(3,'Jast','jennifer27@example.com','5544'),(4,'Ozella','idickens@example.com','3354'),(5,'Emmet','qcremin@example.org','6776'),(6,'Eleonore','antonietta.swift@example.com','1414');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `groups_and_courses`
--

/*!50001 DROP VIEW IF EXISTS `groups_and_courses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `groups_and_courses` AS select distinct `sg`.`name` AS `group`,`sc`.`name` AS `courses` from (`study_group` `sg` join `study_course` `sc` on((`sg`.`group_id` = `sc`.`study_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_groups`
--

/*!50001 DROP VIEW IF EXISTS `student_groups`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_groups` AS select concat(`profile`.`firstname`,' ',`profile`.`lastname`) AS `student`,`g`.`name` AS `group_name` from (`profile` join `study_group` `g` on((`profile`.`profile_id` = `g`.`profile_id`))) order by `g`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-04  0:43:21
