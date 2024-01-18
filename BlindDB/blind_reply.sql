-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blind
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `idx_rep` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(500) NOT NULL,
  `date_time_reply` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_rep` varchar(20) NOT NULL,
  `name_rep` varchar(20) NOT NULL,
  `idx` int NOT NULL,
  PRIMARY KEY (`idx_rep`),
  KEY `fk_board_idx` (`idx`),
  CONSTRAINT `fk_board_idx` FOREIGN KEY (`idx`) REFERENCES `board` (`idx`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,'안녕하세요','2024-01-17 14:48:02','jang','zz지존도적zz',1),(2,'반갑습니다','2024-01-17 14:48:02','sun','zx최강법사xz',1),(3,'ㅊㅊ','2024-01-17 14:48:02','keun','번개의신vv',1),(4,'ㅍㅁ','2024-01-17 14:48:02','hoon','타락파워전사',1),(5,'궁금하네요','2024-01-17 14:48:02','hoon','타락파워전사',2),(6,'댓 1등','2024-01-17 14:48:02','sky','t없e맑은i',2),(7,'저요저요 ㅅㅅ','2024-01-17 14:48:02','kyung','지발돈좀',2),(8,'줄 서봅니다','2024-01-17 14:48:02','hana','하아나',3),(9,'너 어디사냐','2024-01-17 14:48:02','bogus','bogus12',3),(10,'Test Reply','2024-01-17 14:48:02','nick','닉넴',3),(11,'sd','2024-01-17 14:55:38','pikahu','피배신',1),(12,'ㅎㅇ','2024-01-18 14:29:29','pikachu','피카츄배구신vv',16);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-18 16:44:27
