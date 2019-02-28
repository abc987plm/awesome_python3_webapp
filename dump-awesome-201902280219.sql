-- MySQL dump 10.13  Distrib 5.7.16, for Win64 (x86_64)
--
-- Host: localhost    Database: awesome
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_image` varchar(500) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `summary` varchar(50) DEFAULT NULL,
  `content` text,
  `created_at` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES ('0015511158976781e84c0574293471bb1d584d6b40722d5000','00155100281734196cb644f487743a0b56312fa4ab2070d000','jun-x','http://www.gravatar.com/avatar/70df1755d45a0419fca2f9c7cd23365b?d=mm&s=120','1111','666','6666',1551120000),('001551168204812fddb383e7d314f5eae9e9573914f9aa1000','00155100281734196cb644f487743a0b56312fa4ab2070d000','jun-x','http://www.gravatar.com/avatar/70df1755d45a0419fca2f9c7cd23365b?d=mm&s=120','333','3','3',1551170000),('0015511967929219444aa7dded545f0a003f90f8b35b615000','00155100281734196cb644f487743a0b56312fa4ab2070d000','jun-x','http://www.gravatar.com/avatar/70df1755d45a0419fca2f9c7cd23365b?d=mm&s=120','啊','啊','啊',1551200000);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` varchar(50) NOT NULL,
  `blog_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_image` varchar(500) DEFAULT NULL,
  `content` text,
  `created_at` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('00155119747000459cf84d72bb24b5ea2865e168f8274d9000','0015511967929219444aa7dded545f0a003f90f8b35b615000','00155100281734196cb644f487743a0b56312fa4ab2070d000','jun-x','http://www.gravatar.com/avatar/70df1755d45a0419fca2f9c7cd23365b?d=mm&s=120','枯',1551200000),('001551197476131435bba11f9734812b7426c75eb24fa8a000','0015511967929219444aa7dded545f0a003f90f8b35b615000','00155100281734196cb644f487743a0b56312fa4ab2070d000','jun-x','http://www.gravatar.com/avatar/70df1755d45a0419fca2f9c7cd23365b?d=mm&s=120','工作',1551200000),('0015511974816090051888a36aa41928bed543a1a11a9d6000','0015511967929219444aa7dded545f0a003f90f8b35b615000','00155100281734196cb644f487743a0b56312fa4ab2070d000','jun-x','http://www.gravatar.com/avatar/70df1755d45a0419fca2f9c7cd23365b?d=mm&s=120','jj',1551200000);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passwd` varchar(50) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `created_at` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('001551000785250a66327b5c3e54a11af78828b43101990000','1@1.com','79cb2afaf23b4979529a6a53694cb2844eed4b25',0,'1','http://www.gravatar.com/avatar/d219af79b45e5891507fda4c4c2139a0?d=mm&s=120',1551000000),('00155100281734196cb644f487743a0b56312fa4ab2070d000','abc987plm@qq.com','f5736fc8ac55576192613967e0fd1ded3d60e1d4',1,'jun-x','http://www.gravatar.com/avatar/70df1755d45a0419fca2f9c7cd23365b?d=mm&s=120',1551000000);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'awesome'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-28  2:19:49
