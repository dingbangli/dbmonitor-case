-- MySQL dump 10.19  Distrib 10.2.43-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: newdb
-- ------------------------------------------------------
-- Server version	10.2.43-MariaDB

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
-- Table structure for table `dbwhere`
--

DROP TABLE IF EXISTS `dbwhere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbwhere` (
  `wid` tinyint(3) DEFAULT NULL,
  `dbname` char(15) DEFAULT NULL,
  `dbip` char(100) DEFAULT NULL,
  `dbtype` char(1) DEFAULT NULL,
  `id2` int(11) NOT NULL DEFAULT 0,
  `dbport` char(4) DEFAULT '3306',
  PRIMARY KEY (`id2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbwhere`
--

LOCK TABLES `dbwhere` WRITE;
/*!40000 ALTER TABLE `dbwhere` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbwhere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web`
--

DROP TABLE IF EXISTS `web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web` (
  `wname` char(5) NOT NULL DEFAULT '',
  `wid` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web`
--

LOCK TABLES `web` WRITE;
/*!40000 ALTER TABLE `web` DISABLE KEYS */;
/*!40000 ALTER TABLE `web` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-02 16:27:05
