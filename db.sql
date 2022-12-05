-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: demodb
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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brandId` int NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Apple','https://dangkithuonghieu.org/wp-content/uploads/2016/09/Apple-Logo.jpg'),(2,'Samsung','https://inuvdp.com/wp-content/uploads/2022/11/file-vector-logo-samsung-01.jpg'),(3,'Itel','https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Itel_Mobile_logo.png/1280px-Itel_Mobile_logo.png'),(4,'Oppo','https://www.grand-indonesia.com/wp-content/uploads/2020/01/Logo-Oppo.png'),(5,'Vivo','https://www.vivosmartphone.vn/themes/vivo/img/1024px-Vivo_logo_2019.png'),(6,'Xiaomi','https://inkythuatso.com/uploads/images/2021/10/xiaomi-logo-inkythuatso-01-30-09-04-50.jpg'),(7,'Huawei','https://logolook.net/wp-content/uploads/2022/03/Huawei-Logo-2006.png'),(8,'Realme','https://tscfm.org/wp-content/uploads/2021/03/realme-to-expand-retail-footprint-in-India.jpg');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Điện Thoại Phổ Thông'),(2,'Điện Thoại Flagship'),(3,'Điện Thoại Gaming');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informations`
--

DROP TABLE IF EXISTS `informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informations` (
  `infoId` int NOT NULL AUTO_INCREMENT,
  `cameraSau` varchar(255) DEFAULT NULL,
  `cameraSelfie` varchar(255) DEFAULT NULL,
  `cell` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `manhinh` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `rom` varchar(255) DEFAULT NULL,
  `thenho` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`infoId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informations`
--

LOCK TABLES `informations` WRITE;
/*!40000 ALTER TABLE `informations` DISABLE KEYS */;
INSERT INTO `informations` VALUES (1,'40 MP, 20 MP và 8 MP (3 camera)','24 MP','4200 mAh, có sạc nhanh','Hisilicon Kirin 980 8 nhân 64-bit','OLED, 6.39\', Quad HD+ (2K+)','Android 9.0 (Pie)','6 GB','128 GB','NM card, hỗ trợ tối đa 512 GB'),(2,'24 MP và 16 MP (2 camera)','24 MP và 2 MP (2 camera)','3750 mAh, có sạc nhanh','Hisilicon Kirin 970 8 nhân','LTPS LCD, 6.3\', Full HD+','Android 8.1 (Oreo)','6 GB','128 GB','MicroSD, hỗ trợ tối đa 256 GB'),(3,'8 MP','5 MP','3000 mAh','MT6737T, 4 nhân','IPS LCD, 5\', HD','Android 6.0 (Marshmallow)','2 GB','16 GB','MicroSD, hỗ trợ tối đa 128 GB'),(4,'16 MP và 2 MP (2 camera)','13 MP và 2 MP (2 camera)','3340 mAh','HiSilicon Kirin 659 8 nhân','IPS LCD, 5.9\', Full HD+','Android 7.0 (Nougat)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 128 GB'),(5,'2 camera 12 MP','7 MP','2691 mAh, có sạc nhanh','Apple A11 Bionic 6 nhân','LED-backlit IPS LCD, 5.5\', Retina HD','iOS 11','3 GB','64 GB','Không'),(6,'2 camera 12 MP','7 MP','2716 mAh, có sạc nhanh','Apple A11 Bionic 6 nhân','OLED, 5.8\', Super Retina','iOS 11','3 GB','256 GB','Không'),(7,'2 camera 12 MP','7 MP','2900 mAh','Apple A10 Fusion 4 nhân 64-bit','LED-backlit IPS LCD, 5.5\', Retina HD','iOS 11','3 GB','32 GB','Không'),(8,'12 MP','7 MP','2942 mAh, có sạc nhanh','Apple A12 Bionic 6 nhân','IPS LCD, 6.1\', IPS LCD, 16 triệu màu','iOS 12','3 GB','128 GB','Không'),(9,'12 MP','7 MP','1821 mAh, có sạc nhanh','Apple A11 Bionic 6 nhân','LED-backlit IPS LCD, 4.7\', Retina HD','iOS 11','2 GB','256 GB','Không'),(10,'12 MP','7 MP','2942 mAh, có sạc nhanh','Apple A12 Bionic 6 nhân','IPS LCD, 6.1\', IPS LCD, 16 triệu màu','iOS 12','3 GB','64 GB','undefined'),(11,'5 MP và 0.3 MP (2 camera)','5 MP','4000 mAh','MT6580 4 nhân 32-bit','IPS LCD, 5.45\', qHD','Android 8.1 (Oreo)','1 GB','8 GB','MicroSD, hỗ trợ tối đa 32 GB'),(12,'5 MP','2 MP','2050 mAh','MediaTek MT6580 4 nhân 32-bit','TFT, 5\', FWVGA','Android Go Edition','1 GB','8 GB','MicroSD, hỗ trợ tối đa 32 GB'),(13,'Không','Không','1000 mAh','Không','TFT, 1.77\', 65.536 màu','Không','Không','Không','Không'),(14,'Không','Không','1000 mAh','Không','TFT, 1.77\', WVGA','Không','Không','Không','MicroSD, hỗ trợ tối đa 32 GB'),(15,'Chính 13 MP & Phụ 2 MP','5 MP','4230 mAh','MediaTek Helio P35 8 nhân','IPS LCD6.22\"HD+','Android 9 (Pie)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 256 GB'),(16,'16 MP và 2 MP (2 camera)','25 MP','3500 mAh, có sạc nhanh','MediaTek Helio P60 8 nhân 64-bit','LTPS LCD, 6.3\', Full HD+','ColorOS 5.2 (Android 8.1)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 256 GB'),(17,'13 MP và 2 MP (2 camera)','8 MP','4230 mAh','Qualcomm Snapdragon 450 8 nhân 64-bit','IPS LCD, 6.2\', HD+','Android 8.1 (Oreo)','3 GB','32 GB','MicroSD, hỗ trợ tối đa 256 GB'),(18,'16 MP và 2 MP (2 camera)','16 MP','3500 mAh','Qualcomm Snapdragon 660 8 nhân','IPS LCD, 6.3\', Full HD+','ColorOS 5.2 (Android 8.1)','8 GB','128 GB','MicroSD, hỗ trợ tối đa 256 GB'),(19,'13 MP và 2 MP (2 camera)','8 MP','4230 mAh','Qualcomm Snapdragon 450 8 nhân 64-bit','IPS LCD, 6.2\', HD+','Android 8.1 (Oreo)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 256 GB'),(20,'13 MP và 2 MP (2 camera)','5 MP','4230 mAh','Qualcomm Snapdragon 450 8 nhân 64-bit','IPS LCD, 6.2\', HD+','Android 8.1 (Oreo)','2 GB','16 GB','MicroSD, hỗ trợ tối đa 256 GB'),(21,'16 MP và 2 MP (2 camera)','16 MP','3500 mAh','Qualcomm Snapdragon 660 8 nhân','IPS LCD, 6.3\', Full HD+','ColorOS 5.2 (Android 8.1)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 256 GB'),(22,'13 MP','5 MP','3300 mAh','Qualcomm Snapdragon 425 4 nhân 64-bit','IPS LCD, 6.0\', HD+','Android 8.1 (Oreo)','2 GB','16 GB','MicroSD, hỗ trợ tối đa 256 GB'),(23,'16 MP','16 MP và 8 MP (2 camera)','3500 mAh, có sạc nhanh','Exynos 7885 8 nhân 64-bit','Super AMOLED, 6\', Full HD+','Android 7.1 (Nougat)','6 GB','64 GB','MicroSD, hỗ trợ tối đa 256 GB'),(24,'16 MP và 5 MP (2 camera)','16 MP','3500 mAh','Qualcomm Snapdragon 450 8 nhân 64-bit','Super AMOLED, 6.0\', HD+','Android 8.0 (Oreo)','3 GB','32 GB','MicroSD, hỗ trợ tối đa 256 GB'),(25,'24 MP, 8 MP và 5 MP (3 camera)','24 MP','3300 mAh','Exynos 7885 8 nhân 64-bit','Super AMOLED, 6.0\', Full HD+','Android 8.0 (Oreo)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 512 GB'),(26,'13 MP và 2 MP (2 camera)','8 MP','3260 mAh','MediaTek MT6762 8 nhân 64-bit (Helio P22)','IPS LCD, 6.22\', HD+','Android 8.1 (Oreo)','4 GB','32 GB','MicroSD, hỗ trợ tối đa 256 GB'),(27,'13 MP','5 MP','3360 mAh','Qualcomm Snapdragon 425 4 nhân 64-bit','IPS LCD, 6.0\', HD+','Android 8.1 (Oreo)','3 GB','16 GB','MicroSD, hỗ trợ tối đa 256 GB'),(28,'12 MP và 5 MP (2 camera)','25 MP','3400 mAh, có sạc nhanh','Qualcomm Snapdragon 660 8 nhân','Super AMOLED, 6.41\', Full HD+','Android 8.1 (Oreo)','6 GB','128 GB','MicroSD, hỗ trợ tối đa 256 GB'),(29,'16 MP và 5 MP (2 camera)','24 MP','3260 mAh','Snapdragon 626 8 nhân 64-bit','IPS LCD, 6.3\', Full HD+','Android 8.1 (Oreo)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 256 GB'),(30,'12 MP và 5 MP (2 camera)','13 MP','4000 mAh, có sạc nhanh','Qualcomm Snapdragon 636 8 nhân','IPS LCD, 5.99\', Full HD+','Android 8.1 (Oreo)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 128 GB'),(31,'12 MP','5 MP','4000 mAh','Snapdragon 625 8 nhân 64-bit','IPS LCD, 5.99\', Full HD+','Android 7.1 (Nougat)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 256 GB'),(32,'12 MP và 5 MP (2 camera)','24 MP','3300 mAh, có sạc nhanh','Qualcomm Snapdragon 660 8 nhân','IPS LCD, 6.26\', Full HD+','Android 8.1 (Oreo)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 512 GB'),(33,'12 MP và 5 MP (2 camera)','24 MP','3300 mAh, có sạc nhanh','Qualcomm Snapdragon 660 8 nhân','IPS LCD, 6.26\', Full HD+','Android 8.1 (Oreo)','4 GB','64 GB','MicroSD, hỗ trợ tối đa 512 GB');
/*!40000 ALTER TABLE `informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `oderDetailId` int NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`oderDetailId`),
  KEY `FK3ohml2o6a85wh1nn65snnaind` (`orderId`),
  KEY `FKiwjcnl0au2iwgql7s5yonsjyw` (`productId`),
  CONSTRAINT `FK3ohml2o6a85wh1nn65snnaind` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  CONSTRAINT `FKiwjcnl0au2iwgql7s5yonsjyw` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `oderDate` tinyblob,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `totalPrice` double DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `FK6co8q7ko456baksb6tdjq2dfv` (`userId`),
  CONSTRAINT `FK6co8q7ko456baksb6tdjq2dfv` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `releaseDate` datetime(6) DEFAULT NULL,
  `brandId` int DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `infoId` int DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `FKbeo5hv3bqg2jweu40osoh71lp` (`brandId`),
  KEY `FK6i3ku5n5njmijfxwv43ktj2ki` (`categoryId`),
  KEY `FK6xwja37fij3vrrq208on9ukho` (`infoId`),
  CONSTRAINT `FK6i3ku5n5njmijfxwv43ktj2ki` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`),
  CONSTRAINT `FK6xwja37fij3vrrq208on9ukho` FOREIGN KEY (`infoId`) REFERENCES `informations` (`infoId`),
  CONSTRAINT `FKbeo5hv3bqg2jweu40osoh71lp` FOREIGN KEY (`brandId`) REFERENCES `brands` (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Sang trọng và đẳng cấp là những từ mà bạn có thể thốt lên khi chiêm ngưỡng thân hình của siêu phẩm Huawei Mate 20 Pro. Máy sở hữu lối thiết kế hiện đại, trang nhã trong sự kết hợp hài hòa giữa khung kim loại chắc chắn cùng 2 mặt kính cường lực cao cấp. Mềm mại và uyển chuyển từ các góc cạnh là những gì mà bạn sẽ cảm nhận được mỗi khi cầm nắm máy trên tay. Hơn nữa, Mate 20 Pro còn được tô điểm bởi những màu sắc vô cùng quyến rũ trông máy nổi bật và tinh tế.','https://cdn.tgdd.vn/Products/Images/42/188963/huawei-mate-20-pro-twilight-600x600.jpg',21990000,'Huawei Mate 20 Pro','2015-05-28 00:00:00.000000',7,2,1),(2,'Ấn tượng đầu tiên của bạn về chiếc điện thoại Huawei này chắc hẳn phải là thiết kế độc đáo của máy. Mặt lưng của điện thoại lúc thì như được chia làm hai nửa xanh và tím, lúc thì hai tông màu này như hòa vào với nhau đã tạo nên hiệu ứng thị giác rất thú vị. Độ sáng màn hình cao cùng góc nhìn rộng giúp bạn dễ dàng quan sát ngay cả dưới điều kiện ánh sáng mạnh. Bộ đôi camera chính với độ phân giải chính 16 MP và phụ 24 MP cùng nhiều tính năng và chế độ chụp giúp bạn dễ dàng cho ra những bức ảnh sắc nét.','https://cdn.tgdd.vn/Products/Images/42/142162/huawei-nova-3-2-600x600.jpg',9990000,'Huawei Nova 3','2016-03-16 00:00:00.000000',7,2,2),(3,'Chiếc smartphone này của Huawei có mặt lưng giả da với các đường chỉ may xung quanh, tổng thể tạo nên vẻ đẹp mới mẻ đồng thời giúp hạn chế mồ hôi và dấu vân tay trong quá trình sử dụng. Điểm nhấn đặc biệt nhất đến từ màn hình tràn viền khá mỏng kết hợp với chiếc tai thỏ hình giọt nước phá cách tạo nên một không gian rộng rãi và gần như chiếm trọn mặt trước của điện thoại. Sở hữu màn hình có kích thước 5.71 inch cho màu sắc hiển thị tươi và sắc nét, hứa hẹn sẽ giúp trải nghiệm hằng ngày của bạn được sống động và thú vị hơn rất nhiều.','https://cdn.tgdd.vn/Products/Images/42/103242/huawei-y5-2017-300x300.jpg',1990000,'Huawei Y5','2013-07-21 00:00:00.000000',7,1,3),(4,'Huawei Nova 2i là chiếc smartphone phổ thông có thiết kế màn hình tràn cạnh đẹp mắt, 4 camera (2 camera kép) và hiệu năng khá tốt, đây là sự lựa chọn tuyệt vời trong tầm giá. Bên cạnh thiết kế tràn viền, Huawei nova 2i được hoàn thiện bởi lớp vỏ kim loại sang trọng và chắc chắn, đường nét thiết kế đẹp mắt bo cong các cạnh cho cảm giác cầm nắm thoải mái. Màn hình cũng được làm cong viền 2.5D thời thượng.','https://cdn.tgdd.vn/Products/Images/42/157031/samsung-galaxy-a6-2018-2-600x600.jpg',3990000,'Huawei Nova 2i','2014-11-15 00:00:00.000000',7,1,4),(5,'Smartphone iPhone 8 Plus giữ nguyên hoàn toàn những đường nét thiết kế đã hoàn thiện từ thế hệ trước nhưng sử dụng phong cách 2 mặt kính cường lực kết hợp bộ khung kim loại. Mặt lưng kính bo cong 2.5D thời thượng, khung kim loại được gia cố cứng cáp, bền bỉ hơn với 7 lớp xử lý màu sơn, hạn chế bong tróc. Không có sự thay đổi trong thông số camera (vẫn là cụm camera kép cùng độ phân giải 12 MP so với chiếc điện thoại IPhone 7 Plus), chiếc điện thoại iPhone này chủ yếu được tập trung nâng cấp về ống kính, cảm biến, vi xử lý hình ảnh để nâng cao chất lượng ảnh chụp.','https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg',20990000,'iPhone 8 Plus 64GB','2018-05-17 00:00:00.000000',1,2,5),(6,'Đi kèm với màn hình chất lượng trên điện thoại iPhone X là chip Apple A11 Bionic. Một cái tên gì đó nghe có vẻ rất là \"Chất\". Và chip này có 6 lõi, cho hiệu suất hoạt động tốt hơn 25% so với A10. Màn hình iPhone X được phủ kín gần như toàn bộ ở mặt trước và vẫn chừa lại một phần màn hình cho loa, camera và các cảm biến ở phía trên. Thay vì sử dụng công nghệ TrueTone HD thì màn hình OLED 5.8 inch của iPhone X được trang bị công nghệ Super Retina cho mật độ điểm ảnh lên tới 458 dpi.','https://cdn.tgdd.vn/Products/Images/42/172404/iphone-x-256gb-silver-600x600-ud-600x600.jpg',27990000,'iPhone X 256GB Silver','2017-06-24 00:00:00.000000',1,2,6),(7,'iPhone 7 Plus là chiếc iPhone đầu tiên được trang bị camera kép có cùng độ phân giải 12 MP, đem lại khả năng chụp ảnh ở hai tiêu cự khác nhau. Camera trước nâng cấp độ phân giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiện thiếu sáng tuyệt vời với công nghệ Retina Flash, Auto HDR. Màn hình Retina trên 7 Plus hỗ trợ DCI-P3 gam màu rộng, nghĩa là chúng có khả năng tái tạo màu sắc trong phạm vi của sRGB.','https://cdn.tgdd.vn/Products/Images/42/78124/iphone-7-plus-32gb-gold-600x600-600x600.jpg',16990000,'iPhone 7 Plus 32GB','2016-12-25 00:00:00.000000',1,2,7),(8,'iPhone Xr được trang bị một loại công nghệ mới có tên Liquid Retina. Máy có độ phân giải 1792 x 828 Pixels cùng 1.4 triệu điểm ảnh. Với mỗi lần ra mắt, Apple lại giới thiệu một con chip mới và Apple A12 Bionic là con chip đầu tiên sản xuất với tiến trình 7nm được tích hợp trên iPhone Xr.  iPhone Xr có khả năng tạo hiệu ứng bokeh tuyệt đỉnh, làm nổi bật chân dung người chụp mà hình ảnh vẫn rất sắc nét, chi tiết. ','https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg',22990000,'iPhone Xr 128GB','2021-11-12 00:00:00.000000',1,2,8),(9,'iPhone 8 Plus là bản nâng cấp nhẹ của chiếc iPhone 7 Plus đã ra mắt trước đó với cấu hình mạnh mẽ cùng camera có nhiều cải tiến. Về ngoại hình điện thoại iPhone 8 Plus không có quá nhiều khác biệt so với người đàn anh đi trước. Thay đổi lớn nhất chính là Apple đã chuyển từ thiết kế kim loại nguyên khối sang mặt lưng kính nhằm mang tính năng sạc không dây lên 8 Plus. iPhone 8 Plus sở hữu màn hình kích thước 5.5 inch độ phân giải Full HD (1080 x 1920 pixels) đem lại khả năng hiển thị sắc nét. Cung cấp sức mạnh cho iPhone 8 Plus chính là con chip Apple A11 Bionic 6 nhân cùng với 3 GB RAM và 32 GB bộ nhớ trong.','https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb-red-600x600.jpg',25790000,'iPhone 8 Plus 256GB','2019-02-10 00:00:00.000000',1,2,9),(10,'Khác với iPhone Xs hay Xs Max, chiếc smartphone này sở hữu màn hình LCD. Tuy nhiên màu sắc sẽ chưa được trung thực cho lắm, để có cái nhìn tốt hơn thì người dùng có thể tham khảo qua iPhone 14 Plus. Với mỗi lần ra mắt, Apple lại giới thiệu một con chip mới và Apple A12 Bionic là con chip đầu tiên sản xuất với tiến trình 7nm được tích hợp trên iPhone Xr. Nếu ai đó khẳng định chỉ camera kép mới xoá phông thì đó là một sai lầm. iPhone Xr có khả năng tạo hiệu ứng bokeh tuyệt đỉnh, làm nổi bật chân dung người chụp mà hình ảnh vẫn rất sắc nét, chi tiết.','https://didongviet.vn/pub/media/catalog/product//i/p/iphone-xr-mau-den-didongviet_2.jpg',19990000,'iPhone Xr 64GB','2020-08-14 00:00:00.000000',1,2,10),(11,'Điện thoại Itel sở hữu phần mặt lưng nhựa, do vậy nhà sản xuất rất dễ áp dụng nhiều kiểu màu sắc trẻ trung, năng động và hợp xu hướng lên thiết bị này. Điểm nổi bật nhất trên Itel P32 chính là cụm camera kép có độ phân giải 5 MP ở chiếc camera chính và 0.3 MP ở chiếc camera đi kèm ở phía sau, điều mà khá ít smartphone trong tầm giá này có được. Itel P32 là chiếc điện thoại pin trâu mang trong mình viên pin có dung lượng lên tới 4000 mAh cho bạn sử dụng thoải mái lên tới 2 ngày.','https://cdn.tgdd.vn/Products/Images/42/186851/itel-p32-gold-600x600.jpg',1890000,'Itel P32','2015-07-19 00:00:00.000000',3,1,11),(12,'Itel A32F mang đến một thiết kế đơn giản nhưng vẫn vô cùng hiện đại với màu vàng đồng quyến rũ bao trọn lấy thân máy. Với thân hình nhỏ gọn giúp bạn dễ dàng cầm nắm và sử dụng máy bằng một cách đơn giản và thuận tiện. Itel A32F sở hữu màn hình kích thước 5 inch, tuy không quá xuất sắc nhưng vẫn đáp ứng tốt cho nhu cầu giải trí thường ngày của bạn. Là chiếc smartphone giá rẻ nên cấu hình của Itel A32F chỉ ở mức đủ dùng với các tác vụ cơ bản như: xem phim, nghe nhạc, lướt web...','https://cdn.tgdd.vn/Products/Images/42/193990/itel-a32f-pink-gold-600x600.jpg',1350000,'Itel A32F','2014-06-26 00:00:00.000000',3,1,12),(13,'Không có thiết kế quá nổi bật, chiếc điện thoại Itel này nhỏ gọn, nhẹ nhàng và hoàn thiện khá tốt phù hợp để di chuyển, sử dụng mọi lúc mọi nơi, phù hợp với mọi đối tượng người dùng. Itel 2123 hỗ trợ nghe nhạc MP3, loa to rõ ràng và có khe cắm thẻ nhớ để lưu trữ nhạc, đảm bảo liên lạc thông suốt với 2 sim 2 sóng online, có hỗ trợ nghe radio FM, đèn pin... Đầy đủ tính năng cho một chiếc điện thoại cơ bản. Bán phím nhô cao, khoảng cách phím rộng và cảm giác bấm êm cho bạn thoải mái thao tác sử dụng để nhắn tin, giải trí cực tốt.','https://cdn.tgdd.vn/Products/Images/42/146651/itel-it2123-d-300-300x300.jpg',160000,'Itel it2123','2010-04-05 00:00:00.000000',3,1,13),(14,'Itel It2161 sở hữu thân hình nhỏ gọn giúp bạn dễ dàng cầm nắm máy trên tay và di chuyển một cách dễ dàng. Sử dụng bàn phím T9 có độ nảy tốt và khoảng cách giữa các phím rộng cho bạn khả năng thao tác nhanh và chính xác. Màn hình của máy có kích thước 1.77 inch đủ để cho các nội dung hiển thị rõ ràng và chi tiết. Với dung lượng pin như trên thì Itel It2161 có thể đáp ứng cho bạn thời gian sử dụng vô cùng thoải mái và bền bỉ từ 3 - 4 ngày mà không cần sạc.','https://cdn.tgdd.vn/Products/Images/42/193989/itel-it2161-600x600.jpg',170000,'Itel it2161','2011-02-11 00:00:00.000000',3,1,14),(15,'OPPO A12 vẫn sở hữu thiết kế quen thuộc trên điện thoại Android với màn hình giọt nước tràn viền ra các cạnh. Màn hình của máy có kích thước 6.22 inch độ phân giải HD+, tất nhiên với thông số này OPPO A12 không hiển thị siêu nét như trên các điện thoại cao cấp, tuy nhiên máy vẫn đáp ứng tốt ở mức hình ảnh rõ ràng, màu sắc tốt, đọc thông tin và xem phim thoải mái. OPPO A12 được trang bị cụm camera kép ở phía sau, bao gồm một camera chính có độ phân giải 13 MP và camera phụ 2 MP hỗ trợ chụp ảnh chân dung xóa phông.','https://fdn2.gsmarena.com/vv/pics/oppo/oppo-a12-1.jpg',5499000,'Oppo A12','2016-07-29 00:00:00.000000',4,2,15),(16,'Là chiếc điện thoại OPPO được nâng cấp cấu hình, cụ thể là RAM lên tới 6 GB, OPPO F9 6GB còn trang bị nhiều tính năng đột phá như sở hữu công nghệ sạc VOOC mới nhất, mặt lưng chuyển màu độc đáo, màn hình tràn viền giọt nước và camera chụp chân dung tích hợp trí tuệ nhân tạo A.I hoàn hảo. OPPO F9 đem lại cho người dùng một chiếc điện thoại đầu tiên có thiết kế khung viền hình giọt nước, thay vì thiết kế tai thỏ đã dần trở nên phổ biến.','https://cdn.tgdd.vn/Products/Images/42/186998/oppo-f9-6gb-red-600x600.jpg',7699000,'Oppo F9 ','2017-03-28 00:00:00.000000',4,2,16),(17,'OPPO A3s 32GB là một chiếc smartphone mới của OPPO sở hữu giá rẻ hiếm hoi nhưng vẫn được trang bị màn hình tai thỏ và camera kép xu thế của năm 2018. Điểm ấn tượng đầu tiên trên chiếc điện thoại OPPO này chính là phần phần tai thỏ bên trên màn hình tương tự như chiếc iPhone X tới từ Apple. OPPO A3s có màn hình 6.2 inch độ phân giải HD+, tỷ lệ màn hình đạt 88.8% mang lại không gian lớn cho làm việc và giải trí. OPPO A3s 32GB sở hữu hệ thống camera kép độc đáo với độ phân giải của hai camera lần lượt là 13 MP (ống kính chính) và 2 MP (ống kính phụ).','https://cdn.tgdd.vn/Products/Images/42/183994/oppo-a3s-32gb-600x600.jpg',4690000,'Oppo A3s 32GB','2018-04-19 00:00:00.000000',4,3,17),(18,'Realme 2 Pro sở hữu thiết kế màn hình giọt nước đúng theo xu hướng của các smartphone mới nhất hiện nay. Là phiên bản nâng cấp của chiếc Realme 2 nên Realme 2 Pro được nâng cấp lên con chip Qualcomm Snapdragon 660 8 nhân với mức RAM lên tới 8 GB. Realme 2 Pro sở hữu bộ đôi camera kép với ống kính chính có độ phân giải 16 MP kèm theo là cảm biến phụ chiều sâu 2 MP để hỗ trợ khả năng chụp ảnh xóa phông.','https://cdn.tgdd.vn/Products/Images/42/192002/oppo-realme-2-pro-black-600x600.jpg',6990000,'Realme 2 Pro 128GB','2019-05-14 00:00:00.000000',8,3,18),(19,'Nếu trên Realme 1 người dùng chỉ có một camera đơn thì ở phiên bản kế nhiệm hãng đã mang lên hệ thống camera kép sau với ống kính chính 13 MP khẩu độ f/ 2.2 và cảm biến chiều sâu 2 MP khẩu độ f/2.4 hỗ trợ chụp ảnh xoá phông ở chế độ chân dung. Realme 2 sở hữu hai phiên bản và bản cao cấp nhất có RAM 4 GB và bộ nhớ trong 64 GB, giúp các thao tác đa nhiệm trở nên mượt mà hơn cũng như lưu trữ hình ảnh, video, âm nhạc thoải mái nhất.','https://cdn.tgdd.vn/Products/Images/42/193462/realme-2-4gb-64gb-docquyen-600x600.jpg',4499000,'Realme 2 4GB/64GB','2016-07-24 00:00:00.000000',8,2,19),(20,'Với một mức giá rẻ nhưng Realme C1 vẫn được trang bị màn hình có kích thước lên tới 6.2 inch cho không gian thoải mái để chơi game hay xem phim. Camera kép với 13 MP dành cho ống kính chính + 2 MP dành cho ống kính phụ ở mặt sau chính là một điểm cộng lớn nữa dành cho Realme C1 khi ở phân khúc này ít có smartphone sở hữu camera kép. Camera selfie 5 MP với chế độ làm đẹp \"trứ danh\" sẽ cho bạn những bức ảnh tự nhiên và chi tiết tốt.','https://cdn.tgdd.vn/Products/Images/42/193286/realme-c1-black-600x600.jpg',2490000,'Realme C1','2014-07-25 00:00:00.000000',8,1,20),(21,'Phiên bản Realme 2 Pro được nâng cấp lên con chip Snapdragon 660 8 nhân cùng RAM lên tới 6 GB. Chiếc điện thoại Realme này sở hữu thiết kế màn hình giọt nước đúng theo xu hướng của các smartphone mới nhất hiện nay. Realme 2 Pro sở hữu bộ đôi camera kép với ống kính chính độ phân giải 16 MP +ống kính phụ 2 MP và tất nhiên cũng hỗ trợ chụp ảnh xóa phông.','https://cdn.tgdd.vn/Products/Images/42/193464/realme-2-pro-4gb-64gb-blue-600x600.jpg',5590000,'Realme 2 Pro 64GB','2015-06-18 00:00:00.000000',8,2,21),(22,'Samsung Galaxy J4+ sở hữu cho mình camera chính với độ phân giải 13 MP cùng khẩu độ lớn f/1.9. Cung cấp sức mạnh cho máy là con chip 4 nhân với 2 GB RAM và 16 GB bộ nhớ trong. Máy sở hữu thiết kế quen thuộc của smartphone dòng J với sự kết hợp màn hình cong 2.5D ở các cạnh và các sắc màu mới nổi bật, đầy cá tính.','https://cdn.tgdd.vn/Products/Images/42/160730/samsung-galaxy-j4-plus-gold-600x600.jpg',3490000,'SamSung Galaxy J4+','2016-06-17 00:00:00.000000',2,3,22),(23,'Samsung Galaxy A8 là chiếc smartphone sang trọng có thiết kế kim loại nguyên khối chỉ mỏng 5.9 mm, được xem như là chiếc smartphone mỏng nhất của Samsung từ trước đến nay. Các thao tác làm việc cũng như giải trí trên Galaxy A8 cũng sẽ tốt hơn do máy có chip xử lý Exynos 5430 8 nhân có tốc độ 4 nhân cho 1.8 GHz và 4 nhân  cho 1.3 GHz, các game cần cấu hình cùng đồ họa nặng như Asphalt 8 máy cũng chạy nhẹ nhàng.','https://cdn.tgdd.vn/Products/Images/42/72134/samsung-galaxy-a8-16-300x300.jpg',11990000,'SamSung Galaxy A8+ ','2019-09-06 00:00:00.000000',2,3,23),(24,'Chiếc điện thoại Galaxy J8 vẫn sở hữu một lối thiết kế đậm chất Samsung với sự mềm mại, uyển chuyển nhưng vẫn khá thanh thoát đến từng góc cạnh của máy. Với sự kết hợp của tỷ lệ màn hình tràn viền mới 18.5:9 trên kích thước 6 inch đảm bảo cho bạn có một không gian trải nghiệm rộng rãi nhưng máy vẫn vừa vặn và nhỏ gọn trong lòng bàn tay. Qualcomm Snapdragon 450 chính là con chip mà Samsung trang bị cho máy với một hiệu năng khá cùng khả năng tiết kiệm năng lượng tối ưu. Thực tế cho thấy Galaxy J8 đáp ứng được cấu hình chơi các game phổ biến như Liên Quân, Pubg khá ổn định.','https://cdn.tgdd.vn/Products/Images/42/153830/samsung-galaxy-j8-black-tet-600x600.jpg',6290000,'SamSung Galaxy J8','2018-07-05 00:00:00.000000',2,3,24),(25,'Mặc dù trước đó Galaxy Alpha mới là chiếc máy đầu tiên có thiết kế hoàn toàn bằng kim loại nguyên khối nhưng A7 lại tạo được sự chú ý hơn. Việc chụp ảnh selfie trên Galaxy A7 trở nên thông minh và thú vị hơn nhiều, bạn không nhất thiết phải chạm vào nút chụp ảnh mà có thể thay thế bằng nhận diện giọng nói hay cử chỉ tay.','https://cdn.tgdd.vn/Products/Images/42/194327/samsung-galaxy-a7-2018-128gb-black-400x400.jpg',8990000,'SamSung Galaxy A7 ','2016-02-08 00:00:00.000000',2,3,25),(26,'Đầu năm 2018 dường như là thời gian ra mắt của một loạt smartphone thiết kế “tai thỏ”, và Vivo Y85 cũng không phải ngoại lệ. Màn hình của máy có kích thước 6.22 inch, sử dụng tấm nền IPS LCD. Vivo Y85 dự kiến được cung cấp sức mạnh xử lý bởi con chip mới MediaTek MT6762, RAM 4 GB, bộ nhớ trong 32 GB. Vivo Y85 sở hữu hệ thống camera kép 13 MP (cảm biến chính) + 2 MP (cảm biến phụ) ở mặt lưng, có cùng khẩu độ f/2.0 hứa hẹn mang đến cho người dùng những bức ảnh chân dung, xóa phông đẹp mắt.','https://cdn.tgdd.vn/Products/Images/42/156205/vivo-y85-red-docquyen-600x600.jpg',4999000,'Vivo Y85','2018-08-24 00:00:00.000000',5,2,26),(27,'Vivo Y71 xuất hiện với nhiều trang bị theo thời đại như màn hình 18:9, mở khóa bằng gương mặt và nhiều tính năng hấp dẫn khác nhưng lại sở hữu mức giá phải chăng. Vivo Y71 được Vivo sử dụng con chip Snapdragon 425 kết hợp với RAM 3 GB và tuy nhiên bộ nhớ trong chỉ có 16 GB, điều này sẽ khiến bạn cần đến sự hỗ trợ của khe cắm thẻ nhớ microSD. Vivo Y71 được trang bị một viên pin có dung lượng là 3.360 mAh đem lại một thời lượng sử dụng pin thực tế ở mức tốt.','https://cdn.tgdd.vn/Products/Images/42/158585/vivo-y71-docquyen-600x600.jpg',3290000,'Vivo Y71','2017-09-16 00:00:00.000000',5,1,27),(28,'Chiếc điện thoại Vivo V11 mang một thân hình vô cùng quyến rũ với không gian màn hình gần như chiếm trọn mặt trước của máy. Vivo V11 được trang bị màn hình kích thước khủng lên đến 6.41 inch, hứa hẹn sẽ cho bạn một không gian trải nghiệm rộng rãi và cực kì thú vị. Ngoài có một thân hình đẹp, Vivo V11 còn có một hiệu năng mạnh mẽ đến từ con chip Snapdragon 660 kết hợp với 6 GB RAM.','https://cdn.tgdd.vn/Products/Images/42/188828/vivo-v11-600x600.jpg',10990000,'Vivo V11','2020-07-16 00:00:00.000000',5,2,28),(29,'Vivo V9 là chiếc smartphone tầm trung cận cao cấp với điểm nhấn là máy có camera kép phía sau và camera selfie độ phân giải cao 24 MP. Vivo V9 sở hữu cụm camera kép với cảm biến chính 16 MP và cảm biến phụ 5 MP phục vụ cho nhu cầu chụp ảnh xóa phông. Cung cấp sức mạnh cho máy nhiều khả năng sẽ là con chip Snapdragon 626 kết hợp với RAM 4 GB và bộ nhớ trong 64 GB (hỗ trợ microSD 256 GB). Viên pin dung lượng 3.260 mAh giúp máy đáp ứng khá tốt nhu cầu sử dụng của người dùng trong khoảng 1 ngày.','https://cdn.tgdd.vn/Products/Images/42/155047/vivo-v9-2-1-600x600-600x600.jpg',7499000,'Vivo V9','2019-04-12 00:00:00.000000',5,3,29),(30,'Chiếc điện thoại Xiaomi này sở hữu ngôn ngữ thiết kế khá quen thuộc với khung viền kim loại cùng hai dải nhựa hỗ trợ thu phát sóng tốt hơn. Redmi Note 5 có màn hình kích thước 5.99 inch trên tấm nền IPS độ phân giải Full HD+. Cấu hình luôn là yếu tố mà Xiaomi không bao giờ làm thất vọng người dùng. Cụ thể Redmi Note 5 sở hữu con chip mới Snapdragon 636 cùng RAM là 4 GB.','https://cdn.tgdd.vn/Products/Images/42/153953/xiaomi-redmi-note-5-blue-600x600.jpg',5690000,'Xiaomi Redmi Note 5','2018-10-12 00:00:00.000000',6,2,30),(31,'Chiếc smartphone Xiaomi Redmi 5 Plus sở hữu cho mình vẻ bề ngoài sang trọng và tinh tế không kém gì các thiết bị cao cấp. Máy sở hữu thiết kế nguyên khối với khung kim loại chắc chắn. Chiếc điện thoại Xiaomi này sở hữu cho mình màn hình có kích thước lên tới 5.99 inch độ phân giải Full HD+ (1080 x 2160 pixels) tỉ lệ 18:9 mang lại trải nghiệm mới mẻ cho người dùng. Xiaomi Redmi 5 Plus được trang bị duy nhất 1 camera ở phía sau có độ phân giải là 12 MP với kích thước điểm ảnh 1.25 µm và có đèn flash trợ sáng.','https://cdn.tgdd.vn/Products/Images/42/143465/xiaomi-redmi-5-plus-600x600.jpg',4790000,'Xiaomi Redmi 5 Plus 4GB','2017-11-29 00:00:00.000000',6,3,31),(32,'Điểm nhấn trên chiếc điện thoại Xiaomi này chính là phần mặt lưng với chất liệu kính với hiệu ứng gradient biến đổi màu sắc tùy theo mức độ ánh sáng chiếu vào. Nó thực sự đẹp mắt và ấn tượng mỗi khi nhìn vào. Mi 8 Lite dùng chip Snapdragon 660 AIE (chuyên xử lý các tác vụ liên quan đến trí tuệ nhân tạo) được sản xuất trên quy trình FinFET 14 nm, kết hợp với nhân đồ họa Adreno 512. Giống như các người anh em của mình, Xiaomi Mi 8 Lite cũng có notch ở phía trên màn hình nhưng kích thước đã được tinh giản tới mức tối thiểu.','https://cdn.tgdd.vn/Products/Images/42/192317/xiaomi-mi-8-lite-black-18thangbh-600x600.jpg',6690000,'Xiaomi Mi 8 Lite','2019-04-22 00:00:00.000000',6,2,32),(33,'Xiaomi Mi 8 sẽ là cái tên được nhắc đến nhiều trong gia đình Xiaomi khi mang trong mình đầy đủ những gì gọi là cao cấp đến từ vẻ đẹp bên ngoài cũng như phần cứng mạnh mẽ bên trong. Được tối ưu với tỷ lệ màn hình 18:9 đem đến cho Xiaomi Mi 8 một diện tích hiển thị lên đến 83.8% trên kích thước 6.21 inch đảm bảo cho bạn có một không gian trải nghiệm tương đối thoải mái. Một chút về thông số, máy sở hữu cụm camera kép cùng độ phân giải là 12 MP tích hợp nhiều công nghệ chụp ảnh tiên tiến nhất hiện nay.','https://cdn.tgdd.vn/Products/Images/42/167539/xiaomi-mi-8-black-600x600.jpg',12990000,'Xiaomi Mi 8','2020-11-15 00:00:00.000000',6,3,33);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `roleid` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (0,'Quản trị'),(1,'Người dùng');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `FKntreoimw86ojl0fnss8bh0h9j` (`roleId`),
  CONSTRAINT `FKntreoimw86ojl0fnss8bh0h9j` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'TPHCM','uteshop77@gmail.com','Admin','0337981963','admin',1),(2,'TPHCM','tranquoctuantqd2002@gmail.com','Tran Quoc Tuan','0337981963','123',0),(3,'TPHCM','tranquoctuank36@gmail.com','tranquoctuan','0337981963','tranquoctuan',0);
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

-- Dump completed on 2022-12-05 21:08:06
