/*
SQLyog Community v9.30 
MySQL - 5.6.25-log : Database - ngomgt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ngomgt` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ngomgt`;

/*Table structure for table `n_application` */

DROP TABLE IF EXISTS `n_application`;

CREATE TABLE `n_application` (
  `ID` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `dob` date NOT NULL,
  `qualification` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `createdBy` varchar(225) NOT NULL,
  `modifiedBy` varchar(225) NOT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Status` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `n_application` */

insert  into `n_application`(`ID`,`userId`,`name`,`email`,`dob`,`qualification`,`address`,`description`,`createdBy`,`modifiedBy`,`createdDatetime`,`modifiedDatetime`,`Status`) values (1,2,'Vanshika Nath','vanshikanath10@gmail.com','1998-05-14','B.TECH','12/0 kalorbagh kolkata','Event Organiser','Vanshika@gmail.com','Vanshika@gmail.com','2020-09-06 12:29:44','2020-07-08 14:22:11','Rejected');

/*Table structure for table `n_donorfeedback` */

DROP TABLE IF EXISTS `n_donorfeedback`;

CREATE TABLE `n_donorfeedback` (
  `ID` varchar(20) NOT NULL,
  `UserID` varchar(20) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Description` varchar(225) NOT NULL,
  `DescriptionOne` varchar(225) NOT NULL,
  `DescriptionTwo` varchar(225) NOT NULL,
  `DescriptionThree` varchar(225) NOT NULL,
  `CreatedBy` varchar(225) NOT NULL,
  `ModifiedBy` varchar(225) NOT NULL,
  `CreatedDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `n_donorfeedback` */

insert  into `n_donorfeedback`(`ID`,`UserID`,`Name`,`Description`,`DescriptionOne`,`DescriptionTwo`,`DescriptionThree`,`CreatedBy`,`ModifiedBy`,`CreatedDatetime`,`ModifiedDatetime`) values ('1','3','Gargi garain','To know peoples with same goals','Look for matching gift opportunities','satisfied','Prioritize Creative, Engaging Design','Gargin@gmail.com','Gargin@gmail.com','2020-07-10 20:38:38','2020-07-10 20:38:38');

/*Table structure for table `n_donormoney` */

DROP TABLE IF EXISTS `n_donormoney`;

CREATE TABLE `n_donormoney` (
  `ID` bigint(20) NOT NULL,
  `UserID` bigint(20) DEFAULT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `Email` varchar(225) DEFAULT NULL,
  `AccountNo` varchar(225) DEFAULT NULL,
  `Bankname` varchar(225) DEFAULT NULL,
  `IFSCCode` varchar(225) DEFAULT NULL,
  `Amount` varchar(225) DEFAULT NULL,
  `CreatedBy` varchar(225) DEFAULT NULL,
  `ModifiedBy` varchar(225) DEFAULT NULL,
  `CeatedDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `n_donormoney` */

insert  into `n_donormoney`(`ID`,`UserID`,`Name`,`Email`,`AccountNo`,`Bankname`,`IFSCCode`,`Amount`,`CreatedBy`,`ModifiedBy`,`CeatedDatetime`,`ModifiedDatetime`) values (1,3,'Gargi garain','Gargin@gmail.com','BKID10101','SBI BANK','568569545265645','10000','Gargin@gmail.com','Gargin@gmail.com','2020-07-08 16:49:25','2020-07-08 16:49:25');

/*Table structure for table `n_donorthings` */

DROP TABLE IF EXISTS `n_donorthings`;

CREATE TABLE `n_donorthings` (
  `ID` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Description` varchar(225) NOT NULL,
  `CreatedBy` varchar(225) NOT NULL,
  `ModifiedBy` varchar(225) NOT NULL,
  `CreatedDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `n_donorthings` */

insert  into `n_donorthings`(`ID`,`UserID`,`Name`,`Email`,`Description`,`CreatedBy`,`ModifiedBy`,`CreatedDatetime`,`ModifiedDatetime`) values (1,3,'Gargi garain','Gargin@gmail.com','clothes','Gargin@gmail.com','Gargin@gmail.com','2020-07-09 01:06:58','2020-07-09 01:06:58');

/*Table structure for table `n_fundraiser` */

DROP TABLE IF EXISTS `n_fundraiser`;

CREATE TABLE `n_fundraiser` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(225) NOT NULL,
  `Created_By` varchar(225) DEFAULT NULL,
  `modified_By` varchar(225) DEFAULT NULL,
  `Created_datetime` timestamp NULL DEFAULT NULL,
  `modified_Datetime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `n_fundraiser` */

insert  into `n_fundraiser`(`ID`,`name`,`date`,`description`,`Created_By`,`modified_By`,`Created_datetime`,`modified_Datetime`) values (1,'Raj','2020-09-06','Charity Fundraising Programme','Hari@gmail.com','Hari@gmail.com','2020-09-06 11:28:26','2020-09-06 11:31:43');

/*Table structure for table `n_role` */

DROP TABLE IF EXISTS `n_role`;

CREATE TABLE `n_role` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `createdBy` varchar(225) NOT NULL,
  `modifiedBy` varchar(225) NOT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `n_role` */

insert  into `n_role`(`ID`,`name`,`description`,`createdBy`,`modifiedBy`,`createdDatetime`,`modifiedDatetime`) values (1,'Admin','Administration','root','root','2020-07-07 15:24:14','2020-07-07 15:24:20'),(2,'Volunteer','Volunteering','root','root','2020-07-07 15:25:09','2020-07-07 15:25:12'),(3,'Donor','Donation','root','root','2020-07-07 15:25:14','2020-07-07 15:25:17');

/*Table structure for table `n_user` */

DROP TABLE IF EXISTS `n_user`;

CREATE TABLE `n_user` (
  `ID` bigint(20) NOT NULL,
  `FIRST_NAME` varchar(225) NOT NULL,
  `LAST_NAME` varchar(225) NOT NULL,
  `LOGIN` varchar(225) NOT NULL,
  `PASSWORD` varchar(225) NOT NULL,
  `DOB` date NOT NULL,
  `MOBILE_NO` varchar(225) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  `GENDER` varchar(225) NOT NULL,
  `ID_PROOF` varchar(225) NOT NULL,
  `IMAGE` varchar(225) DEFAULT NULL,
  `CREATED_BY` varchar(225) NOT NULL,
  `MODIFIED_BY` varchar(225) NOT NULL,
  `CREATED_DATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MODIFIED_DATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `n_user` */

insert  into `n_user`(`ID`,`FIRST_NAME`,`LAST_NAME`,`LOGIN`,`PASSWORD`,`DOB`,`MOBILE_NO`,`ROLE_ID`,`GENDER`,`ID_PROOF`,`IMAGE`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (1,'Hari','Om','Hari@gmail.com','Hari@123','2020-07-06','9685698565',1,'Male','56MNYOP90','18444f1a-dummyuserimage-15561967274lp8c.jpg','root','root','2020-07-06 13:17:04','2020-07-06 13:23:40'),(2,'Vanshika','Nath','Vanshika@gmail.com','Van@123','1998-05-14','9685955458',2,'Female','56MNYOP91','images.png','root','root','2020-07-06 13:31:54','2020-07-06 13:31:54'),(3,'Gargi','garain','Gargin@gmail.com','Gargi@123','1983-01-20','8791234567',3,'Female','90MYUN123','donor.jpg','Hari@gmail.com','Hari@gmail.com','2020-07-07 16:17:57','2020-07-07 16:18:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
