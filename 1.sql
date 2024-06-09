/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.12 : Database - lpmgym
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lpmgym` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `lpmgym`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `course_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '课程名称',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '封面图',
  `teacher_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '授课教师',
  `course_hour` int(11) DEFAULT NULL COMMENT '课时',
  `course_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '课程详情',
  `course_price` decimal(18,2) DEFAULT NULL COMMENT '课程价格',
  `teacher_id` int(11) DEFAULT NULL COMMENT '教师',
  `start_time` datetime DEFAULT NULL COMMENT '课程开始时间',
  `course_time` int(11) DEFAULT NULL COMMENT '课程时长',
  `max_number` int(11) DEFAULT NULL COMMENT '报名上限',
  `register_number` int(11) DEFAULT NULL COMMENT '已报名人数',
  `address` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '课程地点',
  `material_num` int(11) DEFAULT NULL COMMENT '使用器械数量',
  `material_class` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '使用器械种类',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `course` */

insert  into `course`(`course_id`,`course_name`,`image`,`teacher_name`,`course_hour`,`course_details`,`course_price`,`teacher_id`,`start_time`,`course_time`,`max_number`,`register_number`,`address`,`material_num`,`material_class`) values 
(1,'动感单车','http://localhost:8089/images/b5739cec-b6a0-4f78-b829-2b3440f64241.png','李丽',50,'<p><img src=\"http://localhost:8089/images/9c011f9d-f86c-45a5-9377-49e9dc8ce48b.png\" alt=\"\" data-href=\"\" style=\"\"/></p>',500.00,5,'2023-12-01 11:30:00',2,50,2,'有氧区',NULL,NULL),
(2,'普拉提','http://localhost:8089/images/06fa037f-febe-4871-a6fb-19540de6cf5f.jpg','张明',60,'<p>非常精彩的技术讲解，演示，实际操练11;</p><p><img src=\"http://localhost:8089/images/e2cab6c1-b6d8-4368-8bd5-52bafa69b384.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>',1000.00,4,'2023-12-02 11:30:00',1,50,4,'操课教室',NULL,NULL),
(3,'搏击操','http://localhost:8089/images/2f7be30e-f071-4ffd-bc12-0d3f29d956f7.jpg','李丽',99,'<p><img src=\"http://localhost:8089/images/f62b0eb2-cb2e-4c17-b094-ff00b67af453.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p><p>非常好！</p>',99.00,5,'2023-12-03 11:30:00',2,40,6,'操课教室',NULL,NULL),
(4,'瑜伽','http://localhost:8089/images/42a9120c-bba6-459f-b551-5adc54a953c9.jpg','张明',60,'<p>实际操练，非常好!</p><p style=\"text-align: center;\"><img src=\"http://localhost:8089/images/a50ffd0a-0d1c-42c3-bf8b-9e8872fa062d.webp\" alt=\"\" data-href=\"\" style=\"\"></p>',666.00,4,'2023-12-04 11:30:00',2,30,4,'操课教室',NULL,NULL),
(5,'舞蹈','http://localhost:8089/images/120aa2ab-ad41-4528-9f4b-91bc15ea1eb9.jpg','李四',100,'<p>测试</p>',200.00,2,'2023-12-05 11:30:00',1,1,1,'操课教室',NULL,NULL),
(6,'尊巴','http://localhost:8089/images/fc50a041-2fe1-43fc-b437-c8f077cacb1d.jpg','张明',20,'<p>测试1</p>',200.00,4,'2023-12-06 11:30:00',2,50,9,'操课教室',NULL,NULL),
(8,'增肌','http://localhost:8089/images/2d6e1d2d-1393-4c20-a730-aabf045f37d0.jpg','李丽',44,'<p>111</p><p><img src=\"http://localhost:8089/images/7cf6c471-23e0-4aa8-9cdc-8e3230690479.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>',444.00,5,'2023-12-07 11:30:00',2,40,5,'力量区',10,NULL),
(9,'体能训练','http://localhost:8089/images/6e29327d-824e-4627-87eb-cf96b4b32dc3.jpg','李丽',66,'<p>6666</p><p><img src=\"http://localhost:8089/images/95bdad4a-2aca-4134-a262-0390fb5f7b26.png\" alt=\"\" data-href=\"\" style=\"\"/></p>',666.00,5,'2023-12-08 11:30:00',1,2,1,'操课教室',15,NULL),
(11,'康复训练','http://localhost:8089/images/a514e18b-cb37-4d76-98d9-755eeba7a4d5.jpg','张明',30,'<p>好好好</p>',400.00,4,'2023-12-05 23:00:00',2,30,0,'操课教室',8,NULL);

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '名称',
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `store` int(11) DEFAULT NULL COMMENT '库存',
  `image` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图片',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '描述',
  `unit` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '单位',
  `specs` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '规格',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `goods` */

insert  into `goods`(`goods_id`,`name`,`price`,`store`,`image`,`details`,`unit`,`specs`) values 
(1,'冰红茶',6.00,100,'http://localhost:8089/images/6f889207-6017-4bc3-8a2c-81a95e203c08.jpg','<p>呵呵</p><p><img src=\"http://localhost:8089/images/777054cb-62a3-4bed-84d5-6211d905ece6.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>','瓶','500ml/瓶'),
(2,'测试666',1166.00,1166,'http://localhost:8089/images/014293e5-da41-417e-877c-1c21af364300.jpg','<p>412434</p><p><img src=\"http://localhost:8089/images/3818e664-9ccb-46b0-b09a-63dc0c25659c.webp\" alt=\"\" data-href=\"\" style=\"\"/></p>','1166','1166'),
(8,'22',22.00,2,'http://localhost:8089/images/27662d82-9647-4753-a929-4434e6dd0fcd.jpg','<p>44444</p>','22','22'),
(9,'33',33.00,33,'http://localhost:8089/images/27cd0d92-efaa-4919-a0cc-9a8544418d91.jpg','<p>33333</p>','33','33'),
(10,'666',666.00,66,'http://localhost:8089/images/503ffb54-b262-4940-8b07-90aa8263837c.jpg','<p>66</p><p><img src=\"http://localhost:8089/images/9c799828-0976-4761-9fab-50e8f2c4dcc5.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>','66','66');

/*Table structure for table `goods_order` */

DROP TABLE IF EXISTS `goods_order`;

CREATE TABLE `goods_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '名称',
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `image` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图片',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '描述',
  `unit` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '单位',
  `specs` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '规格',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `total_price` decimal(18,2) DEFAULT NULL COMMENT '总价',
  `control_user` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '下单时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `goods_order` */

insert  into `goods_order`(`order_id`,`goods_id`,`name`,`price`,`image`,`details`,`unit`,`specs`,`num`,`total_price`,`control_user`,`create_time`) values 
(8,1,'冰红茶',6.00,'http://localhost:8089/images/6f889207-6017-4bc3-8a2c-81a95e203c08.jpg','<p>呵呵</p><p><img src=\"http://localhost:8089/images/777054cb-62a3-4bed-84d5-6211d905ece6.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>','瓶','500ml/瓶',2,12.00,'admin','2022-07-05 18:27:23'),
(9,2,'测试666',1166.00,'http://localhost:8089/images/014293e5-da41-417e-877c-1c21af364300.jpg','<p>412434</p><p><img src=\"http://localhost:8089/images/3818e664-9ccb-46b0-b09a-63dc0c25659c.webp\" alt=\"\" data-href=\"\" style=\"\"/></p>','1166','1166',2,2332.00,'admin','2022-07-06 18:27:23'),
(10,8,'22',22.00,'http://localhost:8089/images/27662d82-9647-4753-a929-4434e6dd0fcd.jpg','<p>44444</p>','22','22',1,22.00,'admin','2022-07-06 18:27:35'),
(11,9,'33',33.00,'http://localhost:8089/images/27cd0d92-efaa-4919-a0cc-9a8544418d91.jpg','<p>33333</p>','33','33',1,33.00,'admin','2022-07-06 18:27:35'),
(12,1,'冰红茶',6.00,'http://localhost:8089/images/6f889207-6017-4bc3-8a2c-81a95e203c08.jpg','<p>呵呵</p><p><img src=\"http://localhost:8089/images/777054cb-62a3-4bed-84d5-6211d905ece6.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>','瓶','500ml/瓶',2,12.00,'admin','2022-07-06 18:27:52'),
(13,2,'测试666',1166.00,'http://localhost:8089/images/014293e5-da41-417e-877c-1c21af364300.jpg','<p>412434</p><p><img src=\"http://localhost:8089/images/3818e664-9ccb-46b0-b09a-63dc0c25659c.webp\" alt=\"\" data-href=\"\" style=\"\"/></p>','1166','1166',2,2332.00,'admin','2022-07-06 18:27:52'),
(14,8,'22',22.00,'http://localhost:8089/images/27662d82-9647-4753-a929-4434e6dd0fcd.jpg','<p>44444</p>','22','22',2,44.00,'admin','2022-07-06 18:27:52'),
(15,9,'33',33.00,'http://localhost:8089/images/27cd0d92-efaa-4919-a0cc-9a8544418d91.jpg','<p>33333</p>','33','33',2,66.00,'admin','2022-07-06 18:27:52'),
(16,1,'冰红茶',6.00,'http://localhost:8089/images/6f889207-6017-4bc3-8a2c-81a95e203c08.jpg','<p>呵呵</p><p><img src=\"http://localhost:8089/images/777054cb-62a3-4bed-84d5-6211d905ece6.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>','瓶','500ml/瓶',1,6.00,'张三','2022-07-07 21:38:05'),
(17,1,'冰红茶',6.00,'http://localhost:8089/images/6f889207-6017-4bc3-8a2c-81a95e203c08.jpg','<p>呵呵</p><p><img src=\"http://localhost:8089/images/777054cb-62a3-4bed-84d5-6211d905ece6.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>','瓶','500ml/瓶',4,24.00,'admin','2022-07-11 10:14:38'),
(18,2,'测试666',1166.00,'http://localhost:8089/images/014293e5-da41-417e-877c-1c21af364300.jpg','<p>412434</p><p><img src=\"http://localhost:8089/images/3818e664-9ccb-46b0-b09a-63dc0c25659c.webp\" alt=\"\" data-href=\"\" style=\"\"/></p>','1166','1166',3,3498.00,'admin','2022-07-11 10:14:38');

/*Table structure for table `lost` */

DROP TABLE IF EXISTS `lost`;

CREATE TABLE `lost` (
  `lost_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lost_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '名称',
  `found_time` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '捡到时间',
  `found_addres` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '捡到地址',
  `found_person` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '捡到人',
  `found_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '捡到人电话',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT ' 认领状态 0：未认领 1：已认领',
  `lost_person` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '认领人',
  PRIMARY KEY (`lost_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `lost` */

insert  into `lost`(`lost_id`,`lost_name`,`found_time`,`found_addres`,`found_person`,`found_phone`,`status`,`lost_person`) values 
(1,'钱包','2023-11-28','大厅','李四','18787171907','1','张明'),
(2,'手机','2023-11-22','厕所','张三','18787171906','1','赵柳'),
(3,'钥匙','2023-11-2','器械馆','王五','18787152330','1','李记'),
(4,'身份证','2023-12-8','大厅','张三','18787171906','0','');

/*Table structure for table `material` */

DROP TABLE IF EXISTS `material`;

CREATE TABLE `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '器材id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '器材名称',
  `num_total` int(11) DEFAULT NULL COMMENT '数量',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '简介',
  `available_num` int(11) DEFAULT NULL COMMENT '可用数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `material` */

insert  into `material`(`id`,`name`,`num_total`,`details`,`available_num`) values 
(1,'跑步机',10,'跑步机',9),
(2,'动感单车',20,'骑车',20),
(3,'椭圆机',12,'椭圆机',10),
(4,'史密斯深蹲',6,'深蹲',6),
(5,'龙门架',3,'综合训练',3),
(6,'牧师椅',6,'二头弯举',6),
(7,'哑铃',20,NULL,19),
(8,'杠铃',15,NULL,15);

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '性别',
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '电话',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '生日',
  `height` int(11) DEFAULT NULL COMMENT '身高',
  `weight` int(11) DEFAULT NULL COMMENT '体重',
  `waist` int(11) DEFAULT NULL COMMENT '腰围',
  `join_time` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '加入时间',
  `end_time` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '到期时间',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '会员卡号',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '状态 1：启用  0：停用',
  `money` decimal(18,2) DEFAULT '0.00' COMMENT '充值金额',
  `card_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '会员类型',
  `card_day` int(11) DEFAULT NULL COMMENT '天数',
  `price` decimal(18,2) DEFAULT '0.00' COMMENT '会员价格',
  `is_account_non_expired` tinyint(4) DEFAULT NULL COMMENT '帐户是否过期(1 未过期，0已过期)',
  `is_account_non_locked` tinyint(4) DEFAULT NULL COMMENT '帐户是否被锁定(1 未锁定，0已锁定)',
  `is_credentials_non_expired` tinyint(4) DEFAULT NULL COMMENT '密码是否过期(1 未过期，0已过期)',
  `is_enabled` tinyint(4) DEFAULT NULL COMMENT '帐户是否可用(1 可用，0 删除用户)',
  PRIMARY KEY (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `member` */

insert  into `member`(`member_id`,`name`,`sex`,`phone`,`age`,`birthday`,`height`,`weight`,`waist`,`join_time`,`end_time`,`username`,`password`,`status`,`money`,`card_type`,`card_day`,`price`,`is_account_non_expired`,`is_account_non_locked`,`is_credentials_non_expired`,`is_enabled`) values 
(1,'张三','0','18787171906',30,'2023-06-15',180,200,90,'2023-12-11','2024-03-17','2023001','$2a$10$Xo2B60j/Zx8zXwsdIIX7ae8pWWrovtJgQATdkqqw3x7axJR4fLvVC','1',3756.00,'1月卡',30,999.00,1,1,1,1),
(2,'李四','1','18787171907',43,'',176,150,NULL,'2023-12-12','2023-12-19','2023002','$2a$10$0HVjw0UCs.eFOEti4TP4JurkdjO6pGaY65XNLDojEYX7DV/zQSVC.','1',1300.00,'7天卡',7,500.00,1,1,1,1),
(3,'王五','0','18787152330',19,'',NULL,NULL,NULL,'2023-12-13','2024-1-14','2023003','$2a$10$h84zWzUeB9xFtUjA7Wn7T.RoIUzivRfdSHrIFtHk0cI1nL9JsP11O','1',1300.00,'1月卡',30,999.00,1,1,1,1),
(4,'佳慧','1','18787171908',29,'',175,60,50,'2023-12-14','2024-04-13','2023004','$2a$10$CdR3KmNjWK/7UymVp088x.gHblRbIzZnuHT8uC/KTadw.XI1READy','1',200.00,'1月卡',30,999.00,1,1,1,1),
(6,'9999','0','9999',NULL,'',NULL,NULL,NULL,'2023-12-15','2024-02-14','999999','$2a$10$l/20uClzP/.tQfT/j0G39uD9pihFLwVK5f5vBDnEDgWsQyLsB63Hq','1',400.00,'1天体验卡',1,1.00,1,1,1,1);

/*Table structure for table `member_apply` */

DROP TABLE IF EXISTS `member_apply`;

CREATE TABLE `member_apply` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) DEFAULT NULL COMMENT '会员id',
  `card_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '会员类型',
  `card_day` int(11) DEFAULT NULL COMMENT '天数',
  `price` decimal(18,2) DEFAULT '0.00' COMMENT '价格',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`apply_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `member_apply` */

insert  into `member_apply`(`apply_id`,`member_id`,`card_type`,`card_day`,`price`,`create_time`,`create_user`) values 
(1,1,'7天卡',7,500.00,'2023-06-01 16:11:49',NULL),
(2,2,'1天体验卡',1,1.00,'2023-06-01 16:12:13',NULL),
(3,2,'7天卡',7,500.00,'2023-05-13 16:12:28',NULL),
(4,1,'7天卡',7,500.00,'2023-04-13 18:04:57',NULL),
(5,1,'7天卡',7,500.00,'2023-07-03 18:05:08',NULL),
(6,1,'1月卡',30,999.00,'2023-07-03 18:05:24',NULL),
(7,3,'1月卡',30,999.00,'2023-07-07 16:46:29',NULL),
(8,4,'1月卡',30,999.00,'2023-07-08 11:04:29',NULL),
(9,5,'1天体验卡',1,1.00,'2023-07-10 22:03:27',NULL),
(10,3,'1月卡',30,999.00,'2023-12-23 09:56:29',NULL),
(11,6,'1月卡',30,999.00,'2023-12-24 10:08:17',NULL),
(12,4,'1月卡',30,999.00,'2023-12-26 11:57:59',NULL),
(13,6,'1月卡',30,999.00,'2023-12-27 12:03:38',NULL),
(14,4,'1月卡',30,999.00,'2024-03-16 23:20:16',NULL),
(15,4,'1月卡',30,999.00,'2024-03-16 23:20:53',NULL),
(16,6,'1天体验卡',1,1.00,'2024-03-17 00:00:31',NULL),
(17,1,'7天卡',7,500.00,'2024-05-19 15:47:45',NULL),
(18,1,'1月卡',30,999.00,'2024-05-19 15:48:54',NULL),
(19,1,'1月卡',30,999.00,'2024-05-19 15:49:11',NULL);

/*Table structure for table `member_card` */

DROP TABLE IF EXISTS `member_card`;

CREATE TABLE `member_card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '标题',
  `card_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '卡类型  1:天卡  2：周卡 3：月卡 4：年卡',
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `card_day` int(11) DEFAULT NULL COMMENT '天数',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '状态 1：启用 0：停用',
  PRIMARY KEY (`card_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `member_card` */

insert  into `member_card`(`card_id`,`title`,`card_type`,`price`,`card_day`,`status`) values 
(1,'1天体验卡','1',1.00,1,'1'),
(2,'7天卡','2',500.00,7,'1'),
(3,'1月卡','3',999.00,30,'1');

/*Table structure for table `member_course` */

DROP TABLE IF EXISTS `member_course`;

CREATE TABLE `member_course` (
  `member_course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `course_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '课程名称',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '封面图',
  `teacher_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '授课教师',
  `course_hour` int(11) DEFAULT NULL COMMENT '课时',
  `course_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '课程详情',
  `course_price` decimal(18,2) DEFAULT NULL COMMENT '课程价格',
  `teacher_id` int(11) DEFAULT NULL COMMENT '教师id',
  `member_id` int(11) DEFAULT NULL COMMENT '会员id',
  `start_time` datetime DEFAULT NULL COMMENT '课程开始时间',
  `course_time` int(11) DEFAULT NULL COMMENT '课程时长',
  PRIMARY KEY (`member_course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `member_course` */

insert  into `member_course`(`member_course_id`,`course_id`,`course_name`,`image`,`teacher_name`,`course_hour`,`course_details`,`course_price`,`teacher_id`,`member_id`,`start_time`,`course_time`) values 
(6,1,'动感单车','http://localhost:8089/images/cdb847d1-0503-4b24-b99d-9f37ae65a4e5.jpg','李丽',50,'<p><img src=\"http://localhost:8089/images/9c011f9d-f86c-45a5-9377-49e9dc8ce48b.png\" alt=\"\" data-href=\"\" style=\"\"/></p>',500.00,5,3,'2023-12-01 11:30:00',2),
(7,1,'动感单车','http://localhost:8089/images/cdb847d1-0503-4b24-b99d-9f37ae65a4e5.jpg','李丽',50,'<p><img src=\"http://localhost:8089/images/9c011f9d-f86c-45a5-9377-49e9dc8ce48b.png\" alt=\"\" data-href=\"\" style=\"\"/></p>',500.00,5,4,'2023-12-01 11:30:00',2),
(8,3,'搏击操','http://localhost:8089/images/0890a18a-e906-49f2-b1f5-2a59d0bfd635.jpg','李丽',99,'<p><img src=\"http://localhost:8089/images/f62b0eb2-cb2e-4c17-b094-ff00b67af453.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p><p>非常好！</p>',99.00,5,4,'2023-12-03 11:30:00',2),
(9,6,'尊巴','http://localhost:8089/images/faa1e2b9-1741-4910-b2cc-00c0f1c9aa0c.jpg','张明',20,'<p>测试1</p>',200.00,4,3,'2023-12-06 11:30:00',2),
(10,1,'动感单车','http://localhost:8089/images/cdb847d1-0503-4b24-b99d-9f37ae65a4e5.jpg','李丽',50,'<p><img src=\"http://localhost:8089/images/9c011f9d-f86c-45a5-9377-49e9dc8ce48b.png\" alt=\"\" data-href=\"\" style=\"\"/></p>',500.00,5,6,'2023-12-01 11:30:00',2),
(11,6,'尊巴','http://localhost:8089/images/faa1e2b9-1741-4910-b2cc-00c0f1c9aa0c.jpg','张明',20,'<p>测试1</p>',200.00,4,6,'2023-12-06 11:30:00',2),
(18,1,'动感单车','http://localhost:8089/images/b5739cec-b6a0-4f78-b829-2b3440f64241.png','李丽',50,'<p><img src=\"http://localhost:8089/images/9c011f9d-f86c-45a5-9377-49e9dc8ce48b.png\" alt=\"\" data-href=\"\" style=\"\"/></p>',500.00,5,1,'2023-12-01 11:30:00',2),
(19,2,'普拉提','http://localhost:8089/images/06fa037f-febe-4871-a6fb-19540de6cf5f.jpg','张明',60,'<p>非常精彩的技术讲解，演示，实际操练11;</p><p><img src=\"http://localhost:8089/images/e2cab6c1-b6d8-4368-8bd5-52bafa69b384.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>',1000.00,4,1,'2023-12-02 11:30:00',1),
(20,5,'舞蹈','http://localhost:8089/images/120aa2ab-ad41-4528-9f4b-91bc15ea1eb9.jpg','李四',100,'<p>测试</p>',200.00,2,1,'2023-12-05 11:30:00',1);

/*Table structure for table `member_recharge` */

DROP TABLE IF EXISTS `member_recharge`;

CREATE TABLE `member_recharge` (
  `recharge_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '充值id',
  `member_id` int(11) DEFAULT NULL COMMENT '会员id',
  `money` decimal(18,2) DEFAULT '0.00' COMMENT '充值金额',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`recharge_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `member_recharge` */

insert  into `member_recharge`(`recharge_id`,`member_id`,`money`,`create_time`,`create_user`) values 
(8,1,500.00,'2023-12-02 15:07:04','admin'),
(9,2,1000.00,'2023-12-02 15:07:04','admin'),
(10,3,2000.00,'2023-12-02 15:07:04','admin'),
(11,1,4000.00,'2023-12-02 15:07:04','admin'),
(12,3,1000.00,'2023-12-02 15:07:04','admin'),
(13,4,600.00,'2023-12-23 15:07:04','admin'),
(15,6,1000.00,'2023-12-24 15:07:04','admin'),
(16,4,100.00,'2024-03-16 23:20:40','admin1'),
(17,6,100.00,'2024-03-17 00:00:52','admin1'),
(18,1,200.00,'2024-05-13 00:27:38','张三'),
(19,1,1000.00,'2024-06-09 21:49:28','张三');

/*Table structure for table `member_role` */

DROP TABLE IF EXISTS `member_role`;

CREATE TABLE `member_role` (
  `member_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员角色id',
  `member_id` int(11) DEFAULT NULL COMMENT '会员id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`member_role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `member_role` */

insert  into `member_role`(`member_role_id`,`member_id`,`role_id`) values 
(12,2,5),
(14,3,5),
(19,6,5),
(20,1,5),
(21,4,5);

/*Table structure for table `suggest` */

DROP TABLE IF EXISTS `suggest`;

CREATE TABLE `suggest` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '反馈内容',
  `date_time` datetime DEFAULT NULL COMMENT '反馈时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `suggest` */

insert  into `suggest`(`id`,`title`,`content`,`date_time`) values 
(1,'器材太少，训练排队时间长','希望增加器材','2023-11-08 19:07:32'),
(2,'教练迟到','教练来的太晚，迟到了','2023-09-22 19:51:14'),
(3,'地上有水','地上有水','2023-12-01 19:53:04');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `parent_id` int(11) NOT NULL COMMENT '父级id',
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '菜单名称',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '权限字段',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '路由名称',
  `path` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '路由path',
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '组件路径',
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '类型(0 目录 1菜单，2按钮)',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标',
  `parent_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '上级菜单名称',
  `order_num` int(11) DEFAULT NULL COMMENT '序号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`parent_id`,`title`,`code`,`name`,`path`,`url`,`type`,`icon`,`parent_name`,`order_num`,`create_time`,`update_time`) values 
(1,0,'系统管理','sys:manage','system','/system','','0','Setting','顶级菜单',1,'2023-12-02 11:20:17',NULL),
(2,1,'员工管理','sys:user','userList','/userList','/system/user/UserList','1','UserFilled','系统管理',2,'2023-12-02 11:20:17','2023-12-02 11:22:17'),
(3,1,'角色管理','sys:role','roleList','/roleList','/system/role/RoleList','1','Wallet','系统管理',3,'2023-12-02 11:20:17',NULL),
(4,0,'会员管理','sys:memberRoot','memberRoot','/memberRoot','','0','Setting','顶级菜单',2,'2023-12-02 11:20:17',NULL),
(5,4,'会员卡类型','sys:cardType','cardType','/cardType','/member/type/CardType','1','UserFilled','会员管理',4,'2023-12-02 11:20:17',NULL),
(6,4,'会员管理','sys:memberList','memberList','/memberList','/member/list/MemberList','1','Wallet','会员管理',5,'2023-12-02 11:20:17','2023-12-02 11:22:17'),
(7,4,'我的充值','sys:myFee','myFee','/myFee','/member/fee/MyFee','1','Menu','会员管理',6,'2023-12-02 11:20:17','2023-12-02 11:22:17'),
(8,2,'新增','sys:user:add','','','','2','','员工管理',1,'2023-12-02 11:20:17',NULL),
(9,2,'编辑','sys:user:edit','','','','2','','员工管理',2,'2023-12-02 11:20:17',NULL),
(10,2,'删除','sys:user:delete','','','','2','','员工管理',3,'2023-12-02 11:20:17','2023-12-02 11:22:17'),
(11,3,'新增','sys:role:add','','','','2','','角色管理',1,'2023-12-02 11:20:17',NULL),
(12,3,'编辑','sys:role:edit','','','','2','','角色管理',2,'2023-12-02 11:20:17',NULL),
(13,3,'删除','sys:role:delete','','','','2','','角色管理',3,'2023-12-02 11:20:17',NULL),
(14,5,'新增','sys:memberRoot:add','','','','2','','会员卡类型',1,'2023-12-02 11:20:17',NULL),
(15,5,'编辑','sys:memberRoot:edit','','','','2','','会员卡类型',2,'2023-12-02 11:20:17',NULL),
(16,5,'删除','sys:memberRoot:delete','','','','2','','会员卡类型',3,'2023-12-02 11:20:17',NULL),
(17,1,'菜单管理','sys:menu','menuList','/menuList','/system/menu/MenuList','1','Menu','系统管理',7,'2023-12-02 11:20:17',NULL),
(18,17,'新增','sys:menu:add','','','','2','','菜单管理',8,'2023-12-02 11:20:17',NULL),
(19,17,'编辑','sys:menu:edit','','','','2','','菜单管理',9,'2023-12-02 11:20:17',NULL),
(20,17,'删除','sys:menu:delete','','','','2','','菜单管理',11,'2023-12-02 11:20:17',NULL),
(21,6,'新增','sys:memberList:add','','','','2','','会员管理',12,'2023-12-02 11:20:17',NULL),
(22,6,'编辑','sys:memberList:edit','','','','2','','会员管理',13,'2023-12-02 11:20:17',NULL),
(23,6,'删除','sys:memberList:delete','','','','2','','会员管理',14,'2023-12-02 11:20:17',NULL),
(24,6,'充值','sys:memberList:rechart','','','','2','','会员管理',15,'2023-12-02 11:20:17',NULL),
(25,6,'办卡','sys:memberList:setCard','','','','2','','会员管理',16,'2023-12-02 11:20:17',NULL),
(26,0,'课程管理','sys:courseRoot','courseRoot','/courseRoot','','0','ScaleToOriginal','顶级菜单',18,'2023-12-02 11:20:17',NULL),
(27,26,'课程列表','sys:courseList','courseList','/courseList','/course/CourseList','1','UserFilled','课程管理',19,'2023-12-02 11:20:17',NULL),
(28,27,'新增','sys:courseList:add','','','','2','','课程列表',20,'2023-12-02 11:20:17',NULL),
(29,27,'编辑','sys:courseList:edit','','','','2','','课程列表',21,'2023-12-02 11:20:17',NULL),
(30,27,'删除','sys:courseList:delete','','','','2','','课程列表',22,'2023-12-02 11:20:17',NULL),
(31,26,'我的课程','sys:mycourse','mycourse','/mycourse','/mycourse/mycourse','1','Wallet','课程管理',23,'2023-12-02 11:20:17',NULL),
(32,0,'器材管理','sys:materialList','materialList','/materialList','/material/MaterialList','1','UserFilled','顶级菜单',24,'2023-12-02 11:20:17',NULL),
(33,32,'新增','sys:materialList:add','','','','2','','器材管理',25,'2023-12-02 11:20:17',NULL),
(34,32,'编辑','sys:materialList:edit','','','','2','','器材管理',26,'2023-12-02 11:20:17',NULL),
(35,32,'删除','sys:materialList:delete','','','','2','','器材管理',27,'2023-12-02 11:20:17',NULL),
(36,0,'商品管理','sys:goodsRoot','goodsRoot','/goodsRoot','','0','Document','顶级菜单',30,'2023-12-02 11:20:17',NULL),
(37,36,'商品列表','sys:goodsList','goodsList','/goodsList','/goods/GoodsList','1','UserFilled','商品管理',31,'2023-12-02 11:20:17',NULL),
(38,37,'新增','sys:goodsList:add','','','','2','','商品列表',32,'2023-12-02 11:20:17',NULL),
(39,37,'编辑','sys:goodsList:edit','','','','2','','商品列表',33,'2023-12-02 11:20:17',NULL),
(40,37,'删除','sys:goodsList:delete','','','','2','','商品列表',34,'2023-12-02 11:20:17',NULL),
(41,36,'订单管理','sys:orderList','orderList','/orderList','/order/OrderList','1','UserFilled','商品管理',35,'2023-12-02 11:20:17',NULL),
(42,51,'失物列表','sys:lostList','lostList','/lostList','/lost/LostList','1','UserFilled','失物招领1',36,'2023-12-02 11:20:17','2023-12-02 11:22:17'),
(43,42,'新增','sys:lostList:add','','','','2','','失物招领',37,'2023-12-02 11:20:17',NULL),
(44,42,'编辑','sys:lostList:edit','','','','2','','失物招领',38,'2023-12-02 11:20:17',NULL),
(45,42,'删除','sys:lostList:delete','','','','2','','失物招领',39,'2023-12-02 11:20:17',NULL),
(46,52,'反馈列表','sys:suggestList','suggestList','/suggestList','/suggest/SuggestList','1','UserFilled','反馈管理',40,'2023-12-02 11:20:17','2023-12-02 11:22:17'),
(47,46,'新增','sys:suggestList:add','','','','2','','反馈管理',42,'2023-12-02 11:20:17',NULL),
(48,46,'编辑','sys:suggestList:edit','','','','2','','反馈管理',43,'2023-12-02 11:20:17',NULL),
(49,46,'删除','sys:suggestList:delete','','','','2','','反馈管理',44,'2023-12-02 11:20:17',NULL),
(50,42,'查看','sys:lostList:look','','','','2','','失物招领',45,'2023-12-02 11:20:17',NULL),
(51,0,'失物招领','sys:lostRoot','lostRoot','/lostRoot','','0','Document','顶级菜单',36,'2023-12-02 11:20:17','2023-12-02 11:22:17'),
(52,0,'反馈管理','sys:suggestRoot','suggestRoot','/suggestRoot','/suggest/SuggestList','0','Document','顶级菜单',40,'2023-12-02 11:20:17',NULL),
(53,27,'查看','sys:courseList:look','','','','2','','课程列表',50,'2023-12-02 11:20:17',NULL),
(54,27,'报名','sys:courseList:join','','','','2','','课程列表',51,'2023-12-02 11:20:17',NULL),
(55,42,'认领','sys:lostList:get','','','','2','','失物列表',55,'2023-12-02 11:20:17',NULL),
(56,3,'分配权限','sys:role:assign','','','','2','','角色管理',56,'2023-12-02 11:20:17',NULL),
(57,6,'查看','sys:memberList:look','','','','2','','会员管理',57,'2023-12-02 11:20:17',NULL),
(58,31,'导出学生','sys:mycourse:export','','','','2','','我的课程',57,'2023-12-02 11:20:17',NULL),
(59,2,'员工重置密码','sys:user:resetPassword','','','','2','','员工管理',60,'2023-12-02 11:20:17',NULL),
(60,6,'会员重置密码','sys:member:resetPassword','','','','2','','会员管理',61,'2023-12-02 11:20:17',NULL),
(61,41,'下单','sys:orderList:down','','','','2','','订单管理',70,'2023-12-02 11:20:17',NULL),
(62,31,'退课','sys:mycourse:quit','','','','2','','我的课程',58,'2023-12-02 11:20:17',NULL);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`remark`,`create_time`,`update_time`) values 
(2,'系统管理员','系统管理员','2023-12-05 19:28:40','2023-12-05 19:33:40'),
(3,'员工','员工','2023-12-05 19:28:40','2023-12-05 19:33:40'),
(4,'教练','教练','2023-12-05 19:28:40','2023-12-05 19:33:40'),
(5,'会员','会员','2023-12-05 19:28:40',NULL);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1678 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_menu_id`,`role_id`,`menu_id`) values 
(894,10,2),
(895,10,8),
(896,10,9),
(897,10,10),
(898,10,59),
(899,10,3),
(900,10,11),
(901,10,12),
(902,10,13),
(903,10,56),
(904,10,1),
(905,11,2),
(906,11,8),
(907,11,9),
(908,11,10),
(909,11,59),
(910,11,1),
(1116,3,5),
(1117,3,14),
(1118,3,15),
(1119,3,16),
(1120,3,6),
(1121,3,21),
(1122,3,22),
(1123,3,23),
(1124,3,24),
(1125,3,25),
(1126,3,57),
(1127,3,60),
(1128,3,51),
(1129,3,42),
(1130,3,43),
(1131,3,44),
(1132,3,45),
(1133,3,50),
(1134,3,55),
(1135,3,52),
(1136,3,46),
(1137,3,47),
(1138,3,48),
(1139,3,49),
(1140,3,4),
(1586,2,2),
(1587,2,8),
(1588,2,9),
(1589,2,10),
(1590,2,59),
(1591,2,12),
(1592,2,13),
(1593,2,56),
(1594,2,17),
(1595,2,18),
(1596,2,19),
(1597,2,20),
(1598,2,5),
(1599,2,14),
(1600,2,15),
(1601,2,16),
(1602,2,6),
(1603,2,21),
(1604,2,22),
(1605,2,23),
(1606,2,24),
(1607,2,25),
(1608,2,57),
(1609,2,60),
(1610,2,27),
(1611,2,28),
(1612,2,29),
(1613,2,30),
(1614,2,53),
(1615,2,54),
(1616,2,32),
(1617,2,33),
(1618,2,34),
(1619,2,35),
(1620,2,43),
(1621,2,44),
(1622,2,45),
(1623,2,50),
(1624,2,52),
(1625,2,46),
(1626,2,47),
(1627,2,48),
(1628,2,49),
(1629,2,1),
(1630,2,3),
(1631,2,4),
(1632,2,26),
(1633,2,51),
(1634,2,42),
(1635,4,57),
(1636,4,28),
(1637,4,58),
(1638,4,32),
(1639,4,33),
(1640,4,34),
(1641,4,35),
(1642,4,43),
(1643,4,44),
(1644,4,45),
(1645,4,50),
(1646,4,47),
(1647,4,48),
(1648,4,4),
(1649,4,6),
(1650,4,26),
(1651,4,27),
(1652,4,31),
(1653,4,51),
(1654,4,42),
(1655,4,52),
(1656,4,46),
(1657,5,22),
(1658,5,24),
(1659,5,25),
(1660,5,57),
(1661,5,60),
(1662,5,54),
(1663,5,62),
(1664,5,43),
(1665,5,50),
(1666,5,55),
(1667,5,47),
(1668,5,48),
(1669,5,4),
(1670,5,6),
(1671,5,26),
(1672,5,27),
(1673,5,31),
(1674,5,51),
(1675,5,42),
(1676,5,52),
(1677,5,46);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '账户(员工编号)',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '电话',
  `email` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮箱',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT ' 性别  0：男 1：女',
  `salary` decimal(18,2) DEFAULT NULL COMMENT '工资',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '类型（1：员工 2：教练）',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '状态 0：停用 1：启用',
  `is_admin` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT ' 是否是管理员 （1：是 0 ：否）',
  `is_account_non_expired` tinyint(4) DEFAULT NULL COMMENT '帐户是否过期(1 未过期，0已过期)',
  `is_account_non_locked` tinyint(4) DEFAULT NULL COMMENT '帐户是否被锁定(1 未锁定，0已锁定)',
  `is_credentials_non_expired` tinyint(4) DEFAULT NULL COMMENT '密码是否过期(1 未过期，0已过期)',
  `is_enabled` tinyint(4) DEFAULT NULL COMMENT '帐户是否可用(1 可用，0 删除用户)',
  `nick_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '姓名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`username`,`password`,`phone`,`email`,`sex`,`salary`,`user_type`,`status`,`is_admin`,`is_account_non_expired`,`is_account_non_locked`,`is_credentials_non_expired`,`is_enabled`,`nick_name`,`create_time`,`update_time`) values 
(1,'test0001','$2a$10$2OXlMcONL4Ks5GfAQqun4e1mVrXTAiTg4GhqyeYXgzDuXMT63vwT2','18687116223','2383404558@qq.com','0',5000.00,'1','1','0',1,1,1,1,'张三','2023-12-02 23:11:00','2024-03-16 23:12:32'),
(2,'jl0001','$2a$10$W/ruA/T6w91s3m5OeGpiAOa817OtMjjkjsWPCf1Dbs0R71txJje9q','18787871623','2383404558@qq.com','1',6000.00,'2','1','0',1,1,1,1,'李四','2023-12-02 23:11:00','2023-12-25 16:52:48'),
(3,'admin','$2a$10$jxLrPKHtYksGE1LdRb3g6.MkWtjxn./AoxU6QXrLQFumMlUwSrHpq','18687116223','2383404558@qq.com','1',NULL,NULL,'1','1',1,1,1,1,'admin',NULL,NULL),
(4,'jl0002','$2a$10$XGImiRh7ahkQPRpIpo0lqeZ2wu1nqI..ZLd3VofwpfNWY2jQkgj3G','18787171906','','0',6000.00,'2','1','0',1,1,1,1,'张明','2023-12-02 23:11:00','2023-12-25 16:52:39'),
(5,'jl0003','$2a$10$S5xkBkH/yA425nWX1hjlVOafkwazbwLLcv5BBcDFkzXxwbozUetUO','18787171906','','1',5000.00,'2','1','0',1,1,1,1,'李丽','2023-12-02 23:11:00','2023-12-25 16:52:58'),
(6,'admin1','$2a$10$vgxkQ7O7aqu/h8E7z1htduP.5Wo9Vpq2teSRwkDKJo6/BUkNX6Vay','18687116223','','0',10000.00,'1','1','0',1,1,1,1,'admin1','2023-12-02 23:11:00',NULL),
(12,'test0002','$2a$10$Vow7F4MdKcgZ8mUL2BPpj.OGVAsCVjtAUk3Db6tpf05dL4H6pnLvG','13917158910','','0',6666.00,'1','1','0',1,1,1,1,'王五','2023-12-02 23:11:00','2023-12-25 16:52:13');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '员工id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`user_role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_role_id`,`user_id`,`role_id`) values 
(11,6,2),
(25,12,11),
(26,4,4),
(27,2,4),
(28,5,4),
(30,1,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
