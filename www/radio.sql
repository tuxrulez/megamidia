-- MySQL dump 10.11
--
-- Host: localhost    Database: loja_6622
-- ------------------------------------------------------
-- Server version	5.0.51a

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `arquivos`
--
-- WHERE:  tipo='comercial'

LOCK TABLES `arquivos` WRITE;
/*!40000 ALTER TABLE `arquivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `arquivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `generos`
--
-- WHERE:  tipo='comercial'

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-06 17:39:28
-- MySQL dump 10.11
--
-- Host: localhost    Database: loja_6622
-- ------------------------------------------------------
-- Server version	5.0.51a

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `esquemas`
--

DROP TABLE IF EXISTS `esquemas`;
CREATE TABLE `esquemas` (
  `esquema` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`esquema`)
);

--
-- Dumping data for table `esquemas`
--

LOCK TABLES `esquemas` WRITE;
/*!40000 ALTER TABLE `esquemas` DISABLE KEYS */;
INSERT INTO `esquemas` VALUES ('Pao_Minuto_2015');
/*!40000 ALTER TABLE `esquemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `esquema` varchar(30) NOT NULL default '',
  `sequencia` int(11) NOT NULL default '0',
  `tipo` varchar(20) NOT NULL default '',
  `genero` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`esquema`,`sequencia`)
);

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES ('Pao_Minuto_2015',50,'comercial','Anunciar_Musicas'),('Pao_Minuto_2015',46,'comercial','Coringa'),('Pao_Minuto_2015',45,'musical','Minuto_Pao'),('Pao_Minuto_2015',41,'comercial','Curiosidades'),('Pao_Minuto_2015',40,'musical','Minuto_Pao'),('Pao_Minuto_2015',37,'comercial','Sazonais'),('Pao_Minuto_2015',36,'comercial','Vinhetas_Pontes'),('Pao_Minuto_2015',35,'musical','Minuto_Pao'),('Pao_Minuto_2015',31,'comercial','Avisos'),('Pao_Minuto_2015',30,'musical','Minuto_Pao'),('Pao_Minuto_2015',27,'comercial','Fornecedores'),('Pao_Minuto_2015',26,'comercial','Teaser'),('Pao_Minuto_2015',25,'musical','Minuto_Pao'),('Pao_Minuto_2015',21,'comercial','Vinhetas_Pontes'),('Pao_Minuto_2015',20,'musical','Minuto_Pao'),('Pao_Minuto_2015',18,'comercial','Anunciar_Musicas'),('Pao_Minuto_2015',17,'comercial','Promocoes'),('Pao_Minuto_2015',16,'comercial','Institucionais'),('Pao_Minuto_2015',15,'musical','Minuto_Pao'),('Pao_Minuto_2015',11,'comercial','Avisos'),('Pao_Minuto_2015',10,'musical','Minuto_Pao'),('Pao_Minuto_2015',7,'comercial','Dicas'),('Pao_Minuto_2015',6,'comercial','Vinhetas_Pontes'),('Pao_Minuto_2015',5,'musical','Minuto_Pao'),('Pao_Minuto_2015',1,'comercial','Saudacoes'),('Pao_Minuto_2015',55,'musical','Minuto_Pao'),('Pao_Minuto_2015',56,'comercial','Vinhetas_Pontes'),('Pao_Minuto_2015',57,'comercial','Dicas'),('Pao_Minuto_2015',58,'comercial','Anunciar_Musicas'),('Pao_Minuto_2015',60,'musical','Minuto_Pao'),('Pao_Minuto_2015',61,'comercial','Avisos'),('Pao_Minuto_2015',65,'musical','Minuto_Pao'),('Pao_Minuto_2015',66,'comercial','Institucionais'),('Pao_Minuto_2015',67,'comercial','Promocoes'),('Pao_Minuto_2015',70,'musical','Minuto_Pao'),('Pao_Minuto_2015',71,'comercial','Vinhetas_Pontes'),('Pao_Minuto_2015',75,'musical','Minuto_Pao'),('Pao_Minuto_2015',76,'comercial','Teaser'),('Pao_Minuto_2015',77,'comercial','Reporter'),('Pao_Minuto_2015',80,'musical','Minuto_Pao'),('Pao_Minuto_2015',81,'comercial','Avisos'),('Pao_Minuto_2015',82,'comercial','Institucionais'),('Pao_Minuto_2015',85,'musical','Minuto_Pao'),('Pao_Minuto_2015',86,'comercial','Vinhetas_Pontes'),('Pao_Minuto_2015',87,'comercial','Sazonais'),('Pao_Minuto_2015',88,'comercial','Anunciar_Musicas'),('Pao_Minuto_2015',90,'musical','Minuto_Pao'),('Pao_Minuto_2015',91,'comercial','Curiosidades'),('Pao_Minuto_2015',95,'musical','Minuto_Pao'),('Pao_Minuto_2015',96,'comercial','Coringa'),('Pao_Minuto_2015',100,'comercial','Anunciar_Musicas');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programacoes`
--

DROP TABLE IF EXISTS `programacoes`;
CREATE TABLE `programacoes` (
  `rede` varchar(30) NOT NULL default '',
  `loja` varchar(30) NOT NULL default '',
  `esquema` varchar(30) NOT NULL default '',
  `data_inicio` date NOT NULL default '2004-01-01',
  `data_fim` date NOT NULL default '2010-12-31',
  `dia_semana` set('1','2','3','4','5','6','7') NOT NULL default '',
  `hora_inicio` int(11) NOT NULL default '0',
  `hora_fim` int(11) NOT NULL default '0',
  PRIMARY KEY  (`rede`,`loja`,`data_inicio`,`data_fim`,`dia_semana`,`hora_inicio`,`hora_fim`)
);

--
-- Dumping data for table `programacoes`
--

LOCK TABLES `programacoes` WRITE;
/*!40000 ALTER TABLE `programacoes` DISABLE KEYS */;
INSERT INTO `programacoes` VALUES ('Pao_Minuto','Lj_0129','Pao_Minuto_2015','2010-01-01','2030-01-01','1,2,3,4,5,6,7',0,86399);
/*!40000 ALTER TABLE `programacoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-06 17:39:28
