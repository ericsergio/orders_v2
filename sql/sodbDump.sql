-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: sodb
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
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sku` varchar(9) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `discount` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
INSERT INTO `Inventory` VALUES (1,'so1001','Absolute_Vodka_1.5L_case',9.99,11,1,'0'),(2,'so1002','Absolute_Vodka_1.5L',9.99,21,1,'0'),(3,'so1003','Absolute_Vodka_1L_case',9.99,29,1,'0'),(4,'so1004','Absolute_Vodka_1L',9.99,6,1,'0'),(5,'so1005','Absolute_Vodka_750ml_case',9.99,6,1,'0'),(6,'so1006','Absolute_Vodka_750ml',9.99,11,1,'0'),(7,'so1007','Bacardi_Rum_1.5L_case',9.99,19,1,'0'),(8,'so1008','Bacardi_Rum_1.5L',9.99,8,1,'0'),(9,'so1009','Bacardi_Rum_1L_case',9.99,19,1,'0'),(10,'so1010','Bacardi_Rum_1L',9.99,23,1,'0'),(11,'so1011','Bacardi_Rum_750ml_case',9.99,18,1,'0'),(12,'so1012','Bacardi_Rum_750ml',9.99,1,1,'0'),(13,'so1013','Baileys_Irish_Cream_1.5L_case',9.99,22,1,'0'),(14,'so1014','Baileys_Irish_Cream_1.5L',9.99,18,1,'0'),(15,'so1015','Baileys_Irish_Cream_1L_case',9.99,5,1,'0'),(16,'so1016','Baileys_Irish_Cream_1L',9.99,1,1,'0'),(17,'so1017','Baileys_Irish_Cream_750ml_case',9.99,23,1,'0'),(18,'so1018','Baileys_Irish_Cream_750ml',9.99,4,1,'0'),(19,'so1019','Beefeater_Gin_1.5L_case',9.99,12,1,'0'),(20,'so1020','Beefeater_Gin_1.5L',9.99,0,1,'0'),(21,'so1021','Beefeater_Gin_1L_case',9.99,15,1,'0'),(22,'so1022','Beefeater_Gin_1L',9.99,28,1,'0'),(23,'so1023','Beefeater_Gin_750ml_case',9.99,16,1,'0'),(24,'so1024','Beefeater_Gin_750ml',9.99,23,1,'0'),(25,'so1025','Black_Velvet_Whiskey_1.5L_case',9.99,9,1,'0'),(26,'so1026','Black_Velvet_Whiskey_1.5L',9.99,6,1,'0'),(27,'so1027','Black_Velvet_Whiskey_1L_case',9.99,24,1,'0'),(28,'so1028','Black_Velvet_Whiskey_1L',9.99,10,1,'0'),(29,'so1029','Black_Velvet_Whiskey_750ml_case',9.99,0,1,'0'),(30,'so1030','Black_Velvet_Whiskey_750ml',9.99,18,1,'0'),(31,'so1031','Bulleit_Whiskey_1.5L_case',9.99,11,1,'0'),(32,'so1032','Bulleit_Whiskey_1.5L',9.99,3,1,'0'),(33,'so1033','Bulleit_Whiskey_1L_case',9.99,17,1,'0'),(34,'so1034','Bulleit_Whiskey_1L',9.99,26,1,'0'),(35,'so1035','Bulleit_Whiskey_750ml_case',9.99,24,1,'0'),(36,'so1036','Bulleit_Whiskey_750ml',9.99,16,1,'0'),(37,'so1037','Camerana_Tequila_1.5L_case',9.99,22,1,'0'),(38,'so1038','Camerana_Tequila_1.5L',9.99,14,1,'0'),(39,'so1039','Camerana_Tequila_1L_case',9.99,1,1,'0'),(40,'so1040','Camerana_Tequila_1L',9.99,29,1,'0'),(41,'so1041','Camerana_Tequila_750ml_case',9.99,12,1,'0'),(42,'so1042','Camerana_Tequila_750ml',9.99,25,1,'0'),(43,'so1043','Canadian_Club_Whiskey_1.5L_case',9.99,17,1,'0'),(44,'so1044','Canadian_Club_Whiskey_1.5L',9.99,19,1,'0'),(45,'so1045','Canadian_Club_Whiskey_1L_case',9.99,7,1,'0'),(46,'so1046','Canadian_Club_Whiskey_1L',9.99,13,1,'0'),(47,'so1047','Canadian_Club_Whiskey_750ml_case',9.99,3,1,'0'),(48,'so1048','Canadian_Club_Whiskey_750ml',9.99,26,1,'0'),(49,'so1049','Captain_Morgans_Rum_1.5L_case',9.99,5,1,'0'),(50,'so1050','Captain_Morgans_Rum_1.5L',9.99,0,1,'0'),(51,'so1051','Captain_Morgans_Rum_1L_case',9.99,12,1,'0'),(52,'so1052','Captain_Morgans_Rum_1L',9.99,19,1,'0'),(53,'so1053','Captain_Morgans_Rum_750ml_case',9.99,20,1,'0'),(54,'so1054','Captain_Morgans_Rum_750ml',9.99,25,1,'0'),(55,'so1055','Chivas_Scotch_1.5L_case',9.99,11,1,'0'),(56,'so1056','Chivas_Scotch_1.5L',9.99,5,1,'0'),(57,'so1057','Chivas_Scotch_1L_case',9.99,4,1,'0'),(58,'so1058','Chivas_Scotch_1L',9.99,6,1,'0'),(59,'so1059','Chivas_Scotch_750ml_case',9.99,22,1,'0'),(60,'so1060','Chivas_Scotch_750ml',9.99,10,1,'0'),(61,'so1061','Compari_1.5L_case',9.99,14,1,'0'),(62,'so1062','Compari_1.5L',9.99,11,1,'0'),(63,'so1063','Compari_1L_case',9.99,20,1,'0'),(64,'so1064','Compari_1L',9.99,27,1,'0'),(65,'so1065','Compari_750ml_case',9.99,16,1,'0'),(66,'so1066','Compari_750ml',9.99,10,1,'0'),(67,'so1067','Courvoisier_Cognac_1.5L_case',9.99,19,1,'0'),(68,'so1068','Courvoisier_Cognac_1.5L',9.99,26,1,'0'),(69,'so1069','Courvoisier_Cognac_1L_case',9.99,24,1,'0'),(70,'so1070','Courvoisier_Cognac_1L',9.99,4,1,'0'),(71,'so1071','Courvoisier_Cognac_750ml_case',9.99,3,1,'0'),(72,'so1072','Courvoisier_Cognac_750ml',9.99,0,1,'0'),(73,'so1073','Crown_Whiskey_1.5L_case',9.99,4,1,'0'),(74,'so1074','Crown_Whiskey_1.5L',9.99,23,1,'0'),(75,'so1075','Crown_Whiskey_1L_case',9.99,20,1,'0'),(76,'so1076','Crown_Whiskey_1L',9.99,21,1,'0'),(77,'so1077','Crown_Whiskey_750ml_case',9.99,4,1,'0'),(78,'so1078','Crown_Whiskey_750ml',9.99,26,1,'0'),(79,'so1079','Cruzan_Black_Cherry_Rum_1.5L_case',9.99,3,1,'0'),(80,'so1080','Cruzan_Black_Cherry_Rum_1.5L',9.99,29,1,'0'),(81,'so1081','Cruzan_Black_Cherry_Rum_1L_case',9.99,24,1,'0'),(82,'so1082','Cruzan_Black_Cherry_Rum_1L',9.99,2,1,'0'),(83,'so1083','Cruzan_Black_Cherry_Rum_750ml_case',9.99,11,1,'0'),(84,'so1084','Cruzan_Black_Cherry_Rum_750ml',9.99,17,1,'0'),(85,'so1085','Dekuyper_Creme_De_Cocoa_1.5L_case',9.99,7,1,'0'),(86,'so1086','Dekuyper_Creme_De_Cocoa_1.5L',9.99,18,1,'0'),(87,'so1087','Dekuyper_Creme_De_Cocoa_1L_case',9.99,25,1,'0'),(88,'so1088','Dekuyper_Creme_De_Cocoa_1L',9.99,20,1,'0'),(89,'so1089','Dekuyper_Creme_De_Cocoa_750ml_case',9.99,8,1,'0'),(90,'so1090','Dekuyper_Creme_De_Cocoa_750ml',9.99,12,1,'0'),(91,'so1091','Dekuyper_Peach_1.5L_case',9.99,14,1,'0'),(92,'so1092','Dekuyper_Peach_1.5L',9.99,6,1,'0'),(93,'so1093','Dekuyper_Peach_1L_case',9.99,14,1,'0'),(94,'so1094','Dekuyper_Peach_1L',9.99,14,1,'0'),(95,'so1095','Dekuyper_Peach_750ml_case',9.99,13,1,'0'),(96,'so1096','Dekuyper_Peach_750ml',9.99,23,1,'0'),(97,'so1097','Dekuyper_Sour_Apple_1.5L_case',9.99,0,1,'0'),(98,'so1098','Dekuyper_Sour_Apple_1.5L',9.99,23,1,'0'),(99,'so1099','Dekuyper_Sour_Apple_1L_case',9.99,22,1,'0'),(100,'so1100','Dekuyper_Sour_Apple_1L',9.99,14,1,'0'),(101,'so1101','Dekuyper_Sour_Apple_750ml_case',9.99,5,1,'0'),(102,'so1102','Dekuyper_Sour_Apple_750ml',9.99,9,1,'0'),(103,'so1103','Dewers_Scotch_1.5L_case',9.99,14,1,'0'),(104,'so1104','Dewers_Scotch_1.5L',9.99,11,1,'0'),(105,'so1105','Dewers_Scotch_1L_case',9.99,3,1,'0'),(106,'so1106','Dewers_Scotch_1L',9.99,4,1,'0'),(107,'so1107','Dewers_Scotch_750ml_case',9.99,24,1,'0'),(108,'so1108','Dewers_Scotch_750ml',9.99,8,1,'0'),(109,'so1109','Disaronno_Amaretto_1.5L_case',9.99,21,1,'0'),(110,'so1110','Disaronno_Amaretto_1.5L',9.99,13,1,'0'),(111,'so1111','Disaronno_Amaretto_1L_case',9.99,24,1,'0'),(112,'so1112','Disaronno_Amaretto_1L',9.99,15,1,'0'),(113,'so1113','Disaronno_Amaretto_750ml_case',9.99,23,1,'0'),(114,'so1114','Disaronno_Amaretto_750ml',9.99,17,1,'0'),(115,'so1115','Fleischmanns_Gin_1.5L_case',9.99,15,1,'0'),(116,'so1116','Fleischmanns_Gin_1.5L',9.99,16,1,'0'),(117,'so1117','Fleischmanns_Gin_1L_case',9.99,18,1,'0'),(118,'so1118','Fleischmanns_Gin_1L',9.99,22,1,'0'),(119,'so1119','Fleischmanns_Gin_750ml_case',9.99,3,1,'0'),(120,'so1120','Fleischmanns_Gin_750ml',9.99,3,1,'0'),(121,'so1121','Galliano_1.5L_case',9.99,8,1,'0'),(122,'so1122','Galliano_1.5L',9.99,3,1,'0'),(123,'so1123','Galliano_1L_case',9.99,3,1,'0'),(124,'so1124','Galliano_1L',9.99,6,1,'0'),(125,'so1125','Galliano_750ml_case',9.99,27,1,'0'),(126,'so1126','Galliano_750ml',9.99,6,1,'0'),(127,'so1127','Glenlevit_Scotch_1.5L_case',9.99,16,1,'0'),(128,'so1128','Glenlevit_Scotch_1.5L',9.99,2,1,'0'),(129,'so1129','Glenlevit_Scotch_1L_case',9.99,16,1,'0'),(130,'so1130','Glenlevit_Scotch_1L',9.99,3,1,'0'),(131,'so1131','Glenlevit_Scotch_750ml_case',9.99,13,1,'0'),(132,'so1132','Glenlevit_Scotch_750ml',9.99,24,1,'0'),(133,'so1133','GoldSchlagger_1.5L_case',9.99,27,1,'0'),(134,'so1134','GoldSchlagger_1.5L',9.99,13,1,'0'),(135,'so1135','GoldSchlagger_1L_case',9.99,4,1,'0'),(136,'so1136','GoldSchlagger_1L',9.99,20,1,'0'),(137,'so1137','GoldSchlagger_750ml_case',9.99,23,1,'0'),(138,'so1138','GoldSchlagger_750ml',9.99,9,1,'0'),(139,'so1139','Grand_Marnier_Orange_Liqueur_1.5L_case',9.99,0,1,'0'),(140,'so1140','Grand_Marnier_Orange_Liqueur_1.5L',9.99,16,1,'0'),(141,'so1141','Grand_Marnier_Orange_Liqueur_1L_case',9.99,27,1,'0'),(142,'so1142','Grand_Marnier_Orange_Liqueur_1L',9.99,22,1,'0'),(143,'so1143','Grand_Marnier_Orange_Liqueur_750ml_case',9.99,8,1,'0'),(144,'so1144','Grand_Marnier_Orange_Liqueur_750ml',9.99,29,1,'0'),(145,'so1145','Green_Creme_De_Menthe_1.5L_case',9.99,29,1,'0'),(146,'so1146','Green_Creme_De_Menthe_1.5L',9.99,22,1,'0'),(147,'so1147','Green_Creme_De_Menthe_1L_case',9.99,21,1,'0'),(148,'so1148','Green_Creme_De_Menthe_1L',9.99,29,1,'0'),(149,'so1149','Green_Creme_De_Menthe_750ml_case',9.99,29,1,'0'),(150,'so1150','Green_Creme_De_Menthe_750ml',9.99,2,1,'0'),(151,'so1151','Grey_Goose_Vodka_1.5L_case',9.99,5,1,'0'),(152,'so1152','Grey_Goose_Vodka_1.5L',9.99,12,1,'0'),(153,'so1153','Grey_Goose_Vodka_1L_case',9.99,17,1,'0'),(154,'so1154','Grey_Goose_Vodka_1L',9.99,2,1,'0'),(155,'so1155','Grey_Goose_Vodka_750ml_case',9.99,24,1,'0'),(156,'so1156','Grey_Goose_Vodka_750ml',9.99,2,1,'0'),(157,'so1157','Hennessy_Cognac_1.5L_case',9.99,13,1,'0'),(158,'so1158','Hennessy_Cognac_1.5L',9.99,19,1,'0'),(159,'so1159','Hennessy_Cognac_1L_case',9.99,17,1,'0'),(160,'so1160','Hennessy_Cognac_1L',9.99,3,1,'0'),(161,'so1161','Hennessy_Cognac_750ml_case',9.99,22,1,'0'),(162,'so1162','Hennessy_Cognac_750ml',9.99,24,1,'0'),(163,'so1163','Hornitos_Tequila_1.5L_case',9.99,17,1,'0'),(164,'so1164','Hornitos_Tequila_1.5L',9.99,10,1,'0'),(165,'so1165','Hornitos_Tequila_1L_case',9.99,8,1,'0'),(166,'so1166','Hornitos_Tequila_1L',9.99,0,1,'0'),(167,'so1167','Hornitos_Tequila_750ml_case',9.99,19,1,'0'),(168,'so1168','Hornitos_Tequila_750ml',9.99,17,1,'0'),(169,'so1169','Jagermeister_1.5L_case',9.99,15,1,'0'),(170,'so1170','Jagermeister_1.5L',9.99,24,1,'0'),(171,'so1171','Jagermeister_1L_case',9.99,12,1,'0'),(172,'so1172','Jagermeister_1L',9.99,10,1,'0'),(173,'so1173','Jagermeister_750ml_case',9.99,6,1,'0'),(174,'so1174','Jagermeister_750ml',9.99,16,1,'0'),(175,'so1175','Jamesons_Whiskey_1.5L_case',9.99,29,1,'0'),(176,'so1176','Jamesons_Whiskey_1.5L',9.99,23,1,'0'),(177,'so1177','Jamesons_Whiskey_1L_case',9.99,7,1,'0'),(178,'so1178','Jamesons_Whiskey_1L',9.99,17,1,'0'),(179,'so1179','Jamesons_Whiskey_750ml_case',9.99,19,1,'0'),(180,'so1180','Jamesons_Whiskey_750ml',9.99,17,1,'0'),(181,'so1181','Jim_Beam_Bourbon_1.5L_case',9.99,6,1,'0'),(182,'so1182','Jim_Beam_Bourbon_1.5L',9.99,0,1,'0'),(183,'so1183','Jim_Beam_Bourbon_1L_case',9.99,27,1,'0'),(184,'so1184','Jim_Beam_Bourbon_1L',9.99,29,1,'0'),(185,'so1185','Jim_Beam_Bourbon_750ml_case',9.99,0,1,'0'),(186,'so1186','Jim_Beam_Bourbon_750ml',9.99,26,1,'0'),(187,'so1187','Johnny_Walker_Black_Scotch_1.5L_case',9.99,4,1,'0'),(188,'so1188','Johnny_Walker_Black_Scotch_1.5L',9.99,23,1,'0'),(189,'so1189','Johnny_Walker_Black_Scotch_1L_case',9.99,9,1,'0'),(190,'so1190','Johnny_Walker_Black_Scotch_1L',9.99,28,1,'0'),(191,'so1191','Johnny_Walker_Black_Scotch_750ml_case',9.99,1,1,'0'),(192,'so1192','Johnny_Walker_Black_Scotch_750ml',9.99,24,1,'0'),(193,'so1193','Johnny_Walker_Red_Scotch_1.5L_case',9.99,2,1,'0'),(194,'so1194','Johnny_Walker_Red_Scotch_1.5L',9.99,21,1,'0'),(195,'so1195','Johnny_Walker_Red_Scotch_1L_case',9.99,11,1,'0'),(196,'so1196','Johnny_Walker_Red_Scotch_1L',9.99,7,1,'0'),(197,'so1197','Johnny_Walker_Red_Scotch_750ml_case',9.99,26,1,'0'),(198,'so1198','Johnny_Walker_Red_Scotch_750ml',9.99,23,1,'0'),(199,'so1199','Jose_Quervo_Tequila_1.5L_case',9.99,22,1,'0'),(200,'so1200','Jose_Quervo_Tequila_1.5L',9.99,12,1,'0'),(201,'so1201','Jose_Quervo_Tequila_1L_case',9.99,25,1,'0'),(202,'so1202','Jose_Quervo_Tequila_1L',9.99,0,1,'0'),(203,'so1203','Jose_Quervo_Tequila_750ml_case',9.99,18,1,'0'),(204,'so1204','Jose_Quervo_Tequila_750ml',9.99,14,1,'0'),(205,'so1205','Kahlua_Coffee_Liquer_1.5L_case',9.99,17,1,'0'),(206,'so1206','Kahlua_Coffee_Liquer_1.5L',9.99,2,1,'0'),(207,'so1207','Kahlua_Coffee_Liquer_1L_case',9.99,19,1,'0'),(208,'so1208','Kahlua_Coffee_Liquer_1L',9.99,19,1,'0'),(209,'so1209','Kahlua_Coffee_Liquer_750ml_case',9.99,9,1,'0'),(210,'so1210','Kahlua_Coffee_Liquer_750ml',9.99,17,1,'0'),(211,'so1211','Ketel_One_Vodka_1.5L_case',9.99,8,1,'0'),(212,'so1212','Ketel_One_Vodka_1.5L',9.99,21,1,'0'),(213,'so1213','Ketel_One_Vodka_1L_case',9.99,19,1,'0'),(214,'so1214','Ketel_One_Vodka_1L',9.99,4,1,'0'),(215,'so1215','Ketel_One_Vodka_750ml_case',9.99,19,1,'0'),(216,'so1216','Ketel_One_Vodka_750ml',9.99,10,1,'0'),(217,'so1217','Knob_Creek_Whiskey_1.5L_case',9.99,15,1,'0'),(218,'so1218','Knob_Creek_Whiskey_1.5L',9.99,5,1,'0'),(219,'so1219','Knob_Creek_Whiskey_1L_case',9.99,26,1,'0'),(220,'so1220','Knob_Creek_Whiskey_1L',9.99,10,1,'0'),(221,'so1221','Knob_Creek_Whiskey_750ml_case',9.99,3,1,'0'),(222,'so1222','Knob_Creek_Whiskey_750ml',9.99,2,1,'0'),(223,'so1223','Makers_Mark_Bourbon_1.5L_case',9.99,24,1,'0'),(224,'so1224','Makers_Mark_Bourbon_1.5L',9.99,4,1,'0'),(225,'so1225','Makers_Mark_Bourbon_1L_case',9.99,10,1,'0'),(226,'so1226','Makers_Mark_Bourbon_1L',9.99,28,1,'0'),(227,'so1227','Makers_Mark_Bourbon_750ml_case',9.99,19,1,'0'),(228,'so1228','Makers_Mark_Bourbon_750ml',9.99,7,1,'0'),(229,'so1229','Malibu_Rum_1.5L_case',9.99,11,1,'0'),(230,'so1230','Malibu_Rum_1.5L',9.99,0,1,'0'),(231,'so1231','Malibu_Rum_1L_case',9.99,20,1,'0'),(232,'so1232','Malibu_Rum_1L',9.99,7,1,'0'),(233,'so1233','Malibu_Rum_750ml_case',9.99,12,1,'0'),(234,'so1234','Malibu_Rum_750ml',9.99,22,1,'0'),(235,'so1235','Midori_Melon_1.5L_case',9.99,14,1,'0'),(236,'so1236','Midori_Melon_1.5L',9.99,14,1,'0'),(237,'so1237','Midori_Melon_1L_case',9.99,18,1,'0'),(238,'so1238','Midori_Melon_1L',9.99,4,1,'0'),(239,'so1239','Midori_Melon_750ml_case',9.99,6,1,'0'),(240,'so1240','Midori_Melon_750ml',9.99,11,1,'0'),(241,'so1241','Monarch_Rum_1.5L_case',9.99,6,1,'0'),(242,'so1242','Monarch_Rum_1.5L',9.99,3,1,'0'),(243,'so1243','Monarch_Rum_1L_case',9.99,23,1,'0'),(244,'so1244','Monarch_Rum_1L',9.99,21,1,'0'),(245,'so1245','Monarch_Rum_750ml_case',9.99,14,1,'0'),(246,'so1246','Monarch_Rum_750ml',9.99,27,1,'0'),(247,'so1247','Montezuma_Tequila_1.5L_case',9.99,19,1,'0'),(248,'so1248','Montezuma_Tequila_1.5L',9.99,25,1,'0'),(249,'so1249','Montezuma_Tequila_1L_case',9.99,7,1,'0'),(250,'so1250','Montezuma_Tequila_1L',9.99,7,1,'0'),(251,'so1251','Montezuma_Tequila_750ml_case',9.99,27,1,'0'),(252,'so1252','Montezuma_Tequila_750ml',9.99,25,1,'0'),(253,'so1253','Moonshine_1.5L_case',9.99,22,1,'0'),(254,'so1254','Moonshine_1.5L',9.99,20,1,'0'),(255,'so1255','Moonshine_1L_case',9.99,22,1,'0'),(256,'so1256','Moonshine_1L',9.99,5,1,'0'),(257,'so1257','Moonshine_750ml_case',9.99,0,1,'0'),(258,'so1258','Moonshine_750ml',9.99,9,1,'0'),(259,'so1259','Patron_Tequila_1.5L_case',9.99,5,1,'0'),(260,'so1260','Patron_Tequila_1.5L',9.99,28,1,'0'),(261,'so1261','Patron_Tequila_1L_case',9.99,8,1,'0'),(262,'so1262','Patron_Tequila_1L',9.99,21,1,'0'),(263,'so1263','Patron_Tequila_750ml_case',9.99,1,1,'0'),(264,'so1264','Patron_Tequila_750ml',9.99,10,1,'0'),(265,'so1265','Pendletons_Whiskey_1.5L_case',9.99,16,1,'0'),(266,'so1266','Pendletons_Whiskey_1.5L',9.99,18,1,'0'),(267,'so1267','Pendletons_Whiskey_1L_case',9.99,1,1,'0'),(268,'so1268','Pendletons_Whiskey_1L',9.99,6,1,'0'),(269,'so1269','Pendletons_Whiskey_750ml_case',9.99,2,1,'0'),(270,'so1270','Pendletons_Whiskey_750ml',9.99,12,1,'0'),(271,'so1271','Rumplemintz_1.5L_case',9.99,14,1,'0'),(272,'so1272','Rumplemintz_1.5L',9.99,25,1,'0'),(273,'so1273','Rumplemintz_1L_case',9.99,2,1,'0'),(274,'so1274','Rumplemintz_1L',9.99,11,1,'0'),(275,'so1275','Rumplemintz_750ml_case',9.99,4,1,'0'),(276,'so1276','Rumplemintz_750ml',9.99,18,1,'0'),(277,'so1277','Saphire_Gin_1.5L_case',9.99,4,1,'0'),(278,'so1278','Saphire_Gin_1.5L',9.99,22,1,'0'),(279,'so1279','Saphire_Gin_1L_case',9.99,3,1,'0'),(280,'so1280','Saphire_Gin_1L',9.99,12,1,'0'),(281,'so1281','Saphire_Gin_750ml_case',9.99,27,1,'0'),(282,'so1282','Saphire_Gin_750ml',9.99,1,1,'0'),(283,'so1283','Sauza_Tequila_1.5L_case',9.99,29,1,'0'),(284,'so1284','Sauza_Tequila_1.5L',9.99,5,1,'0'),(285,'so1285','Sauza_Tequila_1L_case',9.99,3,1,'0'),(286,'so1286','Sauza_Tequila_1L',9.99,4,1,'0'),(287,'so1287','Sauza_Tequila_750ml_case',9.99,11,1,'0'),(288,'so1288','Sauza_Tequila_750ml',9.99,27,1,'0'),(289,'so1289','Seagrams_7_Whiskey_1.5L_case',9.99,3,1,'0'),(290,'so1290','Seagrams_7_Whiskey_1.5L',9.99,2,1,'0'),(291,'so1291','Seagrams_7_Whiskey_1L_case',9.99,14,1,'0'),(292,'so1292','Seagrams_7_Whiskey_1L',9.99,4,1,'0'),(293,'so1293','Seagrams_7_Whiskey_750ml_case',9.99,0,1,'0'),(294,'so1294','Seagrams_7_Whiskey_750ml',9.99,21,1,'0'),(295,'so1295','Skoll_Vodka_1.5L_case',9.99,0,1,'0'),(296,'so1296','Skoll_Vodka_1.5L',9.99,0,1,'0'),(297,'so1297','Skoll_Vodka_1L_case',9.99,0,1,'0'),(298,'so1298','Skoll_Vodka_1L',9.99,3,1,'0'),(299,'so1299','Skoll_Vodka_750ml_case',9.99,2,1,'0'),(300,'so1300','Skoll_Vodka_750ml',9.99,27,1,'0'),(301,'so1301','Smirnoff_Blueberry_Vodka_1.5L_case',9.99,23,1,'0'),(302,'so1302','Smirnoff_Blueberry_Vodka_1.5L',9.99,18,1,'0'),(303,'so1303','Smirnoff_Blueberry_Vodka_1L_case',9.99,17,1,'0'),(304,'so1304','Smirnoff_Blueberry_Vodka_1L',9.99,21,1,'0'),(305,'so1305','Smirnoff_Blueberry_Vodka_750ml_case',9.99,7,1,'0'),(306,'so1306','Smirnoff_Blueberry_Vodka_750ml',9.99,10,1,'0'),(307,'so1307','Smirnoff_Citrus_Vodka_1.5L_case',9.99,28,1,'0'),(308,'so1308','Smirnoff_Citrus_Vodka_1.5L',9.99,26,1,'0'),(309,'so1309','Smirnoff_Citrus_Vodka_1L_case',9.99,24,1,'0'),(310,'so1310','Smirnoff_Citrus_Vodka_1L',9.99,10,1,'0'),(311,'so1311','Smirnoff_Citrus_Vodka_750ml_case',9.99,24,1,'0'),(312,'so1312','Smirnoff_Citrus_Vodka_750ml',9.99,14,1,'0'),(313,'so1313','Smirnoff_Orange_Vodka_1.5L_case',9.99,23,1,'0'),(314,'so1314','Smirnoff_Orange_Vodka_1.5L',9.99,23,1,'0'),(315,'so1315','Smirnoff_Orange_Vodka_1L_case',9.99,16,1,'0'),(316,'so1316','Smirnoff_Orange_Vodka_1L',9.99,15,1,'0'),(317,'so1317','Smirnoff_Orange_Vodka_750ml_case',9.99,19,1,'0'),(318,'so1318','Smirnoff_Orange_Vodka_750ml',9.99,1,1,'0'),(319,'so1319','Smirnoff_Pomegranite_Vodka_1.5L_case',9.99,20,1,'0'),(320,'so1320','Smirnoff_Pomegranite_Vodka_1.5L',9.99,1,1,'0'),(321,'so1321','Smirnoff_Pomegranite_Vodka_1L_case',9.99,29,1,'0'),(322,'so1322','Smirnoff_Pomegranite_Vodka_1L',9.99,29,1,'0'),(323,'so1323','Smirnoff_Pomegranite_Vodka_750ml_case',9.99,26,1,'0'),(324,'so1324','Smirnoff_Pomegranite_Vodka_750ml',9.99,13,1,'0'),(325,'so1325','Smirnoff_Raspberry_Vodka_1.5L_case',9.99,22,1,'0'),(326,'so1326','Smirnoff_Raspberry_Vodka_1.5L',9.99,19,1,'0'),(327,'so1327','Smirnoff_Raspberry_Vodka_1L_case',9.99,20,1,'0'),(328,'so1328','Smirnoff_Raspberry_Vodka_1L',9.99,24,1,'0'),(329,'so1329','Smirnoff_Raspberry_Vodka_750ml_case',9.99,9,1,'0'),(330,'so1330','Smirnoff_Raspberry_Vodka_750ml',9.99,2,1,'0'),(331,'so1331','Smirnoff_Root_Beer_Vodka_1.5L_case',9.99,13,1,'0'),(332,'so1332','Smirnoff_Root_Beer_Vodka_1.5L',9.99,7,1,'0'),(333,'so1333','Smirnoff_Root_Beer_Vodka_1L_case',9.99,10,1,'0'),(334,'so1334','Smirnoff_Root_Beer_Vodka_1L',9.99,13,1,'0'),(335,'so1335','Smirnoff_Root_Beer_Vodka_750ml_case',9.99,2,1,'0'),(336,'so1336','Smirnoff_Root_Beer_Vodka_750ml',9.99,1,1,'0'),(337,'so1337','Smirnoff_Strawberry_Vodka_1.5L_case',9.99,25,1,'0'),(338,'so1338','Smirnoff_Strawberry_Vodka_1.5L',9.99,16,1,'0'),(339,'so1339','Smirnoff_Strawberry_Vodka_1L_case',9.99,28,1,'0'),(340,'so1340','Smirnoff_Strawberry_Vodka_1L',9.99,6,1,'0'),(341,'so1341','Smirnoff_Strawberry_Vodka_750ml_case',9.99,8,1,'0'),(342,'so1342','Smirnoff_Strawberry_Vodka_750ml',9.99,23,1,'0'),(343,'so1343','Smirnoff_Vanilla_Vodka_1.5L_case',9.99,20,1,'0'),(344,'so1344','Smirnoff_Vanilla_Vodka_1.5L',9.99,2,1,'0'),(345,'so1345','Smirnoff_Vanilla_Vodka_1L_case',9.99,18,1,'0'),(346,'so1346','Smirnoff_Vanilla_Vodka_1L',9.99,4,1,'0'),(347,'so1347','Smirnoff_Vanilla_Vodka_750ml_case',9.99,16,1,'0'),(348,'so1348','Smirnoff_Vanilla_Vodka_750ml',9.99,14,1,'0'),(349,'so1349','Smirnoff_Vodka_1.5L_case',9.99,2,1,'0'),(350,'so1350','Smirnoff_Vodka_1.5L',9.99,13,1,'0'),(351,'so1351','Smirnoff_Vodka_1L_case',9.99,28,1,'0'),(352,'so1352','Smirnoff_Vodka_1L',9.99,6,1,'0'),(353,'so1353','Smirnoff_Vodka_750ml_case',9.99,28,1,'0'),(354,'so1354','Smirnoff_Vodka_750ml',9.99,25,1,'0'),(355,'so1355','Smirnoff_Whip_Cream_Vodka_1.5L_case',9.99,13,1,'0'),(356,'so1356','Smirnoff_Whip_Cream_Vodka_1.5L',9.99,10,1,'0'),(357,'so1357','Smirnoff_Whip_Cream_Vodka_1L_case',9.99,8,1,'0'),(358,'so1358','Smirnoff_Whip_Cream_Vodka_1L',9.99,18,1,'0'),(359,'so1359','Smirnoff_Whip_Cream_Vodka_750ml_case',9.99,2,1,'0'),(360,'so1360','Smirnoff_Whip_Cream_Vodka_750ml',9.99,25,1,'0'),(361,'so1361','St_Germain_Liqueur_1.5L_case',9.99,28,1,'0'),(362,'so1362','St_Germain_Liqueur_1.5L',9.99,4,1,'0'),(363,'so1363','St_Germain_Liqueur_1L_case',9.99,6,1,'0'),(364,'so1364','St_Germain_Liqueur_1L',9.99,0,1,'0'),(365,'so1365','St_Germain_Liqueur_750ml_case',9.99,26,1,'0'),(366,'so1366','St_Germain_Liqueur_750ml',9.99,13,1,'0'),(367,'so1367','Stoli_Vodka_1.5L_case',9.99,25,1,'0'),(368,'so1368','Stoli_Vodka_1.5L',9.99,8,1,'0'),(369,'so1369','Stoli_Vodka_1L_case',9.99,14,1,'0'),(370,'so1370','Stoli_Vodka_1L',9.99,14,1,'0'),(371,'so1371','Stoli_Vodka_750ml_case',9.99,6,1,'0'),(372,'so1372','Stoli_Vodka_750ml',9.99,19,1,'0'),(373,'so1373','Tanquery_Gin_1.5L_case',9.99,3,1,'0'),(374,'so1374','Tanquery_Gin_1.5L',9.99,19,1,'0'),(375,'so1375','Tanquery_Gin_1L_case',9.99,15,1,'0'),(376,'so1376','Tanquery_Gin_1L',9.99,15,1,'0'),(377,'so1377','Tanquery_Gin_750ml_case',9.99,0,1,'0'),(378,'so1378','Tanquery_Gin_750ml',9.99,22,1,'0'),(379,'so1379','Triple_Sec_Orange_Liqueur_1.5L_case',9.99,26,1,'0'),(380,'so1380','Triple_Sec_Orange_Liqueur_1.5L',9.99,0,1,'0'),(381,'so1381','Triple_Sec_Orange_Liqueur_1L_case',9.99,29,1,'0'),(382,'so1382','Triple_Sec_Orange_Liqueur_1L',9.99,14,1,'0'),(383,'so1383','Triple_Sec_Orange_Liqueur_750ml_case',9.99,15,1,'0'),(384,'so1384','Triple_Sec_Orange_Liqueur_750ml',9.99,26,1,'0'),(385,'so1385','VO_Whiskey_1.5L_case',9.99,16,1,'0'),(386,'so1386','VO_Whiskey_1.5L',9.99,22,1,'0'),(387,'so1387','VO_Whiskey_1L_case',9.99,6,1,'0'),(388,'so1388','VO_Whiskey_1L',9.99,0,1,'0'),(389,'so1389','VO_Whiskey_750ml_case',9.99,15,1,'0'),(390,'so1390','VO_Whiskey_750ml',9.99,19,1,'0'),(391,'so1391','Wild_Turkey_Whiskey_1.5L_case',9.99,10,1,'0'),(392,'so1392','Wild_Turkey_Whiskey_1.5L',9.99,1,1,'0'),(393,'so1393','Wild_Turkey_Whiskey_1L_case',9.99,3,1,'0'),(394,'so1394','Wild_Turkey_Whiskey_1L',9.99,24,1,'0'),(395,'so1395','Wild_Turkey_Whiskey_750ml_case',9.99,8,1,'0'),(396,'so1396','Wild_Turkey_Whiskey_750ml',9.99,22,1,'0'),(397,'so1397','_14_Hands_Cab_750ml_case',9.99,21,2,'0'),(398,'so1398','Brown_Family_Cabernet_750ml_case',9.99,16,2,'0'),(399,'so1399','Chateau_Merlot_750ml_case',9.99,20,2,'0'),(400,'so1400','Chateau_Mimi_Chardonnay_750ml_case',9.99,3,2,'0'),(401,'so1401','Chateau_Reisling_750ml_case',9.99,22,2,'0'),(402,'so1402','Chloe_Rose_750ml_case',9.99,21,2,'0'),(403,'so1403','Colum_Composition_Red_Blend_750ml_case',9.99,14,2,'0'),(404,'so1404','Copper_Ridge_White_Zin_750ml_case',9.99,5,2,'0'),(405,'so1405','Duck_Pond_Pinot_Noir_750ml_case',9.99,11,2,'0'),(406,'so1406','Ecco_Pino_Grigio_750ml_case',9.99,5,2,'0'),(407,'so1407','Jacobs_Creek_Shiraz_Cab_Blend_750ml_case',9.99,23,2,'0'),(408,'so1408','KJ_Chard_750ml_case',9.99,27,2,'0'),(409,'so1409','Prosecco_750ml_case',9.99,21,2,'0'),(410,'so1410','Worlds_Edge_Cab_750ml_case',9.99,17,2,'0'),(411,'so1411','Worlds_Edge_Chard_750ml_case',9.99,21,2,'0'),(412,'so1412','_14_Hands_Cab_1.5L_case',9.99,12,2,'0'),(413,'so1413','Brown_Family_Cabernet_1.5L_case',9.99,7,2,'0'),(414,'so1414','Chateau_Merlot_1.5L_case',9.99,12,2,'0'),(415,'so1415','Chateau_Mimi_Chardonnay_1.5L_case',9.99,7,2,'0'),(416,'so1416','Chateau_Reisling_1.5L_case',9.99,13,2,'0'),(417,'so1417','Chloe_Rose_1.5L_case',9.99,3,2,'0'),(418,'so1418','Colum_Composition_Red_Blend_1.5L_case',9.99,5,2,'0'),(419,'so1419','Copper_Ridge_White_Zin_1.5L_case',9.99,25,2,'0'),(420,'so1420','Duck_Pond_Pinot_Noir_1.5L_case',9.99,20,2,'0'),(421,'so1421','Ecco_Pino_Grigio_1.5L_case',9.99,15,2,'0'),(422,'so1422','Jacobs_Creek_Shiraz_Cab_Blend_1.5L_case',9.99,9,2,'0'),(423,'so1423','KJ_Chard_1.5L_case',9.99,1,2,'0'),(424,'so1424','Prosecco_1.5L_case',9.99,6,2,'0'),(425,'so1425','Worlds_Edge_Cab_1.5L_case',9.99,12,2,'0'),(426,'so1426','Worlds_Edge_Chard_1.5L_case',9.99,15,2,'0'),(427,'so1427','Ginger_Beer',9.99,3,5,'0');
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-24 10:16:23
