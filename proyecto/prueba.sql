-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: prueba
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `aplication_contacto`
--

DROP TABLE IF EXISTS `aplication_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplication_contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `consulta` int NOT NULL,
  `mensaje` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplication_contacto`
--

LOCK TABLES `aplication_contacto` WRITE;
/*!40000 ALTER TABLE `aplication_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `aplication_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplication_portafolio`
--

DROP TABLE IF EXISTS `aplication_portafolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplication_portafolio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `terminado` tinyint(1) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `tipo_id` bigint NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aplication_portafoli_tipo_id_035d4306_fk_aplicatio` (`tipo_id`),
  CONSTRAINT `aplication_portafoli_tipo_id_035d4306_fk_aplicatio` FOREIGN KEY (`tipo_id`) REFERENCES `aplication_proyectos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplication_portafolio`
--

LOCK TABLES `aplication_portafolio` WRITE;
/*!40000 ALTER TABLE `aplication_portafolio` DISABLE KEYS */;
INSERT INTO `aplication_portafolio` VALUES (1,'Pagina Web Ferreteria Y','se actualiza la pagina web de Ferreteria Y',1,'2022-06-09',1,'portafolio/article-img_XQeTkXl.jpg'),(2,'Api Rest Transbank','Se hace una api restpara conectar un negocio con transbank',1,'2022-06-09',2,'portafolio/article-img_J0snu04.jpg'),(3,'Botilleria z','se realiza un POS para la botilleria z',1,'2022-06-09',3,'portafolio/article-img_IF2E5wY.jpg');
/*!40000 ALTER TABLE `aplication_portafolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplication_proyectos`
--

DROP TABLE IF EXISTS `aplication_proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplication_proyectos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplication_proyectos`
--

LOCK TABLES `aplication_proyectos` WRITE;
/*!40000 ALTER TABLE `aplication_proyectos` DISABLE KEYS */;
INSERT INTO `aplication_proyectos` VALUES (1,'Desarrollo Web'),(2,'Api Rest'),(3,'Aplicacion escritorio');
/*!40000 ALTER TABLE `aplication_proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplication_registro`
--

DROP TABLE IF EXISTS `aplication_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplication_registro` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplication_registro`
--

LOCK TABLES `aplication_registro` WRITE;
/*!40000 ALTER TABLE `aplication_registro` DISABLE KEYS */;
INSERT INTO `aplication_registro` VALUES (1,'Mono','Mario','villa urquiza 450','monomario@gmail.com'),(2,'cosme','fulanito','godoy-cruz 65','cosme@gmail.com');
/*!40000 ALTER TABLE `aplication_registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplication_suscriptores`
--

DROP TABLE IF EXISTS `aplication_suscriptores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplication_suscriptores` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplication_suscriptores`
--

LOCK TABLES `aplication_suscriptores` WRITE;
/*!40000 ALTER TABLE `aplication_suscriptores` DISABLE KEYS */;
/*!40000 ALTER TABLE `aplication_suscriptores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add registro',7,'add_registro'),(26,'Can change registro',7,'change_registro'),(27,'Can delete registro',7,'delete_registro'),(28,'Can view registro',7,'view_registro'),(29,'Can add contacto',8,'add_contacto'),(30,'Can change contacto',8,'change_contacto'),(31,'Can delete contacto',8,'delete_contacto'),(32,'Can view contacto',8,'view_contacto'),(33,'Can add suscriptores',9,'add_suscriptores'),(34,'Can change suscriptores',9,'change_suscriptores'),(35,'Can delete suscriptores',9,'delete_suscriptores'),(36,'Can view suscriptores',9,'view_suscriptores'),(37,'Can add proyectos',10,'add_proyectos'),(38,'Can change proyectos',10,'change_proyectos'),(39,'Can delete proyectos',10,'delete_proyectos'),(40,'Can view proyectos',10,'view_proyectos'),(41,'Can add portafolio',11,'add_portafolio'),(42,'Can change portafolio',11,'change_portafolio'),(43,'Can delete portafolio',11,'delete_portafolio'),(44,'Can view portafolio',11,'view_portafolio');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$8kT6Hbi9qqsgcwhe2Bc7ce$qf7o6phhS9MS2eSA9Ssxk4+wBnGntAiHE8BvZ9NGVfM=','2022-06-09 09:50:32.925047',1,'David','','','',1,1,'2022-06-09 08:00:07.175317'),(2,'pbkdf2_sha256$320000$tBzpyqOo4N5QGAXz0WAKzu$vQjkCyKSWT3UFMpCVUMYhTQsRQEOKUIQg5+55kwHxUY=',NULL,0,'Usuario-prueba','','','',0,1,'2022-06-09 08:05:23.000000'),(3,'pbkdf2_sha256$320000$obfVzaBPTOkpisg5TZa7v0$wA5lV018PLXPRsYob93elFLxFFBUf8hiyQF3uHWkNGM=','2022-06-09 08:11:13.316426',0,'usuario2','','','',0,1,'2022-06-09 08:09:25.000000'),(5,'pbkdf2_sha256$320000$uYWS0VM4wloCVGOxBJ0Et5$ITPMH1a38U4YyynLBRrfC7XlRnnpuB1Jyn4aZXvGB+E=','2022-06-09 08:39:13.713502',0,'Vero_mart','','','',0,1,'2022-06-09 08:39:11.946401');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,41),(2,2,42),(3,2,43),(4,2,44),(5,3,42),(6,3,44);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-06-09 08:01:24.913724','1','Desarrollo Web',1,'[{\"added\": {}}]',10,1),(2,'2022-06-09 08:01:36.219788','2','Api Rest',1,'[{\"added\": {}}]',10,1),(3,'2022-06-09 08:01:57.764926','3','Aplicacion escritorio',1,'[{\"added\": {}}]',10,1),(4,'2022-06-09 08:02:57.659182','1','Pagina Web Ferreteria X',1,'[{\"added\": {}}]',11,1),(5,'2022-06-09 08:04:01.157360','2','Api Rest Transbank',1,'[{\"added\": {}}]',11,1),(6,'2022-06-09 08:04:44.375412','3','Botilleria X',1,'[{\"added\": {}}]',11,1),(7,'2022-06-09 08:05:24.366848','2','Usuario-prueba',1,'[{\"added\": {}}]',4,1),(8,'2022-06-09 08:05:58.535441','2','Usuario-prueba',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(9,'2022-06-09 08:09:26.685705','3','usuario2',1,'[{\"added\": {}}]',4,1),(10,'2022-06-09 08:10:44.395969','3','usuario2',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(11,'2022-06-09 08:48:43.752839','1','Mono Mario monomario@gmail.com',1,'[{\"added\": {}}]',7,1),(12,'2022-06-09 08:49:36.277870','2','cosme fulanito cosme@gmail.com',1,'[{\"added\": {}}]',7,1),(13,'2022-06-09 09:51:31.355322','4','MonoMario',3,'',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(8,'aplication','contacto'),(11,'aplication','portafolio'),(10,'aplication','proyectos'),(7,'aplication','registro'),(9,'aplication','suscriptores'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-06-09 06:44:56.001671'),(2,'auth','0001_initial','2022-06-09 06:44:56.884722'),(3,'admin','0001_initial','2022-06-09 06:44:57.140737'),(4,'admin','0002_logentry_remove_auto_add','2022-06-09 06:44:57.175739'),(5,'admin','0003_logentry_add_action_flag_choices','2022-06-09 06:44:57.216741'),(6,'aplication','0001_initial','2022-06-09 06:44:57.270744'),(7,'aplication','0002_registro_email','2022-06-09 06:44:57.348748'),(8,'aplication','0003_contacto','2022-06-09 06:44:57.420753'),(9,'aplication','0004_suscriptores','2022-06-09 06:44:57.470755'),(10,'aplication','0005_proyectos_portafolio','2022-06-09 06:44:57.654766'),(11,'aplication','0006_portafolio_imagen','2022-06-09 06:44:57.702769'),(12,'contenttypes','0002_remove_content_type_name','2022-06-09 06:44:57.941782'),(13,'auth','0002_alter_permission_name_max_length','2022-06-09 06:44:58.074790'),(14,'auth','0003_alter_user_email_max_length','2022-06-09 06:44:58.255800'),(15,'auth','0004_alter_user_username_opts','2022-06-09 06:44:58.297803'),(16,'auth','0005_alter_user_last_login_null','2022-06-09 06:44:58.446811'),(17,'auth','0006_require_contenttypes_0002','2022-06-09 06:44:58.456812'),(18,'auth','0007_alter_validators_add_error_messages','2022-06-09 06:44:58.493814'),(19,'auth','0008_alter_user_username_max_length','2022-06-09 06:44:58.661824'),(20,'auth','0009_alter_user_last_name_max_length','2022-06-09 06:44:58.810832'),(21,'auth','0010_alter_group_name_max_length','2022-06-09 06:44:58.886836'),(22,'auth','0011_update_proxy_permissions','2022-06-09 06:44:58.933839'),(23,'auth','0012_alter_user_first_name_max_length','2022-06-09 06:44:59.094848'),(24,'sessions','0001_initial','2022-06-09 06:44:59.177853');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09  6:01:19
