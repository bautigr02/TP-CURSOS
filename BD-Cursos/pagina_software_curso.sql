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
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idcurso` int NOT NULL AUTO_INCREMENT,
  `nom_curso` varchar(45) NOT NULL,
  `fec_ini` date NOT NULL,
  `fec_fin` date NOT NULL,
  `estado` int NOT NULL,
  `num_aula` int NOT NULL,
  `dni_docente` int NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcurso`),
  KEY `fk_dni_docente` (`dni_docente`),
  KEY `fk_num_aula` (`num_aula`),
  CONSTRAINT `fk_dni_docente` FOREIGN KEY (`dni_docente`) REFERENCES `docente` (`dni`),
  CONSTRAINT `fk_num_aula` FOREIGN KEY (`num_aula`) REFERENCES `aula` (`num_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'FullStack Web','2025-04-03','2025-07-07',1,1,37190594,'https://coderslink.com/wp-content/uploads/2023/09/Top-Backend-Frameworks-for-Web-App-Development-in-2023.webp','Aprende el stack completo para desallorrar una web desde 0 a produccion.'),(2,'Desarrollo Backend','2025-04-03','2025-10-05',1,1,37190594,'https://coderslink.com/wp-content/uploads/2023/09/Top-Backend-Frameworks-for-Web-App-Development-in-2023.webp','En este curso aprenderas los fundamentos del desarrollo Backend, pasando de 0 a Experto.'),(3,'Base de datos','2023-04-03','2023-10-05',1,1,37190594,'https://concepto.de/wp-content/uploads/2018/04/base-de-datos-min-e1523470739502.jpg','Aqui te convertiras en el mejor DBA. Domina cualquier Base de Datos'),(5,'Desarrollo Frontend','2026-03-03','2026-11-11',1,1,37190594,'https://media.licdn.com/dms/image/v2/D4D12AQE9KDPe-KE_cQ/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1695744816253?e=1750291200&v=beta&t=tnDvspzy8opTxQiE5o9qPNeBSZyC_U5EENemW-vxoPM','En este curso aprenderas los fundamentos del desarrollo Frontend, convirtiendote en un experto en Angular.'),(6,'Diseno Grafico','2026-03-11','2026-07-12',1,2,37190594,'https://muchaescuela.com/wp-content/uploads/2023/05/WhatsApp-Image-2023-03-22-at-14.14.33.jpeg','Aprende los fundamentos del diseño y desarrolla tu creatividad con las mejores herramientas.'),(7,'Analisis de Datos','2025-06-21','2025-11-28',1,3,11111111,'https://www.positivo.pro/wp-content/uploads/2022/02/curso-data-analytics-gratis.jpg','Convertite en un profesional en datos. Asesorando a las empresas en la toma de decisiones.'),(8,'Ciencia de Datos','2025-08-21','2026-08-28',1,3,11111222,'https://qualitygb.com/wp-content/uploads/2023/01/Data-Science.jpg','Convertite en un profesional en datos. Asesorando a las empresas en la toma de decisiones.');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-27 11:41:26
