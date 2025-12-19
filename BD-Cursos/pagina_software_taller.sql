-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: pagina_software
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `taller`
--

DROP TABLE IF EXISTS `taller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taller` (
  `idcurso` int NOT NULL,
  `idtaller` int NOT NULL AUTO_INCREMENT,
  `nom_taller` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `tematica` varchar(30) NOT NULL,
  `herramienta` varchar(30) NOT NULL,
  `hora_ini` time DEFAULT NULL,
  `requisitos` varchar(70) DEFAULT NULL,
  `dificultad` int DEFAULT NULL,
  `dni_docente` int NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idtaller`),
  KEY `fk_idcurso` (`idcurso`),
  KEY `fk_dni_docente_taller` (`dni_docente`),
  CONSTRAINT `fk_dni_docente_taller` FOREIGN KEY (`dni_docente`) REFERENCES `docente` (`dni`),
  CONSTRAINT `fk_idcurso` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taller`
--

LOCK TABLES `taller` WRITE;
/*!40000 ALTER TABLE `taller` DISABLE KEYS */;
INSERT INTO `taller` VALUES (1,1,'Javascript','2025-04-03','Sintaxis, Variables, Funciones','Visual Studio Code, Chrome','15:00:00','No requisitos',2,37190594,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/800px-Unofficial_JavaScript_logo_2.svg.png'),(1,2,'Angular','2025-04-03','Componentes, Router-Outlet','Visual Studio Code','17:00:00','HTML, CSS',2,37190594,'https://angular.io/assets/images/logos/angular/angular.png'),(2,3,'Javascript','2025-04-04','Sintaxis, Variables, Funciones','Visual Studio Code, Chrome','15:00:00',NULL,2,37190594,'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/800px-Unofficial_JavaScript_logo_2.svg.png'),(5,4,'Angular','2025-07-02','Componentes, Router-Outlet','Visual Studio Code, Chrome','09:00:00','HTML, CSS',2,37190594,'https://angular.io/assets/images/logos/angular/angular.png'),(7,7,'Excel','2025-06-21','Funciones, Macros','Excel, Sheets','19:00:00',NULL,1,11111111,'https://i.ytimg.com/vi/o8chWq7DaA4/maxresdefault.jpg'),(7,8,'SQL','2025-07-21','Joins, Stored Procedures','Workbench','19:00:00','Excel',2,11111111,'https://i.ytimg.com/vi/DFg1V-rO6Pg/maxresdefault.jpg'),(8,9,'Python','2025-08-21','Sintaxis, Pandas','Google colab','19:00:00',NULL,3,11111111,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPtgaRxcxRMVq49inIDdJAua0HmjbaLc_7aQ&s'),(8,10,'Python ML','2025-09-21','Machine Learning, Algoritmos','Google colab','19:00:00','Python',3,11111111,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPtgaRxcxRMVq49inIDdJAua0HmjbaLc_7aQ&s');
/*!40000 ALTER TABLE `taller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-27 11:41:27
