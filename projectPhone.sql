-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: template_phone
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'iPhone'),(2,'Samsung'),(3,'Nokia'),(4,'Oppo'),(5,'Vivo'),(6,'Xiaomi'),(7,'Huawei'),(8,'Mobiistar'),(9,'Realme'),(10,'Itel');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` bigint DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `description` text,
  `image` text,
  `type` varchar(100) DEFAULT NULL,
  `catid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Huawei Mate 20 Pro',21990000,'lớn','xanh','Thật là đẹp','https://cdn.tgdd.vn/Products/Images/42/188963/huawei-mate-20-pro-twilight-600x600.jpg','thinhhanh',7),(2,'Huawei Nova 3',9990000,'cực lớn','tím','Thật là đẹp','https://cdn.tgdd.vn/Products/Images/42/142162/huawei-nova-3-2-600x600.jpg','thinhhanh',7),(3,'Huawei Y5',1990000,'trung bình','da','Thật là đẹp','https://cdn.tgdd.vn/Products/Images/42/103242/huawei-y5-2017-300x300.jpg',NULL,7),(4,'Huawei Nova 2i',3990000,'nhỏ gọn','đen','Thật là đẹp','https://cdn.tgdd.vn/Products/Images/42/157031/samsung-galaxy-a6-2018-2-600x600.jpg',NULL,7),(5,'iPhone 8 Plus 64GB',20990000,'cự lớn','da','Quá xịn xò','https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg','thinhhanh',1),(6,'iPhone X 256GB Silver',27990000,'trung bình','xám','Quá xịn xò','https://cdn.tgdd.vn/Products/Images/42/172404/iphone-x-256gb-silver-600x600-ud-600x600.jpg','thinhhanh',1),(7,'iPhone 7 Plus 32GB',16990000,'lớn','đen','Quá xịn xò','https://cdn.tgdd.vn/Products/Images/42/78124/iphone-7-plus-32gb-gold-600x600-600x600.jpg','',1),(8,'iPhone Xr 128GB',22990000,'trung bình','đỏ','Quá xịn xò','https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg','sanphammoi',1),(9,'iPhone 8 Plus 256GB',25790000,'cực lớn','đỏ','Quá xịn xò','https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb-red-600x600.jpg','tragop',1),(10,'iPhone Xr 64GB',19990000,'nhỏ gọn','đen','Quá xịn xò','https://didongviet.vn/pub/media/catalog/product//i/p/iphone-xr-mau-den-didongviet_2.jpg','thinhhanh',1),(11,'Itel P32',1890000,'lớn','da','Khá đẹp','https://cdn.tgdd.vn/Products/Images/42/186851/itel-p32-gold-600x600.jpg',NULL,10),(12,'Itel A32F',1350000,'lớn','xám','Khá đẹp','https://cdn.tgdd.vn/Products/Images/42/193990/itel-a32f-pink-gold-600x600.jpg',NULL,10),(13,'Itel it2123',160000,'nhỏ','đen','Khá đẹp','https://cdn.tgdd.vn/Products/Images/42/146651/itel-it2123-d-300-300x300.jpg','re',10),(14,'Itel it2161',170000,'nhỏ','đen','Khá đẹp','https://cdn.tgdd.vn/Products/Images/42/193989/itel-it2161-600x600.jpg',NULL,10),(15,'Itel S42',2011000,'lớn','đen','Khá đẹp','https://cdn.fptshop.com.vn/Uploads/Originals/2018/10/5/636743632282964165_itel-s42-den-3.jpg','',10),(16,'Mobiistar X',3499000,'lớn','xám','Khỏi phải bàn','https://cdn.tgdd.vn/Products/Images/42/188846/mobiistar-x-3-600x600.jpg',NULL,8),(17,'Mobiistar Zumbo S2 Dual',2850000,'lớn','da','Khỏi phải bàn','https://cdn.tgdd.vn/Products/Images/42/113175/mobiistar-zumbo-s2-dual-300x300.jpg',NULL,8),(18,'Mobiistar E Selfie',2490000,'lớn','da','Khỏi phải bàn','https://cdn.tgdd.vn/Products/Images/42/158067/mobiistar-e-selfie-300-1copy-600x600.jpg',NULL,8),(19,'Mobiistar B310',260000,'nhỏ','cam','Khỏi phải bản','https://cdn.tgdd.vn/Products/Images/42/151637/mobiistar-b310-orange-600x600.jpg',NULL,8),(20,'Nokia black future',990000,'nhỏ gọn','đen','Cực đẹp ','https://cdn.tgdd.vn/Products/Images/42/22701/dien-thoai-di-dong-Nokia-1280-dienmay.com-l.jpg','re',3),(21,'Nokia 5.1 Plus',4790000,'cực lớn','đen','Cực đẹp','https://cdn.tgdd.vn/Products/Images/42/179472/nokia-51-plus-black-600x600.jpg','giamgia',3),(22,'Oppo A12',5499000,'trung bình','xanh ','Quá tuyệt vời','https://fdn2.gsmarena.com/vv/pics/oppo/oppo-a12-1.jpg','',4),(23,'Oppo F9 6GB',7699000,'lớn','đỏ ','Quá tuyệt vời','https://cdn.tgdd.vn/Products/Images/42/186998/oppo-f9-6gb-red-600x600.jpg','tragop',4),(24,'Oppo A3s 32GB',4690000,'lớn','đen','Quá tuyệt vời','https://cdn.tgdd.vn/Products/Images/42/183994/oppo-a3s-32gb-600x600.jpg','giamgia',4),(25,'Realme 2 Pro 128GB',6990000,'cực lớn','đen','Thật xinh đẹp','https://cdn.tgdd.vn/Products/Images/42/192002/oppo-realme-2-pro-black-600x600.jpg','',9),(26,'Realme 2 64GB',4499000,'lớn','đỏ','Thật xinh đẹp','https://cdn.tgdd.vn/Products/Images/42/193462/realme-2-4gb-64gb-docquyen-600x600.jpg',NULL,9),(27,'Realme C1',2490000,'lớn','đen','Thật xinh đẹp','https://cdn.tgdd.vn/Products/Images/42/193286/realme-c1-black-600x600.jpg',NULL,9),(28,'Realme 2 Pro 64GB',5590000,'lớn','xanh','Thật xinh đẹp','https://cdn.tgdd.vn/Products/Images/42/193464/realme-2-pro-4gb-64gb-blue-600x600.jpg',NULL,9),(29,'SamSung Galaxy J4+',3490000,'lớn','da','Chất như nước cất','https://cdn.tgdd.vn/Products/Images/42/160730/samsung-galaxy-j4-plus-gold-600x600.jpg','re',2),(30,'SamSung Galaxy A8+ ',11990000,'lớn','trắng','Chất như nước cất','https://cdn.tgdd.vn/Products/Images/42/72134/samsung-galaxy-a8-16-300x300.jpg','thinhhanh',2),(31,'SamSung Galaxy J8',6290000,'trung bình','đen','Chất như nước cất','https://cdn.tgdd.vn/Products/Images/42/153830/samsung-galaxy-j8-black-tet-600x600.jpg','giamgia',2),(32,'SamSung Galaxy A7 ',8990000,'nhỏ gọn','đen','Chất như nước cất','https://cdn.tgdd.vn/Products/Images/42/194327/samsung-galaxy-a7-2018-128gb-black-400x400.jpg','sanphammoi',2),(33,'Vivo Y85',4999000,'nhỏ gọn','đỏ','Còn gì bằng','https://cdn.tgdd.vn/Products/Images/42/156205/vivo-y85-red-docquyen-600x600.jpg','tragop',5),(34,'Vivo Y71',3290000,'cực lớn','da','Còn gì bằng','https://cdn.tgdd.vn/Products/Images/42/158585/vivo-y71-docquyen-600x600.jpg','',5),(35,'Vivo V11',10990000,'lớn','xanh đen','Còn gì bằng','https://cdn.tgdd.vn/Products/Images/42/188828/vivo-v11-600x600.jpg','giamgia',5),(36,'Vivo V9',7499000,'trung bình','đen','Còn gì bằng','https://cdn.tgdd.vn/Products/Images/42/155047/vivo-v9-2-1-600x600-600x600.jpg','thinhhanh',5),(37,'Xiaomi Redmi Note 5',5690000,'lớn','xanh','Đẹp quá đi thôi','https://cdn.tgdd.vn/Products/Images/42/153953/xiaomi-redmi-note-5-blue-600x600.jpg','sanphammoi',6),(38,'Xiaomi Redmi 5 Plus 4GB',4790000,'cực lớn','đen','Đẹp quá đi thôi','https://cdn.tgdd.vn/Products/Images/42/143465/xiaomi-redmi-5-plus-600x600.jpg','giamgia',6),(39,'Xiaomi Mi 8 Lite',6690000,'lớn','đen','Đẹp quá đi thôi','https://cdn.tgdd.vn/Products/Images/42/192317/xiaomi-mi-8-lite-black-18thangbh-600x600.jpg','',6),(40,'Xiaomi Mi 8',12990000,'trung bình','đen','Đẹp quá đi thôi','https://cdn.tgdd.vn/Products/Images/42/167539/xiaomi-mi-8-black-600x600.jpg','thinhhanh',6);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-25 13:41:17
