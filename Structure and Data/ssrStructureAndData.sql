CREATE DATABASE  IF NOT EXISTS `ssr` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ssr`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: ssr
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `ssr_classinstance`
--

DROP TABLE IF EXISTS `ssr_classinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssr_classinstance` (
  `ClassInstanceId` int(11) NOT NULL AUTO_INCREMENT,
  `ClassTypeId` int(11) NOT NULL,
  `LocationId` int(11) NOT NULL,
  `ClassDate` date DEFAULT NULL,
  `ActiveFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`ClassInstanceId`),
  KEY `fk_classinstance_classtypeid_idx` (`ClassTypeId`),
  KEY `fk_classinstance_locationid_idx` (`LocationId`),
  CONSTRAINT `fk_classinstance_classtypeid` FOREIGN KEY (`ClassTypeId`) REFERENCES `ssr_classtype` (`ClassTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_classinstance_locationid` FOREIGN KEY (`LocationId`) REFERENCES `ssr_location` (`LocationId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssr_classinstance`
--

LOCK TABLES `ssr_classinstance` WRITE;
/*!40000 ALTER TABLE `ssr_classinstance` DISABLE KEYS */;
INSERT INTO `ssr_classinstance` VALUES (1,1,1,'2014-11-01','A'),(2,2,1,'2014-11-07','A'),(3,1,1,'2014-11-08','A'),(4,2,1,'2014-11-14','A'),(5,1,1,'2014-11-15','A'),(6,2,1,'2014-11-21','A'),(7,1,1,'2014-11-22','A');
/*!40000 ALTER TABLE `ssr_classinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssr_classtype`
--

DROP TABLE IF EXISTS `ssr_classtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssr_classtype` (
  `ClassTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ClassTypeDesc` varchar(255) DEFAULT NULL,
  `ActiveFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`ClassTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssr_classtype`
--

LOCK TABLES `ssr_classtype` WRITE;
/*!40000 ALTER TABLE `ssr_classtype` DISABLE KEYS */;
INSERT INTO `ssr_classtype` VALUES (1,'General','A'),(2,'Senior','A'),(3,'Prenatal','A'),(4,'Hump Day','A');
/*!40000 ALTER TABLE `ssr_classtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssr_customer`
--

DROP TABLE IF EXISTS `ssr_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssr_customer` (
  `CustomerId` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `SsrPatient` char(1) DEFAULT NULL,
  `ActiveFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssr_customer`
--

LOCK TABLES `ssr_customer` WRITE;
/*!40000 ALTER TABLE `ssr_customer` DISABLE KEYS */;
INSERT INTO `ssr_customer` VALUES (1,'Eileen','Marhefka','eileen.marhefka@verizon.com',NULL,NULL,NULL,NULL,'A'),(2,'Greg','Thompson','eileen.marhefka@verizon.com',NULL,NULL,NULL,NULL,'A'),(3,'Nitsa','Rosenzweig','rosenzweign@csr.nih.gov',NULL,NULL,NULL,NULL,'A'),(4,'Pat','Gleason','pattgleason@aol.com',NULL,NULL,NULL,NULL,'A'),(5,'Joe','Gleason','pattgleason@aol.com',NULL,NULL,NULL,NULL,'A'),(6,'Lorea','Wetten','lorea.wetten@gmail.com',NULL,NULL,NULL,NULL,'A'),(7,'Natalie',NULL,NULL,NULL,NULL,NULL,NULL,'A'),(8,'Kirby','Hoag','kirbyh22@gmail.com',NULL,NULL,NULL,NULL,'A'),(9,'Janet','Olivera','janetbjo@gmail.com',NULL,NULL,NULL,NULL,'A'),(10,'Joe','Olivera','janetbjo@gmail.com',NULL,NULL,NULL,NULL,'A'),(11,'Casey','Goldstein','cgoldstein@ufl.edu',NULL,NULL,NULL,NULL,'A'),(12,'Faraj','E','farajhf@gmail.com',NULL,NULL,NULL,NULL,'A'),(13,'Michelle','A','aten@olemiss.edu',NULL,NULL,NULL,NULL,'A'),(14,'Sarah','Bilgrami',NULL,NULL,NULL,NULL,NULL,'A'),(15,'Diane','Howard','diane.howard52@gmail.com',NULL,NULL,NULL,NULL,'A'),(16,'Lynne','Walker','jim_lynn_walker@hotmail.com',NULL,NULL,NULL,NULL,'A'),(17,'Jim','Walker','jim_lynn_walker@hotmail.com',NULL,NULL,NULL,NULL,'A'),(18,'Barbara','Matsko','barbaramatsko@gmail.com',NULL,NULL,NULL,NULL,'A'),(19,'Loraine','Mussoneli','lmmuss@hotmail.com',NULL,NULL,NULL,NULL,'A'),(20,'Doug','Anderson',NULL,NULL,NULL,NULL,NULL,'A'),(21,'Bethany','Craig','bethany.craig@redcross.org',NULL,NULL,NULL,NULL,'A'),(22,'Laura','Higgins','lhiggins@verizon.net',NULL,NULL,NULL,NULL,'A'),(23,'Patty',NULL,NULL,NULL,NULL,NULL,NULL,'A'),(24,'Vicky','Paisely','vmpaisely@cox.net',NULL,NULL,NULL,NULL,'A'),(25,'Nancy',NULL,'nancyemichel@gmail.com',NULL,NULL,NULL,NULL,'A'),(26,'Ahalya','Premkumar','premkumar4@yahoo.com',NULL,NULL,NULL,NULL,'A'),(27,'Kathy','Lake','kcluke@earthlink.net',NULL,NULL,NULL,NULL,'A'),(28,'Mary','Rogers','marogers1@fcps.com',NULL,NULL,NULL,NULL,'A'),(29,'Beth','VanWinkle','bethvanwinkle@verizon.net',NULL,NULL,NULL,NULL,'A'),(30,'Barbara','Semedo','bsemedo@yahoo.com',NULL,NULL,NULL,NULL,'A');
/*!40000 ALTER TABLE `ssr_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssr_instructor`
--

DROP TABLE IF EXISTS `ssr_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssr_instructor` (
  `InstructorId` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `StreetAddress` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `ZipCode` varchar(255) DEFAULT NULL,
  `W9Id` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ActiveFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`InstructorId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssr_instructor`
--

LOCK TABLES `ssr_instructor` WRITE;
/*!40000 ALTER TABLE `ssr_instructor` DISABLE KEYS */;
INSERT INTO `ssr_instructor` VALUES (1,'Kathy','Turner',NULL,NULL,'VA',NULL,NULL,NULL,NULL,'turnerkathy@gmail.com','A');
/*!40000 ALTER TABLE `ssr_instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssr_instructorpay`
--

DROP TABLE IF EXISTS `ssr_instructorpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssr_instructorpay` (
  `InstructorPayId` int(11) NOT NULL AUTO_INCREMENT,
  `InstructorId` int(11) NOT NULL,
  `ClassInstanceId` int(11) NOT NULL,
  `AmountPaid` decimal(11,2) DEFAULT NULL,
  `ActiveFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`InstructorPayId`),
  KEY `fk_instructorpay_instructorid_idx` (`InstructorId`),
  KEY `fk_instructorpay_classinstanceid_idx` (`ClassInstanceId`),
  CONSTRAINT `fk_instructorpay_classinstanceid` FOREIGN KEY (`ClassInstanceId`) REFERENCES `ssr_classinstance` (`ClassInstanceId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_instructorpay_instructorid` FOREIGN KEY (`InstructorId`) REFERENCES `ssr_instructor` (`InstructorId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssr_instructorpay`
--

LOCK TABLES `ssr_instructorpay` WRITE;
/*!40000 ALTER TABLE `ssr_instructorpay` DISABLE KEYS */;
INSERT INTO `ssr_instructorpay` VALUES (1,1,1,0.00,'A'),(2,1,2,0.00,'A'),(3,1,3,0.00,'A'),(4,1,4,30.00,'A'),(5,1,5,30.00,'A'),(6,1,6,30.00,'A'),(7,1,7,30.00,'A');
/*!40000 ALTER TABLE `ssr_instructorpay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssr_itempurchase`
--

DROP TABLE IF EXISTS `ssr_itempurchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssr_itempurchase` (
  `ItemPurchaseId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL,
  `ItemDesc` varchar(255) DEFAULT NULL,
  `AmountPaid` decimal(11,2) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `ActiveFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`ItemPurchaseId`),
  KEY `fk_itempurchase_customerid_idx` (`CustomerId`),
  CONSTRAINT `fk_itempurchase_customerid` FOREIGN KEY (`CustomerId`) REFERENCES `ssr_customer` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssr_itempurchase`
--

LOCK TABLES `ssr_itempurchase` WRITE;
/*!40000 ALTER TABLE `ssr_itempurchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssr_itempurchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssr_location`
--

DROP TABLE IF EXISTS `ssr_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssr_location` (
  `LocationId` int(11) NOT NULL AUTO_INCREMENT,
  `OfficeLocation` varchar(255) DEFAULT NULL,
  `ActiveFlag` char(1) DEFAULT 'A',
  PRIMARY KEY (`LocationId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssr_location`
--

LOCK TABLES `ssr_location` WRITE;
/*!40000 ALTER TABLE `ssr_location` DISABLE KEYS */;
INSERT INTO `ssr_location` VALUES (1,'McLean','A');
/*!40000 ALTER TABLE `ssr_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssr_packagepurchase`
--

DROP TABLE IF EXISTS `ssr_packagepurchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssr_packagepurchase` (
  `PackagePurchaseId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL,
  `PackageTypeId` int(11) NOT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `AmountPaid` decimal(11,2) DEFAULT NULL,
  `ActiveFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`PackagePurchaseId`),
  KEY `fk_packagepurchase_customerid_idx` (`CustomerId`),
  KEY `fk_packagepurchase_packagetypeid_idx` (`PackageTypeId`),
  CONSTRAINT `fk_packagepurchase_customerid` FOREIGN KEY (`CustomerId`) REFERENCES `ssr_customer` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_packagepurchase_packagetypeid` FOREIGN KEY (`PackageTypeId`) REFERENCES `ssr_packagetype` (`PackageTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssr_packagepurchase`
--

LOCK TABLES `ssr_packagepurchase` WRITE;
/*!40000 ALTER TABLE `ssr_packagepurchase` DISABLE KEYS */;
INSERT INTO `ssr_packagepurchase` VALUES (1,1,6,'2014-11-08',55.00,'A'),(2,2,6,'2014-11-08',55.00,'A'),(3,9,1,'2014-11-08',15.00,'A'),(4,12,6,'2014-11-11',55.00,'A'),(5,17,6,'2014-11-14',55.00,'A'),(6,16,6,'2014-11-14',55.00,'A'),(7,19,6,'2014-11-14',55.00,'A'),(8,9,6,'2014-11-15',55.00,'A'),(9,24,2,'2014-11-21',70.00,'A'),(10,4,1,'2014-11-22',15.00,'A'),(11,21,1,'2014-11-22',15.00,'A'),(12,18,3,'2014-11-22',130.00,'A'),(13,1,4,'2014-11-01',0.00,'A'),(14,2,4,'2014-11-01',0.00,'A'),(15,3,4,'2014-11-01',0.00,'A'),(16,4,4,'2014-11-01',0.00,'A'),(17,5,4,'2014-11-01',0.00,'A'),(18,6,4,'2014-11-01',0.00,'A'),(19,7,4,'2014-11-01',0.00,'A'),(20,8,4,'2014-11-01',0.00,'A'),(21,9,4,'2014-11-01',0.00,'A'),(22,10,4,'2014-11-01',0.00,'A'),(23,11,4,'2014-11-01',0.00,'A'),(24,12,4,'2014-11-01',0.00,'A'),(25,13,4,'2014-11-01',0.00,'A'),(26,14,4,'2014-11-01',0.00,'A'),(27,15,4,'2014-11-07',0.00,'A'),(28,16,4,'2014-11-07',0.00,'A'),(29,17,4,'2014-11-07',0.00,'A'),(30,18,4,'2014-11-07',0.00,'A'),(31,19,4,'2014-11-07',0.00,'A'),(32,20,4,'2014-11-08',0.00,'A'),(33,21,4,'2014-11-08',0.00,'A'),(34,22,4,'2014-11-08',0.00,'A'),(35,23,4,'2014-11-14',0.00,'A'),(36,24,4,'2014-11-14',0.00,'A'),(37,25,4,'2014-11-21',0.00,'A'),(38,26,4,'2014-11-22',0.00,'A'),(39,27,4,'2014-11-22',0.00,'A'),(40,28,4,'2014-11-22',0.00,'A'),(41,29,4,'2014-11-22',0.00,'A'),(42,30,4,'2014-11-22',0.00,'A'),(43,4,1,'2014-11-15',20.00,'A');
/*!40000 ALTER TABLE `ssr_packagepurchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssr_packagetype`
--

DROP TABLE IF EXISTS `ssr_packagetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssr_packagetype` (
  `PackageTypeId` int(11) NOT NULL,
  `PackageTypeDesc` varchar(255) DEFAULT NULL,
  `PackageTypeNum` int(11) DEFAULT NULL,
  `ActiveFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`PackageTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssr_packagetype`
--

LOCK TABLES `ssr_packagetype` WRITE;
/*!40000 ALTER TABLE `ssr_packagetype` DISABLE KEYS */;
INSERT INTO `ssr_packagetype` VALUES (1,'Single',1,'A'),(2,'Five Class Package',5,'A'),(3,'Ten Class Package',10,'A'),(4,'First Class',1,'A'),(5,'Referral',1,'A'),(6,'Four Class Package',4,'A');
/*!40000 ALTER TABLE `ssr_packagetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssr_visit`
--

DROP TABLE IF EXISTS `ssr_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssr_visit` (
  `VisitId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL,
  `ClassInstanceId` int(11) NOT NULL,
  `PackagePurchaseId` int(11) NOT NULL,
  `ActiveFlag` char(1) DEFAULT NULL,
  PRIMARY KEY (`VisitId`),
  KEY `fk_visit_customerid_idx` (`CustomerId`),
  KEY `fk_visit_classinstanceid_idx` (`ClassInstanceId`),
  KEY `fk_visit_packagepurchaseid_idx` (`PackagePurchaseId`),
  CONSTRAINT `fk_visit_classinstanceid` FOREIGN KEY (`ClassInstanceId`) REFERENCES `ssr_classinstance` (`ClassInstanceId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_visit_customerid` FOREIGN KEY (`CustomerId`) REFERENCES `ssr_customer` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_visit_packagepurchaseid` FOREIGN KEY (`PackagePurchaseId`) REFERENCES `ssr_packagepurchase` (`PackagePurchaseId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssr_visit`
--

LOCK TABLES `ssr_visit` WRITE;
/*!40000 ALTER TABLE `ssr_visit` DISABLE KEYS */;
INSERT INTO `ssr_visit` VALUES (1,1,1,13,'A'),(2,2,1,14,'A'),(3,3,1,15,'A'),(4,4,1,16,'A'),(5,5,1,17,'A'),(6,6,1,18,'A'),(7,7,1,19,'A'),(8,8,1,20,'A'),(9,9,1,21,'A'),(10,10,1,22,'A'),(11,11,1,23,'A'),(12,12,1,24,'A'),(13,13,1,25,'A'),(14,14,1,26,'A'),(15,15,2,27,'A'),(16,16,2,28,'A'),(17,17,2,29,'A'),(18,18,2,30,'A'),(19,19,2,31,'A'),(20,1,3,1,'A'),(21,2,3,2,'A'),(22,9,3,3,'A'),(23,12,3,4,'A'),(24,20,3,32,'A'),(25,21,3,33,'A'),(26,22,3,34,'A'),(27,23,4,35,'A'),(28,17,4,5,'A'),(29,16,4,6,'A'),(30,19,4,7,'A'),(31,24,4,36,'A'),(32,1,5,1,'A'),(33,2,5,2,'A'),(34,9,5,8,'A'),(35,12,5,4,'A'),(36,4,5,43,'A'),(37,17,6,5,'A'),(38,16,6,6,'A'),(39,19,6,7,'A'),(40,24,6,9,'A'),(41,25,6,37,'A'),(42,1,7,1,'A'),(43,2,7,2,'A'),(44,9,7,8,'A'),(45,12,7,4,'A'),(46,4,7,10,'A'),(47,21,7,11,'A'),(48,26,7,38,'A'),(49,18,7,12,'A'),(50,27,7,39,'A'),(51,28,7,40,'A'),(52,29,7,41,'A'),(53,30,7,42,'A');
/*!40000 ALTER TABLE `ssr_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_ssr_retrieveclassrecord`
--

DROP TABLE IF EXISTS `v_ssr_retrieveclassrecord`;
/*!50001 DROP VIEW IF EXISTS `v_ssr_retrieveclassrecord`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ssr_retrieveclassrecord` (
  `ClassInstanceId` tinyint NOT NULL,
  `ClassDate` tinyint NOT NULL,
  `ClassType` tinyint NOT NULL,
  `Instructor` tinyint NOT NULL,
  `Location` tinyint NOT NULL,
  `ClassAttendance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ssr_retrievecustomerrecord`
--

DROP TABLE IF EXISTS `v_ssr_retrievecustomerrecord`;
/*!50001 DROP VIEW IF EXISTS `v_ssr_retrievecustomerrecord`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ssr_retrievecustomerrecord` (
  `CustomerId` tinyint NOT NULL,
  `FirstName` tinyint NOT NULL,
  `LastName` tinyint NOT NULL,
  `TotalPaid` tinyint NOT NULL,
  `ClassesAttended` tinyint NOT NULL,
  `ClassesRemaining` tinyint NOT NULL,
  `LastClassAttended` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ssr_retrievecustomerrecordlastclassattended`
--

DROP TABLE IF EXISTS `v_ssr_retrievecustomerrecordlastclassattended`;
/*!50001 DROP VIEW IF EXISTS `v_ssr_retrievecustomerrecordlastclassattended`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ssr_retrievecustomerrecordlastclassattended` (
  `CustomerId` tinyint NOT NULL,
  `LastClassAttended` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ssr_retrievepackagepurchasedetails`
--

DROP TABLE IF EXISTS `v_ssr_retrievepackagepurchasedetails`;
/*!50001 DROP VIEW IF EXISTS `v_ssr_retrievepackagepurchasedetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ssr_retrievepackagepurchasedetails` (
  `CustomerId` tinyint NOT NULL,
  `PackagePurchaseId` tinyint NOT NULL,
  `FirstName` tinyint NOT NULL,
  `LastName` tinyint NOT NULL,
  `PackageType` tinyint NOT NULL,
  `AmountPaid` tinyint NOT NULL,
  `PurchaseDate` tinyint NOT NULL,
  `ClassesRemaining` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ssr_supportclassrecord`
--

DROP TABLE IF EXISTS `v_ssr_supportclassrecord`;
/*!50001 DROP VIEW IF EXISTS `v_ssr_supportclassrecord`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ssr_supportclassrecord` (
  `ClassInstanceId` tinyint NOT NULL,
  `ClassAttendance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ssr_supportcustomerrecordclassesattended`
--

DROP TABLE IF EXISTS `v_ssr_supportcustomerrecordclassesattended`;
/*!50001 DROP VIEW IF EXISTS `v_ssr_supportcustomerrecordclassesattended`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ssr_supportcustomerrecordclassesattended` (
  `CustomerId` tinyint NOT NULL,
  `ClassesAttended` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ssr_supportcustomerrecordlastclassattended`
--

DROP TABLE IF EXISTS `v_ssr_supportcustomerrecordlastclassattended`;
/*!50001 DROP VIEW IF EXISTS `v_ssr_supportcustomerrecordlastclassattended`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ssr_supportcustomerrecordlastclassattended` (
  `CustomerId` tinyint NOT NULL,
  `LastClassInstance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ssr_supportcustomerrecordpayandclassremaining`
--

DROP TABLE IF EXISTS `v_ssr_supportcustomerrecordpayandclassremaining`;
/*!50001 DROP VIEW IF EXISTS `v_ssr_supportcustomerrecordpayandclassremaining`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ssr_supportcustomerrecordpayandclassremaining` (
  `customerid` tinyint NOT NULL,
  `TotalPaid` tinyint NOT NULL,
  `ClassesRemaining` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ssr_supportpackagepurchasedetails`
--

DROP TABLE IF EXISTS `v_ssr_supportpackagepurchasedetails`;
/*!50001 DROP VIEW IF EXISTS `v_ssr_supportpackagepurchasedetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ssr_supportpackagepurchasedetails` (
  `PackagePurchaseId` tinyint NOT NULL,
  `PackageUseCount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_ssr_retrieveclassrecord`
--

/*!50001 DROP TABLE IF EXISTS `v_ssr_retrieveclassrecord`*/;
/*!50001 DROP VIEW IF EXISTS `v_ssr_retrieveclassrecord`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ssr_retrieveclassrecord` AS (select `ci`.`ClassInstanceId` AS `ClassInstanceId`,`ci`.`ClassDate` AS `ClassDate`,`ct`.`ClassTypeDesc` AS `ClassType`,`i`.`FirstName` AS `Instructor`,`l`.`OfficeLocation` AS `Location`,ifnull(`scr`.`ClassAttendance`,0) AS `ClassAttendance` from (((((`ssr_classinstance` `ci` join `ssr_classtype` `ct` on((`ci`.`ClassTypeId` = `ct`.`ClassTypeId`))) join `ssr_location` `l` on((`ci`.`LocationId` = `l`.`LocationId`))) join `ssr_instructorpay` `ip` on((`ip`.`ClassInstanceId` = `ci`.`ClassInstanceId`))) join `ssr_instructor` `i` on((`i`.`InstructorId` = `ip`.`InstructorId`))) left join `v_ssr_supportclassrecord` `scr` on((`ci`.`ClassInstanceId` = `scr`.`ClassInstanceId`))) order by `ci`.`ClassInstanceId` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ssr_retrievecustomerrecord`
--

/*!50001 DROP TABLE IF EXISTS `v_ssr_retrievecustomerrecord`*/;
/*!50001 DROP VIEW IF EXISTS `v_ssr_retrievecustomerrecord`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ssr_retrievecustomerrecord` AS (select `c`.`CustomerId` AS `CustomerId`,`c`.`FirstName` AS `FirstName`,`c`.`LastName` AS `LastName`,ifnull(`a`.`TotalPaid`,'0.00') AS `TotalPaid`,ifnull(`b`.`ClassesAttended`,0) AS `ClassesAttended`,ifnull(`a`.`ClassesRemaining`,0) AS `ClassesRemaining`,ifnull(`d`.`LastClassAttended`,'N/A') AS `LastClassAttended` from (((`ssr_customer` `c` left join `v_ssr_supportcustomerrecordpayandclassremaining` `a` on((`c`.`CustomerId` = `a`.`customerid`))) left join `v_ssr_supportcustomerrecordclassesattended` `b` on((`c`.`CustomerId` = `b`.`CustomerId`))) left join `v_ssr_retrievecustomerrecordlastclassattended` `d` on((`c`.`CustomerId` = `d`.`CustomerId`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ssr_retrievecustomerrecordlastclassattended`
--

/*!50001 DROP TABLE IF EXISTS `v_ssr_retrievecustomerrecordlastclassattended`*/;
/*!50001 DROP VIEW IF EXISTS `v_ssr_retrievecustomerrecordlastclassattended`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ssr_retrievecustomerrecordlastclassattended` AS (select `s`.`CustomerId` AS `CustomerId`,`ci`.`ClassDate` AS `LastClassAttended` from (`v_ssr_supportcustomerrecordlastclassattended` `s` join `ssr_classinstance` `ci` on((`s`.`LastClassInstance` = `ci`.`ClassInstanceId`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ssr_retrievepackagepurchasedetails`
--

/*!50001 DROP TABLE IF EXISTS `v_ssr_retrievepackagepurchasedetails`*/;
/*!50001 DROP VIEW IF EXISTS `v_ssr_retrievepackagepurchasedetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ssr_retrievepackagepurchasedetails` AS (select `c`.`CustomerId` AS `CustomerId`,`pp`.`PackagePurchaseId` AS `PackagePurchaseId`,`c`.`FirstName` AS `FirstName`,`c`.`LastName` AS `LastName`,`pt`.`PackageTypeDesc` AS `PackageType`,`pp`.`AmountPaid` AS `AmountPaid`,`pp`.`PurchaseDate` AS `PurchaseDate`,(`pt`.`PackageTypeNum` - `sppd`.`PackageUseCount`) AS `ClassesRemaining` from (((`ssr_packagepurchase` `pp` join `ssr_customer` `c` on((`c`.`CustomerId` = `pp`.`CustomerId`))) join `ssr_packagetype` `pt` on((`pt`.`PackageTypeId` = `pp`.`PackageTypeId`))) join `v_ssr_supportpackagepurchasedetails` `sppd` on((`sppd`.`PackagePurchaseId` = `pp`.`PackagePurchaseId`))) where (`pp`.`ActiveFlag` <> 'I') order by `pp`.`PurchaseDate` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ssr_supportclassrecord`
--

/*!50001 DROP TABLE IF EXISTS `v_ssr_supportclassrecord`*/;
/*!50001 DROP VIEW IF EXISTS `v_ssr_supportclassrecord`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ssr_supportclassrecord` AS (select `v`.`ClassInstanceId` AS `ClassInstanceId`,count(`v`.`ClassInstanceId`) AS `ClassAttendance` from `ssr_visit` `v` group by `v`.`ClassInstanceId`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ssr_supportcustomerrecordclassesattended`
--

/*!50001 DROP TABLE IF EXISTS `v_ssr_supportcustomerrecordclassesattended`*/;
/*!50001 DROP VIEW IF EXISTS `v_ssr_supportcustomerrecordclassesattended`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ssr_supportcustomerrecordclassesattended` AS (select `ssr_visit`.`CustomerId` AS `CustomerId`,count(`ssr_visit`.`CustomerId`) AS `ClassesAttended` from `ssr_visit` group by `ssr_visit`.`CustomerId`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ssr_supportcustomerrecordlastclassattended`
--

/*!50001 DROP TABLE IF EXISTS `v_ssr_supportcustomerrecordlastclassattended`*/;
/*!50001 DROP VIEW IF EXISTS `v_ssr_supportcustomerrecordlastclassattended`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ssr_supportcustomerrecordlastclassattended` AS (select `v`.`CustomerId` AS `CustomerId`,max(`v`.`ClassInstanceId`) AS `LastClassInstance` from `ssr_visit` `v` group by `v`.`CustomerId`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ssr_supportcustomerrecordpayandclassremaining`
--

/*!50001 DROP TABLE IF EXISTS `v_ssr_supportcustomerrecordpayandclassremaining`*/;
/*!50001 DROP VIEW IF EXISTS `v_ssr_supportcustomerrecordpayandclassremaining`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ssr_supportcustomerrecordpayandclassremaining` AS (select `v_ssr_retrievepackagepurchasedetails`.`CustomerId` AS `customerid`,sum(`v_ssr_retrievepackagepurchasedetails`.`AmountPaid`) AS `TotalPaid`,sum(`v_ssr_retrievepackagepurchasedetails`.`ClassesRemaining`) AS `ClassesRemaining` from `v_ssr_retrievepackagepurchasedetails` group by `v_ssr_retrievepackagepurchasedetails`.`CustomerId`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ssr_supportpackagepurchasedetails`
--

/*!50001 DROP TABLE IF EXISTS `v_ssr_supportpackagepurchasedetails`*/;
/*!50001 DROP VIEW IF EXISTS `v_ssr_supportpackagepurchasedetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ssr_supportpackagepurchasedetails` AS (select `pp`.`PackagePurchaseId` AS `PackagePurchaseId`,count(`v`.`PackagePurchaseId`) AS `PackageUseCount` from (`ssr_packagepurchase` `pp` left join `ssr_visit` `v` on((`pp`.`PackagePurchaseId` = `v`.`PackagePurchaseId`))) group by `pp`.`PackagePurchaseId`) */;
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

-- Dump completed on 2014-11-29 18:28:03
