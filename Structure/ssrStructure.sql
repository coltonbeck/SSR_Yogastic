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
  PRIMARY KEY (`ClassInstanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`InstructorPayId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`ItemPurchaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`PackagePurchaseId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`VisitId`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

-- Dump completed on 2014-11-29 14:33:11
