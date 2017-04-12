/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 10.1.21-MariaDB : Database - resenas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`resenas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `resenas`;

/*Table structure for table `actors` */

DROP TABLE IF EXISTS `actors`;

CREATE TABLE `actors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `imagen` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `actors` */

insert  into `actors`(`id`,`nombre`,`activo`,`imagen`,`created_at`,`updated_at`) values 
(1,'Carlos',1,'or ahi','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'Sergio',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,'Enrique',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(4,'Christian',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(5,'Manuel',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(6,'Ernesto',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(7,'Martin',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(8,'Juan',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(9,'Jazmin',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(10,'Juana',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(11,'Christina',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(12,'Leone',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(13,'Leonardo',1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*Table structure for table `casas_productoras` */

DROP TABLE IF EXISTS `casas_productoras`;

CREATE TABLE `casas_productoras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `casas_productoras` */

/*Table structure for table `comentarios` */

DROP TABLE IF EXISTS `comentarios`;

CREATE TABLE `comentarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pelicula_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `comentario` text COLLATE utf8_unicode_ci,
  `activo` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `comentarios` */

/*Table structure for table `generos` */

DROP TABLE IF EXISTS `generos`;

CREATE TABLE `generos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `generos` */

/*Table structure for table `generos_peliculas` */

DROP TABLE IF EXISTS `generos_peliculas`;

CREATE TABLE `generos_peliculas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `genero_id` int(11) DEFAULT NULL,
  `pelicula_id` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `generos_peliculas` */

/*Table structure for table `imagenes_peliculas` */

DROP TABLE IF EXISTS `imagenes_peliculas`;

CREATE TABLE `imagenes_peliculas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pelicula_id` int(11) DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `imagenes_peliculas` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values 
('2014_10_12_000000_create_users_table',1),
('2014_10_12_100000_create_password_resets_table',1),
('2017_04_04_035956_create_actors_table',1),
('2017_04_04_040326_create_peliculas_table',1),
('2017_04_04_040516_create_pelicula_actors_table',1),
('2017_04_04_041124_create_comentarios_table',1),
('2017_04_10_222458_create_generos_table',1),
('2017_04_10_223243_create_generos_peliculas_table',1),
('2017_04_12_151056_imagenes_peliculas',1),
('2017_04_12_153915_productoras',2);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `pelicula_actors` */

DROP TABLE IF EXISTS `pelicula_actors`;

CREATE TABLE `pelicula_actors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) DEFAULT NULL,
  `pelicula_id` int(11) DEFAULT NULL,
  `interpretacion` text COLLATE utf8_unicode_ci,
  `activo` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pelicula_actors` */

/*Table structure for table `peliculas` */

DROP TABLE IF EXISTS `peliculas`;

CREATE TABLE `peliculas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_lanzamiento` date DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `duracion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productora_id` int(11) DEFAULT NULL,
  `director` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `peliculas` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
