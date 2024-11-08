/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shengxianpeisong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shengxianpeisong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shengxianpeisong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619490920052 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619487525099,'2021-04-27 09:38:44',1614430386281,'河南省郑州市二七区解放路街道五彩路万象城','章1','17703786931','否'),(1619487542616,'2021-04-27 09:39:01',1614430386281,'河南省郑州市管城回族区北下街街道中菲商务酒店(郑州二七店)格瑞斯国际酒店(商城路店)','张2','17703786932','是'),(1619490920051,'2021-04-27 10:35:19',1615339905628,'河南省郑州市管城回族区北下街街道柴货市街大上海城','张55','17703786969','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619491344506 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (19,'picture2','http://localhost:8080/shengxianpeisong/upload/1615604883959.jpg'),(22,'picture2','http://localhost:8080/shengxianpeisong/upload/1619490822511.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619491091334 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1619491091333,'2021-04-27 10:38:11',1619486563061,1615339905628,'好么','很好吃哦');

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` bigint(20) NOT NULL COMMENT '用户id',
  `shangpinxinxi_id` bigint(20) NOT NULL COMMENT '商品id',
  `jifenjilu_types` varchar(200) DEFAULT NULL COMMENT '积分类型',
  `buynumber` int(11) NOT NULL COMMENT '积分数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`shangpinxinxi_id`,`jifenjilu_types`,`buynumber`,`insert_time`,`create_time`) values (1,1614430386281,1619486363644,'添加',3,'2021-04-27 09:39:15','2021-04-27 09:39:15'),(2,1614430386281,1619486563061,'添加',4,'2021-04-27 09:39:30','2021-04-27 09:39:30'),(3,1614430386281,1619486629941,'添加',12,'2021-04-27 09:39:45','2021-04-27 09:39:45'),(4,1615339905628,1619486363644,'添加',4,'2021-04-27 10:35:36','2021-04-27 10:35:36'),(5,1615339905628,1619490762152,'添加',4,'2021-04-27 10:36:28','2021-04-27 10:36:28'),(6,1615339905628,1619490762152,'使用',7,'2021-04-27 10:36:28','2021-04-27 10:36:28'),(7,1615339905628,1619486363644,'使用',4,'2021-04-27 10:42:42','2021-04-27 10:42:42'),(8,1615339905628,1619486629941,'使用',4,'2021-04-27 10:42:42','2021-04-27 10:42:43'),(9,1615339905628,1619486363644,'添加',4,'2021-04-27 10:42:42','2021-04-27 10:42:43'),(10,1615339905628,1619486629941,'添加',6,'2021-04-27 10:42:42','2021-04-27 10:42:43');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-04-26 22:39:58','新闻标题1','http://localhost:8080/shengxianpeisong/upload/news_picture1.jpg','内容1'),(82,'2021-04-26 22:39:58','新闻标题2','http://localhost:8080/shengxianpeisong/upload/news_picture2.jpg','内容2'),(83,'2021-04-26 22:39:58','新闻标题3','http://localhost:8080/shengxianpeisong/upload/news_picture3.jpg','内容3'),(84,'2021-04-26 22:39:58','新闻标题4','http://localhost:8080/shengxianpeisong/upload/news_picture4.jpg','内容4'),(85,'2021-04-26 22:39:58','新闻标题5','http://localhost:8080/shengxianpeisong/upload/news_picture5.jpg','内容5');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619491363412 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1619487555633,'2021-04-27 09:39:15','20214279391516823669','shangpinxinxi',1614430386281,1619486363644,'橙子','http://localhost:8080/shengxianpeisong/upload/1619486317926.jpg',3,20,16,60,48,1,'已完成','河南省郑州市管城回族区北下街街道中菲商务酒店(郑州二七店)格瑞斯国际酒店(商城路店)'),(1619487571001,'2021-03-27 09:39:30','20214279393027748584','shangpinxinxi',1614430386281,1619486563061,'五花肉','http://localhost:8080/shengxianpeisong/upload/1619486376953.jpg',2,30,25,60,50,1,'已完成','河南省郑州市二七区解放路街道五彩路万象城'),(1619487586033,'2021-03-26 09:39:45','2021427939452571856','shangpinxinxi',1614430386281,1619486629941,'苹果','http://localhost:8080/shengxianpeisong/upload/1619486577845.jpg',4,100,150,400,600,1,'已完成','河南省郑州市管城回族区北下街街道中菲商务酒店(郑州二七店)格瑞斯国际酒店(商城路店)'),(1619490936915,'2021-04-27 10:35:36','202142710353585042711','shangpinxinxi',1615339905628,1619486363644,'橙子','http://localhost:8080/shengxianpeisong/upload/1619486317926.jpg',4,20,16,80,64,1,'已发货','河南省郑州市管城回族区北下街街道柴货市街大上海城'),(1619490988801,'2021-04-27 10:36:28','20214271036286932082','shangpinxinxi',1615339905628,1619490762152,'鱼','http://localhost:8080/shengxianpeisong/upload/1619490717679.jpg',2,100,66,200,132,1,'已退款','河南省郑州市管城回族区北下街街道柴货市街大上海城'),(1619491363201,'2021-04-27 10:42:42','202142710424221071612','shangpinxinxi',1615339905628,1619486363644,'橙子','http://localhost:8080/shengxianpeisong/upload/1619486317926.jpg',4,20,16,80,64,1,'已支付','河南省郑州市管城回族区北下街街道柴货市街大上海城'),(1619491363411,'2021-04-27 10:42:42','202142710424222231317','shangpinxinxi',1615339905628,1619486629941,'苹果','http://localhost:8080/shengxianpeisong/upload/1619486577845.jpg',2,100,150,200,300,1,'已支付','河南省郑州市管城回族区北下街街道柴货市街大上海城');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619490701333 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-04-26 22:39:58','水果'),(22,'2021-04-26 22:39:58','蔬菜'),(23,'2021-04-26 22:39:58','散装生鲜'),(24,'2021-04-26 22:39:58','肉品'),(25,'2021-04-26 22:39:58','水产'),(26,'2021-04-26 22:39:58','熟食'),(1619490701332,'2021-04-27 10:31:40','其他');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619490762153 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1619486363644,'2021-04-27 09:19:22','1619486304','橙子','水果','89','优选','大','橙子的详情\r\n','http://localhost:8080/shengxianpeisong/upload/1619486317926.jpg','2021-04-27 10:42:42',10,20,16,1,1),(1619486563061,'2021-04-27 09:22:42','1619486366','五花肉','肉品','198','橙心优选','中','五花肉的详情\r\n','http://localhost:8080/shengxianpeisong/upload/1619486376953.jpg','2021-04-27 10:43:26',6,30,25,2,1),(1619486629941,'2021-04-27 09:23:49','1619486568','苹果','水果','194','富士山','大','苹果的详情\r\n','http://localhost:8080/shengxianpeisong/upload/1619486577845.jpg','2021-04-27 10:42:42',5,100,150,3,1),(1619490762152,'2021-04-27 10:32:41','1619490708','鱼','水产','1064','海鲜','大','鱼的详情\r\n','http://localhost:8080/shengxianpeisong/upload/1619490717679.jpg','2021-04-27 10:42:50',5,100,66,2,1);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619491407574 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619491407573,'2021-04-27 10:43:27',1615339905628,1619486563061,'shangpinxinxi','五花肉','http://localhost:8080/shengxianpeisong/upload/1619486376953.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','zy2ikefgndizdqq08ql4syu4swahgdde','2021-04-27 09:17:49','2021-04-27 11:30:47'),(2,1614430386281,'a2','yonghu','用户','lmbnfgzzrr1z8oxg09j08oyi36rs7wau','2021-04-27 09:28:35','2021-04-27 11:27:57'),(3,1615339905628,'a3','yonghu','用户','pjusosbbrevz5b68nagz410yfyu7f9fz','2021-04-27 10:32:48','2021-04-27 11:43:49'),(4,1619491508387,'a6','yonghu','用户','9z6749k2wdc2a9f4iql4flurmb55hdqb','2021-04-27 10:45:15','2021-04-27 11:45:16');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-04-26 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619491508388 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-04-26 20:53:06','a2','a2','123456','男','13823888883','229992@qq.ccom',588,131),(1614431342348,'2021-04-26 20:53:06','a4','a4','123456','男','a41','22850@qq.com',98,52),(1615339905628,'2021-04-26 20:53:06','a3','a3','123456','男','13823888883','77389000222@qq.com',2017,6),(1619490688288,'2021-04-27 10:31:28','a5','张5','123456','男','17703786969','22@qq.com',0,0),(1619491508387,'2021-04-27 10:45:08','a6','张6','123456',NULL,'17703786966','23@qq.com',0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
