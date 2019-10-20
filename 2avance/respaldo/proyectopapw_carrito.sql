-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectopapw
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `carrito` (
  `idcarrito` int(11) NOT NULL AUTO_INCREMENT,
  `precio_unitario` float DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `Id_articulo` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  `Id_estado` int(11) NOT NULL,
  `Id_administrador` int(11) NOT NULL,
  `Id_TipoPago` int(11) NOT NULL,
  PRIMARY KEY (`idcarrito`),
  KEY `arti_idx` (`Id_articulo`),
  KEY `usu_idx` (`Id_usuario`),
  KEY `admin_idx` (`Id_administrador`),
  KEY `estado_idx` (`Id_estado`),
  KEY `TP_idx` (`Id_TipoPago`),
  CONSTRAINT `TP` FOREIGN KEY (`Id_TipoPago`) REFERENCES `tipo de pago` (`idtipo_de_pago`),
  CONSTRAINT `admin` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`id_admin`),
  CONSTRAINT `arti` FOREIGN KEY (`Id_articulo`) REFERENCES `articulo` (`idarticulo`),
  CONSTRAINT `estado` FOREIGN KEY (`Id_estado`) REFERENCES `estado` (`idestado`),
  CONSTRAINT `usu` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-20 18:33:43
