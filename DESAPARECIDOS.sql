CREATE DATABASE  IF NOT EXISTS `desaparecidos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `desaparecidos`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: desaparecidos
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `ano`
--

DROP TABLE IF EXISTS `ano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ano` (
  `ID_ANO` int NOT NULL AUTO_INCREMENT,
  `ANO` int DEFAULT NULL,
  PRIMARY KEY (`ID_ANO`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ano`
--

LOCK TABLES `ano` WRITE;
/*!40000 ALTER TABLE `ano` DISABLE KEYS */;
INSERT INTO `ano` VALUES (1,2016),(2,2017),(3,2018),(4,2019),(5,2020),(6,2021),(7,2022),(8,2023);
/*!40000 ALTER TABLE `ano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faixa_etaria`
--

DROP TABLE IF EXISTS `faixa_etaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faixa_etaria` (
  `ID_FAIXA_ETARIA` int NOT NULL AUTO_INCREMENT,
  `FAIXA_ETARIA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_FAIXA_ETARIA`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faixa_etaria`
--

LOCK TABLES `faixa_etaria` WRITE;
/*!40000 ALTER TABLE `faixa_etaria` DISABLE KEYS */;
INSERT INTO `faixa_etaria` VALUES (1,'ATÉ 11 ANOS'),(2,'DE 12 A 17 ANOS'),(3,'DE 18 A 30 ANOS'),(4,'DE 31 A 50 ANOS'),(5,'MAIS DE 50 ANOS'),(6,'NÃO INFORMADO');
/*!40000 ALTER TABLE `faixa_etaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fato_faixa_etaria`
--

DROP TABLE IF EXISTS `fato_faixa_etaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fato_faixa_etaria` (
  `ID_FAIXA_ETARIA` int DEFAULT NULL,
  `ID_ANO` int DEFAULT NULL,
  `ID_SEXO` int DEFAULT NULL,
  `VALOR` int DEFAULT NULL,
  KEY `ID_FAIXA_ETARIA` (`ID_FAIXA_ETARIA`),
  KEY `ID_ANO` (`ID_ANO`),
  KEY `ID_SEXO` (`ID_SEXO`),
  CONSTRAINT `fato_faixa_etaria_ibfk_1` FOREIGN KEY (`ID_FAIXA_ETARIA`) REFERENCES `faixa_etaria` (`ID_FAIXA_ETARIA`),
  CONSTRAINT `fato_faixa_etaria_ibfk_2` FOREIGN KEY (`ID_ANO`) REFERENCES `ano` (`ID_ANO`),
  CONSTRAINT `fato_faixa_etaria_ibfk_3` FOREIGN KEY (`ID_SEXO`) REFERENCES `sexo` (`ID_SEXO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fato_faixa_etaria`
--

LOCK TABLES `fato_faixa_etaria` WRITE;
/*!40000 ALTER TABLE `fato_faixa_etaria` DISABLE KEYS */;
INSERT INTO `fato_faixa_etaria` VALUES (1,2,1,82),(1,3,1,54),(1,4,1,65),(1,5,1,38),(1,6,1,32),(1,7,1,60),(1,8,1,41),(2,2,1,338),(2,3,1,306),(2,4,1,284),(2,5,1,172),(2,6,1,150),(2,7,1,195),(2,8,1,185),(3,2,1,439),(3,3,1,391),(3,4,1,509),(3,5,1,383),(3,6,1,414),(3,7,1,436),(3,8,1,485),(4,2,1,474),(4,3,1,483),(4,4,1,582),(4,5,1,487),(4,6,1,540),(4,7,1,636),(4,8,1,681),(5,2,1,180),(5,3,1,180),(5,4,1,245),(5,5,1,182),(5,6,1,203),(5,7,1,224),(5,8,1,278),(6,2,1,25),(6,3,1,18),(6,4,1,25),(6,5,1,18),(6,6,1,17),(6,7,1,19),(6,8,1,21),(1,2,2,55),(1,3,2,31),(1,4,2,48),(1,5,2,29),(1,6,2,26),(1,7,2,43),(1,8,2,44),(2,2,2,735),(2,3,2,599),(2,4,2,619),(2,5,2,329),(2,6,2,302),(2,7,2,302),(2,8,2,383),(3,2,2,231),(3,3,2,203),(3,4,2,265),(3,5,2,170),(3,6,2,157),(3,7,2,187),(3,8,2,182),(4,2,2,137),(4,3,2,172),(4,4,2,251),(4,5,2,179),(4,6,2,193),(4,7,2,202),(4,8,2,232),(5,2,2,64),(5,3,2,63),(5,4,2,60),(5,5,2,55),(5,6,2,83),(5,7,2,86),(5,8,2,93),(6,2,2,7),(6,3,2,13),(6,4,2,18),(6,5,2,10),(6,6,2,14),(6,7,2,10),(6,8,2,13);
/*!40000 ALTER TABLE `fato_faixa_etaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fato_regiao`
--

DROP TABLE IF EXISTS `fato_regiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fato_regiao` (
  `ID_REGIAO` int DEFAULT NULL,
  `ID_ANO` int DEFAULT NULL,
  `VALOR` int DEFAULT NULL,
  KEY `ID_REGIAO` (`ID_REGIAO`),
  KEY `ID_ANO` (`ID_ANO`),
  CONSTRAINT `fato_regiao_ibfk_1` FOREIGN KEY (`ID_REGIAO`) REFERENCES `regiao` (`ID_REGIAO`),
  CONSTRAINT `fato_regiao_ibfk_2` FOREIGN KEY (`ID_ANO`) REFERENCES `ano` (`ID_ANO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fato_regiao`
--

LOCK TABLES `fato_regiao` WRITE;
/*!40000 ALTER TABLE `fato_regiao` DISABLE KEYS */;
INSERT INTO `fato_regiao` VALUES (6,1,475),(23,1,282),(31,1,209),(19,1,212),(4,1,204),(10,1,175),(20,1,143),(25,1,146),(24,1,112),(11,1,94),(28,1,79),(1,1,92),(17,1,79),(29,1,79),(3,1,74),(12,1,92),(33,1,53),(22,1,45),(21,1,56),(8,1,45),(16,1,34),(7,1,11),(30,1,16),(14,1,17),(15,1,12),(5,1,23),(32,1,9),(26,1,8),(13,1,9),(18,1,16),(9,1,9),(6,2,415),(23,2,256),(31,2,224),(19,2,205),(4,2,199),(10,2,163),(20,2,157),(25,2,122),(24,2,94),(11,2,90),(28,2,79),(1,2,78),(17,2,71),(29,2,62),(3,2,56),(12,2,55),(33,2,54),(22,2,52),(21,2,43),(8,2,40),(16,2,21),(7,2,18),(30,2,17),(14,2,17),(15,2,17),(5,2,14),(32,2,11),(26,2,9),(13,2,8),(18,2,6),(9,2,3),(6,3,377),(31,3,226),(23,3,213),(19,3,191),(4,3,190),(10,3,132),(25,3,126),(20,3,120),(24,3,107),(11,3,91),(28,3,85),(17,3,80),(1,3,57),(12,3,56),(22,3,54),(29,3,52),(3,3,46),(8,3,38),(33,3,31),(21,3,29),(16,3,24),(15,3,20),(14,3,16),(9,3,16),(30,3,13),(7,3,13),(32,3,12),(5,3,12),(18,3,7),(26,3,7),(13,3,4),(6,4,464),(31,4,213),(23,4,214),(19,4,229),(4,4,206),(10,4,156),(25,4,101),(20,4,149),(24,4,106),(11,4,83),(28,4,101),(17,4,101),(1,4,91),(12,4,66),(22,4,56),(29,4,83),(3,4,63),(8,4,39),(33,4,58),(21,4,62),(16,4,28),(15,4,26),(14,4,17),(9,4,10),(30,4,14),(7,4,24),(32,4,11),(5,4,18),(18,4,19),(26,4,16),(13,4,8),(6,5,297),(19,5,162),(31,5,148),(4,5,144),(23,5,119),(20,5,109),(24,5,96),(10,5,93),(25,5,81),(11,5,70),(17,5,60),(27,5,60),(29,5,56),(28,5,52),(12,5,51),(8,5,49),(22,5,45),(21,5,44),(3,5,43),(33,5,42),(1,5,34),(2,5,19),(16,5,18),(5,5,17),(9,5,15),(15,5,13),(14,5,10),(30,5,10),(32,5,9),(7,5,8),(13,5,7),(26,5,3),(18,5,2),(6,6,284),(31,6,174),(23,6,154),(19,6,145),(20,6,129),(4,6,127),(10,6,94),(25,6,87),(27,6,85),(29,6,64),(24,6,60),(28,6,60),(17,6,58),(11,6,56),(8,6,55),(3,6,49),(33,6,48),(12,6,46),(1,6,46),(22,6,46),(21,6,40),(16,6,26),(2,6,22),(15,6,15),(7,6,14),(5,6,13),(30,6,13),(13,6,13),(14,6,12),(26,6,8),(18,6,8),(9,6,8),(32,6,6),(6,7,298),(23,7,197),(31,7,195),(19,7,174),(4,7,170),(20,7,130),(24,7,102),(10,7,98),(11,7,97),(27,7,88),(25,7,85),(8,7,67),(28,7,66),(12,7,64),(17,7,62),(3,7,57),(29,7,55),(22,7,43),(21,7,42),(1,7,38),(33,7,38),(16,7,21),(2,7,17),(14,7,17),(30,7,16),(18,7,16),(7,7,13),(15,7,10),(9,7,9),(32,7,9),(26,7,7),(13,7,6),(5,7,6),(6,8,347),(4,8,212),(23,8,201),(31,8,188),(19,8,155),(20,8,140),(10,8,125),(24,8,111),(25,8,110),(11,8,100),(27,8,94),(17,8,85),(29,8,78),(8,8,67),(22,8,65),(28,8,56),(3,8,53),(12,8,52),(33,8,50),(1,8,40),(21,8,36),(2,8,35),(16,8,31),(13,8,25),(30,8,22),(14,8,20),(15,8,18),(7,8,14),(18,8,10),(5,8,9),(26,8,9),(9,8,7),(32,8,7);
/*!40000 ALTER TABLE `fato_regiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiao`
--

DROP TABLE IF EXISTS `regiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiao` (
  `ID_REGIAO` int NOT NULL AUTO_INCREMENT,
  `REGIAO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_REGIAO`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiao`
--

LOCK TABLES `regiao` WRITE;
/*!40000 ALTER TABLE `regiao` DISABLE KEYS */;
INSERT INTO `regiao` VALUES (1,'AGUAS CLARAS'),(2,'ARNIQUEIRA'),(3,'BRAZLANDIA'),(4,'BRASILIA'),(5,'CANDANGOLANDIA'),(6,'CEILANDIA'),(7,'CRUZEIRO'),(8,'ESTRUTURAL'),(9,'FERCAL'),(10,'GAMA'),(11,'GUARA'),(12,'ITAPOA'),(13,'JARDIM BOTANICO'),(14,'LAGO NORTE'),(15,'LAGO SUL'),(16,'NUCLEO BANDEIRANTE'),(17,'PARANOA'),(18,'PARK WAY'),(19,'PLANALTINA'),(20,'RECANTO DAS EMAS'),(21,'RIACHO FUNDO'),(22,'RIACHO FUNDO 2'),(23,'SAMAMBAIA'),(24,'SANTA MARIA'),(25,'SAO SEBASTIAO'),(26,'SIA'),(27,'SOL NASCENTE/POR DO SOL'),(28,'SOBRADINHO'),(29,'SOBRADINHO 2'),(30,'SUDOESTE'),(31,'TAGUATINGA'),(32,'VARJAO DO TORTO'),(33,'VICENTE PIRES');
/*!40000 ALTER TABLE `regiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexo` (
  `ID_SEXO` int NOT NULL AUTO_INCREMENT,
  `SEXO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_SEXO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'FEM'),(2,'MASC');
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'desaparecidos'
--

--
-- Dumping routines for database 'desaparecidos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 10:49:14
