/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - softwarepuzzle
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `softwarepuzzle`;

USE `softwarepuzzle`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert into `admin` (`username`,`password`) values ('deva','deva');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `accno` int(11) NOT NULL,
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `dob` varchar(20) default NULL,
  `gender` varchar(20) default NULL,
  `age` varchar(20) default NULL,
  `email` varchar(50) default NULL,
  `mobile` varchar(10) default NULL,
  `address` varchar(40) default NULL,
  `city` varchar(40) default NULL,
  `state` varchar(30) default NULL,
  `nation` varchar(30) default NULL,
  `captchaimage` varchar(100) default NULL,
  `puzzle` varchar(100) default NULL,
  `image1` varchar(100) default NULL,
  `image2` varchar(100) default NULL,
  `image3` varchar(100) default NULL,
  `image4` varchar(100) default NULL,
  `image5` varchar(100) default NULL,
  `otp` varchar(20) default NULL,
  UNIQUE KEY `accno` (`accno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert into `registration` (`accno`,`username`,`password`,`dob`,`gender`,`age`,`email`,`mobile`,`address`,`city`,`state`,`nation`,`captchaimage`,`puzzle`,`image1`,`image2`,`image3`,`image4`,`image5`,`otp`) values (1,'asd','asdf','5','Male','23','chennai.java@pantechmail.com','1234','cn','cn','cn','cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert into `registration` (`accno`,`username`,`password`,`dob`,`gender`,`age`,`email`,`mobile`,`address`,`city`,`state`,`nation`,`captchaimage`,`puzzle`,`image1`,`image2`,`image3`,`image4`,`image5`,`otp`) values (2,'gsdfg','sdfg','-1','','12','chennai.java@pantechmail.com1234','123','cn','cn','cn','cn','0.jpg','null',NULL,NULL,NULL,NULL,NULL,NULL);
insert into `registration` (`accno`,`username`,`password`,`dob`,`gender`,`age`,`email`,`mobile`,`address`,`city`,`state`,`nation`,`captchaimage`,`puzzle`,`image1`,`image2`,`image3`,`image4`,`image5`,`otp`) values (3,'qwer','qwer','6','Male','23','chennai.java@pantechmail.com','12341234','asddf','qweq','wer','qwer','0.jpg','null',NULL,NULL,NULL,NULL,NULL,'AYAlUuhp');
insert into `registration` (`accno`,`username`,`password`,`dob`,`gender`,`age`,`email`,`mobile`,`address`,`city`,`state`,`nation`,`captchaimage`,`puzzle`,`image1`,`image2`,`image3`,`image4`,`image5`,`otp`) values (4,'m','m','6','Male','12','chennai.java@pantechmail.com','1234','2345','234','2345','2345','0.jpg','null',NULL,NULL,NULL,NULL,NULL,'sCYEBhRR');
insert into `registration` (`accno`,`username`,`password`,`dob`,`gender`,`age`,`email`,`mobile`,`address`,`city`,`state`,`nation`,`captchaimage`,`puzzle`,`image1`,`image2`,`image3`,`image4`,`image5`,`otp`) values (5,'sathish','sathish','7','Male','23','chennai.java@pantechmail.com','1234123412','cn','cn','tn','ind','0.jpg','0.jpg','1.jpg','2.jpg','3.jpg','4.jpg','5.jpg','SDXBGRHi');

SET SQL_MODE=@OLD_SQL_MODE;