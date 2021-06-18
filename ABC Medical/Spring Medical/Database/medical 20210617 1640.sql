-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema spring_medical
--

CREATE DATABASE IF NOT EXISTS spring_medical;
USE spring_medical;

--
-- Definition of table `admin_order`
--

DROP TABLE IF EXISTS `admin_order`;
CREATE TABLE `admin_order` (
  `suppliername` varchar(50) default NULL,
  `brandname` varchar(50) default NULL,
  `medicinename` varchar(50) default NULL,
  `quantity` int(11) default NULL,
  `date` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_order`
--

/*!40000 ALTER TABLE `admin_order` DISABLE KEYS */;
INSERT INTO `admin_order` (`suppliername`,`brandname`,`medicinename`,`quantity`,`date`) VALUES 
 ('sup123','CIPLA','XXX',100,'2021-06-15'),
 ('sup123','CIPLA','yyy',100,'2021-06-18');
/*!40000 ALTER TABLE `admin_order` ENABLE KEYS */;


--
-- Definition of table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `brandname` varchar(50) default NULL,
  `medicinename` varchar(50) default NULL,
  `mcount` varchar(50) default NULL,
  `price` varchar(50) default NULL,
  `payment` varchar(50) default NULL,
  `status` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` (`id`,`username`,`brandname`,`medicinename`,`mcount`,`price`,`payment`,`status`) VALUES 
 (4,'user123','CIPLA','XXX','10','95','Paid',''),
 (5,'user123','CIPLA','XXX','10','95','Paid','');
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;


--
-- Definition of table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `mailid` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `card` varchar(50) default NULL,
  `role` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`username`,`password`,`mobile`,`mailid`,`address`,`card`,`role`) VALUES 
 ('admin123','admin123','9874561230','balacliff@gmail.com','coimbatore','9876654319876','admin'),
 ('sup123','sup123','987456120','balacliff@gmail.com','coimbatore','9876654319875','supplier'),
 ('user123','user123','9994018000','balacliff@gmail.com','coimbatore','9876654319874','Guest Customer'),
 ('sup55','sup55','9876567899','balacliff@gmail.com','coimbatore','9876654319873','supplier'),
 ('user555','user555','9940910439','balacliff@gmail.com','coimbatore','9876654319873','Regular Customer');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;


--
-- Definition of table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks` (
  `id` int(11) NOT NULL auto_increment,
  `brandname` varchar(50) default NULL,
  `medicinename` varchar(50) default NULL,
  `quantity` int(11) default NULL,
  `price` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` (`id`,`brandname`,`medicinename`,`quantity`,`price`) VALUES 
 (1,'CIPLA','XXX',70,10);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;


--
-- Definition of table `supplier_notification`
--

DROP TABLE IF EXISTS `supplier_notification`;
CREATE TABLE `supplier_notification` (
  `id` int(11) NOT NULL auto_increment,
  `suppliername` varchar(50) default NULL,
  `brandname` varchar(50) default NULL,
  `medicinename` varchar(50) default NULL,
  `quantity` varchar(50) default NULL,
  `altmsg` varchar(250) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_notification`
--

/*!40000 ALTER TABLE `supplier_notification` DISABLE KEYS */;
INSERT INTO `supplier_notification` (`id`,`suppliername`,`brandname`,`medicinename`,`quantity`,`altmsg`) VALUES 
 (2,'sup123','CIPLA','XXX','90','make order');
/*!40000 ALTER TABLE `supplier_notification` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
