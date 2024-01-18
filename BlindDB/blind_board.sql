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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `contents` varchar(500) NOT NULL,
  `date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'취업 질문이요','취업 질문이 있습니다. 가나다라마바사','2024-01-17 14:48:02','jang','zz지존도적zz'),(2,'채용 시점이 궁금해요','채용 관련 하나둘셋넷다섯','2024-01-17 14:48:02','sun','zx최강법사xz'),(3,'Test 3','Test Contents 123123','2024-01-17 14:48:02','jang','zz지존도적zz'),(4,'가나다abc123','테스트를위한테스트를위한','2024-01-17 14:48:02','kyung','지발돈좀'),(5,'ABCDEFG','HIJKLMN','2024-01-17 14:48:02','sky','t없e맑은i'),(6,'Test Data 6','No.6 Test Data','2024-01-17 14:48:02','keun','번개의신vv'),(7,'Test Data 7','No.7 Data Test','2024-01-17 14:48:02','hoon','타락파워전사'),(8,'8번에서 피어나는','Test Contents 123123','2024-01-17 14:48:02','kyung','지발돈좀'),(9,'9만송이 장미','테스트를위한테스트를위한','2024-01-17 14:48:02','hana','하아나'),(10,'챔피언스리그 결승 정보','손흥민 선발 !','2024-01-17 14:48:02','dool','두우울'),(11,'정찬성 vs 이소룡','누가 이기냐?','2024-01-17 14:48:02','jang','zz지존도적zz'),(12,'3대 550 ㅁㅌㅊ?','ㅍㅌㅊ?','2024-01-17 14:48:02','bogus','bogus12'),(13,'---===!@#$ Test Data','!@#$%^&*()_+','2024-01-17 14:48:02','sun','zx최강법사xz'),(14,'법사 육성 질문','DEX 찍었는데 망함?','2024-01-17 14:48:02','sky','t없e맑은i'),(15,'사냥터 추천받음','렙은 27임','2024-01-17 14:48:02','keun','번개의신vv'),(16,'피카츄 배구 아시는분? ','대답','2024-01-17 15:34:13','pikachu','피카츄배구신vv'),(17,'근데 피카츄 배구 누가 제일 잘 하냐?','김근보 아님?','2024-01-17 15:34:30','pikachu','피카츄배구신vv');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
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
