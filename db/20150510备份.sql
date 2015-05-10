/*
SQLyog Enterprise - MySQL GUI v6.06
Host - 5.1.12-beta-community-nt : Database - staobao
*********************************************************************
Server version : 5.1.12-beta-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `staobao`;

USE `staobao`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `sys_allmoney` */

DROP TABLE IF EXISTS `sys_allmoney`;

CREATE TABLE `sys_allmoney` (
  `inputMoney` double NOT NULL COMMENT '入账金额',
  `outputMoney` double NOT NULL COMMENT '出账金额',
  `allMoney` double NOT NULL COMMENT '剩余总金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统资金记录表，这里3个金额必须符合：剩余总金额=入账金额-出账金额';

/*Data for the table `sys_allmoney` */

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `loginPassword` varchar(100) NOT NULL COMMENT '登录密码',
  `getCashPassword` varchar(100) DEFAULT NULL COMMENT '提现密码',
  `userType` int(11) NOT NULL COMMENT '用户类型：1：刷客，2商户，3系统管理用户',
  `isvip` int(11) DEFAULT NULL COMMENT '是否是VIP',
  `IDCauditstate` varchar(255) DEFAULT NULL COMMENT '身份证审核状态',
  `vipId` int(11) DEFAULT NULL COMMENT 'VIP编号',
  `sex` int(11) DEFAULT NULL COMMENT '性别，1：表示男生，2表示女生',
  `mail` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `recommendUserId` int(11) DEFAULT NULL COMMENT '推荐人',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'qq',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `tell` varchar(20) DEFAULT NULL COMMENT '电话号',
  `name` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `IDCardNo` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `personImg` varchar(200) DEFAULT NULL COMMENT '个人头像',
  `IDCardImg1` varchar(200) DEFAULT NULL COMMENT '身份证正面',
  `IDCardImg2` varchar(200) DEFAULT NULL COMMENT '身份证反面',
  `availableAccount` double DEFAULT NULL COMMENT '可用账户',
  `frozenAccount` double DEFAULT NULL COMMENT '冻结账户',
  `presentExpAccount` double DEFAULT NULL COMMENT '购物积分',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `state` int(11) NOT NULL COMMENT '状态',
  `sys_state` int(11) NOT NULL COMMENT '系统状态',
  PRIMARY KEY (`id`,`username`),
  KEY `FK_sys_user` (`vipId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿç”¨æˆ·è¡¨';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`username`,`loginPassword`,`getCashPassword`,`userType`,`isvip`,`IDCauditstate`,`vipId`,`sex`,`mail`,`recommendUserId`,`QQ`,`phone`,`tell`,`name`,`age`,`IDCardNo`,`personImg`,`IDCardImg1`,`IDCardImg2`,`availableAccount`,`frozenAccount`,`presentExpAccount`,`remark`,`state`,`sys_state`) values (1,'cai','7n9zqtg+O74=',NULL,1,0,NULL,0,1,'11',0,'111','111','11','11',111,NULL,NULL,NULL,NULL,0,0,0,NULL,1,1),(3,'18676794289','7n9zqtg+O74=',NULL,2,0,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,1,1),(4,'admin','iXv3nm+YBvs=',NULL,3,0,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,NULL,1,1);

/*Table structure for table `tb_merchantwebsite` */

DROP TABLE IF EXISTS `tb_merchantwebsite`;

CREATE TABLE `tb_merchantwebsite` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `merchantId` int(11) NOT NULL COMMENT '商户编号',
  `siteName` varchar(200) NOT NULL COMMENT '网站名称',
  `siteUrl` varchar(200) NOT NULL COMMENT '网站地址',
  `state` int(11) NOT NULL COMMENT '状态',
  `sysstate` int(11) NOT NULL COMMENT '系统状态',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_MWToUser` (`merchantId`),
  CONSTRAINT `FK_MWToUser` FOREIGN KEY (`merchantId`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户店铺或者网站表';

/*Data for the table `tb_merchantwebsite` */

/*Table structure for table `tb_product` */

DROP TABLE IF EXISTS `tb_product`;

CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `merchantId` int(11) NOT NULL COMMENT '所属商户',
  `shopName` varchar(100) NOT NULL COMMENT '提供试用的店铺名称',
  `productName` varchar(200) NOT NULL COMMENT '商品名称',
  `productDes` varchar(1000) DEFAULT NULL COMMENT '商品描述',
  `productPosition` varchar(500) DEFAULT NULL COMMENT '商品位置描述',
  `oldPrice` decimal(10,2) DEFAULT NULL COMMENT '商品原价格',
  `productImg` varchar(200) NOT NULL COMMENT '商品图片',
  `productKeyword` varchar(200) NOT NULL COMMENT '商品关键字',
  `count` int(11) NOT NULL COMMENT '数量',
  `testtype` int(11) NOT NULL COMMENT '试用类型：1拍A送A，2拍A送B，3纯红包',
  `tryPlatform` int(11) NOT NULL COMMENT '试用平台1：淘宝，2：京东',
  `productUrl` varchar(200) NOT NULL COMMENT '产品URL',
  `isDeliver` int(11) NOT NULL COMMENT '是否需要发货',
  `bonusAmount` varchar(255) DEFAULT NULL COMMENT '红包金额，（当试用是红包时必填）',
  `xiadanPrice` double NOT NULL COMMENT '下单价格',
  `secretSignal` varchar(255) NOT NULL COMMENT '下单暗号',
  `phoneOrPc` int(11) DEFAULT NULL COMMENT '手机还是电脑上下单，1表示手机，2表示电脑',
  `fanliPrice` double NOT NULL COMMENT '返回金额',
  `startTime` datetime NOT NULL COMMENT '开始时间',
  `endTime` datetime NOT NULL COMMENT '结束时间',
  `isfeeEnsure` int(11) DEFAULT NULL COMMENT '是否交保证金',
  `deposit` double DEFAULT NULL COMMENT '保证金',
  `sys_rate` double DEFAULT NULL COMMENT '系统成体金额',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `applyNumber` int(11) DEFAULT NULL COMMENT '申请人数',
  `getApplyNumber` int(11) DEFAULT NULL COMMENT '获得试用资格人数',
  `getProduct` int(11) DEFAULT NULL COMMENT '获得商品人数',
  `xiaOrderType` int(11) NOT NULL COMMENT '要求下单类型',
  `xiaOrderRequirement` varchar(1000) NOT NULL COMMENT '下单要求',
  `state` int(11) NOT NULL COMMENT '商品状态：1申请试用，2申请不通过，3可以试用，4暂停试用，5试用结束，6试用取消',
  `sys_state` int(11) NOT NULL COMMENT '系统状态',
  PRIMARY KEY (`id`),
  KEY `FK_user_product` (`merchantId`),
  CONSTRAINT `FK_user_product` FOREIGN KEY (`merchantId`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

/*Data for the table `tb_product` */

insert  into `tb_product`(`id`,`merchantId`,`shopName`,`productName`,`productDes`,`productPosition`,`oldPrice`,`productImg`,`productKeyword`,`count`,`testtype`,`tryPlatform`,`productUrl`,`isDeliver`,`bonusAmount`,`xiadanPrice`,`secretSignal`,`phoneOrPc`,`fanliPrice`,`startTime`,`endTime`,`isfeeEnsure`,`deposit`,`sys_rate`,`remark`,`applyNumber`,`getApplyNumber`,`getProduct`,`xiaOrderType`,`xiaOrderRequirement`,`state`,`sys_state`) values (1,3,'1111','11','11','11',NULL,'11','11',11,11,11,'11',11,'11',11,'11',11,11,'2015-05-06 00:00:00','2015-05-07 00:00:00',0,0,0,'1',0,0,0,1,'1',1,1);

/*Table structure for table `tb_shopwebsiteaccount` */

DROP TABLE IF EXISTS `tb_shopwebsiteaccount`;

CREATE TABLE `tb_shopwebsiteaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userid` int(11) NOT NULL COMMENT '用户编号',
  `swaName` varchar(200) NOT NULL COMMENT '网站名称（淘宝、京东）',
  `swaAccount` varchar(200) NOT NULL COMMENT '账号',
  `auditstate` int(11) DEFAULT NULL COMMENT '账号审核状态',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `systate` int(11) DEFAULT NULL COMMENT '系统状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `tb_shopwebsiteaccount_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方购物网站账号信息表：记录用户的淘宝、京东、拍拍账号信息';

/*Data for the table `tb_shopwebsiteaccount` */

/*Table structure for table `tb_userdeliveryaddress` */

DROP TABLE IF EXISTS `tb_userdeliveryaddress`;

CREATE TABLE `tb_userdeliveryaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `personname` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(20) NOT NULL COMMENT '手机号',
  `mail` varchar(20) NOT NULL COMMENT '邮箱',
  `tell` varchar(20) NOT NULL COMMENT '电话',
  `country` varchar(20) NOT NULL DEFAULT 'CN',
  `province` int(20) NOT NULL COMMENT '省份',
  `city` int(20) NOT NULL COMMENT '城市',
  `sysstate` int(11) NOT NULL COMMENT '系统状态',
  `state` int(11) NOT NULL COMMENT '状态',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `address` varchar(200) NOT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  KEY `用户表关系` (`userid`),
  CONSTRAINT `用户表关系` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收货地址信息表';

/*Data for the table `tb_userdeliveryaddress` */

/*Table structure for table `tb_userfundaccount` */

DROP TABLE IF EXISTS `tb_userfundaccount`;

CREATE TABLE `tb_userfundaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userId` int(11) NOT NULL COMMENT '用户编号',
  `name` varchar(200) NOT NULL COMMENT '账户名称',
  `type` int(11) NOT NULL COMMENT '账户类型',
  `accountNum` varchar(100) NOT NULL COMMENT '账户',
  `personName` varchar(100) NOT NULL COMMENT '账户人姓名',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `sys_state` int(11) DEFAULT NULL COMMENT '系统状态',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `tb_userfundaccount_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户资金账户，这里主要是记录商户的支付宝、财付通、银行账号信息';

/*Data for the table `tb_userfundaccount` */

/*Table structure for table `tb_usergetmoneylog` */

DROP TABLE IF EXISTS `tb_usergetmoneylog`;

CREATE TABLE `tb_usergetmoneylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userid` int(11) NOT NULL COMMENT '用户编号',
  `applydate` datetime NOT NULL COMMENT '申请日期',
  `applyMoney` double NOT NULL COMMENT '申请金额',
  `applyToAccount` varchar(200) NOT NULL COMMENT '打入账户',
  `state` int(11) NOT NULL COMMENT '状态',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `sys_operUser` varchar(100) NOT NULL COMMENT '系统操作人员账号',
  `operState` int(11) NOT NULL COMMENT '最终操作结果',
  `sys_operdate` datetime NOT NULL COMMENT '系统操作时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `tb_usergetmoneylog_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户提现记录表';

/*Data for the table `tb_usergetmoneylog` */

/*Table structure for table `tb_userrecharge` */

DROP TABLE IF EXISTS `tb_userrecharge`;

CREATE TABLE `tb_userrecharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `chargeDate` datetime NOT NULL COMMENT '充值时间',
  `chargeMoney` double NOT NULL DEFAULT '0' COMMENT '充值金额',
  `chargeToAccount` varchar(200) NOT NULL COMMENT '冲入账户',
  `state` int(11) NOT NULL COMMENT '状态',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `tb_userrecharge_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户充值表，这里主要记录用户充值金额记录';

/*Data for the table `tb_userrecharge` */

/*Table structure for table `tb_usertrylog` */

DROP TABLE IF EXISTS `tb_usertrylog`;

CREATE TABLE `tb_usertrylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userid` int(11) NOT NULL COMMENT '用户编号',
  `applyProductId` int(11) NOT NULL COMMENT '申请试用商品编号',
  `applyState` int(11) NOT NULL COMMENT '申请状态',
  `applyResult` int(11) NOT NULL COMMENT '申请结果',
  `applyTime` datetime NOT NULL COMMENT '申请时间',
  `applyReport` varchar(1000) DEFAULT NULL COMMENT '试用报告',
  `isIllegal` int(11) DEFAULT NULL COMMENT '是否违规',
  `reportImg1` varchar(200) DEFAULT NULL COMMENT '图片附件1',
  `reportImg2` varchar(200) DEFAULT NULL COMMENT '图片附件2',
  `reportImg3` varchar(200) DEFAULT NULL COMMENT '图片附件3',
  `reportImg4` varchar(200) DEFAULT NULL COMMENT '图片附件4',
  `reportImg5` varchar(200) DEFAULT NULL COMMENT '图片附件5',
  `reportImg6` varchar(200) DEFAULT NULL COMMENT '图片附件6',
  `orderNo` varchar(100) DEFAULT NULL COMMENT '试用订单号',
  `payMoney` double DEFAULT NULL COMMENT '支付金额',
  `returnMoney` double DEFAULT NULL COMMENT '商户返还金额',
  `redPacketMoney` double DEFAULT NULL COMMENT '获得的红包金额',
  `tryAccount` varchar(100) DEFAULT NULL COMMENT '试用账号',
  `logisticsNo` varchar(20) DEFAULT NULL COMMENT '物流单号',
  `state` int(11) NOT NULL COMMENT '试用状态',
  `sys_state` int(11) DEFAULT NULL COMMENT '系统状态',
  `sys_rate` double DEFAULT NULL COMMENT '系统提成',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `tb_usertrylog_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户试用记录表';

/*Data for the table `tb_usertrylog` */

/*Table structure for table `tb_vip` */

DROP TABLE IF EXISTS `tb_vip`;

CREATE TABLE `tb_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `vipName` varchar(200) NOT NULL COMMENT 'VIP名称',
  `isfee` int(11) NOT NULL COMMENT '是否收费0表示不收费，1表示收费',
  `feetype` int(11) NOT NULL COMMENT '收费类型0表示不收费，1表示按月收费，2表示按每笔交易收费',
  `viptype` int(11) NOT NULL COMMENT 'vip类型1表示消费者，2表示商户',
  `charge` double NOT NULL DEFAULT '0' COMMENT '收费金额',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `sys_exefeeRule` varchar(200) DEFAULT NULL COMMENT '系统收费规则',
  `sys_sdcount` int(11) DEFAULT NULL COMMENT '刷单次数限制',
  `sys_countingPeriod` int(11) DEFAULT NULL COMMENT '结算周期T+N(天为单位)',
  `sys_userTXMin` double DEFAULT NULL COMMENT '用户最小提现金额',
  `sys_merchantSDRate` double DEFAULT NULL COMMENT '商户刷单每次上交系统提成金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统会员等级表';

/*Data for the table `tb_vip` */

insert  into `tb_vip`(`id`,`vipName`,`isfee`,`feetype`,`viptype`,`charge`,`remark`,`sys_exefeeRule`,`sys_sdcount`,`sys_countingPeriod`,`sys_userTXMin`,`sys_merchantSDRate`) values (1,'测试',0,0,1,20,NULL,NULL,0,0,NULL,NULL),(2,'测试1',0,0,1,20,NULL,NULL,0,0,NULL,NULL),(3,'测试2',0,0,1,20,NULL,NULL,0,0,NULL,NULL),(4,'测试2',0,0,1,20,NULL,NULL,0,0,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
