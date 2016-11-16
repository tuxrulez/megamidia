-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: loja_8288
-- ------------------------------------------------------
-- Server version	5.5.47-0+deb7u1

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
INSERT INTO `arquivos` VALUES ('comercial','Avisos','drogaria_extrasuper - Jingle Voce Merece.mp3',0,'2016-01-01','2026-05-02','1,2,3,4,5,6,7',0,86399,'drogaria_extrasuper','Lj_2822','Nao'),('comercial','Avisos','drogaria_extrasuper - Menor Preco.mp3',0,'2016-01-01','2026-05-02','1,2,3,4,5,6,7',0,86399,'drogaria_extrasuper','Lj_2822','Nao'),('comercial','Institucionais','drogaria_extrasuper - Assistencia Farmaceutica.mp3',0,'2016-01-01','2026-05-02','1,2,3,4,5,6,7',0,86399,'drogaria_extrasuper','Lj_2822','Nao'),('comercial','Vinhetas_Pontes','drogaria_extrasuper - Vinheta Assistencia Garantida.mp3',0,'2016-01-01','2026-05-02','1,2,3,4,5,6,7',0,86399,'drogaria_extrasuper','Lj_2822','Nao'),('comercial','Avisos','drogaria_extrasuper - Cartao Extra.mp3',0,'2016-01-01','2026-05-02','1,2,3,4,5,6,7',0,86399,'drogaria_extrasuper','Lj_2822','Nao');
/*!40000 ALTER TABLE `arquivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `generos`
--
-- WHERE:  tipo='comercial'

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES ('comercial','Abre_Bloco'),('comercial','Abre_Break'),('comercial','Aniversario'),('comercial','Anunciantes'),('comercial','Anunciar_Compl'),('comercial','Anunciar_Musicas'),('comercial','Avisos'),('comercial','Celebridades'),('comercial','Coringa'),('comercial','Curiosidades'),('comercial','Desanunciar_Compl'),('comercial','Desanunciar_Musicas'),('comercial','Dicas'),('comercial','Documentarios'),('comercial','Eventos'),('comercial','Fornecedores'),('comercial','Informacao_Musical'),('comercial','Institucionais'),('comercial','Institucionais_lojas'),('comercial','Interbreak'),('comercial','Marchinhas'),('comercial','Musicas_Juninas'),('comercial','Prefixo'),('comercial','Promocoes'),('comercial','Reporter'),('comercial','SambaEnredoRio2008'),('comercial','Saudacoes'),('comercial','Sazonais'),('comercial','Teaser'),('comercial','Vinhetas_Pontes');
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

-- Dump completed on 2016-05-02 17:51:00
-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: loja_8288
-- ------------------------------------------------------
-- Server version	5.5.47-0+deb7u1

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `esquemas` (
  `esquema` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`esquema`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esquemas`
--

LOCK TABLES `esquemas` WRITE;
/*!40000 ALTER TABLE `esquemas` DISABLE KEYS */;
INSERT INTO `esquemas` VALUES ('Pop_A');
/*!40000 ALTER TABLE `esquemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `esquema` varchar(30) NOT NULL DEFAULT '',
  `sequencia` int(11) NOT NULL DEFAULT '0',
  `tipo` varchar(20) NOT NULL DEFAULT '',
  `genero` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`esquema`,`sequencia`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES ('Pop_A',45,'musical','Lounge_Ambient'),('Pop_A',81,'comercial','Avisos'),('Pop_A',86,'comercial','Vinhetas_Pontes'),('Pop_A',77,'comercial','Reporter'),('Pop_A',76,'comercial','Teaser'),('Pop_A',71,'comercial','Vinhetas_Pontes'),('Pop_A',67,'comercial','Promocoes'),('Pop_A',66,'comercial','Institucionais'),('Pop_A',57,'comercial','Dicas'),('Pop_A',20,'musical','Lounge_Ambient'),('Pop_A',56,'comercial','Vinhetas_Pontes'),('Pop_A',30,'musical','Mpb'),('Pop_A',51,'comercial','Saudacoes'),('Pop_A',46,'comercial','Coringa'),('Pop_A',41,'comercial','Curiosidades'),('Pop_A',37,'comercial','Promocoes'),('Pop_A',10,'musical','Lounge_Ambient'),('Pop_A',36,'comercial','Vinhetas_Pontes'),('Pop_A',31,'comercial','Avisos'),('Pop_A',15,'musical','Lounge_Ambient'),('Pop_A',27,'comercial','Fornecedores'),('Pop_A',26,'comercial','Teaser'),('Pop_A',1,'comercial','Saudacoes'),('Pop_A',5,'musical','Lounge_Ambient'),('Pop_A',6,'comercial','Vinhetas_Pontes'),('Pop_A',7,'comercial','Dicas'),('Pop_A',16,'comercial','Institucionais'),('Pop_A',17,'comercial','Promocoes'),('Pop_A',21,'comercial','Vinhetas_Pontes'),('Pop_A',87,'comercial','Promocoes'),('Pop_A',50,'musical','Mpb'),('Pop_A',91,'comercial','Curiosidades'),('Pop_A',25,'musical','Lounge_Ambient'),('Pop_A',96,'comercial','Coringa'),('Pop_A',65,'musical','Lounge_Ambient'),('Pop_A',35,'musical','Lounge_Ambient'),('Pop_A',80,'musical','Mpb'),('Pop_A',40,'musical','Lounge_Ambient'),('Pop_A',95,'musical','Lounge_Ambient'),('Pop_A',100,'musical','Mpb'),('Pop_A',55,'musical','Lounge_Ambient'),('Pop_A',60,'musical','Lounge_Ambient'),('Pop_A',70,'musical','Lounge_Ambient'),('Pop_A',75,'musical','Lounge_Ambient'),('Pop_A',85,'musical','Lounge_Ambient'),('Pop_A',90,'musical','Lounge_Ambient');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programacoes`
--

DROP TABLE IF EXISTS `programacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programacoes` (
  `rede` varchar(30) NOT NULL DEFAULT '',
  `loja` varchar(30) NOT NULL DEFAULT '',
  `esquema` varchar(30) NOT NULL DEFAULT '',
  `data_inicio` date NOT NULL DEFAULT '2004-01-01',
  `data_fim` date NOT NULL DEFAULT '2010-12-31',
  `dia_semana` set('1','2','3','4','5','6','7') NOT NULL DEFAULT '',
  `hora_inicio` int(11) NOT NULL DEFAULT '0',
  `hora_fim` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rede`,`loja`,`data_inicio`,`data_fim`,`dia_semana`,`hora_inicio`,`hora_fim`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programacoes`
--

LOCK TABLES `programacoes` WRITE;
/*!40000 ALTER TABLE `programacoes` DISABLE KEYS */;
INSERT INTO `programacoes` VALUES ('drogaria_extrasuper','Lj_2822','Pop_A','2010-01-01','2030-01-01','1,2,3,4,5,6,7',0,86399);
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

-- Dump completed on 2016-05-02 17:51:00
