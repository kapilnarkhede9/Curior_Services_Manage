/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - courier
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`courier` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `courier`;

/*Table structure for table `aa` */

DROP TABLE IF EXISTS `aa`;

CREATE TABLE `aa` (
  `companyname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aa` */

insert  into `aa`(`companyname`,`username`,`password`,`email`,`mobile`,`address`) values ('1000Projects','1000p','1000p','info@1000projects.com','9052016340','Ameerpet - 500016'),('TCS','tcs','tcs','info@tcs.com','8579546210','Hyderabad'),('Facebook','facebook','facebook','info@facebook.com','9874562130','Madhapur, Hyderabad');

/*Table structure for table `delpersons` */

DROP TABLE IF EXISTS `delpersons`;

CREATE TABLE `delpersons` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `delpersons` */

insert  into `delpersons`(`username`,`password`,`email`,`gender`,`location`,`mobile`) values ('nikil','nikil','nikil@gmail.com','MALE','Ameerpet','9052016340');

/*Table structure for table `requests` */

DROP TABLE IF EXISTS `requests`;

CREATE TABLE `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `description` text,
  `weight` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  `cost` varchar(100) DEFAULT 'Not Mentioned',
  `currentlocation` varchar(100) DEFAULT 'No',
  `delpersonname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `requests` */

insert  into `requests`(`id`,`username`,`email`,`description`,`weight`,`destination`,`location`,`mobile`,`status`,`cost`,`currentlocation`,`delpersonname`) values (3,'ramu','nikilp306@gmail.com','hbdfdbfdj','500grms','Tarnaka','Ameerpet','9874563210','Approved','200','Tarnaka','nikil');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`username`,`password`,`email`,`dob`,`gender`,`location`,`mobile`) values ('ramu','ramu','nikilp306@gmail.com','1995-10-10','MALE','Ameerpet','9874563210'),('aaa','aaa','aaa@gmail.com','1999-10-10','MALE','aaa','956969599');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
