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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'First article','sdfwfew','2017-03-20 21:23:33',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add article',7,'add_article'),(20,'Can change article',7,'change_article'),(21,'Can delete article',7,'delete_article'),(22,'Can add comments',8,'add_comments'),(23,'Can change comments',8,'change_comments'),(24,'Can delete comments',8,'delete_comments'),(25,'Can add teacher',9,'add_teacher'),(26,'Can change teacher',9,'change_teacher'),(27,'Can delete teacher',9,'delete_teacher'),(28,'Can add magistrant',10,'add_magistrant'),(29,'Can change magistrant',10,'change_magistrant'),(30,'Can delete magistrant',10,'delete_magistrant');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$U16J1CQlrZiR$0de9918JgutRSkoNtuRdrUVrSe1TMlMQtg2kQTvz908=','2017-03-19 17:13:27',1,'admin','','','qqwe@kd.ru',1,1,'2017-03-19 17:12:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-03-19 17:21:38','1','Popova',1,'Added.',9,1),(2,'2017-03-19 17:21:44','1','Popova',2,'No fields changed.',9,1),(3,'2017-03-19 17:26:52','2','Ivanov Ivan',1,'Added.',9,1),(4,'2017-03-19 17:31:44','1','Magistrant object',1,'Added.',10,1),(5,'2017-03-19 17:32:15','2','Magistrant object',1,'Added.',10,1),(6,'2017-03-19 17:33:01','3','Magistrant object',1,'Added.',10,1),(7,'2017-03-19 17:34:23','4','Magistrant object',1,'Added.',10,1),(8,'2017-03-19 17:55:16','5','Oleg',1,'Added.',10,1),(9,'2017-03-19 17:55:24','1','Popova',2,'Changed teacher_mag.',9,1),(10,'2017-03-19 17:58:34','3','Novik',1,'Added.',9,1),(11,'2017-03-19 18:01:57','3','Novik',2,'Changed teacher_mag.',9,1),(12,'2017-03-20 17:19:26','3','Ivan',2,'Changed magistrant_ScientificAdviser.',10,1),(13,'2017-03-20 17:20:38','4','Kotikov',2,'No fields changed.',10,1),(14,'2017-03-20 17:20:50','4','Kotikov',2,'Changed magistrant_ScientificAdviser.',10,1),(15,'2017-03-20 17:21:16','1','Popova',2,'Changed teacher_mag.',9,1),(16,'2017-03-20 17:21:48','3','Novik',3,'',9,1),(17,'2017-03-20 17:21:48','2','Ivanov Ivan',3,'',9,1),(18,'2017-03-20 17:21:48','1','Popova',3,'',9,1),(19,'2017-03-20 17:22:35','4','Popova',1,'Added.',9,1),(20,'2017-03-20 17:22:47','6','Kliashchonak Alexey',1,'Added.',10,1),(21,'2017-03-20 17:24:32','4','Popova',2,'Changed teacher_mag.',9,1),(22,'2017-03-20 17:26:30','4','Popova',3,'',9,1),(23,'2017-03-20 17:27:50','5','Popova',1,'Added.',9,1),(24,'2017-03-20 17:28:33','7','Kliashchonak Alexey',1,'Added.',10,1),(25,'2017-03-20 17:32:31','7','Kliashchonak Alexey',2,'No fields changed.',10,1),(26,'2017-03-20 17:33:10','5','Popova',2,'No fields changed.',9,1),(27,'2017-03-20 17:53:19','6','Ivanov Ivan',1,'Added.',9,1),(28,'2017-03-20 19:45:21','7','Kliashchonak Alexey',3,'',10,1),(29,'2017-03-20 19:45:34','7','7',3,'',9,1),(30,'2017-03-20 19:45:34','6','Ivanov Ivan',3,'',9,1),(31,'2017-03-20 19:45:34','5','Popova',3,'',9,1),(32,'2017-03-20 19:46:00','8','Popova',1,'Added.',9,1),(33,'2017-03-20 19:46:34','8','Kliashchonak Alexey',1,'Added.',10,1),(34,'2017-03-20 19:47:34','9','Ivanov Ivan',1,'Added.',9,1),(35,'2017-03-20 19:47:48','9','Alex',1,'Added.',10,1),(36,'2017-03-20 20:26:18','10','Anna Ivanovna',1,'Added.',9,1),(37,'2017-03-20 20:27:10','10','Kotikov',1,'Added.',10,1),(38,'2017-03-20 21:23:35','1','Article object',1,'Added.',7,1),(39,'2017-03-20 21:23:41','1','Article object',2,'Changed article_text.',7,1),(40,'2017-03-21 05:48:13','10','Anna Ivanovna',2,'No fields changed.',9,1),(41,'2017-03-23 15:33:04','9','Alex',2,'Changed magistrant_ScientificAdviser.',10,1),(42,'2017-03-23 15:33:34','9','Alex',2,'No fields changed.',10,1),(43,'2017-03-28 20:29:51','10','Kotikov',2,'Changed magistrant_StatusMagistrant.',10,1),(44,'2017-03-31 08:11:22','8','Kliashchonak Alexey',2,'??????? magistrant_YearOfEnding.',10,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'addMagistrants','magistrant'),(9,'addMagistrants','teacher'),(1,'admin','logentry'),(7,'article','article'),(8,'article','comments'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'addMagistrants','0001_initial','2017-03-19 17:11:11'),(2,'addMagistrants','0002_auto_20170319_1445','2017-03-19 17:11:12'),(3,'addMagistrants','0003_teacher_teacher_mag','2017-03-19 17:11:13'),(4,'contenttypes','0001_initial','2017-03-19 17:11:13'),(5,'auth','0001_initial','2017-03-19 17:11:16'),(6,'admin','0001_initial','2017-03-19 17:11:17'),(7,'admin','0002_logentry_remove_auto_add','2017-03-19 17:11:17'),(8,'article','0001_initial','2017-03-19 17:11:17'),(9,'contenttypes','0002_remove_content_type_name','2017-03-19 17:11:18'),(10,'auth','0002_alter_permission_name_max_length','2017-03-19 17:11:18'),(11,'auth','0003_alter_user_email_max_length','2017-03-19 17:11:19'),(12,'auth','0004_alter_user_username_opts','2017-03-19 17:11:19'),(13,'auth','0005_alter_user_last_login_null','2017-03-19 17:11:19'),(14,'auth','0006_require_contenttypes_0002','2017-03-19 17:11:19'),(15,'auth','0007_alter_validators_add_error_messages','2017-03-19 17:11:19'),(16,'sessions','0001_initial','2017-03-19 17:11:19'),(17,'addMagistrants','0004_auto_20170319_1720','2017-03-19 17:20:59'),(18,'addMagistrants','0005_auto_20170319_1749','2017-03-19 17:49:34'),(19,'addMagistrants','0006_auto_20170319_1758','2017-03-19 17:58:24'),(20,'addMagistrants','0007_remove_teacher_teacher_mag','2017-03-20 17:31:44'),(21,'addMagistrants','0008_teacher_teacher_mag','2017-03-20 19:38:57');
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
INSERT INTO `django_session` VALUES ('7hoiqf3yj4lhxviyli467emxbeyguze8','NzRiNjhlYWIxZjg2NDk1OGEwZjMwMGQ2NzVlNmYwYTM0Y2Q5MzM4MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0MmE5ODI2NGE4N2U4MWZiYjRmZjNlMzYzNDg3ZWQ0NjdmMWNhZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-02 17:13:27');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `magistrant_c90a9665` (`magistrant_ScientificAdviser_id`),
  CONSTRAINT `magistran_magistrant_ScientificAdviser_id_1259ec33_fk_teacher_id` FOREIGN KEY (`magistrant_ScientificAdviser_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magistrant`
--

LOCK TABLES `magistrant` WRITE;
/*!40000 ALTER TABLE `magistrant` DISABLE KEYS */;
INSERT INTO `magistrant` VALUES (8,'Kliashchonak Alexey','2017-03-20','2018-02-08',333,'poit','chargeable','daytime','study','2','we','2','2017-03-20',8),(9,'Alex','2017-03-20','2017-03-20',34,'ISIT','budget','daytime','study','ew','wew','wew','2017-03-20',10),(10,'Kotikov','2017-03-20','2017-04-13',12322,'poit','budget','daytime','study','Borisov','Programm','65363','2017-03-19',10);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (8,'Popova','k.t.n','not','home','well',''),(9,'Ivanov Ivan','k.f.m.n','not','univer','prepod','apdkpoakda'),(10,'Anna Ivanovna','k.psih.n','docent','street','test','');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_teacher_mag`
--

DROP TABLE IF EXISTS `teacher_teacher_mag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_teacher_mag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `magistrant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_teacher_mag_teacher_id_bdb10a45_uniq` (`teacher_id`,`magistrant_id`),
  KEY `teacher_teacher_mag_magistrant_id_0b89990c_fk_magistrant_id` (`magistrant_id`),
  CONSTRAINT `teacher_teacher_mag_magistrant_id_0b89990c_fk_magistrant_id` FOREIGN KEY (`magistrant_id`) REFERENCES `magistrant` (`id`),
  CONSTRAINT `teacher_teacher_mag_teacher_id_6ad11faa_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_teacher_mag`
--

LOCK TABLES `teacher_teacher_mag` WRITE;
/*!40000 ALTER TABLE `teacher_teacher_mag` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_teacher_mag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-31 11:22:56
