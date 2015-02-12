-- MySQL dump 10.13  Distrib 5.6.23, for osx10.8 (x86_64)
--
-- Host: localhost    Database: us_states
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
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `name` varchar(20) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pol_party` enum('Republican','Democratic') DEFAULT NULL,
  `time_zone` enum('Eastern','Central','Mountain','Pacific','Hawaiian','Alaskan') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('Tennessee',6930493,1,'Republican','Central'),('Mississippi',2849583,2,'Republican','Central'),('Alabama',4838228,3,'Republican','Central'),('Alaska',731449,4,'Republican','Alaskan'),('Washington',6877899,5,'Democratic','Pacific'),('Florida',19899324,6,'Democratic','Eastern'),('Georgia',9199456,7,'Republican','Eastern'),('Hawaii',1394847,8,'Democratic','Hawaiian'),('Oregon',3899758,9,'Democratic','Pacific'),('California',39041928,10,'Democratic','Pacific'),('Texas',26059203,11,'Republican','Central'),('New York',19570261,12,'Democratic','Eastern'),('Illinois',12875255,13,'Democratic','Central'),('Pennsylvania',12763536,14,'Democratic','Eastern'),('Ohio',11544225,15,'Democratic','Eastern'),('Michigan',9883360,16,'Democratic','Eastern'),('North Carolina',9752073,17,'Republican','Eastern'),('New Jersey',8864590,18,'Democratic','Eastern'),('Virginia',8185867,19,'Democratic','Eastern'),('Massachusetts',6646144,20,'Democratic','Eastern'),('Arizona',6553255,21,'Republican','Mountain'),('Indiana',6537334,22,'Republican','Eastern'),('Missouri',6021988,23,'Republican','Central'),('Maryland',5884563,24,'Democratic','Eastern'),('Wisconsin',5726398,25,'Democratic','Central'),('Minnesota',5379139,26,'Democratic','Central'),('Colorado',5187582,27,'Democratic','Mountain'),('South Carolina',4723723,28,'Republican','Eastern'),('Louisiana',4601893,29,'Republican','Central'),('Kentucky',4380415,30,'Republican','Central'),('Oklahoma',3814820,31,'Republican','Central'),('Connecticut',3590347,32,'Democratic','Eastern'),('Iowa',3074186,33,'Democratic','Central'),('Arkansas',2949131,34,'Republican','Central'),('Kansas',2885905,35,'Republican','Central'),('Utah',2855287,36,'Republican','Mountain'),('Nevada',2758931,37,'Democratic','Pacific'),('New Mexico',2085538,38,'Democratic','Mountain'),('Nebraska',1855525,39,'Republican','Central'),('West Virginia',1855413,40,'Republican','Eastern'),('Idaho',1595728,41,'Republican','Mountain'),('Maine',1329192,42,'Democratic','Eastern'),('New Hampshire',1320718,43,'Democratic','Eastern'),('Rhode Island',1050292,44,'Democratic','Eastern'),('Montana',1005141,45,'Republican','Mountain'),('Delaware',917092,46,'Democratic','Eastern'),('South Dakota',833354,47,'Republican','Central'),('North Dakota',699628,48,'Republican','Central'),('Vermont',626011,49,'Democratic','Eastern'),('Wyoming',576412,50,'Republican','Mountain');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-09 21:11:05
