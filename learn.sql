/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.22-MariaDB : Database - learn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`learn` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `learn`;

/*Table structure for table `learn_languages` */

DROP TABLE IF EXISTS `learn_languages`;

CREATE TABLE `learn_languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `en_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `se_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `learn_languages` */

insert  into `learn_languages`(`id`,`en_description`,`se_description`,`image_url`,`created_at`,`updated_at`) values 
(1,'happy','srećan','assets/happy.png',NULL,NULL),
(2,'nice','lijepo','assets/nice.png',NULL,NULL),
(3,'friend','prijatelju','assets/friend.png',NULL,NULL),
(4,'explosion','eksplozija','assets/explosion.png',NULL,NULL),
(5,'carrot','šargarepa','assets/carrot.png',NULL,NULL),
(6,'car','auto','assets/car.png',NULL,NULL),
(7,'soldier','vojnik','assets/soldier.png',NULL,NULL),
(8,'fear','strah','assets/fear.png',NULL,NULL),
(9,'relativity','relativnost','assets/relativity.png',NULL,NULL),
(10,'book','knjiga','assets/book.png',NULL,NULL),
(11,'Earth','Zemlja','assets/Earth.png',NULL,NULL),
(12,'speed limit','ograničenje brzine','assets/speed limit.png',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
