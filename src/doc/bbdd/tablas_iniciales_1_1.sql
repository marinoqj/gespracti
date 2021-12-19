-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: gespracti
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `constantes`
--

DROP TABLE IF EXISTS `constantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constantes` (
  `ID_CONSTANTE` int(11) NOT NULL AUTO_INCREMENT,
  `FAMILIA` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ATRIBUTO` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `LITERAL` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `VALOR` int(11) DEFAULT NULL,
  `ACTIVA` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_CONSTANTE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constantes`
--

LOCK TABLES `constantes` WRITE;
/*!40000 ALTER TABLE `constantes` DISABLE KEYS */;
INSERT INTO `constantes` VALUES (2,'zz','zz','zz',1,'1');
/*!40000 ALTER TABLE `constantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas` (
  `ID_EMPRESA` int(11) NOT NULL AUTO_INCREMENT,
  `TIPO_DOCUMENTO` int(11) NOT NULL,
  `NIF_NIE` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `DENOMINACION_SOCIAL` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DENOMINACION_COMERCIAL` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIPO_PERSONA_JURIDICA` int(11) NOT NULL,
  `DOMICILIO_FISCAL` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONA_CONTACTO` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CARGO_PERSONA_CONTACTO` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TELEFONO` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NUM_EMPLEADOS` int(11) DEFAULT NULL,
  `SECTOR_ACTIVIDAD` int(11) DEFAULT NULL,
  `URL_WEB` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPCION_ACTIVIDAD` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `UBICACION_CENTRO_TRABAJO` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPRESENTANTE_LEGAL` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CARGO_REPRESENTANTE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHA_ESCRITURA` date DEFAULT NULL,
  `NOTARIO` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCALIDAD_NOTARIO` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MUNICIPIO` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PROVINCIA` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `COD_POSTAL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `PAIS` int(11) NOT NULL,
  `PERSONA_CONTACTO_CONTABILIDAD` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_CONTABILIDAD` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONO_CONTABILIDAD` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESES_FACTURA` int(11) DEFAULT NULL,
  `ALUMNOS_FACTURA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_EMPRESA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,1,'1','aa','aa',1,'a','aa','a','a','1',1,1,'a','a','a','a','a','2021-12-09','a','a','a','a','a','1',1,'a','a','1',1,1);
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `ID_ESTUDIANTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `APELLIDO1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `APELLIDO2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEXO` int(11) DEFAULT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `DNI_NIE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TIPO_DOCUMENTO` int(11) NOT NULL,
  `EMAIL` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TELEFONO` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DIRECCION` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MUNCIPIO` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PROVINCIA` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `COD_POSTAL` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PAIS` int(11) NOT NULL,
  `NACIONALIDAD` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `GRADO_MINUSVALIA` int(11) DEFAULT NULL,
  `TITULACION_UPM` int(11) NOT NULL,
  `FECHA_INICIO` date NOT NULL,
  `FECHA_FIN` date NOT NULL,
  PRIMARY KEY (`ID_ESTUDIANTE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'aa','ab','ac',1,'2021-12-09','1',1,'a','1','a','a','a','1',1,'1',1,1,'2021-12-09','2021-12-09');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofertas` (
  `ID_OFERTA` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPCION` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DURACION` int(11) NOT NULL,
  `FECHA_INICIO` date NOT NULL,
  `FECHA_FIN` date NOT NULL,
  `INICIO_PLAZO` date NOT NULL,
  `FIN_PLAZO` date NOT NULL,
  PRIMARY KEY (`ID_OFERTA`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertas`
--

LOCK TABLES `ofertas` WRITE;
/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
INSERT INTO `ofertas` VALUES (1,'ax','ax',12,'2021-12-09','2021-12-09','2021-12-09','2021-12-09');
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `ID_ROL` int(11) NOT NULL,
  `NOMBRE_ROL` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_ROL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_usuarios`
--

DROP TABLE IF EXISTS `roles_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_usuarios` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_ROL` int(11) NOT NULL,
  PRIMARY KEY (`ID_USUARIO`,`ID_ROL`),
  KEY `FK_ROLS_USU_ROLES` (`ID_ROL`),
  CONSTRAINT `FK_ROLS_USU_ROLES` FOREIGN KEY (`ID_ROL`) REFERENCES `roles` (`ID_ROL`),
  CONSTRAINT `FK_ROLS_USU_USUARIOS` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuarios` (`ID_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_usuarios`
--

LOCK TABLES `roles_usuarios` WRITE;
/*!40000 ALTER TABLE `roles_usuarios` DISABLE KEYS */;
INSERT INTO `roles_usuarios` VALUES (1,1);
/*!40000 ALTER TABLE `roles_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID_USUARIO` int(11) NOT NULL,
  `LOGIN` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CAMBIAR_PASSWORD` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'a','1','0');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-19 11:31:09
