-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: booz
-- ------------------------------------------------------
-- Server version       8.0.33-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `coInventory`
--

--DROP DATABASE IF EXISTS `orders`
--CREATE DATABASE `orders;`

DROP TABLE IF EXISTS `coInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coInventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `order_unit_id` int DEFAULT NULL,
  `unit_quantity_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coInventory`
--

LOCK TABLES `coInventory` WRITE;
/*!40000 ALTER TABLE `coInventory` DISABLE KEYS */;
INSERT INTO `coInventory` VALUES (1,'MacNaughtons_Whiskey_1.5L_case',1,2,4),(2,'MacNaughtons_Whiskey_1.5L',1,1,4),(3,'MacNaughtons_Whiskey_1L_case',1,2,3),(4,'MacNaughtons_Whiskey_1L',1,1,3),(5,'MacNaughtons_Whiskey_750ml_case',1,2,2),(6,'MacNaughtons_Whiskey_750ml',1,1,2),(7,'Amstel_Light',3,2,5),(8,'Angry_Orchard',3,2,5),(9,'Corona',3,2,5),(10,'Corona_Light',3,2,5),(11,'Fosters_Oil',3,2,5),(12,'Guiness',3,2,5),(13,'Heinekin',3,2,5),(14,'MGD',3,2,5),(15,'Miller_Light',3,2,5),(16,'Newcastle',3,2,5),(17,'Sam_Adams_76_Cans',3,2,5),(18,'Blue_Moon',4,3,6),(19,'Coors_Light',4,3,6),(20,'Fosters',4,3,6),(21,'Pyramid_Amber',4,3,6),(22,'Sam_Adams',4,3,6),(23,'Sam_Adams_Seasonal',4,3,6),(24,'Red_Bull',5,2,7);
/*!40000 ALTER TABLE `coInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `co_order2`
--

DROP TABLE IF EXISTS `co_order2`;
/*!50001 DROP VIEW IF EXISTS `co_order2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `co_order2` AS SELECT 
 1 AS `name`,
 1 AS `default`,
 1 AS `unit`,
 1 AS `unit_type`,
 1 AS `current`,
 1 AS `InventoryId`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `crInventory`
--

DROP TABLE IF EXISTS `crInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crInventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `order_unit_id` int DEFAULT NULL,
  `unit_quantity_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crInventory`
--

LOCK TABLES `crInventory` WRITE;
/*!40000 ALTER TABLE `crInventory` DISABLE KEYS */;
INSERT INTO `crInventory` VALUES (1,'B_B_Liqueur_1.5L_case',1,2,4),(2,'B_B_Liqueur_1.5L',1,1,4),(3,'B_B_Liqueur_1L_case',1,2,3),(4,'B_B_Liqueur_1L',1,1,3),(5,'B_B_Liqueur_750ml_case',1,2,2),(6,'B_B_Liqueur_750ml',1,1,2),(7,'Budweiser',3,2,5),(8,'Elysian_Dragonstooth',3,2,5),(9,'Elysian_Dragonstooth_Stout',4,3,6),(10,'Mich_Ultra',3,2,5),(11,'ODouls',3,2,5),(12,'Redbridge',3,2,5),(13,'Stella_Artois',3,2,5),(14,'Bloomin_Blonde',4,3,6),(15,'Bud_Light',4,3,6),(16,'Immortal_IPA',4,3,6);
/*!40000 ALTER TABLE `crInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cr_order2`
--

DROP TABLE IF EXISTS `cr_order2`;
/*!50001 DROP VIEW IF EXISTS `cr_order2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cr_order2` AS SELECT 
 1 AS `name`,
 1 AS `default`,
 1 AS `unit`,
 1 AS `unit_type`,
 1 AS `current`,
 1 AS `InventoryId`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dists`
--

DROP TABLE IF EXISTS `dists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dists` (
  `d_id` int NOT NULL,
  `d_name` varchar(8) NOT NULL,
  PRIMARY KEY (`d_id`),
  UNIQUE KEY `d_id` (`d_id`),
  UNIQUE KEY `d_name` (`d_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dists`
--

LOCK TABLES `dists` WRITE;
/*!40000 ALTER TABLE `dists` DISABLE KEYS */;
INSERT INTO `dists` VALUES (2,'Columbia'),(3,'Crown'),(1,'Southern'),(4,'Youngs');
/*!40000 ALTER TABLE `dists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `i_details`
--

DROP TABLE IF EXISTS `i_details`;
/*!50001 DROP VIEW IF EXISTS `i_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `i_details` AS SELECT 
 1 AS `Name`,
 1 AS `Dist`,
 1 AS `Type`,
 1 AS `Par`,
 1 AS `Unit`,
 1 AS `Units`,
 1 AS `Quantity`,
 1 AS `On_Hand`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `item_types`
--

DROP TABLE IF EXISTS `item_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_types` (
  `it_id` int NOT NULL,
  `it_name` varchar(12) NOT NULL,
  PRIMARY KEY (`it_id`),
  UNIQUE KEY `it_id` (`it_id`),
  UNIQUE KEY `it_name` (`it_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_types`
--

LOCK TABLES `item_types` WRITE;
/*!40000 ALTER TABLE `item_types` DISABLE KEYS */;
INSERT INTO `item_types` VALUES (3,'Bottle Beer'),(4,'Keg Beer'),(1,'Liquor'),(5,'NA'),(2,'Wine');
/*!40000 ALTER TABLE `item_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `itemdetails`
--

DROP TABLE IF EXISTS `itemdetails`;
/*!50001 DROP VIEW IF EXISTS `itemdetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `itemdetails` AS SELECT 
 1 AS `Name`,
 1 AS `Dist`,
 1 AS `Type`,
 1 AS `Par`,
 1 AS `Unit`,
 1 AS `Units`,
 1 AS `Quantity`,
 1 AS `On_Hand`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `i_name` varchar(50) NOT NULL,
  `i_dist` int NOT NULL,
  `i_type` int NOT NULL,
  `i_par` int NOT NULL,
  `d_order_type` int NOT NULL,
  `d_order_quantity` int NOT NULL,
  `default_order` int NOT NULL,
  `on_hand` int DEFAULT NULL,
  PRIMARY KEY (`i_name`),
  UNIQUE KEY `i_name` (`i_name`),
  KEY `i_dist` (`i_dist`),
  KEY `i_type` (`i_type`),
  KEY `d_order_type` (`d_order_type`),
  KEY `d_order_quantity` (`d_order_quantity`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`i_dist`) REFERENCES `dists` (`d_id`),
  CONSTRAINT `items_ibfk_2` FOREIGN KEY (`i_type`) REFERENCES `item_types` (`it_id`),
  CONSTRAINT `items_ibfk_3` FOREIGN KEY (`d_order_type`) REFERENCES `order_units` (`ou_id`),
  CONSTRAINT `items_ibfk_4` FOREIGN KEY (`d_order_quantity`) REFERENCES `unit_quantity` (`uq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('_14_Hands_Cab',1,2,15,2,2,2,2),('Absolute_Vodka',1,1,1,1,3,2,2),('Amstel_Light',2,3,6,2,5,1,5),('Angry_Orchard',2,3,12,2,5,1,2),('B_B_Liqueur',3,1,1,1,3,2,1),('Bacardi_Rum',1,1,2,2,3,1,7),('Baileys_Irish_Cream',1,1,1,1,3,2,3),('Beefeater_Gin',1,1,1,1,3,2,5),('Black_Velvet_Whiskey',1,1,0,1,3,2,9),('Bloomin_Blonde',3,4,1,3,6,1,2),('Blue_Moon',2,4,1,3,6,1,1),('Brown_Family_Cabernet',1,2,12,2,2,2,3),('Bud_Light',3,4,1,3,6,1,1),('Budweiser',3,3,12,2,5,1,2),('Bulleit_Whiskey',1,1,1,1,3,2,1),('Camerana_Tequila',1,1,0,1,3,2,1),('Canadian_Club_Whiskey',1,1,1,1,3,2,8),('Captain_Morgans_Rum',1,1,2,2,3,1,8),('Chambord',4,1,1,1,3,2,6),('Chateau_Merlot',1,2,12,2,2,2,3),('Chateau_Mimi_Chardonnay',1,2,6,2,2,2,1),('Chateau_Reisling',1,2,12,2,2,2,2),('Chivas_Scotch',1,1,0,1,3,2,6),('Chloe_Rose',1,2,12,2,2,2,8),('Cinzano_Dry_Vermouth',4,1,1,1,3,2,3),('Cinzano_Sweet_Vermouth',4,1,1,1,3,2,6),('Cointreau_Orange_Liqueur',4,1,1,1,3,2,1),('Colum_Composition_Red_Blend',1,2,12,2,2,2,14),('Compari',1,1,1,1,3,2,7),('Coors_Light',2,4,1,3,6,1,2),('Copper_Ridge_White_Zin',1,2,12,2,2,2,24),('Corona',2,3,12,2,5,1,3),('Corona_Light',2,3,0,2,6,1,5),('Courvoisier_Cognac',1,1,1,1,3,2,4),('Crown_Whiskey',1,1,3,2,3,1,1),('Cruzan_Black_Cherry_Rum',1,1,2,2,3,1,9),('Dekuyper_Creme_De_Cocoa',1,1,1,1,3,2,5),('Dekuyper_Peach',1,1,2,1,3,1,9),('Dekuyper_Sour_Apple',1,1,1,1,3,2,8),('Dewers_Scotch',1,1,1,1,3,2,5),('Disaronno_Amaretto',1,1,1,1,3,2,3),('Drambuie',4,1,0,1,3,2,9),('Duck_Pond_Pinot_Noir',1,2,12,2,2,2,4),('Ecco_Pino_Grigio',1,2,12,2,2,2,22),('El_Himador_Tequila',4,1,1,2,3,1,5),('Elysian_Dragonstooth',3,3,0,2,5,1,31),('Elysian_Dragonstooth_Stout',3,3,0,2,6,1,38),('Fireball_Whiskey',4,1,1,1,3,2,9),('Fleischmanns_Gin',1,1,4,2,3,1,2),('Fosters',2,4,1,3,6,1,1),('Fosters_Oil',2,3,6,2,7,1,15),('Frangelico',4,1,1,1,3,2,4),('Galliano',1,1,0,1,3,2,2),('Ginger_Beer',1,5,12,2,7,1,8),('Glenlevit_Scotch',1,1,0,1,3,2,1),('GoldSchlagger',1,1,0,1,3,2,9),('Grand_Marnier_Orange_Liqueur',1,1,1,1,3,2,1),('Green_Creme_De_Menthe',1,1,1,1,3,2,1),('Grey_Goose_Vodka',1,1,2,1,3,2,3),('Guiness',2,3,6,2,7,1,2),('Heinekin',2,3,6,2,5,1,7),('Hendricks_Gin',4,1,1,1,3,2,1),('Hennessy_Cognac',1,1,1,1,3,2,6),('Herradura_Tequila',4,1,1,1,3,2,8),('Hornitos_Tequila',1,1,1,1,3,2,4),('Immortal_IPA',3,4,1,3,6,1,2),('Jack_Daniels_Bourbon',4,1,4,2,3,1,4),('Jack_Honey',4,1,1,1,3,2,1),('Jacobs_Creek_Shiraz_Cab_Blend',1,2,12,2,2,2,22),('Jagermeister',1,1,1,1,3,2,1),('Jamesons_Whiskey',1,1,2,2,3,1,8),('Jim_Beam_Bourbon',1,1,1,1,3,2,1),('Johnny_Walker_Black_Scotch',1,1,1,1,3,2,8),('Johnny_Walker_Red_Scotch',1,1,1,1,3,2,9),('Jose_Quervo_Tequila',1,1,0,1,3,2,2),('Kahlua_Coffee_Liquer',1,1,2,1,3,2,3),('Ketel_One_Vodka',1,1,1,2,3,1,2),('KJ_Chard',1,2,12,2,2,2,22),('Knob_Creek_Whiskey',1,1,1,1,3,2,8),('Korbel_Brandy',4,1,1,1,3,2,6),('Macallan_Scotch',4,1,1,1,3,2,7),('MacGregor_Scotch',4,1,1,1,3,2,8),('MacNaughtons_Whiskey',2,1,1,1,3,2,7),('Makers_Mark_Bourbon',1,1,2,2,3,1,5),('Malibu_Rum',1,1,1,1,3,2,3),('MGD',2,3,6,2,5,1,29),('Mich_Ultra',3,3,12,2,5,1,5),('Midori_Melon',1,1,1,1,3,2,8),('Miller_Light',2,3,12,2,5,1,19),('Monarch_Rum',1,1,4,2,3,1,5),('Montezuma_Tequila',1,1,4,2,3,1,1),('Moonshine',1,1,4,2,3,1,2),('Myers_Dark_Rum',4,1,1,2,3,1,4),('Newcastle',2,3,6,2,5,1,1),('ODouls',3,3,6,2,5,1,22),('Patron_Tequila',1,1,1,1,3,2,6),('Pendletons_Whiskey',1,1,0,1,3,2,8),('Prosecco',1,2,12,2,1,1,18),('Pyramid_Amber',2,4,1,3,6,1,1),('Red_Bull',2,5,12,2,7,1,19),('Redbridge',3,3,6,2,5,1,30),('Royal_Gentleman_Whiskey',4,1,4,2,3,1,3),('Rumplemintz',1,1,1,1,3,2,2),('Sailor_Jerrys_Rum',4,1,1,1,3,2,1),('Sam_Adams',2,4,2,3,6,1,1),('Sam_Adams_76_Cans',2,3,6,2,7,1,7),('Sam_Adams_Boston_Lager',2,2,12,2,5,1,1),('Sam_Adams_Seasonal',2,4,1,3,6,1,1),('Sambuca_Romana',4,1,1,1,3,2,7),('Saphire_Gin',1,1,1,1,3,2,5),('Sauza_Tequila',1,1,4,2,3,1,2),('Seagrams_7_Whiskey',1,1,1,1,3,2,8),('Skoll_Vodka',1,1,9,2,3,1,6),('Smirnoff_Blueberry_Vodka',1,1,0,1,3,2,4),('Smirnoff_Citrus_Vodka',1,1,1,2,3,2,4),('Smirnoff_Orange_Vodka',1,1,0,1,3,2,8),('Smirnoff_Pomegranite_Vodka',1,1,1,1,3,2,8),('Smirnoff_Raspberry_Vodka',1,1,1,1,3,2,7),('Smirnoff_Root_Beer_Vodka',1,1,0,1,3,2,1),('Smirnoff_Strawberry_Vodka',1,1,1,1,3,2,5),('Smirnoff_Vanilla_Vodka',1,1,1,1,3,2,3),('Smirnoff_Vodka',1,1,1,1,3,2,8),('Smirnoff_Whip_Cream_Vodka',1,1,1,1,3,2,5),('Southern_Comfort',4,1,1,1,3,2,9),('St_Germain_Liqueur',1,1,1,1,3,2,1),('Stella_Artois',3,3,12,2,5,1,27),('Stoli_Vodka',1,1,1,1,3,2,7),('Tanquery_Gin',1,1,1,1,3,2,5),('Titos_Vodka',4,1,2,2,3,1,2),('Triple_Sec_Orange_Liqueur',1,1,4,2,3,1,5),('VO_Whiskey',1,1,0,1,3,2,1),('Wild_Turkey_Whiskey',1,1,1,1,3,2,9),('Woodford_Reserve_Whiskey',4,1,1,1,3,2,3),('Worlds_Edge_Cab',1,2,32,2,2,3,22),('Worlds_Edge_Chard',1,2,15,2,2,3,12),('Yukon_Jack',4,1,1,1,3,2,9);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_units`
--

DROP TABLE IF EXISTS `order_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_units` (
  `ou_id` int NOT NULL,
  `ou_name` varchar(6) NOT NULL,
  PRIMARY KEY (`ou_id`),
  UNIQUE KEY `ou_id` (`ou_id`),
  UNIQUE KEY `ou_name` (`ou_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_units`
--

LOCK TABLES `order_units` WRITE;
/*!40000 ALTER TABLE `order_units` DISABLE KEYS */;
INSERT INTO `order_units` VALUES (1,'Bottle'),(2,'Case'),(3,'Keg');
/*!40000 ALTER TABLE `order_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered`
--

DROP TABLE IF EXISTS `ordered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordered` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `o_name` varchar(50) NOT NULL,
  `o_quantity` int DEFAULT NULL,
  `o_unit` varchar(6) DEFAULT NULL,
  `o_unit_quantity` varchar(10) DEFAULT NULL,
  `o_date` date DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  UNIQUE KEY `o_id` (`o_id`),
  KEY `o_name` (`o_name`),
  CONSTRAINT `ordered_ibfk_1` FOREIGN KEY (`o_name`) REFERENCES `items` (`i_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered`
--

LOCK TABLES `ordered` WRITE;
/*!40000 ALTER TABLE `ordered` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soInventory`
--

DROP TABLE IF EXISTS `soInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soInventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `order_unit_id` int DEFAULT NULL,
  `unit_quantity_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soInventory`
--

LOCK TABLES `soInventory` WRITE;
/*!40000 ALTER TABLE `soInventory` DISABLE KEYS */;
INSERT INTO `soInventory` VALUES (1,'Absolute_Vodka_1.5L_case',1,2,4),(2,'Absolute_Vodka_1.5L',1,1,4),(3,'Absolute_Vodka_1L_case',1,2,3),(4,'Absolute_Vodka_1L',1,1,3),(5,'Absolute_Vodka_750ml_case',1,2,2),(6,'Absolute_Vodka_750ml',1,1,2),(7,'Bacardi_Rum_1.5L_case',1,2,4),(8,'Bacardi_Rum_1.5L',1,1,4),(9,'Bacardi_Rum_1L_case',1,2,3),(10,'Bacardi_Rum_1L',1,1,3),(11,'Bacardi_Rum_750ml_case',1,2,2),(12,'Bacardi_Rum_750ml',1,1,2),(13,'Baileys_Irish_Cream_1.5L_case',1,2,4),(14,'Baileys_Irish_Cream_1.5L',1,1,4),(15,'Baileys_Irish_Cream_1L_case',1,2,3),(16,'Baileys_Irish_Cream_1L',1,1,3),(17,'Baileys_Irish_Cream_750ml_case',1,2,2),(18,'Baileys_Irish_Cream_750ml',1,1,2),(19,'Beefeater_Gin_1.5L_case',1,2,4),(20,'Beefeater_Gin_1.5L',1,1,4),(21,'Beefeater_Gin_1L_case',1,2,3),(22,'Beefeater_Gin_1L',1,1,3),(23,'Beefeater_Gin_750ml_case',1,2,2),(24,'Beefeater_Gin_750ml',1,1,2),(25,'Black_Velvet_Whiskey_1.5L_case',1,2,4),(26,'Black_Velvet_Whiskey_1.5L',1,1,4),(27,'Black_Velvet_Whiskey_1L_case',1,2,3),(28,'Black_Velvet_Whiskey_1L',1,1,3),(29,'Black_Velvet_Whiskey_750ml_case',1,2,2),(30,'Black_Velvet_Whiskey_750ml',1,1,2),(31,'Bulleit_Whiskey_1.5L_case',1,2,4),(32,'Bulleit_Whiskey_1.5L',1,1,4),(33,'Bulleit_Whiskey_1L_case',1,2,3),(34,'Bulleit_Whiskey_1L',1,1,3),(35,'Bulleit_Whiskey_750ml_case',1,2,2),(36,'Bulleit_Whiskey_750ml',1,1,2),(37,'Camerana_Tequila_1.5L_case',1,2,4),(38,'Camerana_Tequila_1.5L',1,1,4),(39,'Camerana_Tequila_1L_case',1,2,3),(40,'Camerana_Tequila_1L',1,1,3),(41,'Camerana_Tequila_750ml_case',1,2,2),(42,'Camerana_Tequila_750ml',1,1,2),(43,'Canadian_Club_Whiskey_1.5L_case',1,2,4),(44,'Canadian_Club_Whiskey_1.5L',1,1,4),(45,'Canadian_Club_Whiskey_1L_case',1,2,3),(46,'Canadian_Club_Whiskey_1L',1,1,3),(47,'Canadian_Club_Whiskey_750ml_case',1,2,2),(48,'Canadian_Club_Whiskey_750ml',1,1,2),(49,'Captain_Morgans_Rum_1.5L_case',1,2,4),(50,'Captain_Morgans_Rum_1.5L',1,1,4),(51,'Captain_Morgans_Rum_1L_case',1,2,3),(52,'Captain_Morgans_Rum_1L',1,1,3),(53,'Captain_Morgans_Rum_750ml_case',1,2,2),(54,'Captain_Morgans_Rum_750ml',1,1,2),(55,'Chivas_Scotch_1.5L_case',1,2,4),(56,'Chivas_Scotch_1.5L',1,1,4),(57,'Chivas_Scotch_1L_case',1,2,3),(58,'Chivas_Scotch_1L',1,1,3),(59,'Chivas_Scotch_750ml_case',1,2,2),(60,'Chivas_Scotch_750ml',1,1,2),(61,'Compari_1.5L_case',1,2,4),(62,'Compari_1.5L',1,1,4),(63,'Compari_1L_case',1,2,3),(64,'Compari_1L',1,1,3),(65,'Compari_750ml_case',1,2,2),(66,'Compari_750ml',1,1,2),(67,'Courvoisier_Cognac_1.5L_case',1,2,4),(68,'Courvoisier_Cognac_1.5L',1,1,4),(69,'Courvoisier_Cognac_1L_case',1,2,3),(70,'Courvoisier_Cognac_1L',1,1,3),(71,'Courvoisier_Cognac_750ml_case',1,2,2),(72,'Courvoisier_Cognac_750ml',1,1,2),(73,'Crown_Whiskey_1.5L_case',1,2,4),(74,'Crown_Whiskey_1.5L',1,1,4),(75,'Crown_Whiskey_1L_case',1,2,3),(76,'Crown_Whiskey_1L',1,1,3),(77,'Crown_Whiskey_750ml_case',1,2,2),(78,'Crown_Whiskey_750ml',1,1,2),(79,'Cruzan_Black_Cherry_Rum_1.5L_case',1,2,4),(80,'Cruzan_Black_Cherry_Rum_1.5L',1,1,4),(81,'Cruzan_Black_Cherry_Rum_1L_case',1,2,3),(82,'Cruzan_Black_Cherry_Rum_1L',1,1,3),(83,'Cruzan_Black_Cherry_Rum_750ml_case',1,2,2),(84,'Cruzan_Black_Cherry_Rum_750ml',1,1,2),(85,'Dekuyper_Creme_De_Cocoa_1.5L_case',1,2,4),(86,'Dekuyper_Creme_De_Cocoa_1.5L',1,1,4),(87,'Dekuyper_Creme_De_Cocoa_1L_case',1,2,3),(88,'Dekuyper_Creme_De_Cocoa_1L',1,1,3),(89,'Dekuyper_Creme_De_Cocoa_750ml_case',1,2,2),(90,'Dekuyper_Creme_De_Cocoa_750ml',1,1,2),(91,'Dekuyper_Peach_1.5L_case',1,2,4),(92,'Dekuyper_Peach_1.5L',1,1,4),(93,'Dekuyper_Peach_1L_case',1,2,3),(94,'Dekuyper_Peach_1L',1,1,3),(95,'Dekuyper_Peach_750ml_case',1,2,2),(96,'Dekuyper_Peach_750ml',1,1,2),(97,'Dekuyper_Sour_Apple_1.5L_case',1,2,4),(98,'Dekuyper_Sour_Apple_1.5L',1,1,4),(99,'Dekuyper_Sour_Apple_1L_case',1,2,3),(100,'Dekuyper_Sour_Apple_1L',1,1,3),(101,'Dekuyper_Sour_Apple_750ml_case',1,2,2),(102,'Dekuyper_Sour_Apple_750ml',1,1,2),(103,'Dewers_Scotch_1.5L_case',1,2,4),(104,'Dewers_Scotch_1.5L',1,1,4),(105,'Dewers_Scotch_1L_case',1,2,3),(106,'Dewers_Scotch_1L',1,1,3),(107,'Dewers_Scotch_750ml_case',1,2,2),(108,'Dewers_Scotch_750ml',1,1,2),(109,'Disaronno_Amaretto_1.5L_case',1,2,4),(110,'Disaronno_Amaretto_1.5L',1,1,4),(111,'Disaronno_Amaretto_1L_case',1,2,3),(112,'Disaronno_Amaretto_1L',1,1,3),(113,'Disaronno_Amaretto_750ml_case',1,2,2),(114,'Disaronno_Amaretto_750ml',1,1,2),(115,'Fleischmanns_Gin_1.5L_case',1,2,4),(116,'Fleischmanns_Gin_1.5L',1,1,4),(117,'Fleischmanns_Gin_1L_case',1,2,3),(118,'Fleischmanns_Gin_1L',1,1,3),(119,'Fleischmanns_Gin_750ml_case',1,2,2),(120,'Fleischmanns_Gin_750ml',1,1,2),(121,'Galliano_1.5L_case',1,2,4),(122,'Galliano_1.5L',1,1,4),(123,'Galliano_1L_case',1,2,3),(124,'Galliano_1L',1,1,3),(125,'Galliano_750ml_case',1,2,2),(126,'Galliano_750ml',1,1,2),(127,'Glenlevit_Scotch_1.5L_case',1,2,4),(128,'Glenlevit_Scotch_1.5L',1,1,4),(129,'Glenlevit_Scotch_1L_case',1,2,3),(130,'Glenlevit_Scotch_1L',1,1,3),(131,'Glenlevit_Scotch_750ml_case',1,2,2),(132,'Glenlevit_Scotch_750ml',1,1,2),(133,'GoldSchlagger_1.5L_case',1,2,4),(134,'GoldSchlagger_1.5L',1,1,4),(135,'GoldSchlagger_1L_case',1,2,3),(136,'GoldSchlagger_1L',1,1,3),(137,'GoldSchlagger_750ml_case',1,2,2),(138,'GoldSchlagger_750ml',1,1,2),(139,'Grand_Marnier_Orange_Liqueur_1.5L_case',1,2,4),(140,'Grand_Marnier_Orange_Liqueur_1.5L',1,1,4),(141,'Grand_Marnier_Orange_Liqueur_1L_case',1,2,3),(142,'Grand_Marnier_Orange_Liqueur_1L',1,1,3),(143,'Grand_Marnier_Orange_Liqueur_750ml_case',1,2,2),(144,'Grand_Marnier_Orange_Liqueur_750ml',1,1,2),(145,'Green_Creme_De_Menthe_1.5L_case',1,2,4),(146,'Green_Creme_De_Menthe_1.5L',1,1,4),(147,'Green_Creme_De_Menthe_1L_case',1,2,3),(148,'Green_Creme_De_Menthe_1L',1,1,3),(149,'Green_Creme_De_Menthe_750ml_case',1,2,2),(150,'Green_Creme_De_Menthe_750ml',1,1,2),(151,'Grey_Goose_Vodka_1.5L_case',1,2,4),(152,'Grey_Goose_Vodka_1.5L',1,1,4),(153,'Grey_Goose_Vodka_1L_case',1,2,3),(154,'Grey_Goose_Vodka_1L',1,1,3),(155,'Grey_Goose_Vodka_750ml_case',1,2,2),(156,'Grey_Goose_Vodka_750ml',1,1,2),(157,'Hennessy_Cognac_1.5L_case',1,2,4),(158,'Hennessy_Cognac_1.5L',1,1,4),(159,'Hennessy_Cognac_1L_case',1,2,3),(160,'Hennessy_Cognac_1L',1,1,3),(161,'Hennessy_Cognac_750ml_case',1,2,2),(162,'Hennessy_Cognac_750ml',1,1,2),(163,'Hornitos_Tequila_1.5L_case',1,2,4),(164,'Hornitos_Tequila_1.5L',1,1,4),(165,'Hornitos_Tequila_1L_case',1,2,3),(166,'Hornitos_Tequila_1L',1,1,3),(167,'Hornitos_Tequila_750ml_case',1,2,2),(168,'Hornitos_Tequila_750ml',1,1,2),(169,'Jagermeister_1.5L_case',1,2,4),(170,'Jagermeister_1.5L',1,1,4),(171,'Jagermeister_1L_case',1,2,3),(172,'Jagermeister_1L',1,1,3),(173,'Jagermeister_750ml_case',1,2,2),(174,'Jagermeister_750ml',1,1,2),(175,'Jamesons_Whiskey_1.5L_case',1,2,4),(176,'Jamesons_Whiskey_1.5L',1,1,4),(177,'Jamesons_Whiskey_1L_case',1,2,3),(178,'Jamesons_Whiskey_1L',1,1,3),(179,'Jamesons_Whiskey_750ml_case',1,2,2),(180,'Jamesons_Whiskey_750ml',1,1,2),(181,'Jim_Beam_Bourbon_1.5L_case',1,2,4),(182,'Jim_Beam_Bourbon_1.5L',1,1,4),(183,'Jim_Beam_Bourbon_1L_case',1,2,3),(184,'Jim_Beam_Bourbon_1L',1,1,3),(185,'Jim_Beam_Bourbon_750ml_case',1,2,2),(186,'Jim_Beam_Bourbon_750ml',1,1,2),(187,'Johnny_Walker_Black_Scotch_1.5L_case',1,2,4),(188,'Johnny_Walker_Black_Scotch_1.5L',1,1,4),(189,'Johnny_Walker_Black_Scotch_1L_case',1,2,3),(190,'Johnny_Walker_Black_Scotch_1L',1,1,3),(191,'Johnny_Walker_Black_Scotch_750ml_case',1,2,2),(192,'Johnny_Walker_Black_Scotch_750ml',1,1,2),(193,'Johnny_Walker_Red_Scotch_1.5L_case',1,2,4),(194,'Johnny_Walker_Red_Scotch_1.5L',1,1,4),(195,'Johnny_Walker_Red_Scotch_1L_case',1,2,3),(196,'Johnny_Walker_Red_Scotch_1L',1,1,3),(197,'Johnny_Walker_Red_Scotch_750ml_case',1,2,2),(198,'Johnny_Walker_Red_Scotch_750ml',1,1,2),(199,'Jose_Quervo_Tequila_1.5L_case',1,2,4),(200,'Jose_Quervo_Tequila_1.5L',1,1,4),(201,'Jose_Quervo_Tequila_1L_case',1,2,3),(202,'Jose_Quervo_Tequila_1L',1,1,3),(203,'Jose_Quervo_Tequila_750ml_case',1,2,2),(204,'Jose_Quervo_Tequila_750ml',1,1,2),(205,'Kahlua_Coffee_Liquer_1.5L_case',1,2,4),(206,'Kahlua_Coffee_Liquer_1.5L',1,1,4),(207,'Kahlua_Coffee_Liquer_1L_case',1,2,3),(208,'Kahlua_Coffee_Liquer_1L',1,1,3),(209,'Kahlua_Coffee_Liquer_750ml_case',1,2,2),(210,'Kahlua_Coffee_Liquer_750ml',1,1,2),(211,'Ketel_One_Vodka_1.5L_case',1,2,4),(212,'Ketel_One_Vodka_1.5L',1,1,4),(213,'Ketel_One_Vodka_1L_case',1,2,3),(214,'Ketel_One_Vodka_1L',1,1,3),(215,'Ketel_One_Vodka_750ml_case',1,2,2),(216,'Ketel_One_Vodka_750ml',1,1,2),(217,'Knob_Creek_Whiskey_1.5L_case',1,2,4),(218,'Knob_Creek_Whiskey_1.5L',1,1,4),(219,'Knob_Creek_Whiskey_1L_case',1,2,3),(220,'Knob_Creek_Whiskey_1L',1,1,3),(221,'Knob_Creek_Whiskey_750ml_case',1,2,2),(222,'Knob_Creek_Whiskey_750ml',1,1,2),(223,'Makers_Mark_Bourbon_1.5L_case',1,2,4),(224,'Makers_Mark_Bourbon_1.5L',1,1,4),(225,'Makers_Mark_Bourbon_1L_case',1,2,3),(226,'Makers_Mark_Bourbon_1L',1,1,3),(227,'Makers_Mark_Bourbon_750ml_case',1,2,2),(228,'Makers_Mark_Bourbon_750ml',1,1,2),(229,'Malibu_Rum_1.5L_case',1,2,4),(230,'Malibu_Rum_1.5L',1,1,4),(231,'Malibu_Rum_1L_case',1,2,3),(232,'Malibu_Rum_1L',1,1,3),(233,'Malibu_Rum_750ml_case',1,2,2),(234,'Malibu_Rum_750ml',1,1,2),(235,'Midori_Melon_1.5L_case',1,2,4),(236,'Midori_Melon_1.5L',1,1,4),(237,'Midori_Melon_1L_case',1,2,3),(238,'Midori_Melon_1L',1,1,3),(239,'Midori_Melon_750ml_case',1,2,2),(240,'Midori_Melon_750ml',1,1,2),(241,'Monarch_Rum_1.5L_case',1,2,4),(242,'Monarch_Rum_1.5L',1,1,4),(243,'Monarch_Rum_1L_case',1,2,3),(244,'Monarch_Rum_1L',1,1,3),(245,'Monarch_Rum_750ml_case',1,2,2),(246,'Monarch_Rum_750ml',1,1,2),(247,'Montezuma_Tequila_1.5L_case',1,2,4),(248,'Montezuma_Tequila_1.5L',1,1,4),(249,'Montezuma_Tequila_1L_case',1,2,3),(250,'Montezuma_Tequila_1L',1,1,3),(251,'Montezuma_Tequila_750ml_case',1,2,2),(252,'Montezuma_Tequila_750ml',1,1,2),(253,'Moonshine_1.5L_case',1,2,4),(254,'Moonshine_1.5L',1,1,4),(255,'Moonshine_1L_case',1,2,3),(256,'Moonshine_1L',1,1,3),(257,'Moonshine_750ml_case',1,2,2),(258,'Moonshine_750ml',1,1,2),(259,'Patron_Tequila_1.5L_case',1,2,4),(260,'Patron_Tequila_1.5L',1,1,4),(261,'Patron_Tequila_1L_case',1,2,3),(262,'Patron_Tequila_1L',1,1,3),(263,'Patron_Tequila_750ml_case',1,2,2),(264,'Patron_Tequila_750ml',1,1,2),(265,'Pendletons_Whiskey_1.5L_case',1,2,4),(266,'Pendletons_Whiskey_1.5L',1,1,4),(267,'Pendletons_Whiskey_1L_case',1,2,3),(268,'Pendletons_Whiskey_1L',1,1,3),(269,'Pendletons_Whiskey_750ml_case',1,2,2),(270,'Pendletons_Whiskey_750ml',1,1,2),(271,'Rumplemintz_1.5L_case',1,2,4),(272,'Rumplemintz_1.5L',1,1,4),(273,'Rumplemintz_1L_case',1,2,3),(274,'Rumplemintz_1L',1,1,3),(275,'Rumplemintz_750ml_case',1,2,2),(276,'Rumplemintz_750ml',1,1,2),(277,'Saphire_Gin_1.5L_case',1,2,4),(278,'Saphire_Gin_1.5L',1,1,4),(279,'Saphire_Gin_1L_case',1,2,3),(280,'Saphire_Gin_1L',1,1,3),(281,'Saphire_Gin_750ml_case',1,2,2),(282,'Saphire_Gin_750ml',1,1,2),(283,'Sauza_Tequila_1.5L_case',1,2,4),(284,'Sauza_Tequila_1.5L',1,1,4),(285,'Sauza_Tequila_1L_case',1,2,3),(286,'Sauza_Tequila_1L',1,1,3),(287,'Sauza_Tequila_750ml_case',1,2,2),(288,'Sauza_Tequila_750ml',1,1,2),(289,'Seagrams_7_Whiskey_1.5L_case',1,2,4),(290,'Seagrams_7_Whiskey_1.5L',1,1,4),(291,'Seagrams_7_Whiskey_1L_case',1,2,3),(292,'Seagrams_7_Whiskey_1L',1,1,3),(293,'Seagrams_7_Whiskey_750ml_case',1,2,2),(294,'Seagrams_7_Whiskey_750ml',1,1,2),(295,'Skoll_Vodka_1.5L_case',1,2,4),(296,'Skoll_Vodka_1.5L',1,1,4),(297,'Skoll_Vodka_1L_case',1,2,3),(298,'Skoll_Vodka_1L',1,1,3),(299,'Skoll_Vodka_750ml_case',1,2,2),(300,'Skoll_Vodka_750ml',1,1,2),(301,'Smirnoff_Blueberry_Vodka_1.5L_case',1,2,4),(302,'Smirnoff_Blueberry_Vodka_1.5L',1,1,4),(303,'Smirnoff_Blueberry_Vodka_1L_case',1,2,3),(304,'Smirnoff_Blueberry_Vodka_1L',1,1,3),(305,'Smirnoff_Blueberry_Vodka_750ml_case',1,2,2),(306,'Smirnoff_Blueberry_Vodka_750ml',1,1,2),(307,'Smirnoff_Citrus_Vodka_1.5L_case',1,2,4),(308,'Smirnoff_Citrus_Vodka_1.5L',1,1,4),(309,'Smirnoff_Citrus_Vodka_1L_case',1,2,3),(310,'Smirnoff_Citrus_Vodka_1L',1,1,3),(311,'Smirnoff_Citrus_Vodka_750ml_case',1,2,2),(312,'Smirnoff_Citrus_Vodka_750ml',1,1,2),(313,'Smirnoff_Orange_Vodka_1.5L_case',1,2,4),(314,'Smirnoff_Orange_Vodka_1.5L',1,1,4),(315,'Smirnoff_Orange_Vodka_1L_case',1,2,3),(316,'Smirnoff_Orange_Vodka_1L',1,1,3),(317,'Smirnoff_Orange_Vodka_750ml_case',1,2,2),(318,'Smirnoff_Orange_Vodka_750ml',1,1,2),(319,'Smirnoff_Pomegranite_Vodka_1.5L_case',1,2,4),(320,'Smirnoff_Pomegranite_Vodka_1.5L',1,1,4),(321,'Smirnoff_Pomegranite_Vodka_1L_case',1,2,3),(322,'Smirnoff_Pomegranite_Vodka_1L',1,1,3),(323,'Smirnoff_Pomegranite_Vodka_750ml_case',1,2,2),(324,'Smirnoff_Pomegranite_Vodka_750ml',1,1,2),(325,'Smirnoff_Raspberry_Vodka_1.5L_case',1,2,4),(326,'Smirnoff_Raspberry_Vodka_1.5L',1,1,4),(327,'Smirnoff_Raspberry_Vodka_1L_case',1,2,3),(328,'Smirnoff_Raspberry_Vodka_1L',1,1,3),(329,'Smirnoff_Raspberry_Vodka_750ml_case',1,2,2),(330,'Smirnoff_Raspberry_Vodka_750ml',1,1,2),(331,'Smirnoff_Root_Beer_Vodka_1.5L_case',1,2,4),(332,'Smirnoff_Root_Beer_Vodka_1.5L',1,1,4),(333,'Smirnoff_Root_Beer_Vodka_1L_case',1,2,3),(334,'Smirnoff_Root_Beer_Vodka_1L',1,1,3),(335,'Smirnoff_Root_Beer_Vodka_750ml_case',1,2,2),(336,'Smirnoff_Root_Beer_Vodka_750ml',1,1,2),(337,'Smirnoff_Strawberry_Vodka_1.5L_case',1,2,4),(338,'Smirnoff_Strawberry_Vodka_1.5L',1,1,4),(339,'Smirnoff_Strawberry_Vodka_1L_case',1,2,3),(340,'Smirnoff_Strawberry_Vodka_1L',1,1,3),(341,'Smirnoff_Strawberry_Vodka_750ml_case',1,2,2),(342,'Smirnoff_Strawberry_Vodka_750ml',1,1,2),(343,'Smirnoff_Vanilla_Vodka_1.5L_case',1,2,4),(344,'Smirnoff_Vanilla_Vodka_1.5L',1,1,4),(345,'Smirnoff_Vanilla_Vodka_1L_case',1,2,3),(346,'Smirnoff_Vanilla_Vodka_1L',1,1,3),(347,'Smirnoff_Vanilla_Vodka_750ml_case',1,2,2),(348,'Smirnoff_Vanilla_Vodka_750ml',1,1,2),(349,'Smirnoff_Vodka_1.5L_case',1,2,4),(350,'Smirnoff_Vodka_1.5L',1,1,4),(351,'Smirnoff_Vodka_1L_case',1,2,3),(352,'Smirnoff_Vodka_1L',1,1,3),(353,'Smirnoff_Vodka_750ml_case',1,2,2),(354,'Smirnoff_Vodka_750ml',1,1,2),(355,'Smirnoff_Whip_Cream_Vodka_1.5L_case',1,2,4),(356,'Smirnoff_Whip_Cream_Vodka_1.5L',1,1,4),(357,'Smirnoff_Whip_Cream_Vodka_1L_case',1,2,3),(358,'Smirnoff_Whip_Cream_Vodka_1L',1,1,3),(359,'Smirnoff_Whip_Cream_Vodka_750ml_case',1,2,2),(360,'Smirnoff_Whip_Cream_Vodka_750ml',1,1,2),(361,'St_Germain_Liqueur_1.5L_case',1,2,4),(362,'St_Germain_Liqueur_1.5L',1,1,4),(363,'St_Germain_Liqueur_1L_case',1,2,3),(364,'St_Germain_Liqueur_1L',1,1,3),(365,'St_Germain_Liqueur_750ml_case',1,2,2),(366,'St_Germain_Liqueur_750ml',1,1,2),(367,'Stoli_Vodka_1.5L_case',1,2,4),(368,'Stoli_Vodka_1.5L',1,1,4),(369,'Stoli_Vodka_1L_case',1,2,3),(370,'Stoli_Vodka_1L',1,1,3),(371,'Stoli_Vodka_750ml_case',1,2,2),(372,'Stoli_Vodka_750ml',1,1,2),(373,'Tanquery_Gin_1.5L_case',1,2,4),(374,'Tanquery_Gin_1.5L',1,1,4),(375,'Tanquery_Gin_1L_case',1,2,3),(376,'Tanquery_Gin_1L',1,1,3),(377,'Tanquery_Gin_750ml_case',1,2,2),(378,'Tanquery_Gin_750ml',1,1,2),(379,'Triple_Sec_Orange_Liqueur_1.5L_case',1,2,4),(380,'Triple_Sec_Orange_Liqueur_1.5L',1,1,4),(381,'Triple_Sec_Orange_Liqueur_1L_case',1,2,3),(382,'Triple_Sec_Orange_Liqueur_1L',1,1,3),(383,'Triple_Sec_Orange_Liqueur_750ml_case',1,2,2),(384,'Triple_Sec_Orange_Liqueur_750ml',1,1,2),(385,'VO_Whiskey_1.5L_case',1,2,4),(386,'VO_Whiskey_1.5L',1,1,4),(387,'VO_Whiskey_1L_case',1,2,3),(388,'VO_Whiskey_1L',1,1,3),(389,'VO_Whiskey_750ml_case',1,2,2),(390,'VO_Whiskey_750ml',1,1,2),(391,'Wild_Turkey_Whiskey_1.5L_case',1,2,4),(392,'Wild_Turkey_Whiskey_1.5L',1,1,4),(393,'Wild_Turkey_Whiskey_1L_case',1,2,3),(394,'Wild_Turkey_Whiskey_1L',1,1,3),(395,'Wild_Turkey_Whiskey_750ml_case',1,2,2),(396,'Wild_Turkey_Whiskey_750ml',1,1,2),(397,'_14_Hands_Cab_750ml_case',2,2,2),(398,'Brown_Family_Cabernet_750ml_case',2,2,2),(399,'Chateau_Merlot_750ml_case',2,2,2),(400,'Chateau_Mimi_Chardonnay_750ml_case',2,2,2),(401,'Chateau_Reisling_750ml_case',2,2,2),(402,'Chloe_Rose_750ml_case',2,2,2),(403,'Colum_Composition_Red_Blend_750ml_case',2,2,2),(404,'Copper_Ridge_White_Zin_750ml_case',2,2,2),(405,'Duck_Pond_Pinot_Noir_750ml_case',2,2,2),(406,'Ecco_Pino_Grigio_750ml_case',2,2,2),(407,'Jacobs_Creek_Shiraz_Cab_Blend_750ml_case',2,2,2),(408,'KJ_Chard_750ml_case',2,2,2),(409,'Prosecco_750ml_case',2,2,2),(410,'Worlds_Edge_Cab_750ml_case',2,2,2),(411,'Worlds_Edge_Chard_750ml_case',2,2,2),(412,'_14_Hands_Cab_1.5L_case',2,2,4),(413,'Brown_Family_Cabernet_1.5L_case',2,2,4),(414,'Chateau_Merlot_1.5L_case',2,2,4),(415,'Chateau_Mimi_Chardonnay_1.5L_case',2,2,4),(416,'Chateau_Reisling_1.5L_case',2,2,4),(417,'Chloe_Rose_1.5L_case',2,2,4),(418,'Colum_Composition_Red_Blend_1.5L_case',2,2,4),(419,'Copper_Ridge_White_Zin_1.5L_case',2,2,4),(420,'Duck_Pond_Pinot_Noir_1.5L_case',2,2,4),(421,'Ecco_Pino_Grigio_1.5L_case',2,2,4),(422,'Jacobs_Creek_Shiraz_Cab_Blend_1.5L_case',2,2,4),(423,'KJ_Chard_1.5L_case',2,2,4),(424,'Prosecco_1.5L_case',2,2,4),(425,'Worlds_Edge_Cab_1.5L_case',2,2,4),(426,'Worlds_Edge_Chard_1.5L_case',2,2,4),(427,'Ginger_Beer',5,1,7);
/*!40000 ALTER TABLE `soInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `so_order2`
--

DROP TABLE IF EXISTS `so_order2`;
/*!50001 DROP VIEW IF EXISTS `so_order2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `so_order2` AS SELECT 
 1 AS `name`,
 1 AS `default`,
 1 AS `unit`,
 1 AS `unit_type`,
 1 AS `current`,
 1 AS `InventoryId`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `unit_quantity`
--

DROP TABLE IF EXISTS `unit_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_quantity` (
  `uq_id` int NOT NULL,
  `uq_name` varchar(10) NOT NULL,
  PRIMARY KEY (`uq_id`),
  UNIQUE KEY `uq_id` (`uq_id`),
  UNIQUE KEY `uq_name` (`uq_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_quantity`
--

LOCK TABLES `unit_quantity` WRITE;
/*!40000 ALTER TABLE `unit_quantity` DISABLE KEYS */;
INSERT INTO `unit_quantity` VALUES (3,'1 Liter'),(4,'1.5 Liter'),(1,'187 ml'),(2,'750 ml'),(5,'Bottle'),(7,'Can'),(6,'Keg');
/*!40000 ALTER TABLE `unit_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yoInventory`
--

DROP TABLE IF EXISTS `yoInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yoInventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `order_unit_id` int DEFAULT NULL,
  `unit_quantity_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yoInventory`
--

LOCK TABLES `yoInventory` WRITE;
/*!40000 ALTER TABLE `yoInventory` DISABLE KEYS */;
INSERT INTO `yoInventory` VALUES (1,'Chambord_1.5L_case',1,2,4),(2,'Chambord_1.5L',1,1,4),(3,'Chambord_1L_case',1,2,3),(4,'Chambord_1L',1,1,3),(5,'Chambord_750ml_case',1,2,2),(6,'Chambord_750ml',1,1,2),(7,'Cinzano_Dry_Vermouth_1.5L_case',1,2,4),(8,'Cinzano_Dry_Vermouth_1.5L',1,1,4),(9,'Cinzano_Dry_Vermouth_1L_case',1,2,3),(10,'Cinzano_Dry_Vermouth_1L',1,1,3),(11,'Cinzano_Dry_Vermouth_750ml_case',1,2,2),(12,'Cinzano_Dry_Vermouth_750ml',1,1,2),(13,'Cinzano_Sweet_Vermouth_1.5L_case',1,2,4),(14,'Cinzano_Sweet_Vermouth_1.5L',1,1,4),(15,'Cinzano_Sweet_Vermouth_1L_case',1,2,3),(16,'Cinzano_Sweet_Vermouth_1L',1,1,3),(17,'Cinzano_Sweet_Vermouth_750ml_case',1,2,2),(18,'Cinzano_Sweet_Vermouth_750ml',1,1,2),(19,'Cointreau_Orange_Liqueur_1.5L_case',1,2,4),(20,'Cointreau_Orange_Liqueur_1.5L',1,1,4),(21,'Cointreau_Orange_Liqueur_1L_case',1,2,3),(22,'Cointreau_Orange_Liqueur_1L',1,1,3),(23,'Cointreau_Orange_Liqueur_750ml_case',1,2,2),(24,'Cointreau_Orange_Liqueur_750ml',1,1,2),(25,'Drambuie_1.5L_case',1,2,4),(26,'Drambuie_1.5L',1,1,4),(27,'Drambuie_1L_case',1,2,3),(28,'Drambuie_1L',1,1,3),(29,'Drambuie_750ml_case',1,2,2),(30,'Drambuie_750ml',1,1,2),(31,'El_Himador_Tequila_1.5L_case',1,2,4),(32,'El_Himador_Tequila_1.5L',1,1,4),(33,'El_Himador_Tequila_1L_case',1,2,3),(34,'El_Himador_Tequila_1L',1,1,3),(35,'El_Himador_Tequila_750ml_case',1,2,2),(36,'El_Himador_Tequila_750ml',1,1,2),(37,'Fireball_Whiskey_1.5L_case',1,2,4),(38,'Fireball_Whiskey_1.5L',1,1,4),(39,'Fireball_Whiskey_1L_case',1,2,3),(40,'Fireball_Whiskey_1L',1,1,3),(41,'Fireball_Whiskey_750ml_case',1,2,2),(42,'Fireball_Whiskey_750ml',1,1,2),(43,'Frangelico_1.5L_case',1,2,4),(44,'Frangelico_1.5L',1,1,4),(45,'Frangelico_1L_case',1,2,3),(46,'Frangelico_1L',1,1,3),(47,'Frangelico_750ml_case',1,2,2),(48,'Frangelico_750ml',1,1,2),(49,'Hendricks_Gin_1.5L_case',1,2,4),(50,'Hendricks_Gin_1.5L',1,1,4),(51,'Hendricks_Gin_1L_case',1,2,3),(52,'Hendricks_Gin_1L',1,1,3),(53,'Hendricks_Gin_750ml_case',1,2,2),(54,'Hendricks_Gin_750ml',1,1,2),(55,'Herradura_Tequila_1.5L_case',1,2,4),(56,'Herradura_Tequila_1.5L',1,1,4),(57,'Herradura_Tequila_1L_case',1,2,3),(58,'Herradura_Tequila_1L',1,1,3),(59,'Herradura_Tequila_750ml_case',1,2,2),(60,'Herradura_Tequila_750ml',1,1,2),(61,'Jack_Daniels_Bourbon_1.5L_case',1,2,4),(62,'Jack_Daniels_Bourbon_1.5L',1,1,4),(63,'Jack_Daniels_Bourbon_1L_case',1,2,3),(64,'Jack_Daniels_Bourbon_1L',1,1,3),(65,'Jack_Daniels_Bourbon_750ml_case',1,2,2),(66,'Jack_Daniels_Bourbon_750ml',1,1,2),(67,'Jack_Honey_1.5L_case',1,2,4),(68,'Jack_Honey_1.5L',1,1,4),(69,'Jack_Honey_1L_case',1,2,3),(70,'Jack_Honey_1L',1,1,3),(71,'Jack_Honey_750ml_case',1,2,2),(72,'Jack_Honey_750ml',1,1,2),(73,'Korbel_Brandy_1.5L_case',1,2,4),(74,'Korbel_Brandy_1.5L',1,1,4),(75,'Korbel_Brandy_1L_case',1,2,3),(76,'Korbel_Brandy_1L',1,1,3),(77,'Korbel_Brandy_750ml_case',1,2,2),(78,'Korbel_Brandy_750ml',1,1,2),(79,'Macallan_Scotch_1.5L_case',1,2,4),(80,'Macallan_Scotch_1.5L',1,1,4),(81,'Macallan_Scotch_1L_case',1,2,3),(82,'Macallan_Scotch_1L',1,1,3),(83,'Macallan_Scotch_750ml_case',1,2,2),(84,'Macallan_Scotch_750ml',1,1,2),(85,'MacGregor_Scotch_1.5L_case',1,2,4),(86,'MacGregor_Scotch_1.5L',1,1,4),(87,'MacGregor_Scotch_1L_case',1,2,3),(88,'MacGregor_Scotch_1L',1,1,3),(89,'MacGregor_Scotch_750ml_case',1,2,2),(90,'MacGregor_Scotch_750ml',1,1,2),(91,'Myers_Dark_Rum_1.5L_case',1,2,4),(92,'Myers_Dark_Rum_1.5L',1,1,4),(93,'Myers_Dark_Rum_1L_case',1,2,3),(94,'Myers_Dark_Rum_1L',1,1,3),(95,'Myers_Dark_Rum_750ml_case',1,2,2),(96,'Myers_Dark_Rum_750ml',1,1,2),(97,'Royal_Gentleman_Whiskey_1.5L_case',1,2,4),(98,'Royal_Gentleman_Whiskey_1.5L',1,1,4),(99,'Royal_Gentleman_Whiskey_1L_case',1,2,3),(100,'Royal_Gentleman_Whiskey_1L',1,1,3),(101,'Royal_Gentleman_Whiskey_750ml_case',1,2,2),(102,'Royal_Gentleman_Whiskey_750ml',1,1,2),(103,'Sailor_Jerrys_Rum_1.5L_case',1,2,4),(104,'Sailor_Jerrys_Rum_1.5L',1,1,4),(105,'Sailor_Jerrys_Rum_1L_case',1,2,3),(106,'Sailor_Jerrys_Rum_1L',1,1,3),(107,'Sailor_Jerrys_Rum_750ml_case',1,2,2),(108,'Sailor_Jerrys_Rum_750ml',1,1,2),(109,'Sambuca_Romana_1.5L_case',1,2,4),(110,'Sambuca_Romana_1.5L',1,1,4),(111,'Sambuca_Romana_1L_case',1,2,3),(112,'Sambuca_Romana_1L',1,1,3),(113,'Sambuca_Romana_750ml_case',1,2,2),(114,'Sambuca_Romana_750ml',1,1,2),(115,'Southern_Comfort_1.5L_case',1,2,4),(116,'Southern_Comfort_1.5L',1,1,4),(117,'Southern_Comfort_1L_case',1,2,3),(118,'Southern_Comfort_1L',1,1,3),(119,'Southern_Comfort_750ml_case',1,2,2),(120,'Southern_Comfort_750ml',1,1,2),(121,'Titos_Vodka_1.5L_case',1,2,4),(122,'Titos_Vodka_1.5L',1,1,4),(123,'Titos_Vodka_1L_case',1,2,3),(124,'Titos_Vodka_1L',1,1,3),(125,'Titos_Vodka_750ml_case',1,2,2),(126,'Titos_Vodka_750ml',1,1,2),(127,'Woodford_Reserve_Whiskey_1.5L_case',1,2,4),(128,'Woodford_Reserve_Whiskey_1.5L',1,1,4),(129,'Woodford_Reserve_Whiskey_1L_case',1,2,3),(130,'Woodford_Reserve_Whiskey_1L',1,1,3),(131,'Woodford_Reserve_Whiskey_750ml_case',1,2,2),(132,'Woodford_Reserve_Whiskey_750ml',1,1,2),(133,'Yukon_Jack_1.5L_case',1,2,4),(134,'Yukon_Jack_1.5L',1,1,4),(135,'Yukon_Jack_1L_case',1,2,3),(136,'Yukon_Jack_1L',1,1,3),(137,'Yukon_Jack_750ml_case',1,2,2),(138,'Yukon_Jack_750ml',1,1,2);
/*!40000 ALTER TABLE `yoInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `yo_order2`
--

DROP TABLE IF EXISTS `yo_order2`;
/*!50001 DROP VIEW IF EXISTS `yo_order2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `yo_order2` AS SELECT 
 1 AS `name`,
 1 AS `default`,
 1 AS `unit`,
 1 AS `unit_type`,
 1 AS `current`,
 1 AS `InventoryId`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `co_order2`
--

/*!50001 DROP VIEW IF EXISTS `co_order2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `co_order2` AS select `i`.`i_name` AS `name`,`i`.`default_order` AS `default`,`ou`.`ou_name` AS `unit`,`uq`.`uq_name` AS `unit_type`,`i`.`on_hand` AS `current`,`inv`.`id` AS `InventoryId` from (((`items` `i` join `order_units` `ou` on((`i`.`d_order_type` = `ou`.`ou_id`))) join `unit_quantity` `uq` on((`i`.`d_order_quantity` = `uq`.`uq_id`))) join `coInventory` `inv` on(((`inv`.`order_unit_id` = `ou`.`ou_id`) and (`inv`.`unit_quantity_id` = `uq`.`uq_id`) and (`inv`.`name` like concat('%',`i`.`i_name`,'%'))))) where ((`i`.`on_hand` < `i`.`i_par`) and (`i`.`i_dist` = 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cr_order2`
--

/*!50001 DROP VIEW IF EXISTS `cr_order2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cr_order2` AS select `i`.`i_name` AS `name`,`i`.`default_order` AS `default`,`ou`.`ou_name` AS `unit`,`uq`.`uq_name` AS `unit_type`,`i`.`on_hand` AS `current`,`inv`.`id` AS `InventoryId` from (((`items` `i` join `order_units` `ou` on((`i`.`d_order_type` = `ou`.`ou_id`))) join `unit_quantity` `uq` on((`i`.`d_order_quantity` = `uq`.`uq_id`))) join `crInventory` `inv` on(((`inv`.`order_unit_id` = `ou`.`ou_id`) and (`inv`.`unit_quantity_id` = `uq`.`uq_id`) and (`inv`.`name` like concat('%',`i`.`i_name`,'%'))))) where ((`i`.`on_hand` < `i`.`i_par`) and (`i`.`i_dist` = 3)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `i_details`
--

/*!50001 DROP VIEW IF EXISTS `i_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `i_details` AS select `items`.`i_name` AS `Name`,`dists`.`d_name` AS `Dist`,`item_types`.`it_name` AS `Type`,`items`.`i_par` AS `Par`,`order_units`.`ou_name` AS `Unit`,`unit_quantity`.`uq_name` AS `Units`,`items`.`default_order` AS `Quantity`,`items`.`on_hand` AS `On_Hand` from ((((`items` join `dists` on((`dists`.`d_id` = `items`.`i_dist`))) join `item_types` on((`item_types`.`it_id` = `items`.`i_type`))) join `order_units` on((`order_units`.`ou_id` = `items`.`d_order_type`))) join `unit_quantity` on((`unit_quantity`.`uq_id` = `items`.`d_order_quantity`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `itemdetails`
--

/*!50001 DROP VIEW IF EXISTS `itemdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `itemdetails` AS select `items`.`i_name` AS `Name`,`dists`.`d_name` AS `Dist`,`item_types`.`it_name` AS `Type`,`items`.`i_par` AS `Par`,`order_units`.`ou_name` AS `Unit`,`unit_quantity`.`uq_name` AS `Units`,`items`.`default_order` AS `Quantity`,`items`.`on_hand` AS `On_Hand` from ((((`items` join `dists` on((`dists`.`d_id` = `items`.`i_dist`))) join `item_types` on((`item_types`.`it_id` = `items`.`i_type`))) join `order_units` on((`order_units`.`ou_id` = `items`.`d_order_type`))) join `unit_quantity` on((`unit_quantity`.`uq_id` = `items`.`d_order_quantity`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `so_order2`
--

/*!50001 DROP VIEW IF EXISTS `so_order2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `so_order2` AS select `i`.`i_name` AS `name`,`i`.`default_order` AS `default`,`ou`.`ou_name` AS `unit`,`uq`.`uq_name` AS `unit_type`,`i`.`on_hand` AS `current`,`inv`.`id` AS `InventoryId` from (((`items` `i` join `order_units` `ou` on((`i`.`d_order_type` = `ou`.`ou_id`))) join `unit_quantity` `uq` on((`i`.`d_order_quantity` = `uq`.`uq_id`))) join `soInventory` `inv` on(((`inv`.`order_unit_id` = `ou`.`ou_id`) and (`inv`.`unit_quantity_id` = `uq`.`uq_id`) and (`inv`.`name` like concat('%',`i`.`i_name`,'%'))))) where ((`i`.`on_hand` < `i`.`i_par`) and (`i`.`i_dist` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `yo_order2`
--

/*!50001 DROP VIEW IF EXISTS `yo_order2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `yo_order2` AS select `i`.`i_name` AS `name`,`i`.`default_order` AS `default`,`ou`.`ou_name` AS `unit`,`uq`.`uq_name` AS `unit_type`,`i`.`on_hand` AS `current`,`inv`.`id` AS `InventoryId` from (((`items` `i` join `order_units` `ou` on((`i`.`d_order_type` = `ou`.`ou_id`))) join `unit_quantity` `uq` on((`i`.`d_order_quantity` = `uq`.`uq_id`))) join `yoInventory` `inv` on(((`inv`.`order_unit_id` = `ou`.`ou_id`) and (`inv`.`unit_quantity_id` = `uq`.`uq_id`) and (`inv`.`name` like concat('%',`i`.`i_name`,'%'))))) where ((`i`.`on_hand` < `i`.`i_par`) and (`i`.`i_dist` = 4)) */;
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

-- Dump completed on 2023-07-24 10:11:36
