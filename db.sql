-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: primer
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.12.04.1

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `valueS` int(4) NOT NULL,
  `valueM` int(4) NOT NULL,
  `valueL` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1 COMMENT='type-gym(1),sport(2),outdoor(3),home(4),repair(5),occ(6)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (9,1,'Weight Lifting: general',90,112,133),(10,1,'Aerobics: water',120,149,178),(11,1,'Stretching, Hatha Yoga',120,149,178),(12,1,'Calisthenics: moderate',135,167,200),(13,1,'Riders: general (ie., HealthRider)',150,186,222),(14,1,'Aerobics: low impact',165,205,244),(15,1,'Aerobics, Step: low impact',210,260,311),(16,1,'Aerobics: high impact',210,260,311),(17,1,'Aerobics, Step: high impact',300,372,444),(18,1,'Stair Step Machine: general',180,223,266),(19,1,'Teaching aerobics',180,223,266),(20,1,'Weight Lifting: vigorous',180,223,266),(21,1,'Bicycling, Stationery: moderate',210,260,311),(22,1,'Bicycling, Stationery: vigorous',315,391,466),(23,1,'Rowing, Stationery: moderate',210,260,311),(24,1,'Rowing, Stationery: vigorous',255,316,377),(25,1,'Calisthenics: vigorous',240,298,355),(26,1,'Circuit Training: general',240,298,355),(27,1,'Elliptical Trainer: general',270,335,400),(28,1,'Ski Machine: general',285,353,422),(29,2,'Billiards',75,93,111),(30,2,'Bowling',90,112,133),(31,2,'Dancing: slow, waltz, foxtrot',90,112,133),(32,2,'Frisbee',90,112,133),(33,2,'Volleyball: non-competitive, general play',90,112,133),(34,2,'Water Volleyball',90,112,133),(35,2,'Archery: non-hunting',105,130,155),(36,2,'Golf: using cart',105,130,155),(37,2,'Hang Gliding',105,130,155),(38,2,'Curling',120,149,178),(39,2,'Gymnastics: general',120,149,178),(40,2,'Horseback Riding: general',120,149,178),(41,2,'Tai Chi',120,149,178),(42,2,'Volleyball: competitive, gymnasium play',120,149,178),(43,2,'Walk: 3.5 mph (17 min/mi)',120,149,178),(44,2,'Walk: 4 mph (15 min/mi)',135,167,200),(45,2,'Walk: 4.5 mph (13 min/mi)',150,186,222),(46,2,'Walk/Jog: jog <10 min.',180,223,266),(47,2,'Badminton: general',135,167,200),(48,2,'Kayaking',150,186,222),(49,2,'Skateboarding',150,186,222),(50,2,'Snorkeling',150,186,222),(51,2,'Softball: general play',150,186,222),(52,2,'Whitewater: rafting, kayaking',150,186,222),(53,2,'Dancing: disco, ballroom, square',165,205,244),(54,2,'Golf: carrying clubs',165,205,244),(55,2,'Dancing: Fast, ballet, twist',180,223,266),(56,2,'Fencing',180,223,266),(57,2,'Hiking: cross-country',180,223,266),(58,2,'Skiing: downhill',180,223,266),(59,2,'Swimming: general',180,223,266),(60,2,'Swimming: backstroke',240,298,355),(61,2,'Swimming: breaststroke',300,372,444),(62,2,'Swimming: laps, vigorous',300,372,444),(63,2,'Swimming: treading, vigorous',300,372,444),(64,2,'Swimming: butterfly',330,409,488),(65,2,'Swimming: crawl',330,409,488),(66,2,'Water Skiing',180,223,266),(67,2,'Wrestling',180,223,266),(68,2,'Basketball: wheelchair',195,242,289),(69,2,'Race Walking',195,242,289),(70,2,'Ice Skating: general',210,260,311),(71,2,'Racquetball: casual, general',210,260,311),(72,2,'Rollerblade Skating',210,260,311),(73,2,'Scuba or skin diving',210,260,311),(74,2,'Sledding, luge, toboggan',210,260,311),(75,2,'Soccer: general',210,260,311),(76,2,'Tennis: general',210,260,311),(77,2,'Basketball: playing a game',240,298,355),(78,2,'Bicycling: 12-13.9 mph',240,298,355),(79,2,'Football: touch, flag, general',240,298,355),(80,2,'Hockey: field & ice',240,298,355),(81,2,'Rock Climbing: rappelling',240,298,355),(82,2,'Running: 5 mph (12 min/mile)',240,298,355),(83,2,'Running: pushing wheelchair, m',240,298,355),(84,2,'Skiing: cross-country',240,298,355),(85,2,'Snow Shoeing',240,298,355),(86,2,'Volleyball: beach',240,298,355),(87,2,'Bicycling: BMX or mountain',255,316,377),(88,2,'Boxing: sparring',270,335,400),(89,2,'Football: competitive',270,335,400),(90,2,'Orienteering',270,335,400),(91,2,'Running: 5.2 mph (11.5 min/mile)',270,335,400),(92,2,'Running: cross-country',270,335,400),(93,2,'Bicycling: 14-15.9 mph',300,372,444),(94,2,'Martial Arts: judo, karate, kickbox',300,372,444),(95,2,'Racquetball: competitive',300,372,444),(96,2,'Rope Jumping',300,372,444),(97,2,'Running: 6 mph (10 min/mile)',300,372,444),(98,2,'Water Polo',300,372,444),(99,2,'Rock Climbing: ascending',330,409,488),(100,2,'Running: 6.7 mph (9 min/mile)',330,409,488),(101,2,'Bicycling: 16-19 mph',360,446,533),(102,2,'Handball: general',360,446,533),(103,2,'Running: 7.5 mph (8 min/mile)',375,465,555),(104,2,'Running: 8.6 mph (7 min/mile)',435,539,644),(105,2,'Bicycling: > 20 mph',495,614,733),(106,2,'Running: 10 mph (6 min/mile)',495,614,733),(107,3,'Planting seedlings, shrubs',120,149,178),(108,3,'Raking Lawn',120,149,178),(109,3,'Sacking grass or leaves',120,149,178),(110,3,'Gardening: general',135,167,200),(111,3,'Mowing Lawn: push, power',135,167,200),(112,3,'Operate Snow Blower: walking',135,167,200),(113,3,'Plant trees',135,167,200),(114,3,'Gardening: weeding',139,172,205),(115,3,'Carrying & stacking wood',150,186,222),(116,3,'Digging, spading dirt',150,186,222),(117,3,'Laying sod / crushed rock',150,186,222),(118,3,'Mowing Lawn: push, hand',165,205,244),(119,3,'Chopping & splitting wood',180,223,266),(120,3,'Shoveling Snow: by hand',180,223,266),(121,4,'Sleeping',19,23,28),(122,4,'Watching TV',23,28,33),(123,4,'Reading: sitting',34,42,50),(124,4,'Standing in line',38,47,56),(125,4,'Cooking',75,93,111),(126,4,'Child-care: bathing, feeding, ',105,130,155),(127,4,'Food Shopping: with cart',105,130,155),(128,4,'Moving: unpacking',105,130,155),(129,4,'Playing w/kids: moderate effort',120,149,178),(130,4,'Heavy Cleaning: wash car, windows',135,167,200),(131,4,'Child games: hop-scotch, jacks',150,186,222),(132,4,'Playing w/kids: vigorous effort',150,186,222),(133,4,'Moving: household furniture',180,223,266),(134,4,'Moving: carrying boxes',210,260,311),(135,5,'Auto Repair',90,112,133),(136,5,'Wiring and Plumbing',90,112,133),(137,5,'Carpentry: refinish furniture',135,167,200),(138,5,'Lay or remove carpet/tile',135,167,200),(139,5,'Paint, paper, remodel: inside',135,167,200),(140,5,'Cleaning rain gutters',150,186,222),(141,5,'Hanging storm windows',150,186,222),(142,5,'Paint house: outside',150,186,222),(143,5,'Carpentry: outside',180,223,266),(144,5,'Roofing',180,223,266),(145,6,'Computer Work',41,51,61),(146,6,'Light Office Work',45,56,67),(147,6,'Sitting in Meetings',49,60,72),(148,6,'Desk Work',53,65,78),(149,6,'Sitting in Class',53,65,78),(150,6,'Truck Driving: sitting',60,74,89),(151,6,'Bartending/Server',75,93,111),(152,6,'Heavy Equip. Operator',75,93,111),(153,6,'Police Officer',75,93,111),(154,6,'Theater Work',90,112,133),(155,6,'Welding',90,112,133),(156,6,'Carpentry Work',105,130,155),(157,6,'Coaching Sports',120,149,178),(158,6,'Masseur, standing',120,149,178),(159,6,'Construction, general',165,205,244),(160,6,'Coal Mining',180,223,266),(161,6,'Horse Grooming',180,223,266),(162,6,'Masonry',210,260,311),(163,6,'Forestry, general',240,298,355),(164,6,'Heavy Tools, not power',240,298,355),(165,6,'Steel Mill: general',240,298,355),(166,6,'Firefighting',360,446,533);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `body_mass_index`
--

DROP TABLE IF EXISTS `body_mass_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `body_mass_index` (
  `user_id` int(11) DEFAULT NULL,
  `height` int(3) DEFAULT NULL,
  `weight` int(3) NOT NULL,
  `bmr` int(5) NOT NULL,
  `age` int(3) NOT NULL,
  `category` float NOT NULL,
  `sex` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `need` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `body_mass_index`
--

LOCK TABLES `body_mass_index` WRITE;
/*!40000 ALTER TABLE `body_mass_index` DISABLE KEYS */;
INSERT INTO `body_mass_index` VALUES (26,185,70,1760,28,3,'male',2727),(25,184,70,1755,28,3,'male',2720),(32,185,70,1760,28,3,'male',2727),(36,170,70,1469,35,2,'female',2019),(52,185,72,1807,25,1,'male',2169),(54,183,70,1661,41,4,'male',2866),(53,185,80,1427,70,5,'female',2711),(55,188,80,1625,29,4,'female',2803),(57,188,28,1145,36,2,'male',1574),(59,188,78,1925,22,1,'male',2310),(60,33,33,459,33,4,'male',791),(62,200,100,1510,99,1,'female',1812),(64,189,94,1813,18,3,'female',2810),(67,185,19,1114,12,3,'female',1727),(68,173,67,1672,26,2,'male',2299),(70,180,80,1865,29,1,'male',2238);
/*!40000 ALTER TABLE `body_mass_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=905 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (879,25,'s',1420568433),(880,64,'dsa',1420666301),(881,64,'kuradsa',1420666303),(882,64,'dsa',1420666304),(883,64,'ds',1420666304),(884,64,'',1420666304),(885,64,'dsadsadas',1420666310),(886,64,'ds',1420666310),(887,64,'',1420666310),(888,68,'eeej',1420905784),(889,70,'g',1421248818),(890,70,'',1421248818),(891,70,'',1421248819),(892,70,'',1421248819),(893,70,'',1421248819),(894,70,'',1421248819),(895,70,'',1421248819),(896,70,',',1421248819),(897,70,'',1421248819),(898,70,'',1421248820),(899,70,'',1421248820),(900,70,',',1421248821),(901,70,'',1421248821),(902,70,',',1421248821),(903,70,',',1421248821),(904,70,',',1421248822);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `type` int(2) NOT NULL,
  `calories` int(4) NOT NULL,
  `carbs` float NOT NULL,
  `fiber` float NOT NULL,
  `starch` float NOT NULL,
  `sugar` float NOT NULL,
  `fat` float NOT NULL,
  `saturated_fat` float NOT NULL,
  `monounsaturated_fat` float NOT NULL,
  `polyunsaturated_fat` float NOT NULL,
  `omega3` float NOT NULL,
  `omega6` float NOT NULL,
  `protein` float NOT NULL,
  `vitA` float NOT NULL,
  `vitC` float NOT NULL,
  `vitD` float NOT NULL,
  `vitE` float NOT NULL,
  `vitK` float NOT NULL,
  `thiaminB1` float NOT NULL,
  `riboflavinB2` float NOT NULL,
  `niacinB3` float NOT NULL,
  `vitB6` float NOT NULL,
  `folateB9` float NOT NULL,
  `vitB12` float NOT NULL,
  `panthotenicB5` float NOT NULL,
  `choline` float NOT NULL,
  `betaine` float NOT NULL,
  `calcium` float NOT NULL,
  `iron` float NOT NULL,
  `magnesium` float NOT NULL,
  `phosphorus` float NOT NULL,
  `potassium` float NOT NULL,
  `sodium` float NOT NULL,
  `zinc` float NOT NULL,
  `copper` float NOT NULL,
  `manganese` float NOT NULL,
  `selenium` float NOT NULL,
  `fluoride` float NOT NULL,
  `cholesterol` float NOT NULL,
  `phytosterols` float NOT NULL,
  `alcohol` float NOT NULL,
  `water` float NOT NULL,
  `ash` float NOT NULL,
  `caffeine` float NOT NULL,
  `theobromine` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'chicken',1,165,0,0,0,0,3.6,1,1.2,0.8,70,590,31,0.3,0,0,0.3,0.3,0.1,0.1,13.7,0.6,4,0.3,1,85.3,6.2,15,1,29,228,256,74,1,0,0,27.6,0,85,0,0,65.3,1.1,0,0),(2,'pork',1,149,0,0,0,0,3.2,1.1,0.9,0.2,0,230,28.2,0,11.6,0,0,0,0.1,0.3,5.9,0.1,4,2.8,0.9,0,0,13,22.2,15,283,227,107,3.5,0.1,0,49.6,0,504,0,0,66.7,1.7,0,0),(19,'veal',1,144,0,0,0,0,6.8,2.8,2.6,0.5,40,360,19.4,0,0,0,0.3,0,0.1,0.3,7.5,0.4,13,1.3,1.3,0,0,15,0.8,24,203,315,82,3.1,0.1,0,8.1,0,82,0,0,72.8,1,0,0),(20,'turkey',1,157,0,0,0,0,3.2,1,0.6,0.9,70,570,29.9,0,0,0,0.1,0,0.1,0.1,6.8,0.5,6,0.4,0.7,83.4,6.1,19,1.3,28,219,305,64,2,0,0,32.1,0,69,0,0,66.3,1.1,0,0),(21,'beef',1,214,0,0,0,0,11.1,4.4,4.7,0.4,41,309,26.6,0,0,0,0.4,1.1,0,0.2,5.2,0.3,6,2.5,0.6,85.9,7.2,13,2.9,21,193,300,61,6.6,0.1,0,21.6,22.4,86,0,0,61.3,0.9,0,0),(22,'mackerel',2,205,0,0,0,0,13.9,3.3,5.5,3.3,2670,219,18.6,50.1,0.4,0.009,1.5,5,0.2,0.3,9.1,0.4,1,8.7,0.9,65,0,12,1.6,76,217,314,90,0.6,0.1,0,44.1,0,70,0,0,63.6,1.3,0,0),(23,'trout',2,148,0,0,0,0,6.6,1.1,3.3,1.5,1068,175,20.8,17.1,0.5,0,0.2,0.1,0.4,0.3,4.5,0.2,13,7.8,1.9,65,0,43,1.5,22,245,361,52,0.7,0.2,0.9,12.6,0,58,0,0,71.4,1.2,0,0),(24,'salmon',2,206,0,0,0,0,12.3,2.5,4.4,4.4,2260,666,22.1,15,3.7,0,0,0,0.3,0.1,8,0.6,34,2.8,1.5,0,0,15,0.3,30,252,384,61,0.4,0,0,41.4,0,63,0,0,64.8,1.2,0,0),(25,'squid',2,92,3.1,0,0,0,1.4,0.4,0.1,0.5,496,2,15.6,9.9,4.7,0,1.2,0,0,0.4,2.2,0.4,5,1.3,0.5,65,0,32,0.7,33,221,246,44,1.5,1.9,0,44.8,0,233,0,0,78.5,1.4,0,0),(26,'catfish',2,95,0,0,0,0,2.8,0.7,0.8,0.9,535,101,16.4,15,0.7,0.025,0,0,0.2,0.1,1.9,0.1,10,2.2,0.8,0,0,14,0.3,23,209,358,43,0.5,0,0,12.6,0,58,0,0,80.4,1,0,0),(27,'milk',3,60,5.3,0,0,5.3,3.3,1.9,0.8,0.2,75,120,3.2,30.6,0,0.002,0.1,0.2,0,0.2,0.1,0,5,0.4,0.4,14.3,0.6,113,0.3,10,91,143,40,0.4,0,0,3.7,0,10,0,0,88.3,0.7,0,0),(28,'egg',3,143,0.8,0,0,0.8,9.9,3.1,3.8,1.4,74,1148,12.6,146.1,0,0.002,1,0.3,0.1,0.5,0.1,0.1,47,1.3,1.4,251,0.6,53,1.8,12,191,134,140,1.1,0.1,0,31.7,1.1,423,0,0,75.8,0.9,0,0),(29,'mozzarella',3,318,2.5,0,0,1,24.6,15.6,7,0.8,212,566,21.6,223.5,0,0,0.2,2.5,0,0.3,0.1,0.1,8,0.7,0.1,15.4,0,575,0.2,21,412,75,415,2.5,0,0,16.1,0,89,0,0,48.4,2.9,0,0),(30,'cottage',3,86,3.7,0,0,3.7,2.5,1,0.4,0.1,10,60,11.8,22.2,0,0,0,0,0,0.2,0.1,0,10,0.5,0.3,16.3,0.6,91,0.2,7,163,84,330,0.4,0,0,9.9,31.6,10,0,0,80.7,1.4,0,0),(31,'yogurt',3,56,7.7,0,0,7.7,0.2,0.1,0,0,1,4,5.7,2.1,0.9,0,0,0.2,0,0.2,0.1,0.1,12,0.6,0.6,15.2,0,199,0.1,19,157,255,77,1,0,0,3.6,12,2,0,0,85.2,1.2,0,0),(32,'apple',4,52,13.8,2.4,0.1,10.4,0.2,0,0,0.1,9,43,0.3,16.2,4.6,0,0.2,2.2,0,0,0.1,0,3,0,0.1,3.4,0.1,6,0.1,5,11,107,1,0,0,0,0,3.3,0,12,0,85.6,0.2,0,0),(33,'peach',4,39,9.9,1.5,0,8.4,0.3,0,0.1,0.1,2,84,0.9,97.8,6.6,0,0.7,2.6,0,0,0.8,0,4,0,0.2,6.1,0.3,6,0.3,9,20,190,0,0.2,0.1,0.1,0.1,4,0,10,0,88.9,0.4,0,0),(34,'pear',4,58,15.5,3.1,0,9.8,0.1,0,0,0,0,29,0.4,6.9,4.2,0,0.1,4.5,0,0,0.2,0,7,0,0,5.1,0.2,9,0.2,7,11,119,1,0.1,0.1,0,0.1,2.2,0,8,0,83.7,0.3,0,0),(35,'cherry',4,63,16,2.1,0,12.8,0.2,0,0,0.1,26,27,1.1,19.2,7,0,0.1,2.1,0,0,0.2,0,4,0,0.2,6.1,0,13,0.4,11,21,222,0,0.1,0.1,0.1,0,2,0,12,0,82.2,0.5,0,0),(36,'strawberry',4,32,7.7,2,0,4.9,0.3,0,0,0.2,65,90,0.7,3.6,58.8,0,0.3,2.2,0,0,0.4,0,24,0,0.1,5.7,0.2,16,0.4,13,24,153,1,0.1,0,0.4,0.4,4.4,0,12,0,90.9,0.4,0,0),(37,'blueberry',4,57,14.5,2.4,0,10,0.3,0,0,0.1,58,88,0.7,16.2,9.7,0,0.6,19.3,0,0,0.4,0.1,6,0,0.1,6,0.2,6,0.3,6,12,77,1,0.2,0.1,0.3,0.1,0,0,0,0,84.2,0.2,0,0),(38,'banana',4,89,22.8,2.6,5.4,12.2,0.3,0.1,0,0.1,27,46,1.1,19.2,8.7,0,0.1,0.5,0,0.1,0.7,0.4,20,0,0.3,9.8,0.1,5,0.3,27,22,358,1,0.2,0.1,0.3,1,2.2,0,16,0,74.9,0.8,0,0),(39,'orange',4,47,11.7,2.4,0,9.4,0.1,0,0,0,7,18,0.9,67.5,53.2,0,0.2,0,0.1,0,0.3,0.1,30,0,0.3,8.4,0,40,0.1,10,14,181,0,0.1,0,0,0.5,0,0,0,0,86.7,0.4,0,0),(40,'lemon',4,29,9.3,2.8,0,2.5,0.3,0,0,0.1,26,63,1.1,6.6,53,0,0.2,0,0,0,0.1,0.1,11,0,0.2,5.1,0,26,0.6,8,16,138,2,0.1,0,0,0.4,0,0,0,0,89,0.3,0,0),(41,'grapefruit,red',4,42,10.7,1.6,0,6.9,0.1,0,0,0,8,29,0.8,345,31.2,0,0.1,0,0,0,0.2,0.1,13,0,0.3,7.7,0.1,22,0.1,9,18,135,0,0.1,0,0,0.1,0,0,0,0,88.1,0.4,0,0),(42,'cabbage',5,25,5.8,2.5,0,3.2,0.1,0,0,0,0,17,1.3,29.4,36.6,0,0.2,76,0.1,0,0.2,0.1,43,0,0.2,10.7,0.4,40,0.5,12,26,170,18,0.2,0,0.2,0.3,1,0,11,0,92.2,0.6,0,0),(43,'potato',5,93,21.2,2.2,17.3,1.2,1.1,0,0,0.1,13,43,2.5,3,9.6,0,0,2,0.1,0,1.4,0.3,28,0,0.4,14.8,0.2,15,1.1,28,70,535,10,0.4,0.1,0.2,0.4,0,0,0,0,74.9,1.3,0,0),(44,'rice,white',5,117,26.9,0.6,26.3,0,0.5,0,0.1,0,0,17,2.2,0,0,0,0,0,0.1,0,1.7,0.1,70,0,0.1,2.1,0,8,1.8,5,37,9,4,0.5,0,0.3,4.8,0,0,0,0,72,0.2,0,0),(45,'rice,brown',5,111,23,1.8,0,0.4,0.9,0.2,0.3,0.3,14,309,2.6,0,0,0,0,0.6,0.1,0,1.5,0.1,4,0,0.3,9.2,0.5,10,0.4,43,83,43,5,0.6,0.1,0.9,9.8,0,0,0,0,73.1,0.5,0,0),(46,'broccoli',5,34,6.6,2.6,0,1.7,0.4,0,0,0,21,17,2.8,186.9,89.2,0,0.8,102,0.1,0.1,0.6,0.2,63,0,0.6,18.7,0.1,47,0.7,21,66,316,33,0.4,0,0.2,2.5,0,0,0,0,89.3,0.9,0,0),(47,'spinach',5,23,3.3,2.2,0,0.4,0.4,0.1,0,0.2,138,26,2.9,2813,28.1,0,2,483,0.1,0.2,0.7,0.2,194,0,0.1,18,550,99,2.7,79,49,558,79,0.5,0.1,0.9,1,0,0,9,0,91.4,1.7,0,0),(48,'onion',5,40,9.3,1.7,0,4.2,0.1,0,0,0,4,13,1.1,0,7.4,0,0,0.4,0,0,0.1,0.1,19,0,0.1,6.1,0.1,23,0.2,10,29,146,4,0.2,0,0.1,0.5,1.1,0,15,0,89.1,0.4,0,0),(49,'tomato',5,18,3.9,1.2,0,2.6,0.2,0,0,0.1,3,80,0.9,250,12.7,0,0.5,7.9,0,0,0.6,0.1,15,0,0.1,6.7,0.1,10,0.3,11,24,237,5,0.2,0.1,0.1,0,2.3,0,7,0,94.5,0.5,0,0),(50,'cucumber',5,15,3.6,0.5,0.8,1.7,0.1,0,0,0,5,28,0.7,32,2.8,0,0,16.4,0,0,0.1,0,7,0,0.3,6,0.1,16,0.3,13,24,147,2,0.2,0,0.1,0.3,1.3,0,14,0,95.2,0.4,0,0),(51,'radishes',5,16,3.5,1.6,0,1.9,0.1,0,0,0,31,17,0.7,2,14.8,0,0,1.3,0,0,0.3,0.1,25,0,0.2,6.5,0.1,25,0.3,10,20,233,39,0.3,0.1,0.1,0.6,6,0,7,0,95.3,0.5,0,0),(52,'lettuce',5,17,3.3,2.1,0,1.2,0.3,0,0,0.2,113,47,1.2,2613,24,0,0.1,103,0.1,0.1,0.3,0.1,136,0,0.1,9.9,0.1,33,1,14,30,247,8,0.2,0,0.2,0.4,0,0,0,0,94.6,0.6,0,0),(53,'beans',5,29,4.1,0,0,0,0.5,0.1,0,0.3,169,107,4.2,0.6,38.7,0,0,0,0.4,0.3,2.9,0.1,59,0,0.4,0,0,17,0.8,21,37,187,6,0.4,0.2,0.2,0.6,0,0,0,0,90.7,0.5,0,0),(54,'corn',5,365,74.3,7.3,0,0.6,4.7,0.7,1.3,2.2,65,2097,9.4,64.2,0,0,0.5,0.3,0.4,0.2,3.6,0.6,19,0,0.4,0,0,7,2.7,127,210,287,35,2.2,0.3,0.5,15.5,0,0,0,0,10.4,1.2,0,0),(55,'mushrooms',5,22,3.3,1,0,1.7,0.3,0,0,0.1,0,139,3.1,0,2.1,0.0009,0,0,0.1,0.4,3.6,0.1,16,0,1.5,17.3,9.4,3,0.5,9,86,318,5,0.5,0.3,0,9.3,0,0,0,0,92.4,0.9,0,0),(56,'pepper,green',5,20,4.6,1.7,0,2.4,0.2,0.1,0,0.1,8,54,0.9,111,80.4,0,0.4,7.4,0.1,0,0.5,0.2,10,0,0.1,5.5,0.1,10,0.3,10,20,175,3,0.1,0.1,0.1,0,2,0,9,0,93.9,0.4,0,0),(57,'peas',5,81,14.5,5.1,0,5.7,0.4,0.1,0,0.2,35,152,5.4,229.5,40,0,0.1,24.8,0.3,0.1,2.1,0.2,65,0,0.1,28.4,0.2,25,1.5,33,108,244,5,1.2,0.2,0.4,1.8,0,0,0,0,78.8,0.9,0,0),(58,'feta',3,264,4.1,0,0,4.1,21.3,14.9,4.6,0.6,265,326,14.2,126.6,0,0,0.2,1.8,0.2,0.8,1,0.4,32,1.7,1,15.4,0,493,0.7,19,337,62,1116,2.9,0,0,15,0,89,0,0,55.2,5.2,0,0),(59,'watermelon',4,30,7.5,0.4,0,6.2,0.2,0,0,0.1,0,50,0.6,170.7,8.1,0,0.1,0.1,0,0,0.2,0,3,0,0.2,4.1,0.3,7,0.2,10,11,112,1,0.1,0,0,0.4,1.5,0,2,0,91.5,0.3,0,0),(60,'grape',4,69,18.1,0.9,0,15.5,0.2,0.1,0,0,11,37,0.7,19.8,10.8,0,0.2,14.6,0.1,0.1,0.2,0.1,2,0,0.1,5.6,0.1,10,0.4,7,20,191,2,0.1,0.1,0.1,0.1,7.8,0,4,0,80.5,0.5,0,0),(61,'pineapple',4,50,13.1,1.4,0,9.8,0.1,0,0,0,17,23,0.5,17.4,47.8,0,0,0.7,0.1,0,0.5,0.1,18,0,0.2,5.5,0.1,13,0.3,12,8,109,1,0.1,0.1,0.9,0.1,0,6,0,0,86,0.2,0,0),(62,'almond',6,575,21.7,12.2,0.7,3.9,49.4,3.7,30.9,12.1,6,12065,21.2,0,0,0,26.2,0,0.2,1,3.4,0.1,50,0,0.5,52.1,0.5,264,3.7,268,484,705,1,3.1,1,2.3,2.5,0,0,0,0,4.7,3,0,0),(63,'walnut',6,654,13.7,6.7,0.1,2.6,65.2,6.1,8.9,47.2,9079,38092,15.2,6,1.3,0,0.7,2.7,0.3,0.2,1.1,0.5,98,0,0.6,39.2,0.3,98,2.9,158,346,441,2,3.1,1.6,3.4,4.9,0,0,72,0,4.1,1.8,0,0),(64,'hazelnut',6,628,16.7,9.7,0.5,4.3,60.7,4.5,45.7,7.9,87,7832,15,6,0,0,15,14.2,0.6,0.1,1.8,0.6,113,0,0.9,45.6,0.4,114,4.7,163,290,680,0,2.5,1.7,6.2,2.4,0,0,96,0,5.3,2.3,0,0),(65,'pistachio nuts',6,557,28,10.3,1.7,7.6,44.4,5.4,23.3,13.5,254,13200,20.6,165.9,5,0,2.3,0,0.9,0.2,1.3,1.7,51,0,0.5,0,0,107,4.2,121,490,1025,1,2.2,1.3,1.2,7,0,0,0,0,4,3,0,0),(66,'peanut',6,599,15.3,9.4,0,4.2,52.5,8.7,26,15.3,0,15180,28,0,0.8,0,6.9,0,0.1,0.1,13.8,0.5,120,0,1.2,55.3,0,61,1.5,176,397,726,320,3.3,0.5,1.8,3.3,0,0,0,0,1.5,2.7,0,0),(67,'spaghetti',7,157,30.6,1.8,26,0.6,0.9,0.2,0.1,0.3,24,295,5.8,0,0,0,0.1,0,0.3,0.1,1.7,0,73,0,0.1,0,0,7,1.3,18,58,44,131,0.5,0.1,0.3,26.4,0,0,0,0,62.1,0.5,0,0),(68,'lasagna with meat',7,127,12.9,1.2,8.4,2.1,4.7,2.2,1.8,0.3,39,292,8.3,0,21.5,0,0,0,0.1,0.1,1.3,0.1,14,0.7,0.1,17,6.1,102,0.9,19,75,158,280,1,0.4,0.2,16.3,0,15,0,0,72.7,1.4,0,0),(69,'pizza 14 inches,cheese',8,264,32.6,1.7,25.5,4,9.5,4.2,2.4,1.8,169,1420,11.9,107.4,0,0,0.8,6.7,0.3,0.5,3.3,0.1,93,0.5,0.4,16.4,27.8,177,2.1,24,212,154,535,1.4,0.1,0.3,24.5,0,21,0,0,43.8,2.2,0,0),(70,'cheeseburger',8,271,23.3,1.5,0,4.5,12.8,6,0,0,0,0,14.3,67.8,0.9,0,0,0,0,0,0,0,0,0,0,0,0,113,2.7,0,0,0,594,0,0,0,0,0,37.6,0,0,0,0,0,0),(71,'beer',9,41,3,0,0,0,0,0,0,0,0,0,0.4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,7,13,33,3,0,0,0,0,0,0,0,3.9,92.8,0.1,0,0),(72,'wine,red',9,85,2.6,0,0,0.6,0,0,0,0,0,0,0.1,0,0,0,0,0.4,0,0,0.2,0.1,1,0,0,5.7,0.3,8,0.5,12,23,127,4,0.1,0,0.1,0.2,105,0,0,10.6,86.5,0.3,0,0),(73,'coke',9,44,12,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4.2,0,0,0,0,0,0,0,0,0,0,0,0),(74,'80 proof alcohol',9,231,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,2,1,0,0,0,0,9,0,0,33.4,66.6,0,0,0),(75,'water',9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0),(76,'bread, whole-wheat',7,247,41.3,6.8,0,5.6,3.3,0.7,1.6,0.6,25,574,13,0,0,0,0.5,7.8,0.4,0.2,4.7,0.2,50,0,0.7,26.5,0,107,2.4,82,202,248,472,1.8,0.4,2.1,40.3,0,0,0,0,38.6,3.8,0,0);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activities`
--

DROP TABLE IF EXISTS `user_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activities` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `activity_id` int(10) DEFAULT NULL,
  `hours_spent` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2391 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activities`
--

LOCK TABLES `user_activities` WRITE;
/*!40000 ALTER TABLE `user_activities` DISABLE KEYS */;
INSERT INTO `user_activities` VALUES (2352,61,12,3),(2353,61,10,2),(2354,61,11,1),(2365,64,13,2),(2366,64,9,12),(2375,25,17,1),(2376,25,121,12),(2377,25,145,8),(2384,67,11,2),(2385,67,9,0),(2386,68,10,1),(2389,70,10,2),(2390,70,9,3);
/*!40000 ALTER TABLE `user_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_intake`
--

DROP TABLE IF EXISTS `user_intake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_intake` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `amount` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=797 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_intake`
--

LOCK TABLES `user_intake` WRITE;
/*!40000 ALTER TABLE `user_intake` DISABLE KEYS */;
INSERT INTO `user_intake` VALUES (703,64,24,160),(704,64,27,160),(705,64,33,200),(706,64,44,260),(707,64,42,220),(708,64,62,40),(709,64,67,140),(710,64,70,300),(751,67,1,220),(752,67,27,60),(753,67,42,100),(754,67,32,200),(755,67,27,60),(756,67,22,260),(757,67,1,180),(758,67,68,200),(767,25,75,500),(768,25,75,500),(769,25,75,500),(770,25,1,140),(771,25,24,260),(772,25,27,200),(773,25,37,180),(774,25,38,240),(775,25,62,60),(776,25,64,60),(777,25,76,120),(778,25,69,240),(779,25,71,500),(780,68,2,200),(781,68,28,60),(782,68,76,20),(783,68,71,60),(784,68,34,60),(785,68,27,40),(786,68,23,60),(787,68,62,100),(788,68,63,40),(789,70,32,340),(790,70,27,260),(791,70,1,200),(792,70,62,160),(793,70,62,100),(794,70,32,180),(795,70,67,140),(796,70,69,180);
/*!40000 ALTER TABLE `user_intake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (25,'petar','petrovic','petrovic@gmail.com','pera','pera'),(26,'test','test','test@tt','test','test'),(61,'fds','fds','fs@fss','pera2','123456789'),(62,'jdfskfjsk','fdjskfdjsk','djask@j','pera3','123456789'),(63,'nkds','jkcd','jks@cdjzjj','pera4','123456789'),(64,'mile','kitic','mile@kita.com','mile','123456789'),(65,'dsa','dd','dsa@fds','fdsd','fdsfdsfsd5656'),(66,'dsa','dd','dsa@fdsw','fdsda','123456789'),(67,'jfks','jfsdkfd','dfsjk@fdjskh','mirko','123456789'),(68,'simic','vas','bdsbs@alkjfs.com','123123','123123123'),(69,'kdskls','klsds','epa@fds','pera10','123123123'),(70,'lanmi','profa','dje@df.com','profa','123123123');
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

-- Dump completed on 2015-02-07 17:47:33
