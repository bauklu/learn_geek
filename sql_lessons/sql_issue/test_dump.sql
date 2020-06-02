-- MySQL dump 10.13  Distrib 5.6.34, for Win32 (AMD64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.6.34-log

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
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '╨Э╨░╨╖╨▓╨░╨╜╨╕╨╡ ╤А╨░╨╖╨┤╨╡╨╗╨░',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='╨а╨░╨╖╨┤╨╡╨╗╤Л ╨╕╨╜╤В╨╡╤А╨╜╨╡╤В-╨╝╨░╨│╨░╨╖╨╕╨╜╨░';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'╨Я╤А╨╛╤Ж╨╡╤Б╤Б╨╛╤А╤Л'),(2,'╨Ь╨░╤В╨╡╤А╨╕╨╜╤Б╨║╨╕╨╡ ╨┐╨╗╨░╤В╤Л'),(3,'╨Т╨╕╨┤╨╡╨╛╨║╨░╤А╤В╤Л'),(4,'╨Ц╨╡╤Б╤В╨║╨╕╨╡ ╨┤╨╕╤Б╨║╨╕'),(5,'╨Ю╨┐╨╡╤А╨░╤В╨╕╨▓╨╜╨░╤П ╨┐╨░╨╝╤П╤В╤М');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `communities_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `discount` float unsigned DEFAULT NULL COMMENT '╨Т╨╡╨╗╨╕╤З╨╕╨╜╨░ ╤Б╨║╨╕╨┤╨║╨╕ ╨╛╤В 0.0 ╨┤╨╛ 1.0',
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_user_id` (`user_id`),
  KEY `index_of_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='╨б╨║╨╕╨┤╨║╨╕';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newtable`
--

DROP TABLE IF EXISTS `newtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newtable` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newtable`
--

LOCK TABLES `newtable` WRITE;
/*!40000 ALTER TABLE `newtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `newtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='╨Ч╨░╨║╨░╨╖╤Л';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `total` int(10) unsigned DEFAULT '1' COMMENT '╨Ъ╨╛╨╗╨╕╤З╨╡╤Б╤В╨▓╨╛ ╨╖╨░╨║╨░╨╖╨░╨╜╨╜╤Л╤Е ╤В╨╛╨▓╨░╤А╨╜╤Л╤Е ╨┐╨╛╨╖╨╕╤Ж╨╕╨╣',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='╨б╨╛╤Б╤В╨░╨▓ ╨╖╨░╨║╨░╨╖╨░';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '╨Э╨░╨╖╨▓╨░╨╜╨╕╨╡',
  `description` text COMMENT '╨Ю╨┐╨╕╤Б╨░╨╜╨╕╨╡',
  `price` decimal(11,2) DEFAULT NULL COMMENT '╨ж╨╡╨╜╨░',
  `catalog_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_catalog_id` (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='╨в╨╛╨▓╨░╤А╨╜╤Л╨╡ ╨┐╨╛╨╖╨╕╤Ж╨╕╨╕';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Intel Core i3-8100','╨Я╤А╨╛╤Ж╨╡╤Б╤Б╨╛╤А ╨┤╨╗╤П ╨╜╨░╤Б╤В╨╛╨╗╤М╨╜╤Л╤Е ╨┐╨╡╤А╤Б╨╛╨╜╨░╨╗╤М╨╜╤Л╤Е ╨║╨╛╨╝╨┐╤М╤О╤В╨╡╤А╨╛╨▓, ╨╛╤Б╨╜╨╛╨▓╨░╨╜╨╜╤Л╤Е ╨╜╨░ ╨┐╨╗╨░╤В╤Д╨╛╤А╨╝╨╡ Intel.',7890.00,1,'2020-06-01 17:44:59','2020-06-01 17:44:59'),(2,'Intel Core i5-7400','╨Я╤А╨╛╤Ж╨╡╤Б╤Б╨╛╤А ╨┤╨╗╤П ╨╜╨░╤Б╤В╨╛╨╗╤М╨╜╤Л╤Е ╨┐╨╡╤А╤Б╨╛╨╜╨░╨╗╤М╨╜╤Л╤Е ╨║╨╛╨╝╨┐╤М╤О╤В╨╡╤А╨╛╨▓, ╨╛╤Б╨╜╨╛╨▓╨░╨╜╨╜╤Л╤Е ╨╜╨░ ╨┐╨╗╨░╤В╤Д╨╛╤А╨╝╨╡ Intel.',12700.00,1,'2020-06-01 17:44:59','2020-06-01 17:44:59'),(3,'AMD FX-8320E','╨Я╤А╨╛╤Ж╨╡╤Б╤Б╨╛╤А ╨┤╨╗╤П ╨╜╨░╤Б╤В╨╛╨╗╤М╨╜╤Л╤Е ╨┐╨╡╤А╤Б╨╛╨╜╨░╨╗╤М╨╜╤Л╤Е ╨║╨╛╨╝╨┐╤М╤О╤В╨╡╤А╨╛╨▓, ╨╛╤Б╨╜╨╛╨▓╨░╨╜╨╜╤Л╤Е ╨╜╨░ ╨┐╨╗╨░╤В╤Д╨╛╤А╨╝╨╡ AMD.',4780.00,1,'2020-06-01 17:44:59','2020-06-01 17:44:59'),(4,'AMD FX-8320','╨Я╤А╨╛╤Ж╨╡╤Б╤Б╨╛╤А ╨┤╨╗╤П ╨╜╨░╤Б╤В╨╛╨╗╤М╨╜╤Л╤Е ╨┐╨╡╤А╤Б╨╛╨╜╨░╨╗╤М╨╜╤Л╤Е ╨║╨╛╨╝╨┐╤М╤О╤В╨╡╤А╨╛╨▓, ╨╛╤Б╨╜╨╛╨▓╨░╨╜╨╜╤Л╤Е ╨╜╨░ ╨┐╨╗╨░╤В╤Д╨╛╤А╨╝╨╡ AMD.',7120.00,1,'2020-06-01 17:44:59','2020-06-01 17:44:59'),(5,'ASUS ROG MAXIMUS X HERO','╨Ь╨░╤В╨╡╤А╨╕╨╜╤Б╨║╨░╤П ╨┐╨╗╨░╤В╨░ ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',19310.00,2,'2020-06-01 17:44:59','2020-06-01 17:44:59'),(6,'Gigabyte H310M S2H','╨Ь╨░╤В╨╡╤А╨╕╨╜╤Б╨║╨░╤П ╨┐╨╗╨░╤В╨░ Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX',4790.00,2,'2020-06-01 17:44:59','2020-06-01 17:44:59'),(7,'MSI B250M GAMING PRO','╨Ь╨░╤В╨╡╤А╨╕╨╜╤Б╨║╨░╤П ╨┐╨╗╨░╤В╨░ MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX',5060.00,2,'2020-06-01 17:44:59','2020-06-01 17:44:59');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses`
--

DROP TABLE IF EXISTS `storehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storehouses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '╨Э╨░╨╖╨▓╨░╨╜╨╕╨╡',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='╨б╨║╨╗╨░╨┤╤Л';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses`
--

LOCK TABLES `storehouses` WRITE;
/*!40000 ALTER TABLE `storehouses` DISABLE KEYS */;
/*!40000 ALTER TABLE `storehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses_products`
--

DROP TABLE IF EXISTS `storehouses_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storehouses_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `storehouse_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `value` int(10) unsigned DEFAULT NULL COMMENT '╨Ч╨░╨┐╨░╤Б ╤В╨╛╨▓╨░╤А╨╜╨╛╨╣ ╨┐╨╛╨╖╨╕╤Ж╨╕╨╕ ╨╜╨░ ╤Б╨║╨╗╨░╨┤╨╡',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='╨Ч╨░╨┐╨░╤Б╤Л ╨╜╨░ ╤Б╨║╨╗╨░╨┤╨╡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses_products`
--

LOCK TABLES `storehouses_products` WRITE;
/*!40000 ALTER TABLE `storehouses_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `storehouses_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '╨Ш╨╝╤П ╨┐╨╛╨║╤Г╨┐╨░╤В╨╡╨╗╤П',
  `birthday_at` date DEFAULT NULL COMMENT '╨Ф╨░╤В╨░ ╤А╨╛╨╢╨┤╨╡╨╜╨╕╤П',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='╨Я╨╛╨║╤Г╨┐╨░╤В╨╡╨╗╨╕';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'╨У╨╡╨╜╨╜╨░╨┤╨╕╨╣','1990-10-05','2020-06-01 17:44:58','2020-06-01 17:44:58'),(2,'╨Э╨░╤В╨░╨╗╤М╤П','1984-11-12','2020-06-01 17:44:58','2020-06-01 17:44:58'),(3,'╨Р╨╗╨╡╨║╤Б╨░╨╜╨┤╤А','1985-05-20','2020-06-01 17:44:58','2020-06-01 17:44:58'),(4,'╨б╨╡╤А╨│╨╡╨╣','1988-02-14','2020-06-01 17:44:58','2020-06-01 17:44:58'),(5,'╨Ш╨▓╨░╨╜','1998-01-12','2020-06-01 17:44:58','2020-06-01 17:44:58'),(6,'╨Ь╨░╤А╨╕╤П','1992-08-29','2020-06-01 17:44:58','2020-06-01 17:44:58');
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

-- Dump completed on 2020-06-02 10:28:43
