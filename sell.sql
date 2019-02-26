/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 8.0.11 : Database - sell
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sell` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sell`;

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `detail_id` varchar(32) NOT NULL,
  `order_id` varchar(32) NOT NULL,
  `product_id` varchar(32) NOT NULL,
  `product_name` varchar(64) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_icon` varchar(512) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`detail_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_detail` */

insert  into `order_detail`(`detail_id`,`order_id`,`product_id`,`product_name`,`product_price`,`product_quantity`,`product_icon`,`create_time`,`update_time`) values 
('1234567810','111111','1213','皮蛋粥',1.20,2,'http://xxx.jsp','2018-06-18 22:04:44','2018-06-18 22:04:44'),
('123456789','111111','1213','皮蛋粥',2.20,3,'http://xxx.jsp','2018-06-18 22:02:56','2018-06-18 22:03:42'),
('1529379967291318766','1529379967088465265','123458','芒果冰',20.00,1,'http://xxxx.jpg','2018-06-19 11:46:07','2018-06-19 11:46:07'),
('1529381278250545662','1529381250068178928','123458','芒果冰',20.00,1,'http://xxxx.jpg','2018-06-19 12:11:47','2018-06-19 12:11:47'),
('1529381941984736660','1529381941693324750','123458','芒果冰',20.00,1,'http://xxxx.jpg','2018-06-19 12:19:02','2018-06-19 12:19:02'),
('1529382110257822307','1529382110129530241','123458','芒果冰',20.00,1,'http://xxxx.jpg','2018-06-19 12:27:16','2018-06-19 12:27:16'),
('1529382194858500389','1529382194696270065','123458','芒果冰',20.00,1,'http://xxxx.jpg','2018-06-19 12:23:14','2018-06-19 12:23:14'),
('1529382253814585849','1529382253642685143','123458','芒果冰',20.00,1,'http://xxxx.jpg','2018-06-19 12:24:13','2018-06-19 12:24:13'),
('1529383100624530469','1529383100529350678','123458','芒果冰',20.00,1,'http://xxxx.jpg','2018-06-19 12:38:20','2018-06-19 12:38:20'),
('1529383100658234588','1529383100529350678','123457','皮皮虾',3.20,2,'http//:xxxx.jpg','2018-06-19 12:38:20','2018-06-19 12:38:20'),
('1529384526421221139','1529384526291123781','123458','芒果冰',20.00,1,'http://xxxx.jpg','2018-06-19 13:02:06','2018-06-19 13:02:06'),
('1529384526453441534','1529384526291123781','123457','皮皮虾',3.20,2,'http//:xxxx.jpg','2018-06-19 13:02:06','2018-06-19 13:02:06'),
('1529402967560473623','1529402966734408260','123457','皮皮虾',3.20,2,'http//:xxxx.jpg','2018-06-19 18:09:28','2018-06-19 18:09:28'),
('1529402969006608610','1529402969006256443','123457','皮皮虾',3.20,2,'http//:xxxx.jpg','2018-06-19 18:09:29','2018-06-19 18:09:29'),
('1529403053330425419','1529403053328153596','123457','皮皮虾',3.20,2,'http//:xxxx.jpg','2018-06-19 18:10:53','2018-06-19 18:10:53'),
('1529403053589548370','1529403053589742665','123457','皮皮虾',3.20,2,'http//:xxxx.jpg','2018-06-19 18:10:53','2018-06-19 18:10:53'),
('1529574576425834005','1529574576394157651','123456','皮蛋粥',0.01,1,'https://i8.meishichina.com/attachment/recipe/201109/201109021421276.jpg@!p800','2018-06-21 17:49:36','2018-06-21 17:49:36'),
('1529574578036937426','1529574578036707117','123456','皮蛋粥',0.01,1,'https://i8.meishichina.com/attachment/recipe/201109/201109021421276.jpg@!p800','2018-06-21 17:49:38','2018-06-21 17:49:38'),
('1529574618043566071','1529574618041271117','123456','皮蛋粥',0.01,1,'https://i8.meishichina.com/attachment/recipe/201109/201109021421276.jpg@!p800','2018-06-21 17:50:18','2018-06-21 17:50:18'),
('1529574618258893869','1529574618257524136','123456','皮蛋粥',0.01,1,'https://i8.meishichina.com/attachment/recipe/201109/201109021421276.jpg@!p800','2018-06-21 17:50:18','2018-06-21 17:50:18');

/*Table structure for table `order_master` */

DROP TABLE IF EXISTS `order_master`;

CREATE TABLE `order_master` (
  `order_id` varchar(32) NOT NULL,
  `buyer_name` varchar(32) NOT NULL,
  `buyer_phone` varchar(32) NOT NULL,
  `buyer_address` varchar(128) NOT NULL,
  `buyer_openid` varchar(64) NOT NULL,
  `order_amount` decimal(8,2) NOT NULL,
  `order_status` tinyint(3) NOT NULL DEFAULT '0',
  `pay_status` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `idx_buyer_openid` (`buyer_openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_master` */

insert  into `order_master`(`order_id`,`buyer_name`,`buyer_phone`,`buyer_address`,`buyer_openid`,`order_amount`,`order_status`,`pay_status`,`create_time`,`update_time`) values 
('123456','师兄','12345678912','河南省巩义市','21333',2.30,0,0,'2018-06-18 21:36:10','2018-06-18 21:36:10'),
('123457','师兄','12345678912','河南省巩义市','21333',2.50,0,0,'2018-06-18 21:39:13','2018-06-18 21:39:13'),
('1529381941693324750','廖师兄','123456789012','河南省巩义','110110',20.00,2,0,'2018-06-19 12:19:02','2018-06-22 15:35:08'),
('1529382110129530241','廖师兄','123456789012','河南省巩义','110110',20.00,2,0,'2018-06-19 12:27:16','2018-06-22 15:35:13'),
('1529382194696270065','廖师兄','123456789012','河南省巩义','110110',20.00,0,0,'2018-06-19 12:23:14','2018-06-19 12:23:14'),
('1529382253642685143','廖师兄','123456789012','河南省巩义','110110',20.00,2,0,'2018-06-19 12:24:13','2018-06-22 15:35:20'),
('1529383100529350678','廖师兄','123456789012','河南省巩义','110110',26.40,2,1,'2018-06-19 12:38:20','2018-06-22 16:12:56'),
('1529384526291123781','廖师兄','123456789012','河南省巩义','110110',26.40,0,0,'2018-06-19 13:02:06','2018-06-19 13:02:06'),
('1529402016221222431','张三','12345678910','慕课网总部','ew3euwhd7shw9ssdj',0.00,0,0,'2018-06-19 17:53:37','2018-06-19 17:53:37'),
('1529402063812758009','张三','12345678910','慕课网总部','110110',0.00,0,0,'2018-06-19 17:54:23','2018-06-19 17:54:23'),
('1529402159710559831','张三','12345678910','慕课网总部','jgjhkjoiuoijklj97u9',0.00,0,0,'2018-06-19 17:55:59','2018-06-19 17:55:59'),
('1529402515321977706','张三','12345678910','慕课网总部','jgjhkjoiuoijklj97u9',0.00,0,0,'2018-06-19 18:01:56','2018-06-19 18:01:56'),
('1529402966734408260','张三','12345678910','慕课网总部','jgjhkjoiuoijklj97u9',6.40,1,0,'2018-06-19 18:09:28','2018-06-22 16:26:31'),
('1529402969006256443','张三','12345678910','慕课网总部','jgjhkjoiuoijklj97u9',6.40,2,0,'2018-06-19 18:09:29','2018-06-22 15:30:53'),
('1529403053328153596','张三','12345678910','慕课网总部','jgjhkjoiuoijklj97u9',6.40,1,0,'2018-06-19 18:10:53','2018-06-22 16:28:06'),
('1529403053589742665','张三','12345678910','慕课网总部','jgjhkjoiuoijklj97u9',0.01,0,0,'2018-06-19 18:10:53','2018-06-20 22:36:34'),
('1529574576394157651','jkk','666','666','oqu9o1JamZ0XF315XJXUxezi29WE',0.01,0,0,'2018-06-21 17:49:37','2018-06-21 17:49:37'),
('1529574578036707117','jkk','666','666','oqu9o1JamZ0XF315XJXUxezi29WE',0.01,0,0,'2018-06-21 17:49:38','2018-06-21 17:49:38'),
('1529574602814997348','hj','dd','ddd','oqu9o1JamZ0XF315XJXUxezi29WE',0.00,0,0,'2018-06-21 17:50:02','2018-06-21 17:50:02'),
('1529574618041271117','nnn','jjk','nnn','oqu9o1JamZ0XF315XJXUxezi29WE',0.01,2,0,'2018-06-21 17:50:18','2018-06-22 16:15:33'),
('1529574618257524136','nnn','jjk','nnn','oqu9o1JamZ0XF315XJXUxezi29WE',0.01,0,0,'2018-06-21 17:50:18','2018-06-21 17:50:18');

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) NOT NULL,
  `category_type` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `uqe_category_type` (`category_type`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `product_category` */

insert  into `product_category`(`category_id`,`category_name`,`category_type`,`create_time`,`update_time`) values 
(1,'热销榜',2,'2018-06-17 20:05:38','2018-06-18 17:05:02'),
(3,'女生最爱',3,'2018-06-17 22:58:40','2018-06-18 17:09:08'),
(7,'男生专享',10,'2018-06-18 00:15:12','2018-06-18 00:15:12'),
(14,'大家最爱',20,'2018-06-23 15:10:20','2018-06-23 15:10:20'),
(15,'师兄最爱',100,'2018-06-23 15:10:57','2018-06-23 15:10:57'),
(16,'测试专用',11,'2018-06-23 16:15:50','2018-06-23 16:15:50'),
(18,'测试专用',12,'2018-06-23 16:29:18','2018-06-23 16:29:18');

/*Table structure for table `product_info` */

DROP TABLE IF EXISTS `product_info`;

CREATE TABLE `product_info` (
  `product_id` varchar(32) NOT NULL,
  `product_name` varchar(64) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_description` varchar(64) DEFAULT NULL,
  `product_icon` varchar(512) DEFAULT NULL,
  `category_type` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_status` tinyint(3) DEFAULT '0' COMMENT '商品状态0正常 1下架',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

/*Data for the table `product_info` */

insert  into `product_info`(`product_id`,`product_name`,`product_price`,`product_stock`,`product_description`,`product_icon`,`category_type`,`update_time`,`create_time`,`product_status`) values 
('123456','皮蛋粥',0.01,200,'很好喝的粥','http://pic.qiantucdn.com/58pic/22/92/63/57ebb1ef4a052_1024.jpg!/fw/1024/watermark/url/L2ltYWdlcy93YXRlcm1hcmsveGlhb3R1LnBuZw==/align/center',2,'2018-06-23 00:15:02','2018-06-18 15:21:07',0),
('123457','皮皮虾',3.20,110,'很好吃的虾','http://pic.qiantucdn.com/58pic/22/93/04/57ec0ebdd1256_1024.jpg!/fw/1024/watermark/url/L2ltYWdlcy93YXRlcm1hcmsveGlhb3R1LnBuZw==/align/center',2,'2018-06-22 20:58:25','2018-06-18 16:05:53',0),
('123458','芒果冰',20.00,203,'冰冰的很爽','http://pic.qiantucdn.com/58pic/23/01/71/57f8e0eb4aec4_1024.jpg!/fw/1024/watermark/url/L2ltYWdlcy93YXRlcm1hcmsveGlhb3R1LnBuZw==/align/center/crop/0x1024a0a0',3,'2018-06-22 20:58:30','2018-06-18 17:08:32',0),
('1529732120461953548','鸡翅',5.00,44,'','https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1529732287&di=279eb13e751b1fe8a75cb39637edc73c&src=http://pic.58pic.com/58pic/14/27/23/33m58PICJ8b_1024.jpg',2,'2018-06-23 16:28:35','2018-06-23 13:35:20',0),
('1529742468566955278','测试createtime',0.01,111,'','',2,'2018-06-23 16:27:48','2018-06-23 16:27:48',0);

/*Table structure for table `seller_info` */

DROP TABLE IF EXISTS `seller_info`;

CREATE TABLE `seller_info` (
  `seller_id` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `openid` varchar(64) NOT NULL COMMENT '微信openid',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `seller_info` */

insert  into `seller_info`(`seller_id`,`username`,`password`,`openid`,`create_time`,`update_time`) values 
('1529746956632306262','admin','admin','abc','2018-06-23 17:42:37','2018-06-23 17:42:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
