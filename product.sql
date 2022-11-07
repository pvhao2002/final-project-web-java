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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `description` text,
  `image` text,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'iPhone 8 Plus 64GB','20.990.000đ','cự lớn','da','Quá xịn xò','https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg','thinhhanh'),(2,'SamSung Galaxy J4+','3.490.000đ','lớn','hồng','Chất như nước cất','https://didongviet.vn/pub/media/catalog/product//s/a/samsung-galaxy-j4-plus-2018-didongviet.jpg','re'),(3,'Nokia black future','990.000đ','nhỏ gọn','đen','Cực đẹp ','https://cdn.tgdd.vn/Products/Images/42/22701/dien-thoai-di-dong-Nokia-1280-dienmay.com-l.jpg','re'),(4,'Oppo A12','5.499.000đ','trung bình','xanh ','Quá tuyệt vời','https://fdn2.gsmarena.com/vv/pics/oppo/oppo-a12-1.jpg',''),(5,'Vivo V11','10.990.000đ','lớn','xanh đen','Còn gì bằng','https://cdn.tgdd.vn/Products/Images/42/188828/vivo-v11-600x600.jpg','giamgia'),(6,'Xiaomi Mi 8 Lite','6.690.000đ','lớn','đen','Đẹp quá đi thôi','https://celularess.com/wp-content/uploads/2020/07/Xiaomi-8-lite.jpg',''),(7,'iPhone X 256GB Silver','27.990.000đ','trung bình','xám','Quá xịn xò','https://cdn.tgdd.vn/Products/Images/42/172404/iphone-x-256gb-silver-600x600-ud-600x600.jpg','thinhhanh'),(8,'iPhone 7 Plus 32GB','16.990.000đ','lớn','đen','Quá xịn xò','http://127.0.0.1:5502/img/products/iphone-7-plus-32gb-hh-600x600.jpg',''),(9,'iPhone Xr 128GB','22.990.000đ','trung bình','đỏ','Quá xịn xò','https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg','sanphammoi'),(10,'iPhone 8 Plus 256GB','25.790.000đ','cực lớn','đỏ','Quá xịn xò','https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb-red-600x600.jpg','tragop'),(11,'iPhone Xr 64GB','19.990.000đ','nhỏ gọn','đen','Quá xịn xò','https://didongviet.vn/pub/media/catalog/product//i/p/iphone-xr-mau-den-didongviet_2.jpg','thinhhanh'),(12,'SamSung Galaxy A8+ ','11.990.000đ','lớn','bạch kim','Chất như nước cất','http://127.0.0.1:5502/img/products/samsung-galaxy-a8-plus-2018-gold-600x600.jpg','thinhhanh'),(13,'SamSung Galaxy J8','6.290.000đ','trung bình','xám','Chất như nước cất','http://127.0.0.1:5502/img/products/samsung-galaxy-j8-600x600-600x600.jpg','giamgia'),(14,'SamSung Galaxy A7 ','8.990.000đ','nhỏ gọn','đen','Chất như nước cất','https://cdn.tgdd.vn/Products/Images/42/194327/samsung-galaxy-a7-2018-128gb-black-400x400.jpg','sanphammoi'),(15,'Nokia 5.1 Plus','4.790.000đ','cực lớn','đen','Cực đẹp','http://127.0.0.1:5502/img/products/nokia-51-plus-black-18thangbh-400x400.jpg','giamgia'),(16,'Oppo F9','7.699.000đ','lớn','đỏ ','Quá tuyệt vời','http://127.0.0.1:5502/img/products/oppo-f9-red-600x600.jpg','tragop'),(17,'Oppo A3s 32GB','4.690.000đ','lớn','tím','Quá tuyệt vời','http://127.0.0.1:5502/img/products/oppo-a3s-32gb-600x600.jpg','giamgia'),(18,'Vivo V9','7.4990.000đ','trung bình','đen','Còn gì bằng','https://cdn.tgdd.vn/Products/Images/42/155047/vivo-v9-2-1-600x600-600x600.jpg','thinhhanh'),(19,'Vivo Y85','4.990.000đ','nhỏ gọn','đỏ','Còn gì bằng','https://cdn.tgdd.vn/Products/Images/42/156205/vivo-y85-red-docquyen-600x600.jpg','tragop'),(20,'Vivo Y71','3.290.000đ','cực lớn','da','Còn gì bằng','https://cdn.tgdd.vn/Products/Images/42/158585/vivo-y71-docquyen-600x600.jpg',''),(21,'Xiaomi Mi 8','12.990.000đ','trung bình','xanh','Đẹp quá đi thôi','https://www.mediaelectronica.com/blog/wp-content/uploads/2018/11/xiaomi-mi8lite.jpg','thinhhanh'),(22,'Xiaomi Redmi Note 5','5.690.000đ','lớn','đen','Đẹp quá đi thôi','http://127.0.0.1:5502/img/products/xiaomi-redmi-note-5-pro-600x600.jpg','sanphammoi'),(23,'Xiaomi Redmi 5 Plus 4GB','4.790.000đ','cực lớn','đen','Đẹp quá đi thôi','http://127.0.0.1:5502/img/products/xiaomi-redmi-5-plus-600x600.jpg','giamgia'),(24,'Huawei Mate 20 Pro','21.990.000đ','lớn','xanh','Thật là đẹp','http://127.0.0.1:5502/img/products/huawei-mate-20-pro-green-600x600.jpg','thinhhanh'),(25,'Huawei Nova 3','9.990.000đ','cực lớn','tím','Thật là đẹp','http://127.0.0.1:5502/img/products/huawei-nova-3-2-600x600.jpg','thinhhanh'),(26,'Huawei Y5','1.990.000đ','trung bình','da','Thật là đẹp','http://127.0.0.1:5502/img/products/huawei-y5-2017-300x300.jpg',NULL),(27,'Huawei Nova 2i','3.990.000đ','nhỏ gọn','đen','Thật là đẹp','https://cdn.tgdd.vn/Products/Images/42/157031/samsung-galaxy-a6-2018-2-600x600.jpg',NULL),(28,'Mobiistar X','3.499.000đ','lớn','xám','Khỏi phải bàn','http://127.0.0.1:5502/img/products/mobiistar-x-3-600x600.jpg',NULL),(29,'Mobiistar Zumbo S2 Dual','2.850.000đ','lớn','da','Khỏi phải bàn','http://127.0.0.1:5502/img/products/mobiistar-zumbo-s2-dual-300x300.jpg',NULL),(30,'Mobiistar E Selfie','2.490.000đ','lớn','đen','Khỏi phải bàn','http://127.0.0.1:5502/img/products/mobiistar-e-selfie-300-1copy-600x600.jpg',NULL),(31,'Mobisstar B310','260.000đ','nhỏ','cam','Khỏi phải bàn','http://127.0.0.1:5502/img/products/mobiistar-b310-orange-600x600.jpg',NULL),(32,'Realme 2 Pro 128GB','6.990.000đ','cực lớn','đen','Thật xinh đẹp','https://cdn.tgdd.vn/Products/Images/42/192002/oppo-realme-2-pro-black-600x600.jpg',''),(33,'Realme 2 64GB','4.499.000đ','lớn','đỏ','Thật xinh đẹp','https://cdn.tgdd.vn/Products/Images/42/193462/realme-2-4gb-64gb-docquyen-600x600.jpg',NULL),(34,'Realme C1','2.490.000đ','lớn','đen','Thật xinh đẹp','https://cdn.tgdd.vn/Products/Images/42/193286/realme-c1-black-600x600.jpg',NULL),(35,'Realme 2 Pro 64GB','5.590.000đ','lớn','xanh','Thật xinh đẹp','https://cdn.tgdd.vn/Products/Images/42/193464/realme-2-pro-4gb-64gb-blue-600x600.jpg',NULL),(36,'Itel P32','1.890.000đ','lớn','da','Khá đẹp','https://cdn.tgdd.vn/Products/Images/42/186851/itel-p32-gold-600x600.jpg',NULL),(37,'Itel A32F','1.350.000đ','lớn','xám','Khá đẹp','https://cdn.tgdd.vn/Products/Images/42/193990/itel-a32f-pink-gold-600x600.jpg',NULL),(38,'Itel it2123','160.000đ','nhỏ','đen','Khá đẹp','https://cdn.tgdd.vn/Products/Images/42/146651/itel-it2123-d-300-300x300.jpg','re'),(39,'Itel it2161','170.000đ','nhỏ','đen','Khá đẹp','https://cdn.tgdd.vn/Products/Images/42/193989/itel-it2161-600x600.jpg',NULL),(40,'Itel S42','2.011.000đ','lớn','đen','Khá đẹp','https://cdn.fptshop.com.vn/Uploads/Originals/2018/10/5/636743632282964165_itel-s42-den-3.jpg','');
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

-- Dump completed on 2022-11-07  0:30:04
