-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: fpt-bookstore
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `billing_address`
--

DROP TABLE IF EXISTS `billing_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_address` (
  `id` bigint NOT NULL,
  `billing_address_city` varchar(255) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `billing_address_name` varchar(255) DEFAULT NULL,
  `billing_address_state` varchar(255) DEFAULT NULL,
  `billing_address_street1` varchar(255) DEFAULT NULL,
  `billing_address_street2` varchar(255) DEFAULT NULL,
  `billing_address_zipcode` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjg6ji2vsfuqlc9vhvy4yi449h` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_address`
--

LOCK TABLES `billing_address` WRITE;
/*!40000 ALTER TABLE `billing_address` DISABLE KEYS */;
INSERT INTO `billing_address` VALUES (14,'Da Nang',NULL,'Khang','Đà Nẵng','123 Tran Cao Van','','550000',13);
/*!40000 ALTER TABLE `billing_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text,
  `format` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `in_stock_number` int NOT NULL,
  `isbn` int NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `list_price` double NOT NULL,
  `number_of_pages` int NOT NULL,
  `our_price` double NOT NULL,
  `publication_date` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `shipping_weight` double NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (3,_binary '','Goswami, Jaideva','Comic','One of the other reviewers has mentioned that after watching just 1 Oz episode you\'ll be hooked. They are right, as this is exactly what happened with me.  The first thing that struck me about Oz was its brutality and unflinching scenes of violence, which set in right from the word GO. Tru\r\n','hardcover',NULL,11,1111111111,'english',241,321,32,'2022-07-20','KhangLe',12,'Fundamentals of Wavelets'),(6,_binary '','Goswami, Jaideva','Comic','A wonderful little production.   The filming technique is very unassuming- very old-time-BBC fashion and gives a comforting, and sometimes discomforting, sense of realism to the entire piece.   The actors are extremely well chosen- Michael Sheen not only \"has got all the polari\" \r\n','hardcover',NULL,2,1245552223,'vietnam',85,12,32,'2022-08-10','Foreman, John',12,'Data Smart'),(7,_binary '','Pratt, John','Language','Some films just simply should not be remade. This is one of them. In and of itself it is not a bad film. But it fails to capture the flavor and the terror of the 1963 film of the same title. Liam Neeson was excellent as he always is, and most of the cast holds up, with the exception of Owen Wilson, \r\n','hardcover',NULL,22,1690323122,'english',100,224,22,'2022-08-09','KhangLe',21,'Statistical Decision Theory\''),(8,_binary '','Nisbet, Robert',NULL,'This movie made it into one of my top 10 most awful movies. Horrible.   There wasn\'t a continuous minute where there wasn\'t a fight with one monster or another. There was no chance for any character development, they were too busy running from one sword fight to another. I had no emotional\r\n','hardcover',NULL,23,1664423321,'english',32,241,11,'2022-07-20','KhangLe',12,'Data Mining Handbook'),(9,_binary '','Tao, Terence','Language','I had the terrible misfortune of having to view this \"b-movie\" in it\'s entirety.  All I have to say is--- save your time and money!!! This has got to be the worst b-movie of all time, it shouldn\'t even be called a b-movie, more like an f-movie! Because it fails in all aspects that make a g\r\n','hardcover',NULL,123,1341422321,'english',42,321,21,'2022-08-11','KhangLe',32,'Analysis, Vol I'),(10,_binary '','Forsyth, Frederick','Language','The plot is about the death of little children. Hopper is the one who has to investigate the killings. During the movie it appears that he has some troubles with his daughter. In the end the serial killer get caught. That\'s it. But before you find out who dunnit, you have to see some terrible acting\r\n','paperback',NULL,0,1552234122,'english',51,232,22,'2022-08-18','KhangLe',12,'Veteran, The');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_to_cart_item`
--

DROP TABLE IF EXISTS `book_to_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_to_cart_item` (
  `id` bigint NOT NULL,
  `book_id` bigint DEFAULT NULL,
  `cart_item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK254kg9aacrs8uqa93ijc3garu` (`book_id`),
  KEY `FKbdyqr108hc7c06xtem0dhv9mk` (`cart_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_to_cart_item`
--

LOCK TABLES `book_to_cart_item` WRITE;
/*!40000 ALTER TABLE `book_to_cart_item` DISABLE KEYS */;
INSERT INTO `book_to_cart_item` VALUES (12,3,11);
/*!40000 ALTER TABLE `book_to_cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` bigint NOT NULL,
  `qty` int NOT NULL,
  `subtotal` decimal(19,2) DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `shopping_cart_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKis5hg85qbs5d91etr4mvd4tx6` (`book_id`),
  KEY `FKen9v41ihsnhcr0i7ivsd7i84c` (`order_id`),
  KEY `FKe89gjdx91fxnmkkssyoim8xfu` (`shopping_cart_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (11,1,32.00,3,13,NULL);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (17);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_token`
--

DROP TABLE IF EXISTS `password_reset_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_token` (
  `id` bigint NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5lwtbncug84d4ero33v3cfxvl` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_token`
--

LOCK TABLES `password_reset_token` WRITE;
/*!40000 ALTER TABLE `password_reset_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` bigint NOT NULL,
  `card_name` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `cvc` int NOT NULL,
  `expiry_month` int NOT NULL,
  `expiry_year` int NOT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt7a73xusjdnnsuespcitb683h` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (15,NULL,'213141512345',231,5,23,'LE NGUYEN PHUC KHANG','visa',13);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (0,'ROLE_STORE_OWNER'),(1,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_address`
--

DROP TABLE IF EXISTS `shipping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_address` (
  `id` bigint NOT NULL,
  `shipping_address_city` varchar(255) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_name` varchar(255) DEFAULT NULL,
  `shipping_address_state` varchar(255) DEFAULT NULL,
  `shipping_address_street1` varchar(255) DEFAULT NULL,
  `shipping_address_street2` varchar(255) DEFAULT NULL,
  `shipping_address_zipcode` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKatbgaqk1hhhhkyyuebylpeh7q` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_address`
--

LOCK TABLES `shipping_address` WRITE;
/*!40000 ALTER TABLE `shipping_address` DISABLE KEYS */;
INSERT INTO `shipping_address` VALUES (16,'Da Nang',NULL,'Khang','Đà Nẵng','123 Tran Cao Van','','550000',13);
/*!40000 ALTER TABLE `shipping_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `id` bigint NOT NULL,
  `grand_total` decimal(19,2) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK254qp5akhuaaj9n5co4jww3fk` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (5,0.00,4);
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'storeowner@gmail.com',_binary '',NULL,NULL,'$2a$12$LtbYtEzOBdnsiD/E9Wtj2O9Y5dj8BGhbPzuSAt.40LuHhKFfcVuHC',NULL,'storeowner'),(4,'lenguyenphuckhang0604@gmail.com',_binary '','Le','Khang','$2a$12$LtbYtEzOBdnsiD/E9Wtj2O6mNdCavNSruE0ixrQ//KAO0qHLZFFou',NULL,'lenguyenphuckhang');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_billing`
--

DROP TABLE IF EXISTS `user_billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_billing` (
  `id` bigint NOT NULL,
  `user_billing_city` varchar(255) DEFAULT NULL,
  `user_billing_country` varchar(255) DEFAULT NULL,
  `user_billing_name` varchar(255) DEFAULT NULL,
  `user_billing_state` varchar(255) DEFAULT NULL,
  `user_billing_street1` varchar(255) DEFAULT NULL,
  `user_billing_street2` varchar(255) DEFAULT NULL,
  `user_billing_zipcode` varchar(255) DEFAULT NULL,
  `user_payment_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3v6hd7snyc3g9s72u41k1fydu` (`user_payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_billing`
--

LOCK TABLES `user_billing` WRITE;
/*!40000 ALTER TABLE `user_billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_order`
--

DROP TABLE IF EXISTS `user_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_order` (
  `id` bigint NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `order_total` decimal(19,2) DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `billing_address_id` bigint DEFAULT NULL,
  `payment_id` bigint DEFAULT NULL,
  `shipping_address_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbaytj4l2p74kc5dp2dcrhucjo` (`billing_address_id`),
  KEY `FKqjg5jrh5qwnhl2f9lk7n77454` (`payment_id`),
  KEY `FKo2lj94xaujs1se8whlhc37nj7` (`shipping_address_id`),
  KEY `FKj86u1x7csa8yd68ql2y1ibrou` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_order`
--

LOCK TABLES `user_order` WRITE;
/*!40000 ALTER TABLE `user_order` DISABLE KEYS */;
INSERT INTO `user_order` VALUES (13,'2022-08-28 23:30:12','created',32.00,NULL,'premiumShipping',14,15,16,4);
/*!40000 ALTER TABLE `user_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payment`
--

DROP TABLE IF EXISTS `user_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_payment` (
  `id` bigint NOT NULL,
  `card_name` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `cvc` int NOT NULL,
  `default_payment` bit(1) NOT NULL,
  `expiry_month` int NOT NULL,
  `expiry_year` int NOT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8fb9fr82lb1qk2cw55ito9rk6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment`
--

LOCK TABLES `user_payment` WRITE;
/*!40000 ALTER TABLE `user_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint NOT NULL,
  `role_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (2,0,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_shipping`
--

DROP TABLE IF EXISTS `user_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_shipping` (
  `id` bigint NOT NULL,
  `user_shipping_city` varchar(255) DEFAULT NULL,
  `user_shipping_country` varchar(255) DEFAULT NULL,
  `user_shipping_default` bit(1) NOT NULL,
  `user_shipping_name` varchar(255) DEFAULT NULL,
  `user_shipping_state` varchar(255) DEFAULT NULL,
  `user_shipping_street1` varchar(255) DEFAULT NULL,
  `user_shipping_street2` varchar(255) DEFAULT NULL,
  `user_shipping_zipcode` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9hidca5hndj9y0b5jb0xtpn9u` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_shipping`
--

LOCK TABLES `user_shipping` WRITE;
/*!40000 ALTER TABLE `user_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_shipping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30  9:58:45
