/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm5yn2l
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm5yn2l` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm5yn2l`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm5yn2l/upload/1616216404130.jpg'),(2,'picture2','http://localhost:8080/ssm5yn2l/upload/1616216418438.jpg'),(3,'picture3','http://localhost:8080/ssm5yn2l/upload/1616216439429.jpg'),(6,'homepage',NULL);

/*Table structure for table `jingpaijieguo` */

DROP TABLE IF EXISTS `jingpaijieguo`;

CREATE TABLE `jingpaijieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingpaibianhao` varchar(200) DEFAULT NULL COMMENT '竞拍编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `jingpaijiage` varchar(200) DEFAULT NULL COMMENT '竞拍价格',
  `jingpairiqi` varchar(200) DEFAULT NULL COMMENT '竞拍日期',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '买家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '买家姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `jingpaijieguo` varchar(200) DEFAULT NULL COMMENT '竞拍结果',
  `paimaizhanghao` varchar(200) DEFAULT NULL COMMENT '拍卖账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616216863430 DEFAULT CHARSET=utf8 COMMENT='竞拍结果';

/*Data for the table `jingpaijieguo` */

insert  into `jingpaijieguo`(`id`,`addtime`,`jingpaibianhao`,`shangpinmingcheng`,`shuliang`,`jingpaijiage`,`jingpairiqi`,`maijiazhanghao`,`maijiaxingming`,`shoujihaoma`,`jingpaijieguo`,`paimaizhanghao`,`xingming`) values (51,'2021-03-20 12:58:22','竞拍编号1','商品名称1','数量1','竞拍价格1','竞拍日期1','买家账号1','买家姓名1','手机号码1','成功','拍卖账号1','姓名1'),(52,'2021-03-20 12:58:22','竞拍编号2','商品名称2','数量2','竞拍价格2','竞拍日期2','买家账号2','买家姓名2','手机号码2','成功','拍卖账号2','姓名2'),(53,'2021-03-20 12:58:22','竞拍编号3','商品名称3','数量3','竞拍价格3','竞拍日期3','买家账号3','买家姓名3','手机号码3','成功','拍卖账号3','姓名3'),(54,'2021-03-20 12:58:22','竞拍编号4','商品名称4','数量4','竞拍价格4','竞拍日期4','买家账号4','买家姓名4','手机号码4','成功','拍卖账号4','姓名4'),(55,'2021-03-20 12:58:22','竞拍编号5','商品名称5','数量5','竞拍价格5','竞拍日期5','买家账号5','买家姓名5','手机号码5','成功','拍卖账号5','姓名5'),(56,'2021-03-20 12:58:22','竞拍编号6','商品名称6','数量6','竞拍价格6','竞拍日期6','买家账号6','买家姓名6','手机号码6','成功','拍卖账号6','姓名6'),(1616216855541,'2021-03-20 13:07:35','20213201353716439726','花瓶','1','40000','2021-03-21 00:00:00','11','杨小姐','13823899999','成功','22','陈先生'),(1616216863429,'2021-03-20 13:07:43','20213201364918382416','花瓶','1','39000','2021-03-22 00:00:00','买家1','买家姓名1','13823888881','不成功','22','陈先生');

/*Table structure for table `jingpaishangpin` */

DROP TABLE IF EXISTS `jingpaishangpin`;

CREATE TABLE `jingpaishangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `qipaijia` varchar(200) DEFAULT NULL COMMENT '起拍价',
  `shangpinmiaoshu` longtext COMMENT '商品描述',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `paimaizhanghao` varchar(200) DEFAULT NULL COMMENT '拍卖账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616216697750 DEFAULT CHARSET=utf8 COMMENT='竞拍商品';

/*Data for the table `jingpaishangpin` */

insert  into `jingpaishangpin`(`id`,`addtime`,`shangpinmingcheng`,`tupian`,`shuliang`,`qipaijia`,`shangpinmiaoshu`,`faburiqi`,`paimaizhanghao`,`xingming`) values (31,'2021-03-20 12:58:22','商品名称1','http://localhost:8080/ssm5yn2l/upload/jingpaishangpin_tupian1.jpg',1,'起拍价1','商品描述1','2021-03-20','拍卖账号1','姓名1'),(32,'2021-03-20 12:58:22','商品名称2','http://localhost:8080/ssm5yn2l/upload/jingpaishangpin_tupian2.jpg',2,'起拍价2','商品描述2','2021-03-20','拍卖账号2','姓名2'),(33,'2021-03-20 12:58:22','商品名称3','http://localhost:8080/ssm5yn2l/upload/jingpaishangpin_tupian3.jpg',3,'起拍价3','商品描述3','2021-03-20','拍卖账号3','姓名3'),(34,'2021-03-20 12:58:22','商品名称4','http://localhost:8080/ssm5yn2l/upload/jingpaishangpin_tupian4.jpg',4,'起拍价4','商品描述4','2021-03-20','拍卖账号4','姓名4'),(35,'2021-03-20 12:58:22','商品名称5','http://localhost:8080/ssm5yn2l/upload/jingpaishangpin_tupian5.jpg',5,'起拍价5','商品描述5','2021-03-20','拍卖账号5','姓名5'),(36,'2021-03-20 12:58:22','商品名称6','http://localhost:8080/ssm5yn2l/upload/jingpaishangpin_tupian6.jpg',6,'起拍价6','商品描述6','2021-03-20','拍卖账号6','姓名6'),(1616216697749,'2021-03-20 13:04:57','花瓶','http://localhost:8080/ssm5yn2l/upload/1616216679406.jpg',1,'38000','<p>sdsgsdgsgsg</p>','2021-03-20','22','陈先生');

/*Table structure for table `jingpaixinxi` */

DROP TABLE IF EXISTS `jingpaixinxi`;

CREATE TABLE `jingpaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingpaibianhao` varchar(200) DEFAULT NULL COMMENT '竞拍编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `paimaizhanghao` varchar(200) DEFAULT NULL COMMENT '拍卖账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `qipaijia` varchar(200) DEFAULT NULL COMMENT '起拍价',
  `jingpaijiage` varchar(200) DEFAULT NULL COMMENT '竞拍价格',
  `jingpairiqi` datetime DEFAULT NULL COMMENT '竞拍日期',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '买家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '买家姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingpaibianhao` (`jingpaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616216816574 DEFAULT CHARSET=utf8 COMMENT='竞拍信息';

/*Data for the table `jingpaixinxi` */

insert  into `jingpaixinxi`(`id`,`addtime`,`jingpaibianhao`,`shangpinmingcheng`,`paimaizhanghao`,`xingming`,`shuliang`,`qipaijia`,`jingpaijiage`,`jingpairiqi`,`maijiazhanghao`,`maijiaxingming`,`shoujihaoma`) values (41,'2021-03-20 12:58:22','竞拍编号1','商品名称1','拍卖账号1','姓名1','数量1','起拍价1','竞拍价格1','2021-03-20 12:58:22','买家账号1','买家姓名1','手机号码1'),(42,'2021-03-20 12:58:22','竞拍编号2','商品名称2','拍卖账号2','姓名2','数量2','起拍价2','竞拍价格2','2021-03-20 12:58:22','买家账号2','买家姓名2','手机号码2'),(43,'2021-03-20 12:58:22','竞拍编号3','商品名称3','拍卖账号3','姓名3','数量3','起拍价3','竞拍价格3','2021-03-20 12:58:22','买家账号3','买家姓名3','手机号码3'),(44,'2021-03-20 12:58:22','竞拍编号4','商品名称4','拍卖账号4','姓名4','数量4','起拍价4','竞拍价格4','2021-03-20 12:58:22','买家账号4','买家姓名4','手机号码4'),(45,'2021-03-20 12:58:22','竞拍编号5','商品名称5','拍卖账号5','姓名5','数量5','起拍价5','竞拍价格5','2021-03-20 12:58:22','买家账号5','买家姓名5','手机号码5'),(46,'2021-03-20 12:58:22','竞拍编号6','商品名称6','拍卖账号6','姓名6','数量6','起拍价6','竞拍价格6','2021-03-20 12:58:22','买家账号6','买家姓名6','手机号码6'),(1616216750568,'2021-03-20 13:05:50','20213201353716439726','花瓶','22','陈先生','1','38000','40000','2021-03-21 00:00:00','11','杨小姐','13823899999'),(1616216816573,'2021-03-20 13:06:55','20213201364918382416','花瓶','22','陈先生','1','38000','39000','2021-03-22 00:00:00','买家1','买家姓名1','13823888881');

/*Table structure for table `maijia` */

DROP TABLE IF EXISTS `maijia`;

CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '买家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) NOT NULL COMMENT '买家姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616216522813 DEFAULT CHARSET=utf8 COMMENT='买家';

/*Data for the table `maijia` */

insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (11,'2021-03-20 12:58:22','买家1','123456','买家姓名1','http://localhost:8080/ssm5yn2l/upload/maijia_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2021-03-20 12:58:22','买家2','123456','买家姓名2','http://localhost:8080/ssm5yn2l/upload/maijia_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-20 12:58:22','买家3','123456','买家姓名3','http://localhost:8080/ssm5yn2l/upload/maijia_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-20 12:58:22','买家4','123456','买家姓名4','http://localhost:8080/ssm5yn2l/upload/maijia_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-20 12:58:22','买家5','123456','买家姓名5','http://localhost:8080/ssm5yn2l/upload/maijia_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-20 12:58:22','买家6','123456','买家姓名6','http://localhost:8080/ssm5yn2l/upload/maijia_touxiang6.jpg','男','13823888886','773890006@qq.com'),(1616216522812,'2021-03-20 13:02:02','11','123456','杨小姐','http://localhost:8080/ssm5yn2l/upload/1616216552769.jpg','女','13823899999','');

/*Table structure for table `maijiapingjia` */

DROP TABLE IF EXISTS `maijiapingjia`;

CREATE TABLE `maijiapingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingpaibianhao` varchar(200) DEFAULT NULL COMMENT '竞拍编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `jingpaijiage` varchar(200) DEFAULT NULL COMMENT '竞拍价格',
  `jingpairiqi` varchar(200) DEFAULT NULL COMMENT '竞拍日期',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '买家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '买家姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `maijiapingjia` varchar(200) DEFAULT NULL COMMENT '买家评价',
  `maijiapingfen` int(11) DEFAULT NULL COMMENT '买家评分',
  `paimaizhanghao` varchar(200) DEFAULT NULL COMMENT '拍卖账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616216949165 DEFAULT CHARSET=utf8 COMMENT='买家评价';

/*Data for the table `maijiapingjia` */

insert  into `maijiapingjia`(`id`,`addtime`,`jingpaibianhao`,`shangpinmingcheng`,`shuliang`,`jingpaijiage`,`jingpairiqi`,`maijiazhanghao`,`maijiaxingming`,`shoujihaoma`,`maijiapingjia`,`maijiapingfen`,`paimaizhanghao`,`xingming`) values (61,'2021-03-20 12:58:22','竞拍编号1','商品名称1','数量1','竞拍价格1','竞拍日期1','买家账号1','买家姓名1','手机号码1','买家评价1',1,'拍卖账号1','姓名1'),(62,'2021-03-20 12:58:22','竞拍编号2','商品名称2','数量2','竞拍价格2','竞拍日期2','买家账号2','买家姓名2','手机号码2','买家评价2',1,'拍卖账号2','姓名2'),(63,'2021-03-20 12:58:22','竞拍编号3','商品名称3','数量3','竞拍价格3','竞拍日期3','买家账号3','买家姓名3','手机号码3','买家评价3',1,'拍卖账号3','姓名3'),(64,'2021-03-20 12:58:22','竞拍编号4','商品名称4','数量4','竞拍价格4','竞拍日期4','买家账号4','买家姓名4','手机号码4','买家评价4',1,'拍卖账号4','姓名4'),(65,'2021-03-20 12:58:22','竞拍编号5','商品名称5','数量5','竞拍价格5','竞拍日期5','买家账号5','买家姓名5','手机号码5','买家评价5',1,'拍卖账号5','姓名5'),(66,'2021-03-20 12:58:22','竞拍编号6','商品名称6','数量6','竞拍价格6','竞拍日期6','买家账号6','买家姓名6','手机号码6','买家评价6',1,'拍卖账号6','姓名6'),(1616216908899,'2021-03-20 13:08:28','20213201353716439726','花瓶','1','40000','2021-03-21 00:00:00','11','杨小姐','13823899999','好',5,'22','陈先生'),(1616216949164,'2021-03-20 13:09:08','20213201364918382416','花瓶','1','39000','2021-03-22 00:00:00','买家1','买家姓名1','13823888881','sdfsfsf',4,'22','陈先生');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616216597067 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (71,'2021-03-20 12:58:22',1,'用户名1','留言内容1','回复内容1'),(72,'2021-03-20 12:58:22',2,'用户名2','留言内容2','回复内容2'),(73,'2021-03-20 12:58:22',3,'用户名3','留言内容3','回复内容3'),(74,'2021-03-20 12:58:22',4,'用户名4','留言内容4','回复内容4'),(75,'2021-03-20 12:58:22',5,'用户名5','留言内容5','回复内容5'),(76,'2021-03-20 12:58:22',6,'用户名6','留言内容6','回复内容6'),(1616216597066,'2021-03-20 13:03:16',1616216522812,'11','sdfsfsgsg','sdfsfsdgg');

/*Table structure for table `paimaizhe` */

DROP TABLE IF EXISTS `paimaizhe`;

CREATE TABLE `paimaizhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paimaizhanghao` varchar(200) NOT NULL COMMENT '拍卖账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `paimaizhanghao` (`paimaizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616216623976 DEFAULT CHARSET=utf8 COMMENT='拍卖者';

/*Data for the table `paimaizhe` */

insert  into `paimaizhe`(`id`,`addtime`,`paimaizhanghao`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`youxiang`,`shenfenzhenghao`) values (21,'2021-03-20 12:58:22','拍卖者1','123456','姓名1','http://localhost:8080/ssm5yn2l/upload/paimaizhe_touxiang1.jpg','男','13823888881','773890001@qq.com','440300199101010001'),(22,'2021-03-20 12:58:22','拍卖者2','123456','姓名2','http://localhost:8080/ssm5yn2l/upload/paimaizhe_touxiang2.jpg','男','13823888882','773890002@qq.com','440300199202020002'),(23,'2021-03-20 12:58:22','拍卖者3','123456','姓名3','http://localhost:8080/ssm5yn2l/upload/paimaizhe_touxiang3.jpg','男','13823888883','773890003@qq.com','440300199303030003'),(24,'2021-03-20 12:58:22','拍卖者4','123456','姓名4','http://localhost:8080/ssm5yn2l/upload/paimaizhe_touxiang4.jpg','男','13823888884','773890004@qq.com','440300199404040004'),(25,'2021-03-20 12:58:22','拍卖者5','123456','姓名5','http://localhost:8080/ssm5yn2l/upload/paimaizhe_touxiang5.jpg','男','13823888885','773890005@qq.com','440300199505050005'),(26,'2021-03-20 12:58:22','拍卖者6','123456','姓名6','http://localhost:8080/ssm5yn2l/upload/paimaizhe_touxiang6.jpg','男','13823888886','773890006@qq.com','440300199606060006'),(1616216623975,'2021-03-20 13:03:43','22','123456','陈先生','http://localhost:8080/ssm5yn2l/upload/1616216652954.jpg','男','13823855555',NULL,NULL);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'买家1','maijia','买家','eq29abkq4cgv0f4gr6r0mkp22j8fmmo8','2021-03-20 12:59:22','2021-03-20 14:08:48'),(2,1,'abo','users','管理员','orj0ggqybwcc9d7ua5idftlv0ug1f4m0','2021-03-20 12:59:46','2021-03-20 14:09:45'),(3,1616216522812,'11','maijia','买家','ygxfum0vn0tpibua17xfsztnzny18t2l','2021-03-20 13:02:21','2021-03-20 14:08:06'),(4,1616216623975,'22','paimaizhe','拍卖者','8fccc0j7b6dlluvqi8kdeeyfvik393p7','2021-03-20 13:03:53','2021-03-20 14:09:27');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-20 12:58:22');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
