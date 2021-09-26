-- MySQL dump 10.10
--
-- Host: localhost    Database: flightmanagementbooking
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `flight_name` varchar(30) NOT NULL,
  `flight_price` float NOT NULL,
  `flight_source` varchar(20) NOT NULL,
  `flight_destination` varchar(20) NOT NULL,
  `flight_date` varchar(10) NOT NULL,
  `flight_time` varchar(20) NOT NULL,
  `flight_duration` varchar(10) NOT NULL,
  `flight_total_seats` int(11) NOT NULL,
  `flight_available_seats` int(11) NOT NULL,
  PRIMARY KEY  (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--


/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
LOCK TABLES `flight` WRITE;
INSERT INTO `flight` VALUES (1,'Indigo Air Boing 112',234.3,'Rajkot','Surat','2020-02-04','18:30','2 hours',300,25),(2,'AirIndia Boing 29',100,'Rajkot','Surat','2020-02-04','19:15','1.5 hours',200,15),(3,'Jet Airways',130,'Rajkot','Surat','2020-02-04','13:00','1.7 hours',220,10);
UNLOCK TABLES;
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger` (
  `passenger_id` int(11) NOT NULL auto_increment,
  `flight_id` int(11) NOT NULL,
  `passenger_name` varchar(30) NOT NULL,
  `passenger_age` int(11) NOT NULL,
  `passenger_gender` varchar(1) NOT NULL,
  `passenger_mobile` varchar(13) NOT NULL,
  `passenger_email` varchar(50) NOT NULL,
  `passenger_seat` varchar(5) NOT NULL,
  PRIMARY KEY  (`passenger_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--


/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
LOCK TABLES `passenger` WRITE;
INSERT INTO `passenger` VALUES (1,2,'Rushit Saliya',19,'m','9327650673','rushit@gmail.com','M3'),(2,2,'Priyank Vekariya',19,'m','8156008166','priyank@gmail.com','C9'),(3,1,'Hardik Khunt',19,'m','1234567890','hardik@gmail.com','Q10'),(4,2,'Jenil Popat',19,'f','1234567890','jenil@gmail.com','A1'),(5,2,'Rushit Saliya',19,'m','9327650673','rushitsaliya99@gmail.com','A3'),(6,3,'Priyank Vekariya',19,'m','8156008166','rushit.saliya9@gmail.com','F6'),(7,3,'Dhaval Sanghani',19,'o','1234567890','rushitsaliya99@gmail.com','D1'),(8,1,'Kishor Kadam',30,'m','7276763516','kadamk33@gmail.com','J8');
UNLOCK TABLES;
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(30) NOT NULL,
  `user_bdate` varchar(10) NOT NULL,
  `user_gender` varchar(1) NOT NULL,
  `user_mobile` varchar(13) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_location` varchar(100) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `user_category` varchar(5) NOT NULL default 'user',
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--


/*!40000 ALTER TABLE `user` DISABLE KEYS */;
LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'Rushit Saliya','1999-12-05','m','9327650673','rushit@gmail.com','Surat, Gujarat','pass','admin'),(2,'Priyank Vekariya','1999-10-09','m','8156008166','priyank@gmail.com','Rajkot, Gujarat','test','user'),(3,'Divu','2000-05-01','m','8845568076','divyesh@gmail.com','Surendranagar, Gujarat','test123','user'),(4,'Hardik Khunt','2019-09-07','m','1234567890','hardik@gmail.com','Surat, Gujarat','hardik','user'),(5,'Kishor Kadam','2019-11-27','m','9404308673','kadamk33@gmail.com','Pune','java@1991','user');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

