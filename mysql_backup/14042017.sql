-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: magistr
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(200) NOT NULL,
  `article_text` longtext NOT NULL,
  `article_date` datetime NOT NULL,
  `article_likes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add article',7,'add_article'),(20,'Can change article',7,'change_article'),(21,'Can delete article',7,'delete_article'),(22,'Can add comments',8,'add_comments'),(23,'Can change comments',8,'change_comments'),(24,'Can delete comments',8,'delete_comments'),(25,'Can add teacher',9,'add_teacher'),(26,'Can change teacher',9,'change_teacher'),(27,'Can delete teacher',9,'delete_teacher'),(28,'Can add magistrant',10,'add_magistrant'),(29,'Can change magistrant',10,'change_magistrant'),(30,'Can delete magistrant',10,'delete_magistrant'),(31,'Can add article',11,'add_article'),(32,'Can change article',11,'change_article'),(33,'Can delete article',11,'delete_article');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$mDkDIjIhZEhf$O8yICQ6qUQCxK0XQLc/+BJIt1nh8DvXPO+lfdWd2LtE=','2017-04-03 20:12:36',1,'admin','','','opo@md.by',1,1,'2017-04-03 20:12:12');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments_text` longtext NOT NULL,
  `comments_article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comments_article_id_3c5bd2fa_fk_article_id` (`comments_article_id`),
  CONSTRAINT `comments_comments_article_id_3c5bd2fa_fk_article_id` FOREIGN KEY (`comments_article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-04-03 20:13:51','1','Popova',1,'?????????.',9,1),(2,'2017-04-03 20:14:19','1','Kliashchonak Alexey',1,'?????????.',10,1),(3,'2017-04-03 20:14:50','2','Oleg',1,'?????????.',10,1),(4,'2017-04-03 20:50:01','2','Oleg',2,'??????? magistrant_StudyPeriod.',10,1),(5,'2017-04-03 20:50:08','1','Kliashchonak Alexey',2,'??????? magistrant_StudyPeriod.',10,1),(6,'2017-04-04 19:09:50','1','Kliashchonak Alexey',2,'??????? magistrant_StudyPeriod.',10,1),(7,'2017-04-04 19:18:16','3','Kotikov',1,'?????????.',10,1),(8,'2017-04-04 19:18:43','4','Ivan',1,'?????????.',10,1),(9,'2017-04-04 19:25:58','2','Ivanov Ivan',1,'?????????.',9,1),(10,'2017-04-04 19:26:42','5','Lena Popova',1,'?????????.',10,1),(11,'2017-04-04 19:27:21','6','Andrey',1,'?????????.',10,1),(12,'2017-04-08 19:40:32','3','Petrova',1,'?????????.',9,1),(13,'2017-04-08 19:41:20','7','Max',1,'?????????.',10,1),(14,'2017-04-08 19:42:11','8','Ksenia',1,'?????????.',10,1),(15,'2017-04-08 19:46:55','9','Miha',1,'?????????.',10,1),(16,'2017-04-08 19:49:09','10','Dima',1,'?????????.',10,1),(17,'2017-04-08 20:00:22','10','Dima',2,'??????? magistrant_StatusMagistrant.',10,1),(18,'2017-04-08 20:02:26','10','Dima',2,'??????? magistrant_StatusMagistrant.',10,1),(19,'2017-04-10 19:30:36','10','Dima',2,'??????? magistrant_StudyPeriod ? magistrant_FormOfTrainingLoad.',10,1),(20,'2017-04-12 17:39:08','5','Lena Popova',2,'??????? magistrant_StudyPeriod.',10,1),(21,'2017-04-12 17:52:35','6','Andrey',2,'??????? magistrant_StudyPeriod.',10,1),(22,'2017-04-12 18:04:51','6','Andrey',2,'??????? magistrant_StudyPeriod.',10,1),(23,'2017-04-12 18:18:56','10','Dima',2,'??????? magistrant_StudyPeriod.',10,1),(24,'2017-04-12 18:19:28','10','Dima',2,'??????? magistrant_StudyPeriod.',10,1),(25,'2017-04-12 18:28:53','10','Dima',2,'??????? magistrant_StudyPeriod.',10,1),(26,'2017-04-12 18:31:06','11','Nata',1,'?????????.',10,1),(27,'2017-04-12 18:34:21','10','Dima',2,'??????? magistrant_FormOfTrainingLoad.',10,1),(28,'2017-04-12 18:34:45','10','Dima',2,'??????? magistrant_FormOfTrainingLoad.',10,1),(29,'2017-04-12 18:37:37','11','Nata',2,'?? ???? ???? ?? ????????.',10,1),(30,'2017-04-12 18:38:24','11','Nata',2,'??????? magistrant_StatusMagistrant.',10,1),(31,'2017-04-12 18:55:37','6','Andrey',2,'??????? magistrant_StudyPeriod.',10,1),(32,'2017-04-12 18:55:44','5','Lena Popova',2,'??????? magistrant_StudyPeriod.',10,1),(33,'2017-04-12 18:55:51','10','Dima',2,'??????? magistrant_StudyPeriod.',10,1),(34,'2017-04-12 19:01:46','6','Andrey',2,'??????? magistrant_StudyPeriod ? magistrant_FormOfTrainingLoad.',10,1),(35,'2017-04-14 19:39:41','1','Article object',1,'?????????.',11,1),(36,'2017-04-14 19:40:19','1','Article object',2,'??????? file_obj.',11,1),(37,'2017-04-14 19:40:35','1','Article object',2,'?? ???? ???? ?? ????????.',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'addMagistrants','magistrant'),(9,'addMagistrants','teacher'),(1,'admin','logentry'),(7,'article','article'),(8,'article','comments'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'loadingFiles','article'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'addMagistrants','0001_initial','2017-04-03 20:09:44'),(2,'addMagistrants','0002_auto_20170319_1445','2017-04-03 20:09:44'),(3,'addMagistrants','0003_teacher_teacher_mag','2017-04-03 20:09:45'),(4,'addMagistrants','0004_auto_20170319_1720','2017-04-03 20:09:46'),(5,'addMagistrants','0005_auto_20170319_1749','2017-04-03 20:09:47'),(6,'addMagistrants','0006_auto_20170319_1758','2017-04-03 20:09:48'),(7,'addMagistrants','0007_remove_teacher_teacher_mag','2017-04-03 20:09:48'),(8,'addMagistrants','0008_teacher_teacher_mag','2017-04-03 20:09:49'),(9,'addMagistrants','0009_auto_20170331_0823','2017-04-03 20:09:49'),(10,'addMagistrants','0010_magistrant_magistrant_studyperiod','2017-04-03 20:09:50'),(11,'addMagistrants','0011_auto_20170331_0835','2017-04-03 20:09:50'),(12,'addMagistrants','0012_auto_20170331_0839','2017-04-03 20:09:50'),(13,'addMagistrants','0013_auto_20170331_0845','2017-04-03 20:09:51'),(14,'addMagistrants','0014_auto_20170331_0846','2017-04-03 20:09:51'),(15,'addMagistrants','0015_magistrant_magistrant_email','2017-04-03 20:09:51'),(16,'addMagistrants','0016_magistrant_magistrant_phone','2017-04-03 20:09:51'),(17,'addMagistrants','0017_magistrant_magistrant_load','2017-04-03 20:09:52'),(18,'addMagistrants','0018_auto_20170331_1623','2017-04-03 20:09:52'),(19,'addMagistrants','0019_auto_20170331_1627','2017-04-03 20:09:52'),(20,'addMagistrants','0020_auto_20170331_1701','2017-04-03 20:09:52'),(21,'addMagistrants','0021_auto_20170331_1848','2017-04-03 20:09:53'),(22,'addMagistrants','0022_auto_20170401_1942','2017-04-03 20:09:53'),(23,'addMagistrants','0023_auto_20170401_1944','2017-04-03 20:09:53'),(24,'addMagistrants','0024_auto_20170403_2006','2017-04-03 20:09:54'),(25,'contenttypes','0001_initial','2017-04-03 20:09:54'),(26,'auth','0001_initial','2017-04-03 20:09:58'),(27,'admin','0001_initial','2017-04-03 20:09:58'),(28,'admin','0002_logentry_remove_auto_add','2017-04-03 20:09:58'),(29,'article','0001_initial','2017-04-03 20:09:59'),(30,'contenttypes','0002_remove_content_type_name','2017-04-03 20:09:59'),(31,'auth','0002_alter_permission_name_max_length','2017-04-03 20:10:00'),(32,'auth','0003_alter_user_email_max_length','2017-04-03 20:10:00'),(33,'auth','0004_alter_user_username_opts','2017-04-03 20:10:00'),(34,'auth','0005_alter_user_last_login_null','2017-04-03 20:10:00'),(35,'auth','0006_require_contenttypes_0002','2017-04-03 20:10:01'),(36,'auth','0007_alter_validators_add_error_messages','2017-04-03 20:10:01'),(37,'sessions','0001_initial','2017-04-03 20:10:01'),(38,'addMagistrants','0025_auto_20170403_2013','2017-04-03 20:13:30'),(39,'addMagistrants','0026_magistrant_magistrant_ipload','2017-04-08 20:31:06'),(40,'addMagistrants','0027_auto_20170412_1849','2017-04-12 18:49:32'),(41,'addMagistrants','0028_remove_magistrant_magistrant_ipload','2017-04-14 19:33:26'),(42,'loadingFiles','0001_initial','2017-04-14 19:33:27');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('b6rzdcrrhghozsc93zg81jopfj23imo5','MTc1OTc3NmM4MzRkN2Q0YzRmY2ZkNDExMzVkOGRiOTMwZGQ0ZjYwZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVhZWRkMTQ4YTFjNDFiZTRmNmRkYzA5NmFhNjdjYmZjZTUzYTY5MDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-17 20:12:36');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loading`
--

DROP TABLE IF EXISTS `loading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loading` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_obj` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loading`
--

LOCK TABLES `loading` WRITE;
/*!40000 ALTER TABLE `loading` DISABLE KEYS */;
INSERT INTO `loading` VALUES (1,'media/forms.pyc');
/*!40000 ALTER TABLE `loading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magistrant`
--

DROP TABLE IF EXISTS `magistrant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magistrant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `magistrant_name` varchar(100) NOT NULL,
  `magistrant_YearOfReceipt` date DEFAULT NULL,
  `magistrant_YearOfEnding` date DEFAULT NULL,
  `magistrant_NumberOfTheSpecialty` int(11) NOT NULL,
  `magistrant_NameOfSpeciality` varchar(300) NOT NULL,
  `magistrant_FormOfTraning` varchar(50) NOT NULL,
  `magistarnt_TypeOfTraning` varchar(50) NOT NULL,
  `magistrant_StatusMagistrant` varchar(100) NOT NULL,
  `magistrant_comment` varchar(400) NOT NULL,
  `magistrant_ThemeOfMagistrWork` varchar(100) NOT NULL,
  `magistrant_NumberOrder` varchar(15) NOT NULL,
  `magistrant_OrderFromDate` date DEFAULT NULL,
  `magistrant_ScientificAdviser_id` int(11) NOT NULL,
  `magistrant_FormOfTrainingLoad` varchar(15) NOT NULL,
  `magistrant_StudyPeriod` double NOT NULL,
  `magistrant_Email` varchar(254) NOT NULL,
  `magistrant_Phone` varchar(20) NOT NULL,
  `magistrant_Load` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `magistrant_c90a9665` (`magistrant_ScientificAdviser_id`),
  CONSTRAINT `magistran_magistrant_ScientificAdviser_id_1259ec33_fk_teacher_id` FOREIGN KEY (`magistrant_ScientificAdviser_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magistrant`
--

LOCK TABLES `magistrant` WRITE;
/*!40000 ALTER TABLE `magistrant` DISABLE KEYS */;
INSERT INTO `magistrant` VALUES (1,'Kliashchonak Alexey',NULL,NULL,34,'poit','budget','daytime','study','','','',NULL,1,'Time pay',10,'','','28.5'),(2,'Oleg',NULL,NULL,232,'poit','chargeable','daytime','study','','','',NULL,1,'Time pay',20,'','','58.5'),(3,'Kotikov',NULL,NULL,23,'ISIT','chargeable','daytime','study','','','',NULL,1,'IP',15,'','','43.5'),(4,'Ivan',NULL,NULL,123,'poit','budget','daytime','study','','','',NULL,1,'IP',12,'','','34.5'),(5,'Lena Popova',NULL,NULL,12323,'poit','chargeable','daytime','study','','','',NULL,2,'Time pay',0,'','','0'),(6,'Andrey',NULL,NULL,232,'poit','chargeable','daytime','study','','','',NULL,2,'IP',1.5,'','','3.0'),(7,'Max',NULL,NULL,123,'poit','chargeable','daytime','study','','','',NULL,3,'Time pay',10,'','','28.5'),(8,'Ksenia',NULL,NULL,232,'poit','chargeable','daytime','study','','','',NULL,3,'Time pay',12,'','','34.5'),(9,'Miha',NULL,NULL,123,'ISIT','chargeable','daytime','study','','','',NULL,3,'Time pay',10,'','','28.5'),(10,'Dima',NULL,NULL,12323,'poit','chargeable','daytime','study','','','',NULL,2,'Time pay',0,'','','0'),(11,'Nata',NULL,NULL,12323,'ISIT','chargeable','daytime','finished','','','',NULL,2,'Time pay',5,'','','13.5');
/*!40000 ALTER TABLE `magistrant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_AcademicDegree` varchar(100) NOT NULL,
  `teacher_AcademicRank` varchar(100) NOT NULL,
  `teacher_work` varchar(100) NOT NULL,
  `teacher_position` varchar(100) NOT NULL,
  `teacher_comment` varchar(400) NOT NULL,
  `teacher_load_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_acc7c0e1` (`teacher_load_id`),
  CONSTRAINT `teacher_teacher_load_id_befaf160_fk_magistrant_id` FOREIGN KEY (`teacher_load_id`) REFERENCES `magistrant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Popova','k.f.m.n','not','univer','prepod','',NULL),(2,'Ivanov Ivan','k.t.n','docent','street','prepod','',NULL),(3,'Petrova','k.bio.n','docent','univer','prepod','',NULL);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-15  1:52:51
