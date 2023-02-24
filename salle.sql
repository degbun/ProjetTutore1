-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour salle
CREATE DATABASE IF NOT EXISTS `salle` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `salle`;

-- Listage de la structure de la table salle. app_activite
CREATE TABLE IF NOT EXISTS `app_activite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomAt` varchar(50) NOT NULL,
  `intervenantAt` varchar(50) DEFAULT NULL,
  `matiere_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_activite_matiere_id_cbd36ece_fk_app_matiere_id` (`matiere_id`),
  CONSTRAINT `app_activite_matiere_id_cbd36ece_fk_app_matiere_id` FOREIGN KEY (`matiere_id`) REFERENCES `app_matiere` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.app_activite : ~62 rows (environ)
/*!40000 ALTER TABLE `app_activite` DISABLE KEYS */;
INSERT INTO `app_activite` (`id`, `nomAt`, `intervenantAt`, `matiere_id`) VALUES
	(30, 'cours', 'M.KADJO TANON', 2),
	(31, 'kaggle', 'M.ALLA AHUI', 8),
	(32, 'cours', 'M.KADJO TANON', 2),
	(33, 'cours', 'M.ALLA AHUI', 2),
	(34, 'cours', 'M.TANON TANON', 2),
	(35, 'cours', 'M.KADJO TANON', 2),
	(36, 'soutenance', 'alla_lionel', NULL),
	(37, 'soutenance', 'alla_holy', NULL),
	(38, 'cours', 'M.KADJO TANON', 2),
	(39, 'soutenance', 'alla_holy', NULL),
	(40, 'kaggle', 'M.KADJO TANON', 2),
	(41, 'soutenance', 'degbun_josue', NULL),
	(42, 'tp', 'M.TANON TANON', 2),
	(43, 'devoir', 'M.MONSAN VINCENT', 6),
	(44, 'cours', 'degbun_josue', NULL),
	(45, 'cours', 'M.KADJO TANON', 5),
	(46, 'cours', 'M.KADJO TANON', 2),
	(47, 'cours', 'M.KADJO TANON', 2),
	(48, 'soutenance', 'degbun_lionel', NULL),
	(49, 'kaggle', 'M.ALLA AHUI', 4),
	(50, 'tp', 'M.TANON TANON', 5),
	(51, 'cours', 'M.KADJO TANON', 2),
	(52, 'kaggle', 'M.ALLA AHUI', 3),
	(53, 'devoir', '', 11),
	(54, 'cours', 'M.KADJO TANON', 2),
	(55, 'cours', 'M.MONSAN VINCENT', 7),
	(56, 'cours', 'M.ALLA AHUI', 9),
	(57, 'cours', 'M.KADJO TANON', 2),
	(58, 'cours', 'M.TANON TANON', 2),
	(59, 'cours', 'soro_ibrahima', NULL),
	(60, 'devoir', 'M.KADJO TANON', 3),
	(61, 'devoir', 'M.ALLA AHUI', 8),
	(62, 'soutenance', 'koffi_serge', NULL),
	(63, 'tp', 'M.MONSAN VINCENT', 6),
	(64, 'devoir', 'M.KADJO TANON', 2),
	(65, 'soutenance', 'koffi_serge', NULL),
	(66, 'devoir', 'M.KADJO TANON', 2),
	(67, 'soutenance', 'guindo_junior', NULL),
	(68, 'cours', NULL, 2),
	(69, 'devoir', NULL, 7),
	(70, 'tp', 'M.KADJO TANON', 10),
	(71, 'kaggle', 'M.MONSAN VINCENT', 12),
	(72, 'tp', 'M.MONSAN VINCENT', 7),
	(73, 'devoir', 'Miss SORO', 13),
	(74, 'cours', 'M.KADJO TANON', 17),
	(75, 'tp', 'M.MONSAN VINCENT', 16),
	(76, 'kaggle', 'M.KADJO TANON', 18),
	(77, 'devoir', 'Miss SORO', 2),
	(78, 'tp', 'M.KADJO TANON', 4),
	(79, 'cours', 'M.KADJO TANON', 14),
	(80, 'cours', 'M.MONSAN VINCENT', 7),
	(81, 'cours', 'M.MONSAN VINCENT', 16),
	(82, 'cours', 'M.KADJO TANON', 4),
	(83, 'cours', 'M.KADJO TANON', 2),
	(84, 'cours', 'M.KADJO TANON', 2),
	(85, 'cours', 'M.KADJO TANON', 2),
	(86, 'cours', 'M.TANON TANON', 2),
	(87, 'cours', 'M.KADJO TANON', 2),
	(88, 'kaggle', 'M.KADJO TANON', 2),
	(89, 'cours', 'M.KADJO TANON', 2),
	(90, 'cours', 'M.KADJO TANON', 2),
	(91, 'cours', 'M.KADJO TANON', 2);
/*!40000 ALTER TABLE `app_activite` ENABLE KEYS */;

-- Listage de la structure de la table salle. app_matiere
CREATE TABLE IF NOT EXISTS `app_matiere` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomMt` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.app_matiere : ~18 rows (environ)
/*!40000 ALTER TABLE `app_matiere` DISABLE KEYS */;
INSERT INTO `app_matiere` (`id`, `nomMt`) VALUES
	(2, 'python_avancee'),
	(3, 'base_de_donnees1'),
	(4, 'hadoop/mapreduce'),
	(5, 'base_de_donnees2'),
	(6, 'makerting'),
	(7, 'management '),
	(8, 'langageR+projet'),
	(9, 'regression_logistique'),
	(10, 'regression_linéaire'),
	(11, 'analyse_numerique'),
	(12, 'clustering'),
	(13, 'optimisation'),
	(14, 'java'),
	(15, 'anglais'),
	(16, 'gestion_financiere'),
	(17, 'excel'),
	(18, 'principes_reseaux'),
	(19, 'algebre');
/*!40000 ALTER TABLE `app_matiere` ENABLE KEYS */;

-- Listage de la structure de la table salle. app_occupe
CREATE TABLE IF NOT EXISTS `app_occupe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `debut` datetime(6) NOT NULL,
  `fin` datetime(6) NOT NULL,
  `activite_id` bigint(20) DEFAULT NULL,
  `salle_id` bigint(20) DEFAULT NULL,
  `utilisateur_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_occupe_activite_id_ecede87e_fk_app_activite_id` (`activite_id`),
  KEY `app_occupe_salle_id_4c235dfe_fk_app_salle_id` (`salle_id`),
  KEY `app_occupe_utilisateur_id_10184aab_fk_app_utilisateur_id` (`utilisateur_id`),
  CONSTRAINT `app_occupe_activite_id_ecede87e_fk_app_activite_id` FOREIGN KEY (`activite_id`) REFERENCES `app_activite` (`id`),
  CONSTRAINT `app_occupe_salle_id_4c235dfe_fk_app_salle_id` FOREIGN KEY (`salle_id`) REFERENCES `app_salle` (`id`),
  CONSTRAINT `app_occupe_utilisateur_id_10184aab_fk_app_utilisateur_id` FOREIGN KEY (`utilisateur_id`) REFERENCES `app_utilisateur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.app_occupe : ~38 rows (environ)
/*!40000 ALTER TABLE `app_occupe` DISABLE KEYS */;
INSERT INTO `app_occupe` (`id`, `debut`, `fin`, `activite_id`, `salle_id`, `utilisateur_id`) VALUES
	(3, '2023-02-06 05:30:00.000000', '2023-02-06 07:30:00.000000', 40, 4, 37),
	(5, '2023-02-06 13:29:00.000000', '2023-02-06 18:29:00.000000', 42, 2, 39),
	(6, '2023-02-08 08:00:00.000000', '2023-02-10 12:00:00.000000', 43, 4, 40),
	(7, '2023-02-07 17:02:00.000000', '2023-02-07 19:04:00.000000', 44, 1, 41),
	(11, '2023-02-11 08:00:00.000000', '2023-02-11 11:28:00.000000', 48, 3, 45),
	(12, '2023-02-11 08:42:00.000000', '2023-02-11 11:42:00.000000', 49, 1, 46),
	(13, '2023-02-11 08:00:00.000000', '2023-02-11 12:00:00.000000', 50, 1, 47),
	(14, '2023-02-12 08:01:00.000000', '2023-02-12 12:00:00.000000', 51, 1, 48),
	(15, '2023-02-12 00:20:00.000000', '2023-02-12 00:25:00.000000', 52, 1, 49),
	(16, '2023-02-12 08:00:00.000000', '2023-02-12 10:37:00.000000', 53, 3, 50),
	(19, '2023-02-13 00:28:00.000000', '2023-02-13 00:28:00.000000', 56, 2, 53),
	(21, '2023-02-12 08:00:00.000000', '2023-02-17 12:00:00.000000', 58, 3, 55),
	(22, '2023-02-16 13:00:00.000000', '2023-02-16 17:40:00.000000', 59, 2, 56),
	(23, '2023-02-14 10:50:00.000000', '2023-02-14 18:50:00.000000', 60, 2, 57),
	(24, '2023-02-16 08:00:00.000000', '2023-02-18 12:00:00.000000', 61, 3, 58),
	(25, '2023-02-14 07:30:00.000000', '2023-02-14 07:30:00.000000', 62, 3, 59),
	(26, '2023-01-12 04:00:00.000000', '2023-02-13 01:56:00.000000', 63, 1, 60),
	(28, '2023-02-16 00:57:00.000000', '2023-02-18 05:57:00.000000', 65, 4, 62),
	(29, '2023-01-10 00:58:00.000000', '2023-01-15 00:59:00.000000', 66, 3, 63),
	(30, '2023-02-18 08:00:00.000000', '2023-02-21 09:00:00.000000', 67, 2, 64),
	(31, '2023-02-14 00:59:00.000000', '2023-02-14 01:03:00.000000', 68, 1, 65),
	(32, '2023-02-17 01:08:00.000000', '2023-02-19 01:03:00.000000', 69, 2, 66),
	(33, '2023-02-20 09:00:00.000000', '2023-02-24 09:00:00.000000', 70, 4, 67),
	(34, '2023-02-28 09:00:00.000000', '2023-02-28 18:00:00.000000', 71, 1, 68),
	(35, '2023-02-18 09:00:00.000000', '2023-02-18 14:00:00.000000', 72, 4, 69),
	(36, '2023-02-20 10:00:00.000000', '2023-02-21 15:00:00.000000', 73, 4, 70),
	(38, '2023-02-24 08:00:00.000000', '2023-02-25 09:00:00.000000', 75, 2, 72),
	(39, '2023-02-23 09:00:00.000000', '2023-02-23 09:20:00.000000', 76, 2, 73),
	(40, '2023-03-08 09:00:00.000000', '2023-03-13 09:00:00.000000', 77, 1, 74),
	(43, '2023-03-08 09:00:00.000000', '2023-03-13 09:00:00.000000', 80, 1, 77),
	(44, '2023-02-24 09:00:00.000000', '2023-02-25 18:00:00.000000', 81, 3, 78),
	(45, '2023-02-25 02:34:00.000000', '2023-02-25 02:40:00.000000', 82, 1, 79),
	(49, '2023-02-13 08:09:00.000000', '2023-02-13 10:09:00.000000', 86, 1, 83),
	(50, '2023-02-25 02:34:00.000000', '2023-02-25 08:17:00.000000', 87, 1, 84),
	(51, '2023-02-01 08:44:00.000000', '2023-02-01 10:46:00.000000', 88, 1, 85),
	(52, '2023-02-13 10:39:00.000000', '2023-02-13 12:39:00.000000', 89, 4, 86),
	(53, '2023-02-14 11:01:00.000000', '2023-02-14 12:01:00.000000', 90, 1, 87),
	(54, '2023-02-13 08:44:00.000000', '2023-02-13 12:44:00.000000', 91, 4, 88);
/*!40000 ALTER TABLE `app_occupe` ENABLE KEYS */;

-- Listage de la structure de la table salle. app_salle
CREATE TABLE IF NOT EXISTS `app_salle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomSl` varchar(50) NOT NULL,
  `capaciteSl` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.app_salle : ~4 rows (environ)
/*!40000 ALTER TABLE `app_salle` DISABLE KEYS */;
INSERT INTO `app_salle` (`id`, `nomSl`, `capaciteSl`) VALUES
	(1, 'sgci', 50),
	(2, 'multimedia', 30),
	(3, '374', 26),
	(4, '375', 26);
/*!40000 ALTER TABLE `app_salle` ENABLE KEYS */;

-- Listage de la structure de la table salle. app_utilisateur
CREATE TABLE IF NOT EXISTS `app_utilisateur` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomUt` varchar(50) NOT NULL,
  `effetifUt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.app_utilisateur : ~62 rows (environ)
/*!40000 ALTER TABLE `app_utilisateur` DISABLE KEYS */;
INSERT INTO `app_utilisateur` (`id`, `nomUt`, `effetifUt`) VALUES
	(27, 'Master1_ds', NULL),
	(28, 'Master1_csi', NULL),
	(29, 'Master1_ds', NULL),
	(30, 'Master2_csi', NULL),
	(31, 'Master1_ds', NULL),
	(32, 'Master1_ds', NULL),
	(33, 'esi', NULL),
	(34, 'esi', NULL),
	(35, 'Master1_ds', NULL),
	(36, 'esi', NULL),
	(37, 'Master1_csi', NULL),
	(38, 'escae', NULL),
	(39, 'Master2_csi', NULL),
	(40, 'Master2_csi', NULL),
	(41, 'esi', NULL),
	(42, 'Master1_ds', NULL),
	(43, 'Master1_ds', NULL),
	(44, 'Master2_ds', NULL),
	(45, 'cepedec', NULL),
	(46, 'Master1_ds', NULL),
	(47, 'Master1_ds', NULL),
	(48, 'Master1_ds', NULL),
	(49, 'Master1_ds', NULL),
	(50, 'Master1_ds', NULL),
	(51, 'Master1_ds', NULL),
	(52, 'Master2_csi', NULL),
	(53, 'Master1_ds', NULL),
	(54, 'Master1_ds', NULL),
	(55, 'Master2_csi', NULL),
	(56, 'esi', NULL),
	(57, 'Master1_csi', NULL),
	(58, 'Master1_ds', NULL),
	(59, 'esi', NULL),
	(60, 'Master1_ds', NULL),
	(61, 'Master1_ds', NULL),
	(62, 'escae', NULL),
	(63, 'Master1_ds', NULL),
	(64, 'escae', NULL),
	(65, 'Master1_ds', 50),
	(66, 'Master1_csi', 30),
	(67, 'Master1_csi', 26),
	(68, 'Master1_ds', 50),
	(69, 'Master2_ds', 26),
	(70, 'Master2_ds', 26),
	(71, 'Master1_csi', 26),
	(72, 'Master2_csi', 30),
	(73, 'Master1_csi', 30),
	(74, 'Master1_ds', 50),
	(75, 'Master1_csi', 26),
	(76, 'Master2_ds', 50),
	(77, 'Master1_ds', 50),
	(78, 'Master2_csi', 26),
	(79, 'Master1_ds', 50),
	(80, 'Master1_ds', 50),
	(81, 'Master1_ds', 50),
	(82, 'Master1_ds', 50),
	(83, 'Master1_ds', 50),
	(84, 'Master1_ds', 50),
	(85, 'Master1_ds', 50),
	(86, 'Master1_ds', 26),
	(87, 'Master1_ds', 50),
	(88, 'Master1_ds', 26);
/*!40000 ALTER TABLE `app_utilisateur` ENABLE KEYS */;

-- Listage de la structure de la table salle. auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.auth_group : ~0 rows (environ)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Listage de la structure de la table salle. auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.auth_group_permissions : ~0 rows (environ)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Listage de la structure de la table salle. auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.auth_permission : ~44 rows (environ)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add salle', 7, 'add_salle'),
	(26, 'Can change salle', 7, 'change_salle'),
	(27, 'Can delete salle', 7, 'delete_salle'),
	(28, 'Can view salle', 7, 'view_salle'),
	(29, 'Can add activite', 8, 'add_activite'),
	(30, 'Can change activite', 8, 'change_activite'),
	(31, 'Can delete activite', 8, 'delete_activite'),
	(32, 'Can view activite', 8, 'view_activite'),
	(33, 'Can add matiere', 9, 'add_matiere'),
	(34, 'Can change matiere', 9, 'change_matiere'),
	(35, 'Can delete matiere', 9, 'delete_matiere'),
	(36, 'Can view matiere', 9, 'view_matiere'),
	(37, 'Can add utilisateur', 10, 'add_utilisateur'),
	(38, 'Can change utilisateur', 10, 'change_utilisateur'),
	(39, 'Can delete utilisateur', 10, 'delete_utilisateur'),
	(40, 'Can view utilisateur', 10, 'view_utilisateur'),
	(41, 'Can add occupe', 11, 'add_occupe'),
	(42, 'Can change occupe', 11, 'change_occupe'),
	(43, 'Can delete occupe', 11, 'delete_occupe'),
	(44, 'Can view occupe', 11, 'view_occupe');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Listage de la structure de la table salle. auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.auth_user : ~4 rows (environ)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(2, 'pbkdf2_sha256$390000$7RqJRQWVBLxQDjjCPr4uvh$AwOlqKuQLSIIQX8WudUSOh7RlgYBgHB429ausnDAUKU=', '2023-01-24 12:13:21.576955', 1, 'josue', '', '', 'jdegbun@gmail.com', 1, 1, '2022-12-21 00:08:24.609357'),
	(5, 'pbkdf2_sha256$390000$IeyM9G1ezKLMSbspaENimN$2T1PVCp2C6LsAcIHlaY3Hr928gQNvDp2DAn4WI8Z+fs=', '2023-02-05 01:36:12.921837', 1, 'joshua', '', '', 'jdegbun@gmail.com', 1, 1, '2023-02-04 23:51:12.069804'),
	(6, 'pbkdf2_sha256$390000$h2FrYcskTgH7C58D4aVVSU$h4iYqVYzQssAqp7SNK65VfmdDi5EnEvMne9NKwSAAHo=', '2023-02-13 19:09:44.710054', 1, 'dell', '', '', 'holy@gmail.com', 1, 1, '2023-02-06 01:25:06.962129'),
	(7, 'pbkdf2_sha256$390000$JlXnIDaxODwTP6NxuuQbn7$9UlT4u7/MENKMqeITngVDPVi4Zoh0OOA0iQiYaGfogI=', '2023-02-24 21:14:37.150690', 1, 'nebout', '', '', 'jdegbun@gmail.com', 1, 1, '2023-02-13 08:27:08.100362');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Listage de la structure de la table salle. auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.auth_user_groups : ~0 rows (environ)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Listage de la structure de la table salle. auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.auth_user_user_permissions : ~0 rows (environ)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Listage de la structure de la table salle. django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.django_admin_log : ~81 rows (environ)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2022-12-24 16:49:07.767388', '1', 'langageR+projet', 1, '[{"added": {}}]', 9, 2),
	(2, '2022-12-24 16:49:15.531551', '2', 'python avancee', 1, '[{"added": {}}]', 9, 2),
	(3, '2022-12-24 16:49:32.022630', '3', 'base de donnees1', 1, '[{"added": {}}]', 9, 2),
	(4, '2022-12-24 16:50:14.907379', '4', 'hadoop/mapreduce', 1, '[{"added": {}}]', 9, 2),
	(5, '2022-12-24 16:50:45.312636', '5', 'base de donnees2', 1, '[{"added": {}}]', 9, 2),
	(6, '2022-12-24 16:51:26.988625', '6', 'makerting', 1, '[{"added": {}}]', 9, 2),
	(7, '2022-12-24 16:51:32.392608', '7', 'management', 1, '[{"added": {}}]', 9, 2),
	(8, '2022-12-24 16:55:43.912538', '1', 'sgci', 1, '[{"added": {}}]', 7, 2),
	(9, '2022-12-24 16:56:06.439779', '2', 'multimedia', 1, '[{"added": {}}]', 7, 2),
	(10, '2022-12-24 16:56:57.843557', '3', '374', 1, '[{"added": {}}]', 7, 2),
	(11, '2022-12-24 16:57:05.752411', '4', '375', 1, '[{"added": {}}]', 7, 2),
	(12, '2022-12-24 17:02:47.413885', '1', 'master1_ds', 1, '[{"added": {}}]', 10, 2),
	(13, '2022-12-24 17:03:57.312656', '1', 'cours', 1, '[{"added": {}}]', 8, 2),
	(14, '2022-12-24 17:06:13.908578', '1', 'Occupe object (1)', 1, '[{"added": {}}]', 11, 2),
	(15, '2022-12-24 17:10:17.945041', '2', 'esi', 1, '[{"added": {}}]', 10, 2),
	(16, '2022-12-24 17:14:55.187761', '2', 'conference', 1, '[{"added": {}}]', 8, 2),
	(17, '2022-12-24 17:15:34.907848', '2', 'Occupe object (2)', 1, '[{"added": {}}]', 11, 2),
	(18, '2023-02-05 01:32:38.709493', '26', 'Master1_ds', 3, '', 10, 5),
	(19, '2023-02-05 01:32:51.707930', '25', 'Master1_ds', 3, '', 10, 5),
	(20, '2023-02-05 01:33:14.315253', '24', 'esi', 3, '', 10, 5),
	(21, '2023-02-05 01:33:32.029191', '23', 'esi', 3, '', 10, 5),
	(22, '2023-02-05 01:33:35.574527', '22', 'Master1_ds', 3, '', 10, 5),
	(23, '2023-02-05 01:33:41.029597', '21', 'esi', 3, '', 10, 5),
	(24, '2023-02-05 01:34:01.267593', '20', 'esi', 3, '', 10, 5),
	(25, '2023-02-05 01:34:01.269577', '19', '', 3, '', 10, 5),
	(26, '2023-02-05 01:34:01.271578', '18', 'ESI', 3, '', 10, 5),
	(27, '2023-02-05 01:34:11.014498', '17', 'Master1_ds', 3, '', 10, 5),
	(28, '2023-02-05 01:34:11.021497', '16', 'Master1_ds', 3, '', 10, 5),
	(29, '2023-02-05 01:34:11.023497', '15', 'Master1_ds', 3, '', 10, 5),
	(30, '2023-02-05 01:34:11.025497', '14', 'Master1_ds', 3, '', 10, 5),
	(31, '2023-02-05 01:34:11.028495', '13', 'Master1_ds', 3, '', 10, 5),
	(32, '2023-02-05 01:34:11.030497', '12', 'Master1_ds', 3, '', 10, 5),
	(33, '2023-02-05 01:34:11.032496', '11', 'Master1_ds', 3, '', 10, 5),
	(34, '2023-02-05 01:34:11.034498', '10', 'Master1_ds', 3, '', 10, 5),
	(35, '2023-02-05 01:34:11.035511', '9', 'Master1_ds', 3, '', 10, 5),
	(36, '2023-02-05 01:34:11.038508', '8', 'Master1_ds', 3, '', 10, 5),
	(37, '2023-02-05 01:34:11.040496', '7', 'Master1_ds', 3, '', 10, 5),
	(38, '2023-02-05 01:34:11.042497', '6', 'Master2_ds', 3, '', 10, 5),
	(39, '2023-02-05 01:34:11.044496', '5', 'cours', 3, '', 10, 5),
	(40, '2023-02-05 01:34:11.047494', '4', 'kaggle', 3, '', 10, 5),
	(41, '2023-02-05 01:34:11.049495', '3', 'cours', 3, '', 10, 5),
	(42, '2023-02-05 01:34:11.051496', '2', 'esi', 3, '', 10, 5),
	(43, '2023-02-05 01:34:11.054505', '1', 'master1_ds', 3, '', 10, 5),
	(44, '2023-02-05 01:34:28.581476', '29', 'cours', 3, '', 8, 5),
	(45, '2023-02-05 01:34:28.585476', '28', 'cours', 3, '', 8, 5),
	(46, '2023-02-05 01:34:28.587476', '27', 'deded', 3, '', 8, 5),
	(47, '2023-02-05 01:34:28.589503', '26', 'soutenance', 3, '', 8, 5),
	(48, '2023-02-05 01:34:28.591479', '25', 'kaggle', 3, '', 8, 5),
	(49, '2023-02-05 01:34:28.594478', '24', 'soutenance', 3, '', 8, 5),
	(50, '2023-02-05 01:34:28.596475', '23', 'soutenance', 3, '', 8, 5),
	(51, '2023-02-05 01:34:28.599476', '22', '', 3, '', 8, 5),
	(52, '2023-02-05 01:34:28.603476', '21', 'cours', 3, '', 8, 5),
	(53, '2023-02-05 01:34:28.605479', '20', 'cours', 3, '', 8, 5),
	(54, '2023-02-05 01:34:28.607485', '19', 'cours', 3, '', 8, 5),
	(55, '2023-02-05 01:34:28.609474', '18', 'cours', 3, '', 8, 5),
	(56, '2023-02-05 01:34:28.611519', '17', 'cours', 3, '', 8, 5),
	(57, '2023-02-05 01:34:28.613484', '16', 'motif', 3, '', 8, 5),
	(58, '2023-02-05 01:34:28.615474', '15', 'motif', 3, '', 8, 5),
	(59, '2023-02-05 01:34:28.619491', '14', 'motif', 3, '', 8, 5),
	(60, '2023-02-05 01:34:28.621479', '13', 'motif', 3, '', 8, 5),
	(61, '2023-02-05 01:34:28.623479', '12', 'motif', 3, '', 8, 5),
	(62, '2023-02-05 01:34:28.625476', '11', 'motif', 3, '', 8, 5),
	(63, '2023-02-05 01:34:28.627485', '10', 'motif', 3, '', 8, 5),
	(64, '2023-02-05 01:34:28.629478', '9', 'cours', 3, '', 8, 5),
	(65, '2023-02-05 01:34:28.631477', '8', 'cours', 3, '', 8, 5),
	(66, '2023-02-05 01:34:28.632478', '7', 'kaggle', 3, '', 8, 5),
	(67, '2023-02-05 01:34:28.636500', '6', 'cours', 3, '', 8, 5),
	(68, '2023-02-05 01:34:28.638479', '5', 'motif', 3, '', 8, 5),
	(69, '2023-02-05 01:34:28.640480', '2', 'conference', 3, '', 8, 5),
	(70, '2023-02-05 01:34:28.642479', '1', 'cours', 3, '', 8, 5),
	(71, '2023-02-12 06:18:46.454694', '9', 'regression_logistique', 1, '[{"added": {}}]', 9, 6),
	(72, '2023-02-12 06:18:57.432810', '10', 'regression_linéaire', 1, '[{"added": {}}]', 9, 6),
	(73, '2023-02-12 06:19:09.177914', '11', 'analyse_numerique', 1, '[{"added": {}}]', 9, 6),
	(74, '2023-02-12 06:19:18.504975', '12', 'clustering', 1, '[{"added": {}}]', 9, 6),
	(75, '2023-02-12 06:19:25.090965', '13', 'optimisation', 1, '[{"added": {}}]', 9, 6),
	(76, '2023-02-12 06:19:30.131996', '14', 'java', 1, '[{"added": {}}]', 9, 6),
	(77, '2023-02-12 06:19:44.889019', '15', 'anglais', 1, '[{"added": {}}]', 9, 6),
	(78, '2023-02-12 06:19:51.562019', '16', 'gestion_financiere', 1, '[{"added": {}}]', 9, 6),
	(79, '2023-02-12 06:20:07.654147', '17', 'excel', 1, '[{"added": {}}]', 9, 6),
	(80, '2023-02-12 06:20:44.334707', '18', 'principes_reseaux', 1, '[{"added": {}}]', 9, 6),
	(81, '2023-02-12 06:20:53.196761', '19', 'algebre', 1, '[{"added": {}}]', 9, 6);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Listage de la structure de la table salle. django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.django_content_type : ~11 rows (environ)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(8, 'app', 'activite'),
	(9, 'app', 'matiere'),
	(11, 'app', 'occupe'),
	(7, 'app', 'salle'),
	(10, 'app', 'utilisateur'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Listage de la structure de la table salle. django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.django_migrations : ~24 rows (environ)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2022-12-20 21:27:55.084818'),
	(2, 'auth', '0001_initial', '2022-12-20 21:27:55.482820'),
	(3, 'admin', '0001_initial', '2022-12-20 21:27:55.587824'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-20 21:27:55.636816'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-20 21:27:55.651815'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-20 21:27:55.745825'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-20 21:27:55.770820'),
	(8, 'auth', '0003_alter_user_email_max_length', '2022-12-20 21:27:55.799837'),
	(9, 'auth', '0004_alter_user_username_opts', '2022-12-20 21:27:55.818818'),
	(10, 'auth', '0005_alter_user_last_login_null', '2022-12-20 21:27:55.867821'),
	(11, 'auth', '0006_require_contenttypes_0002', '2022-12-20 21:27:55.872817'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-20 21:27:55.891837'),
	(13, 'auth', '0008_alter_user_username_max_length', '2022-12-20 21:27:55.922818'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-20 21:27:55.953818'),
	(15, 'auth', '0010_alter_group_name_max_length', '2022-12-20 21:27:55.984820'),
	(16, 'auth', '0011_update_proxy_permissions', '2022-12-20 21:27:56.003819'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-20 21:27:56.034822'),
	(18, 'sessions', '0001_initial', '2022-12-20 21:27:56.072820'),
	(19, 'app', '0001_initial', '2022-12-24 15:57:41.497703'),
	(20, 'app', '0002_rename_nomat_matiere_nommt_alter_activite_matiere_and_more', '2022-12-26 01:39:25.400642'),
	(21, 'app', '0003_alter_occupe_activite_alter_occupe_salle_and_more', '2022-12-26 02:01:16.220169'),
	(22, 'app', '0004_remove_utilisateur_effetifut', '2023-02-13 01:01:47.520058'),
	(23, 'app', '0005_utilisateur_effetifut', '2023-02-13 01:01:47.601060'),
	(24, 'app', '0006_alter_activite_intervenantat', '2023-02-13 01:01:47.679061');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Listage de la structure de la table salle. django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table salle.django_session : ~27 rows (environ)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('0e96dp0zjv0vlefeiq7dvtvomur9na1i', '.eJxVjMsOwiAUBf-FtSFwoQVduvcbCPdRqRqalHZl_HfbpAvdzsw5b5XyupS0NpnTyOqigjr9Msz0lLoLfuR6nzRNdZlH1HuiD9v0bWJ5XY_276DkVrY1gfHe-T4AROfZAjpD0mc3IAd37oR4QO8jgLUdSOQNG4sOgzVMlNXnC8dMN7M:1pRV5d:AtdFHXMsRrsqdn5dC-ozp4lbGRYYzJD5aEpipM-285k', '2023-02-27 09:25:37.231443'),
	('0xei3strwo4ves5ajq336jo2tfivn86f', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pR5k3:ponpKbGFn3xS3BreCiT7vgIHxYylhkPf86CBe-7g1KQ', '2023-02-26 06:21:39.554594'),
	('577rhv4qpuni1yzflyaw58dmsspv4tj4', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pRJe0:fkj7fPMgNEQ_R8C40go6pyX6QU3HdSQwMyNIeeWvqn0', '2023-02-26 21:12:20.356640'),
	('6lth1bcidxjvhdyfazhqwjmt29szqajx', '.eJxVjMsOwiAUBf-FtSFwoQVduvcbCPdRqRqalHZl_HfbpAvdzsw5b5XyupS0NpnTyOqigjr9Msz0lLoLfuR6nzRNdZlH1HuiD9v0bWJ5XY_276DkVrY1gfHe-T4AROfZAjpD0mc3IAd37oR4QO8jgLUdSOQNG4sOgzVMlNXnC8dMN7M:1pVfOn:epdkRR5hZlDZFYWLOwpR9q_mb4_ryVL-leMh0h9jkGs', '2023-03-10 21:14:37.156689'),
	('7s5nto93ybtupejbfgnajfl4b6ej5ved', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pQe94:BwskbLhtudMjW3EGl7d0NVZ232jVX2TCLLhhQqhdFCc', '2023-02-25 00:53:38.844343'),
	('8mwd0vqeeaab2imk89x0wnzesxsquw4g', '.eJxVjEEOwiAQRe_C2hCKo4BL9z0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVRVh1-t4T0kLoBvmO9NU2tLvOU9KbonXY9NpbndXf_Dgr28q1hCCLZEKM1SOhFjDjgbAkdgiQ6OUJIYM3RDAGDYedszp7Jgz8HVO8PGl446Q:1p8shf:Lwg1QmehKKJmdsO1leGHbXGTkBO27-_ikBBcynW7acI', '2023-01-07 00:47:55.767571'),
	('9zod68mutkdqkbz1jyl8to52u94f1cvg', '.eJxVjEEOwiAQRe_C2hCKo4BL9z0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVRVh1-t4T0kLoBvmO9NU2tLvOU9KbonXY9NpbndXf_Dgr28q1hCCLZEKM1SOhFjDjgbAkdgiQ6OUJIYM3RDAGDYedszp7Jgz8HVO8PGl446Q:1pBM5z:GUhtqIFRCieo98loeU2edAohtNBVrZT_M8NHOF0ZFmY', '2023-01-13 20:35:15.921170'),
	('c6ujxzog4huloampshl2jxqjfl7bdzy2', '.eJxVjEEOwiAQRe_C2hCKo4BL9z0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVRVh1-t4T0kLoBvmO9NU2tLvOU9KbonXY9NpbndXf_Dgr28q1hCCLZEKM1SOhFjDjgbAkdgiQ6OUJIYM3RDAGDYedszp7Jgz8HVO8PGl446Q:1pCkKi:e_mErhir8D86vzD8uT-4pyQoTTKQHmEcUc-mQWI2EHw', '2023-01-17 16:40:12.427658'),
	('ccc3bgytrxld6r37ek7sr03489bz24tt', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pQtMK:bASBJPjnWSSRI5nWA0VcPWS_1kOa6qLyXQmuxl9BlXU', '2023-02-25 17:08:20.518228'),
	('e7hhmh6i8pi4eop4pf0c1tbtskdqw5aw', '.eJxVjMsOwiAUBf-FtSFwoQVduvcbCPdRqRqalHZl_HfbpAvdzsw5b5XyupS0NpnTyOqigjr9Msz0lLoLfuR6nzRNdZlH1HuiD9v0bWJ5XY_276DkVrY1gfHe-T4AROfZAjpD0mc3IAd37oR4QO8jgLUdSOQNG4sOgzVMlNXnC8dMN7M:1pRWHL:QOcbf6REwnr6W2zTfCXFjdS5oI2VcBhW7SdS9Fz6L4I', '2023-02-27 10:41:47.826515'),
	('ebvpfccgslqz6zh0t9631bp4iy267clw', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pQcKq:uoWbAtNWP85xHuF4QdAEsL-Sle_qydGik_xCQu6DIo0', '2023-02-24 22:57:40.048273'),
	('fmp7sqok5b4cy3qr9h7xt9q8ior2a4in', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pP97D:A5A58QKPDZlWz4-4IGo4Jw6g2lkZLtzFmJ6XN4gUQKY', '2023-02-20 21:33:31.019066'),
	('i79uldpfchc5e4rdcxirc86v556zsvri', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pPtJo:UqZPoVTmaC2AUke4Ick6HwMxiYWAt10sgKe6ZoSgdTE', '2023-02-22 22:53:36.535360'),
	('img0lyfs403f2a6zsihn2nf0tdqzq3o3', '.eJxVjEEOwiAQRe_C2hCKo4BL9z0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVRVh1-t4T0kLoBvmO9NU2tLvOU9KbonXY9NpbndXf_Dgr28q1hCCLZEKM1SOhFjDjgbAkdgiQ6OUJIYM3RDAGDYedszp7Jgz8HVO8PGl446Q:1p9bvg:bfPrJt4ooHVq6rk6xs2NUwXa8SxxQZPeJTKXvyLR1FE', '2023-01-09 01:05:24.773140'),
	('is8xzllhld34pbv395d19m9kbcddqc4h', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pQfXl:kUHvMrUNZP0tJvNOFpX1PXIDP34FL3Bxq1mbqe4YF-8', '2023-02-25 02:23:13.036068'),
	('kp8fw7j1nr1d0yjdq0xpp5od8y0cwzit', '.eJxVjEEOwiAQRe_C2hCKo4BL9z0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVRVh1-t4T0kLoBvmO9NU2tLvOU9KbonXY9NpbndXf_Dgr28q1hCCLZEKM1SOhFjDjgbAkdgiQ6OUJIYM3RDAGDYedszp7Jgz8HVO8PGl446Q:1p7w6j:AZErp_yd_3LdlnPGpJ07yQM0fkIQGPAbMKSuC9q2Xq0', '2023-01-04 10:13:53.311226'),
	('kw1xm7r0t9g861xbef4xcbuax52xu6jn', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pReCu:-4b0WeWUnfXJSBFW_vVboQLxXrhBWbrWldDCFtb-VBU', '2023-02-27 19:09:44.714061'),
	('l5q9ij9pmv7et1m2jg0w4dgvub0rlbbr', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pRU2J:WcBz2hJ-sHFeyDIWgfMDGyxVzSrLdJOt4ZeU3SK686U', '2023-02-27 08:18:07.070489'),
	('lfp0f2h6i1qhkf50bgg2f9i8u2ogxb36', '.eJxVjEEOwiAQRe_C2hCKo4BL9z0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVRVh1-t4T0kLoBvmO9NU2tLvOU9KbonXY9NpbndXf_Dgr28q1hCCLZEKM1SOhFjDjgbAkdgiQ6OUJIYM3RDAGDYedszp7Jgz8HVO8PGl446Q:1p9wYL:y3jXR-D1z0fRPHYYzyIP-lfmMZIsQog13LKBcYqclCQ', '2023-01-09 23:06:41.541947'),
	('mqzr4crci5hgke22m5rlhzp95vrsvllq', '.eJxVjEEOwiAQRe_C2hCKo4BL9z0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVRVh1-t4T0kLoBvmO9NU2tLvOU9KbonXY9NpbndXf_Dgr28q1hCCLZEKM1SOhFjDjgbAkdgiQ6OUJIYM3RDAGDYedszp7Jgz8HVO8PGl446Q:1pJl47:7tqtp3Rf4gv8Xy2jgxr-YWgoTCl_X8uXZDjgq-dQwmw', '2023-02-06 00:52:03.083661'),
	('q8if60wei57zz5szqnqt54imwyb5xc7k', 'e30:1p7nMR:neUTeaXI0V59pAdhM8kuoQBvQ6zZuYp0znWm59BBi3w', '2023-01-04 00:53:31.364603'),
	('quqt4aj73yc33m69vhljmnv2h80et199', '.eJxVjEEOwiAQRe_C2hCKo4BL9z0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVRVh1-t4T0kLoBvmO9NU2tLvOU9KbonXY9NpbndXf_Dgr28q1hCCLZEKM1SOhFjDjgbAkdgiQ6OUJIYM3RDAGDYedszp7Jgz8HVO8PGl446Q:1pKIAz:RPaQlrdfhc3v77_VGdKhb8J8Gary9GiJi8fjXJDRRtU', '2023-02-07 12:13:21.582953'),
	('s7kau63jftftn683hfd40sh1nm24riq2', '.eJxVjEEOwiAQRe_C2hCKo4BL9z0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVRVh1-t4T0kLoBvmO9NU2tLvOU9KbonXY9NpbndXf_Dgr28q1hCCLZEKM1SOhFjDjgbAkdgiQ6OUJIYM3RDAGDYedszp7Jgz8HVO8PGl446Q:1pDaNH:DbuSMlvjESyCc4RXB3GzUoAJ7CEpRGKf2kJL1PUCwDk', '2023-01-20 00:14:19.728897'),
	('tmfnvr4l4mjt2393ql7i075yyp5phq8h', '.eJxVzM0OwiAQBOB34WwIbPgpHr37DGSBRaoGktKeGt_dkvSg15lvZmcet7X4rdPi58SuzLDLbxYwvqiOIj2xPhqPra7LHPgg_Gw7v7dE79tp_w4K9nKsHWRlnY7khESlk83SIE4gjAVNKUtErVwiIhBOHRgmHDCAyCijYJ8v3IY3xw:1pRMwh:fzmsYzvA1OmY8bX-owuQaDnwHkhqJwpqRiQfUudTBJQ', '2023-02-27 00:43:51.210785'),
	('ukd8s3ta6xlnnxfyvixab6pxioelvxcn', '.eJxVjMsOwiAUBf-FtSFwoQVduvcbCPdRqRqalHZl_HfbpAvdzsw5b5XyupS0NpnTyOqigjr9Msz0lLoLfuR6nzRNdZlH1HuiD9v0bWJ5XY_276DkVrY1gfHe-T4AROfZAjpD0mc3IAd37oR4QO8jgLUdSOQNG4sOgzVMlNXnC8dMN7M:1pTA4V:z9656_V-bRlkUuRZXUfkr7nsCf92HTP2zTFmY492qdE', '2023-03-03 23:23:19.189055'),
	('wklbwj0d9w75mlcrtd7gnnv49d41z9gh', '.eJxVjEEOwiAQRe_C2hCKo4BL9z0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVRVh1-t4T0kLoBvmO9NU2tLvOU9KbonXY9NpbndXf_Dgr28q1hCCLZEKM1SOhFjDjgbAkdgiQ6OUJIYM3RDAGDYedszp7Jgz8HVO8PGl446Q:1pEyO5:23QWNF4nzcb4SSDpiQxn8qD2YlvvqrfPaHmxajKheug', '2023-01-23 20:04:53.197910'),
	('ze0gthpuw4cbze70w2gmmzpljcv3lj9m', '.eJxVjMsOwiAUBf-FtSFwoQVduvcbCPdRqRqalHZl_HfbpAvdzsw5b5XyupS0NpnTyOqigjr9Msz0lLoLfuR6nzRNdZlH1HuiD9v0bWJ5XY_276DkVrY1gfHe-T4AROfZAjpD0mc3IAd37oR4QO8jgLUdSOQNG4sOgzVMlNXnC8dMN7M:1pRVHe:Da1Q4xRfWAjt7gT6RbgnFdgDCJ1GYqrFLADpqAlkoK8', '2023-02-27 09:38:02.976322');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
