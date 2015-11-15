-- MySQL dump 10.13  Distrib 5.6.23, for osx10.8 (x86_64)
--
-- Host: localhost    Database: bankofdanish
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Current Database: `bankofdanish`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bankofdanish` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bankofdanish`;

--
-- Table structure for table `accountinfo`
--

DROP TABLE IF EXISTS `accountinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountinfo` (
  `accountid` int(11) NOT NULL,
  `accountNo` varchar(255) DEFAULT NULL,
  `accountType` varchar(255) DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `customername` varchar(55) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`accountid`),
  KEY `FK33AA105B9269E1BD` (`customerid`),
  CONSTRAINT `FK33AA105B9269E1BD` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountinfo`
--

LOCK TABLES `accountinfo` WRITE;
/*!40000 ALTER TABLE `accountinfo` DISABLE KEYS */;
INSERT INTO `accountinfo` VALUES (1,'111111','checking',180,'Ali',1),(2,'111111','saving',250,'Ali',1),(3,'222222','401k',180,'Sam',3),(4,'333333','Home Loan',180,'Danish',4),(5,'11111','Home Loan ',180,'Mrs Ali',2);
/*!40000 ALTER TABLE `accountinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `customerid` int(11) DEFAULT NULL,
  `customername` varchar(55) DEFAULT NULL,
  `streetname` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  KEY `FKBB979BF49269E1BD` (`customerid`),
  CONSTRAINT `FKBB979BF49269E1BD` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Ali','Main Street','75034','TX','Richardson'),(2,'Mrs Ali','Oak Street','60466','IL','chicago'),(4,'Danish','Plano Street','75067','TX','Garland'),(3,'sam','Oak Street','75034','TX','IRVING');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `bankId` int(11) NOT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `bankType` varchar(255) DEFAULT NULL,
  `locatiomn` varchar(200) DEFAULT NULL,
  `empId` int(11) DEFAULT NULL,
  PRIMARY KEY (`bankId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL,
  `customerName` varchar(55) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `ssn` varchar(55) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Ali','2147567777','333454444',1),(2,'Mrs Ali','2147677779','226754444',2),(3,'Sam','2147677770','116754444',3),(4,'Danish','2147677779','446754444',5);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employeeName` varchar(255) DEFAULT NULL,
  `empId` varchar(255) DEFAULT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `designatin` varchar(255) DEFAULT NULL,
  `daysOff` int(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `StockId` int(11) NOT NULL,
  `StockName` varchar(6) DEFAULT NULL,
  `StockDescription` varchar(50) DEFAULT NULL,
  `StockQuantity` int(10) DEFAULT NULL,
  `StartingPrice` float DEFAULT NULL,
  `EndingPRice` float DEFAULT NULL,
  `stockKey` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`StockId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(6) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-15 15:32:36
