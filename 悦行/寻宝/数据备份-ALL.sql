-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 192.168.1.234    Database: treasuredb
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bs_activity`
--

DROP TABLE IF EXISTS `bs_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `activity_type` int(11) NOT NULL COMMENT '活动类型 1集卡  2定向越野',
  `activity_name` varchar(30) NOT NULL COMMENT '活动名称',
  `card_text` varchar(30) NOT NULL COMMENT '集卡文字',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `activity_introduce` varchar(800) DEFAULT NULL COMMENT '活动介绍',
  `isenable` int(11) NOT NULL COMMENT '是否启用 1 是  2 否',
  `status` int(11) DEFAULT NULL COMMENT '状态 1未开始 2进行中 3已结束 4停止',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `images` varchar(800) DEFAULT NULL COMMENT '活动图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_activity`
--

LOCK TABLES `bs_activity` WRITE;
/*!40000 ALTER TABLE `bs_activity` DISABLE KEYS */;
INSERT INTO `bs_activity` VALUES (1,2,'测试定向越野','','2018-03-26 10:00:00','2018-04-26 10:00:00','测试定向越野介绍',1,2,'2018-03-26 10:00:00','2018-03-26 10:00:00',123456,'asdfasdfasdf'),(2,1,'测试集字测试集字测试11','端午节快乐','2018-03-28 17:36:00','2018-03-28 17:40:00','测试集字测试集字测试1jieshao介绍11',2,3,'2018-03-26 10:00:00','2018-03-28 17:40:08',123456,'asdfasdfasdf'),(3,2,'测试定向越野2','','2018-03-28 10:00:00','2018-05-26 10:00:00','测试定向越野介绍',1,2,'2018-03-26 10:00:00','2018-03-26 10:00:00',123456,'asdfasdfasdf'),(4,1,'测试集字卡活动2','端午节快乐','2018-03-26 10:00:00','2018-04-26 10:00:00','测试集字测试集字测试2',1,2,'2018-03-28 10:43:35','2018-03-28 10:43:35',123456,'asdfasdfasdf'),(5,1,'国庆集字卡活动1','国庆节快乐','2018-03-30 08:35:00','2018-04-26 10:00:00','国庆节快乐',1,2,'2018-03-29 19:05:29','2018-03-30 08:38:18',123456,'asdfasdfasdf');
/*!40000 ALTER TABLE `bs_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_activity_card`
--

DROP TABLE IF EXISTS `bs_activity_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_activity_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `aid` bigint(20) NOT NULL COMMENT '活动编号',
  `pid` bigint(20) NOT NULL COMMENT '景区编号',
  `card_text` varchar(200) NOT NULL COMMENT '集卡文字',
  `card_num` varchar(200) NOT NULL COMMENT '集卡文字次数',
  `probability` varchar(200) NOT NULL COMMENT '出现的概率',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='活动景区卡字设置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_activity_card`
--

LOCK TABLES `bs_activity_card` WRITE;
/*!40000 ALTER TABLE `bs_activity_card` DISABLE KEYS */;
INSERT INTO `bs_activity_card` VALUES (1,2,1,'端-午-节','[{\"keyWord\":\"端\",\"count\":50},{\"keyWord\":\"午\",\"count\":10},{\"keyWord\":\"节\",\"count\":1}]','{\"scenicArea\":40,\"merchant\":20,\"personal\":10}','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(2,2,2,'端-午-节-快','[{\"keyWord\":\"端\",\"count\":30},{\"keyWord\":\"午\",\"count\":10},{\"keyWord\":\"节\",\"count\":1},,{\"keyWord\":\"快\",\"count\":5}]','{\"scenicArea\":40,\"merchant\":20,\"personal\":10}','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(3,4,1,'端-午-节','[{\"keyWord\":\"端\",\"count\":40},{\"keyWord\":\"午\",\"count\":20},{\"keyWord\":\"节\",\"count\":10}]','{\"scenicArea\":40,\"merchant\":20,\"personal\":10}','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(4,4,2,'端-午-节-快','[{\"keyWord\":\"端\",\"count\":40},{\"keyWord\":\"午\",\"count\":20},{\"keyWord\":\"节\",\"count\":10},,{\"keyWord\":\"快\",\"count\":10}]','{\"scenicArea\":40,\"merchant\":20,\"personal\":10}','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(5,5,1,'国-庆-节','[{\"keyWord\":\"国\",\"count\":40},{\"keyWord\":\"庆\",\"count\":20},{\"keyWord\":\"节\",\"count\":10}]','{\"scenicArea\":40,\"merchant\":20,\"personal\":10}','2018-03-29 19:05:29','2018-03-29 19:05:29',123456),(6,5,2,'国-庆-节-快','[{\"keyWord\":\"国\",\"count\":40},{\"keyWord\":\"庆\",\"count\":20},{\"keyWord\":\"节\",\"count\":10},,{\"keyWord\":\"快\",\"count\":10}]','{\"scenicArea\":40,\"merchant\":20,\"personal\":10}','2018-03-29 19:05:29','2018-03-29 19:05:29',123456);
/*!40000 ALTER TABLE `bs_activity_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_activity_line`
--

DROP TABLE IF EXISTS `bs_activity_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_activity_line` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `coordinate` varchar(200) NOT NULL COMMENT '坐标',
  `prompt` varchar(800) NOT NULL COMMENT '提示信息',
  `pid` bigint(20) NOT NULL COMMENT '活动编号',
  `sortnum` int(11) NOT NULL COMMENT '站点序号 ',
  `type` int(11) NOT NULL COMMENT '提示类型 1文字  2 图片 3 语音',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='活动线路';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_activity_line`
--

LOCK TABLES `bs_activity_line` WRITE;
/*!40000 ALTER TABLE `bs_activity_line` DISABLE KEYS */;
INSERT INTO `bs_activity_line` VALUES (1,'签到点1','110,223','您好，123',1,1,1,'2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(2,'签到点2','110,223','您好，123',1,1,1,'2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(3,'签到点3','110,223','您好，123',1,1,1,'2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(4,'签到点1','110,223','您好，123',3,1,1,'2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(5,'签到点2','110,223','您好，123',3,1,1,'2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(6,'签到点3','110,223','您好，123',3,1,1,'2018-03-26 10:00:00','2018-03-26 10:00:00',123456);
/*!40000 ALTER TABLE `bs_activity_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_activity_merchant`
--

DROP TABLE IF EXISTS `bs_activity_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_activity_merchant` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `aid` bigint(11) NOT NULL COMMENT '活动编号',
  `pid` bigint(11) NOT NULL COMMENT '商户编号',
  `create_time` datetime NOT NULL COMMENT '报名时间',
  `state` int(11) NOT NULL COMMENT '状态 1待审核 2 审核通过 3 审核不通过',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='活动商户报名表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_activity_merchant`
--

LOCK TABLES `bs_activity_merchant` WRITE;
/*!40000 ALTER TABLE `bs_activity_merchant` DISABLE KEYS */;
INSERT INTO `bs_activity_merchant` VALUES (1,1,1,'2018-03-26 17:11:29',2,'2018-03-26 17:11:29','2018-03-27 14:46:54',123),(2,2,2,'2018-03-26 17:11:29',2,'2018-03-26 17:11:29','2018-03-26 17:11:29',123),(3,2,2,'2018-03-27 13:51:40',2,'2018-03-27 13:51:40','2018-03-27 14:47:09',NULL),(4,2,2,'2018-03-30 15:10:25',1,'2018-03-30 15:10:25','2018-03-30 15:10:25',NULL);
/*!40000 ALTER TABLE `bs_activity_merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_activity_record`
--

DROP TABLE IF EXISTS `bs_activity_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_activity_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `aid` bigint(20) NOT NULL COMMENT '活动编号',
  `activity_type` int(11) DEFAULT NULL COMMENT '活动类型1集卡  2定向越野',
  `uid` bigint(20) NOT NULL COMMENT '用户编号',
  `area_id` bigint(20) DEFAULT NULL COMMENT '景区编号(集字卡)',
  `line_id` bigint(20) DEFAULT NULL COMMENT '线路编号(定向越野)',
  `create_time` datetime NOT NULL COMMENT '寻宝日期',
  `treasure` varchar(20) NOT NULL COMMENT '宝藏',
  `state` int(11) NOT NULL COMMENT '状态 1未核销 2 已核销',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='游客活动参与记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_activity_record`
--

LOCK TABLES `bs_activity_record` WRITE;
/*!40000 ALTER TABLE `bs_activity_record` DISABLE KEYS */;
INSERT INTO `bs_activity_record` VALUES (1,4,1,1,1,0,'2018-03-26 10:00:00','端',1,'2018-03-26 10:00:00','2018-03-26 10:00:00',1),(2,4,1,1,2,0,'2018-03-27 10:00:00','端',2,'2018-03-26 10:00:00','2018-03-26 10:00:00',1),(3,4,1,1,2,0,'2018-03-23 15:00:00','端',1,'2018-03-26 10:00:00','2018-03-26 10:00:00',1),(4,1,2,2,2,1,'2018-03-27 10:00:00','',2,'2018-03-26 10:00:00','2018-03-26 10:00:00',1),(5,1,2,2,2,2,'2018-03-23 15:00:00','',1,'2018-03-26 10:00:00','2018-03-26 10:00:00',1),(6,4,1,1,2,0,'2018-03-30 15:00:00','午',1,'2018-03-26 10:00:00','2018-03-26 10:00:00',1),(7,4,1,1,2,0,'2018-03-30 16:00:00','节',1,'2018-03-26 10:00:00','2018-03-26 10:00:00',1),(8,1,2,2,2,3,'2018-03-30 15:00:00','',1,'2018-03-26 10:00:00','2018-03-26 10:00:00',1);
/*!40000 ALTER TABLE `bs_activity_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_activity_type`
--

DROP TABLE IF EXISTS `bs_activity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_activity_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `activity_name` varchar(30) NOT NULL COMMENT '活动名称',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_activity_type`
--

LOCK TABLES `bs_activity_type` WRITE;
/*!40000 ALTER TABLE `bs_activity_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_activity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_award_records`
--

DROP TABLE IF EXISTS `bs_award_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_award_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `aid` bigint(20) NOT NULL COMMENT '活动编号',
  `uid` bigint(20) NOT NULL COMMENT '用户编号',
  `create_time` datetime NOT NULL COMMENT '兑换日期',
  `gid` bigint(20) NOT NULL COMMENT '奖项编号',
  `num` int(11) NOT NULL COMMENT '数量',
  `express_orderid` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `express_name` varchar(100) DEFAULT NULL COMMENT '快递公司名称',
  `state` int(11) NOT NULL COMMENT '状态 1 已审核 2 未审核 3已发货',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='活动兑奖记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_award_records`
--

LOCK TABLES `bs_award_records` WRITE;
/*!40000 ALTER TABLE `bs_award_records` DISABLE KEYS */;
INSERT INTO `bs_award_records` VALUES (1,1,1,'2018-03-24 10:00:00',1,1,'WE545262','顺丰快递',1,'2018-03-26 10:00:00','2018-03-29 13:46:46',1),(2,1,1,'2018-03-28 10:00:00',2,1,'11111','圆通',1,'2018-03-26 10:00:00','2018-03-26 10:00:00',1);
/*!40000 ALTER TABLE `bs_award_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_award_set`
--

DROP TABLE IF EXISTS `bs_award_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_award_set` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `aid` bigint(20) NOT NULL COMMENT '活动编号',
  `reward_name` varchar(30) NOT NULL COMMENT '奖项名称',
  `reward_num` int(11) NOT NULL COMMENT '奖项数量',
  `win_condition` varchar(1000) DEFAULT NULL COMMENT '获奖条件',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='奖项设置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_award_set`
--

LOCK TABLES `bs_award_set` WRITE;
/*!40000 ALTER TABLE `bs_award_set` DISABLE KEYS */;
INSERT INTO `bs_award_set` VALUES (1,1,'特等奖',1,'签到点1-签到点2-签到点3','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(2,1,'一等奖',2,'签到点1-签到点2','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(3,2,'特等奖',10,'端-午-节-快-乐','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(4,2,'一等奖',20,'端-午-节-快','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(5,2,'二等奖',30,'端-午-节','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(6,3,'特等奖',1,'签到点1-签到点2-签到点3','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(7,3,'一等奖',2,'签到点1-签到点2','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(8,4,'特等奖',1,'端-午-节-快-乐','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(9,4,'一等奖',2,'端-午-节-快','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(10,4,'二等奖',3,'端-午-节','2018-03-26 10:00:00','2018-03-26 10:00:00',123456),(11,5,'特等奖',1,'国-庆-节-快-乐','2018-03-29 19:05:29','2018-03-29 19:05:29',123456),(12,5,'一等奖',2,'国-庆-节-快','2018-03-29 19:05:29','2018-03-29 19:05:29',123456),(13,5,'二等奖',3,'国-庆-节','2018-03-29 19:05:29','2018-03-29 19:05:29',123456);
/*!40000 ALTER TABLE `bs_award_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_box_open_record`
--

DROP TABLE IF EXISTS `bs_box_open_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_box_open_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `box_id` bigint(20) NOT NULL COMMENT '宝箱编号',
  `gmt_open_time` datetime NOT NULL COMMENT '开启时间',
  `gmt_open_user` bigint(20) NOT NULL COMMENT '开启人',
  `open_address` varchar(200) DEFAULT NULL COMMENT '开启地理位置(经纬度)',
  `treasure_id` bigint(20) DEFAULT NULL COMMENT '开启宝物编号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宝箱开启记录,开启一次宝箱有可能有多条记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_box_open_record`
--

LOCK TABLES `bs_box_open_record` WRITE;
/*!40000 ALTER TABLE `bs_box_open_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_box_open_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_goods`
--

DROP TABLE IF EXISTS `bs_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) NOT NULL COMMENT '商品名称',
  `picture` varchar(200) NOT NULL COMMENT '商品图片',
  `price` bigint(20) NOT NULL COMMENT '商品价格(元)',
  `status` int(11) NOT NULL COMMENT '商品状态 1 上架  2下架',
  `creat_date` date DEFAULT NULL COMMENT '添加日期',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_goods`
--

LOCK TABLES `bs_goods` WRITE;
/*!40000 ALTER TABLE `bs_goods` DISABLE KEYS */;
INSERT INTO `bs_goods` VALUES (1,'苹果','23',234,1,'2017-09-19','2018-03-26 18:47:25',NULL,NULL),(2,'西瓜','23',234,1,'2017-09-19','2018-03-26 18:47:52',NULL,NULL);
/*!40000 ALTER TABLE `bs_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_goods_writeoff`
--

DROP TABLE IF EXISTS `bs_goods_writeoff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_goods_writeoff` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL COMMENT '兑换人编号',
  `user_mobile` varchar(20) DEFAULT NULL COMMENT '兑换用户手机号',
  `user_name` datetime NOT NULL COMMENT '兑换人姓名',
  `writ_off_time` datetime DEFAULT NULL COMMENT '核销时间',
  `num` int(11) NOT NULL COMMENT '数量',
  `oper_use_id` bigint(20) DEFAULT NULL COMMENT '核销人',
  `status` int(11) NOT NULL COMMENT '状态 1未核销  2已核销',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宝物核销记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_goods_writeoff`
--

LOCK TABLES `bs_goods_writeoff` WRITE;
/*!40000 ALTER TABLE `bs_goods_writeoff` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_goods_writeoff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_hidden_treasure`
--

DROP TABLE IF EXISTS `bs_hidden_treasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_hidden_treasure` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `scenic_id` bigint(20) DEFAULT NULL COMMENT '景区编号',
  `location` varchar(200) NOT NULL COMMENT '藏宝坐标',
  `location_address` varchar(200) DEFAULT NULL COMMENT '坐标名称',
  `type` int(11) NOT NULL COMMENT '藏宝类型 1事物商品  2虚拟商品',
  `show_type` int(11) NOT NULL COMMENT '商品类型1.商城商品2.图片 3.语音 4.短视频',
  `goods_name` varchar(500) DEFAULT NULL COMMENT '选择类型内容',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '藏宝商品',
  `att_url` varchar(500) DEFAULT NULL COMMENT '虚拟商品地址（图片、语音、视频）',
  `name` varchar(20) NOT NULL COMMENT '宝藏名称',
  `price` bigint(20) DEFAULT NULL COMMENT '单价(针对实物商品)',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `open_condition` int(11) NOT NULL COMMENT '开启条件 1实景扫描 2回答问题3无',
  `images` varchar(500) DEFAULT NULL COMMENT '开启条件-待扫描图片',
  `problem` varchar(200) DEFAULT NULL COMMENT '问题',
  `result` varchar(200) DEFAULT NULL COMMENT '答案',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '留言',
  `enable_status` int(11) NOT NULL COMMENT '是否启用 1启用 2停止',
  `role_id` bigint(20) DEFAULT NULL COMMENT '藏宝角色 1 政府 2平台 3景区 4商户 5游客',
  `activity_id` bigint(20) DEFAULT NULL COMMENT '线路编号（定向越野）',
  `oid` bigint(20) DEFAULT '0' COMMENT '订单编号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='藏宝管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_hidden_treasure`
--

LOCK TABLES `bs_hidden_treasure` WRITE;
/*!40000 ALTER TABLE `bs_hidden_treasure` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_hidden_treasure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_merchant`
--

DROP TABLE IF EXISTS `bs_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_merchant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `merchant_name` varchar(20) NOT NULL COMMENT '商户名称',
  `sid` bigint(20) NOT NULL COMMENT '所属景区',
  `merchant_position` varchar(200) NOT NULL COMMENT '商户位置',
  `store_picture` varchar(800) NOT NULL COMMENT '门店图片',
  `telphone` varchar(20) NOT NULL COMMENT '联系电话',
  `business_license` varchar(800) NOT NULL COMMENT '营业执照',
  `state` int(11) NOT NULL COMMENT '状态 1 已审核 2 未审核',
  `create_time` date NOT NULL COMMENT '添加日期',
  `end_time` date NOT NULL COMMENT '有效期至',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_merchant`
--

LOCK TABLES `bs_merchant` WRITE;
/*!40000 ALTER TABLE `bs_merchant` DISABLE KEYS */;
INSERT INTO `bs_merchant` VALUES (1,'商户一',1,'{\"end\":{\"address\":\"\",\"latlng\":[\"\"]},\"start\":{\"address\":\"长沙\",\"latlng\":[\"234234,234234\"]}}','图片','18874981921','营业执照',1,'2018-03-26','2018-03-26','2018-03-26 17:11:29',NULL,NULL),(2,'商户二',2,'{\"end\":{\"address\":\"\",\"latlng\":[\"\"]},\"start\":{\"address\":\"长沙\",\"latlng\":[\"234234,234234\"]}}','图片','18874981921','营业执照',1,'2018-03-26','2018-03-26','2018-03-26 17:12:36',NULL,NULL);
/*!40000 ALTER TABLE `bs_merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_order`
--

DROP TABLE IF EXISTS `bs_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `money` bigint(20) NOT NULL COMMENT '订单金额',
  `num` int(11) NOT NULL COMMENT '数量',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `mobile` varchar(50) NOT NULL COMMENT '用户手机号',
  `creat_time` datetime NOT NULL COMMENT '订单日期',
  `address` varchar(50) NOT NULL COMMENT '收货地址',
  `receiver` varchar(50) NOT NULL COMMENT '收货人',
  `receiver_mobile` varchar(50) NOT NULL COMMENT '收货人手机号',
  `status` int(11) NOT NULL COMMENT '订单状态 1未审核',
  `audit_status` int(11) NOT NULL COMMENT '订单审核状态 1审核通过 2审核不通过',
  `auditor` varchar(50) DEFAULT NULL COMMENT '审核人',
  `audit_date` date DEFAULT NULL COMMENT '审核时间',
  `delivery_status` int(11) DEFAULT NULL COMMENT '发货状态 1 未发货 2已发货',
  `deliveryr` varchar(50) DEFAULT NULL COMMENT '发货人',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `express_name` varchar(50) DEFAULT NULL COMMENT '快递名称',
  `express_numbers` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_order`
--

LOCK TABLES `bs_order` WRITE;
/*!40000 ALTER TABLE `bs_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_order_detail`
--

DROP TABLE IF EXISTS `bs_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `trade_time` datetime NOT NULL COMMENT '交易日期',
  `payaccount` varchar(50) NOT NULL COMMENT '付款账号',
  `rid` bigint(20) NOT NULL COMMENT '账户角色',
  `goods_type` int(11) NOT NULL COMMENT '商品类别',
  `price` bigint(20) NOT NULL COMMENT '单价',
  `num` int(11) NOT NULL COMMENT '数量',
  `income` bigint(20) DEFAULT NULL COMMENT '收入',
  `pay_type` int(11) NOT NULL COMMENT '付款方式 1微信支付 2支付宝支付',
  `order_id` bigint(20) NOT NULL COMMENT '订单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_order_detail`
--

LOCK TABLES `bs_order_detail` WRITE;
/*!40000 ALTER TABLE `bs_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_poster`
--

DROP TABLE IF EXISTS `bs_poster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_poster` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) NOT NULL COMMENT '广告名称',
  `picture` varchar(50) NOT NULL COMMENT '广告图片',
  `start_time` datetime NOT NULL COMMENT '开始日期',
  `end_time` datetime NOT NULL COMMENT '结束日期',
  `shownum` int(11) NOT NULL COMMENT '展现次数',
  `scenic_id` bigint(20) NOT NULL COMMENT '所属景区',
  `status` int(11) NOT NULL COMMENT '状态 1启用 2停止',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_poster`
--

LOCK TABLES `bs_poster` WRITE;
/*!40000 ALTER TABLE `bs_poster` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_poster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_redeem_code`
--

DROP TABLE IF EXISTS `bs_redeem_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_redeem_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `treasure_id` bigint(20) DEFAULT NULL COMMENT '宝藏编号',
  `code` varchar(50) DEFAULT NULL COMMENT '兑换码',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兑换码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_redeem_code`
--

LOCK TABLES `bs_redeem_code` WRITE;
/*!40000 ALTER TABLE `bs_redeem_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_redeem_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_scenic_spot`
--

DROP TABLE IF EXISTS `bs_scenic_spot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_scenic_spot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `scenic_name` varchar(20) NOT NULL COMMENT '景区名称',
  `scenic_position` varchar(200) NOT NULL COMMENT '景区位置',
  `scenic_picture` varchar(500) NOT NULL COMMENT '景区图片',
  `scenic_introduce` varchar(800) NOT NULL COMMENT '景区介绍',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='景区表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_scenic_spot`
--

LOCK TABLES `bs_scenic_spot` WRITE;
/*!40000 ALTER TABLE `bs_scenic_spot` DISABLE KEYS */;
INSERT INTO `bs_scenic_spot` VALUES (1,'11','{\"end\":{\"address\":\"11\",\"latlng\":[\"123123,233\"]},\"start\":{\"address\":\"11\",\"latlng\":[\"11,23\"]}}','1','11','2018-03-26 15:58:39',NULL,NULL),(2,'12','{\"end\":{\"address\":\"\",\"latlng\":[\"\"]},\"start\":{\"address\":\"麓谷公园\",\"latlng\":[\"112324,2323424\"]}}','1','11','2018-03-26 16:00:00',NULL,NULL);
/*!40000 ALTER TABLE `bs_scenic_spot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_treasure_goods`
--

DROP TABLE IF EXISTS `bs_treasure_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_treasure_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '宝物所属用户',
  `treasure_id` bigint(20) DEFAULT NULL COMMENT '宝藏编号',
  `status` int(11) DEFAULT NULL COMMENT '宝物状态 0未兑换 1已兑换',
  `gmt_num` int(11) DEFAULT NULL COMMENT '宝物获取数',
  `redeem_code` varchar(50) DEFAULT NULL COMMENT '兑换码',
  `get_time` datetime DEFAULT NULL COMMENT '宝物获取时间',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gtm_modify` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的宝藏（游客、商户） 所挖的宝藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_treasure_goods`
--

LOCK TABLES `bs_treasure_goods` WRITE;
/*!40000 ALTER TABLE `bs_treasure_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_treasure_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_user_friends`
--

DROP TABLE IF EXISTS `bs_user_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bs_user_friends` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` bigint(20) NOT NULL COMMENT '用户id',
  `uid` bigint(20) NOT NULL COMMENT '好友id',
  `type` int(11) NOT NULL COMMENT '类型  0、我的好友(uid好友数量)  1、我发送的申请 2、新的好友待我审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户好友表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_user_friends`
--

LOCK TABLES `bs_user_friends` WRITE;
/*!40000 ALTER TABLE `bs_user_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `bs_user_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uid` bigint(20) NOT NULL COMMENT '用户编号',
  `log_type` int(10) NOT NULL COMMENT '日志类型：1:登录日志，2:用户日志，3:订单日志，4:商品日志',
  `create_time` datetime NOT NULL COMMENT '操作时间',
  `cid` bigint(20) NOT NULL COMMENT '所属企业',
  `oid` bigint(20) NOT NULL COMMENT '所属分公司',
  `operinfo` varchar(500) NOT NULL COMMENT '操作类容',
  `gmt_create` datetime NOT NULL COMMENT '添加日期',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新日期',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(30) NOT NULL COMMENT '菜单名称',
  `menu_url` varchar(200) DEFAULT NULL COMMENT '菜单地址',
  `function_type` int(11) DEFAULT NULL COMMENT '功能类型 1、平台  2、企业  3、政府  4、通用',
  `pid` bigint(20) NOT NULL COMMENT '父级菜单 0、表示 一级',
  `sort_num` int(11) NOT NULL COMMENT '排序',
  `remake` varchar(200) DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `modify_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `vision` bigint(20) NOT NULL COMMENT '版本号',
  `is_show` int(11) DEFAULT NULL COMMENT '是否显示 1.显示 0.不显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理','',4,0,1,NULL,'2018-03-27 17:23:15',NULL,0,6,0,1),(2,'菜单管理','/m/manager/sysMenu/roleMenu',4,1,1,NULL,'2018-03-27 17:26:10',NULL,0,1,0,1),(3,'角色管理','/m/manage/sysRole/list',4,1,2,NULL,'2018-03-27 18:21:40',NULL,0,1,0,1),(4,'参数配置','/m/manager/sysTreasureConfig/list',1,1,3,NULL,'2018-03-27 19:09:56',NULL,1,1,0,1),(8,'景区管理','',1,0,2,NULL,'2018-03-28 10:45:19',NULL,1,NULL,0,1),(9,'景区管理','/m/manager/bsScenicSpot/list',1,8,1,NULL,'2018-03-28 10:47:52',NULL,1,6,0,1),(10,'商户管理','',1,0,3,NULL,'2018-03-28 11:14:00',NULL,1,NULL,0,1),(11,'游客管理','',1,0,4,NULL,'2018-03-28 11:14:31',NULL,1,NULL,0,1),(12,'活动管理','',1,0,5,NULL,'2018-03-28 11:14:52',NULL,1,NULL,0,1),(13,'商品管理','',1,0,6,NULL,'2018-03-28 11:15:03',NULL,1,NULL,0,1),(14,'藏宝管理','',1,0,7,NULL,'2018-03-28 11:15:16',NULL,1,NULL,0,1),(15,'寻宝管理','',1,0,8,NULL,'2018-03-28 11:15:27',NULL,1,NULL,0,1),(16,'订单管理','',1,0,9,NULL,'2018-03-28 11:15:42',NULL,1,NULL,0,1),(17,'财务管理','',1,0,10,NULL,'2018-03-28 11:16:01',NULL,1,NULL,0,1),(18,'广告管理','',1,0,11,NULL,'2018-03-28 11:16:11',NULL,1,NULL,0,1),(19,'用户管理','/m/manager/sysUser/list',1,1,3,NULL,'2018-03-28 11:48:32',NULL,1,NULL,0,1),(20,'活动管理','/m/manager/activity/list',1,12,1,NULL,'2018-03-30 16:04:32',NULL,7,7,0,1);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_persion`
--

DROP TABLE IF EXISTS `sys_persion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_persion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `m_id` bigint(20) NOT NULL COMMENT '菜单编号',
  `persion_name` varchar(50) NOT NULL COMMENT '权限名称',
  `persion` varchar(100) NOT NULL COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_persion`
--

LOCK TABLES `sys_persion` WRITE;
/*!40000 ALTER TABLE `sys_persion` DISABLE KEYS */;
INSERT INTO `sys_persion` VALUES (8,3,'列表','/m/manager/sysRole/list'),(9,3,'新增','/m/manager/sysRole/add'),(10,3,'修改','/m/manager/sysRole/update'),(11,3,'删除','/m/manager/sysRole/delete'),(12,3,'详情','/m/manager/sysRole/info'),(13,2,'菜单','/m/manager/sysMenu/listTree'),(14,2,'获取菜单','/m/manager/sysMenu/roleMenu'),(15,2,'添加','/m/manager/sysMenu/add'),(16,2,'菜单详情','/m/manager/sysMenu/info'),(17,2,'权限列表','/m/manager/sysPersion/listForMenu'),(18,2,'添加权限','/m/manager/sysPersion/add'),(19,2,'修改权限','/m/manager/sysPersion/update'),(20,2,'修改','/m/manager/sysMenu/update'),(21,2,'用户权限','/m/manager/sysPersion/roleinfolist'),(22,2,'添加用户权限','/m/manager/sysPersion/unionAdd'),(23,2,'删除菜单','/m/manager/sysMenu/delete'),(24,19,'用户列表','/m/manager/sysUser/list'),(25,19,'添加用户','/m/manager/sysUser/add'),(27,3,'删除权限','/m/manager/sysPersion/delete'),(28,19,'删除用户','/m/manager/sysUser/delete'),(30,19,'用户信息','/m/manager/sysUser/info'),(31,19,'用户修改','/m/manager/sysUser/update'),(32,19,'重置密码','/m/manager/sysUser/resetPassword'),(33,4,'参数配置','/m/manager/sysTreasureConfig/info');
/*!40000 ALTER TABLE `sys_persion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_type` varchar(30) DEFAULT NULL COMMENT '角色类型 1、平台  2、企业  3、政府',
  `role_data` varchar(500) DEFAULT NULL COMMENT '数据权限',
  `remake` varchar(200) DEFAULT NULL COMMENT '备注',
  `cid` bigint(20) NOT NULL COMMENT '所属企业',
  `oid` bigint(20) NOT NULL COMMENT '所属分公司',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `modify_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `vision` bigint(20) NOT NULL COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'政府','政府',NULL,'政府',1,1,'2018-03-26 16:06:12',NULL,1,NULL,0),(2,'平台','平台',NULL,'平台',2,2,'2018-03-26 16:06:51',NULL,1,NULL,0),(3,'景区','景区',NULL,'景区',3,3,'2018-03-26 16:07:21',NULL,1,NULL,0),(4,'商户','商户',NULL,'商户',4,4,'2018-03-26 16:07:56',NULL,1,NULL,0),(5,'游客','游客',NULL,'游客',5,5,'2018-03-26 16:08:16',NULL,1,NULL,0);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_treasure_config`
--

DROP TABLE IF EXISTS `sys_treasure_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_treasure_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `coordinate_deviation` int(11) NOT NULL COMMENT '坐标偏差范围',
  `matching_degree` int(11) NOT NULL COMMENT '扫图匹配度',
  `remaind_range` int(11) NOT NULL COMMENT '提示范围数',
  `treasures_num` int(11) NOT NULL COMMENT '最多免费藏宝数',
  `price` decimal(18,2) NOT NULL COMMENT '藏宝卷价格',
  `treasure_rule` varchar(1000) DEFAULT NULL COMMENT '宝藏规则提示',
  `protocol` varchar(1500) DEFAULT NULL COMMENT '商户入住协议',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `success_prompt` varchar(800) DEFAULT NULL COMMENT '报名成功提示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='寻宝配制参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_treasure_config`
--

LOCK TABLES `sys_treasure_config` WRITE;
/*!40000 ALTER TABLE `sys_treasure_config` DISABLE KEYS */;
INSERT INTO `sys_treasure_config` VALUES (1,0,0,0,0,0.00,'5','0','2018-03-30 15:25:38',NULL,0,NULL);
/*!40000 ALTER TABLE `sys_treasure_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_union`
--

DROP TABLE IF EXISTS `sys_union`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_union` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `rid` bigint(20) NOT NULL COMMENT '角色编号',
  `oid` bigint(20) DEFAULT NULL COMMENT '权限编号',
  `type` int(11) DEFAULT NULL COMMENT '类型1、(角色rid、菜单oid)2、(角色rid,权限oid)4、(角色rid,用户oid)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1470 DEFAULT CHARSET=utf8 COMMENT='角色权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_union`
--

LOCK TABLES `sys_union` WRITE;
/*!40000 ALTER TABLE `sys_union` DISABLE KEYS */;
INSERT INTO `sys_union` VALUES (1,2,1,4),(2,5,2,4),(681,2,5,4),(982,2,7,4),(1429,2,13,2),(1430,2,14,2),(1431,2,15,2),(1432,2,16,2),(1433,2,17,2),(1434,2,18,2),(1435,2,19,2),(1436,2,20,2),(1437,2,21,2),(1438,2,22,2),(1439,2,23,2),(1440,2,8,2),(1441,2,9,2),(1442,2,10,2),(1443,2,11,2),(1444,2,12,2),(1445,2,27,2),(1446,2,33,2),(1447,2,24,2),(1448,2,25,2),(1449,2,28,2),(1450,2,30,2),(1451,2,31,2),(1452,2,32,2),(1453,2,1,1),(1454,2,8,1),(1455,2,10,1),(1456,2,11,1),(1457,2,12,1),(1458,2,13,1),(1459,2,14,1),(1460,2,15,1),(1461,2,16,1),(1462,2,17,1),(1463,2,18,1),(1464,2,2,1),(1465,2,3,1),(1466,2,4,1),(1467,2,19,1),(1468,2,9,1),(1469,2,20,1);
/*!40000 ALTER TABLE `sys_union` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `login_name` varchar(30) NOT NULL COMMENT '账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户名称',
  `user_pwd` varchar(100) NOT NULL COMMENT '用户密码',
  `user_type` int(11) NOT NULL COMMENT '用户类型 1、 平台  2、企业  3、政府',
  `real_name` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `telphone` varchar(30) NOT NULL COMMENT '联系电话',
  `ismanager` int(11) DEFAULT NULL COMMENT '是否管理员   1、管理员  2、非管理员',
  `use_status` int(11) NOT NULL COMMENT '状态 1、正常  2、锁定  3、永久禁用',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `cid` varchar(50) DEFAULT NULL COMMENT '所属企业',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modify` datetime DEFAULT NULL COMMENT '更新时间',
  `gmt_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `modify_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `vision` bigint(20) NOT NULL COMMENT '版本号',
  `device_token` varchar(200) DEFAULT NULL COMMENT '友盟设备号',
  `image` varchar(800) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(30) DEFAULT NULL COMMENT '昵称',
  `user_address` varchar(400) DEFAULT NULL COMMENT '收货地址',
  `receiver` varchar(20) DEFAULT NULL COMMENT '收货人',
  `receiver_telephone` varchar(20) DEFAULT NULL COMMENT '收货人手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'888884','测试','21218CCA77804D2BA1922C33E0151105',1,'测试','13755028679',1,1,'测试','2','2018-03-26 16:10:45','2018-03-30 16:06:36',1,NULL,0,NULL,NULL,NULL,'12',NULL,NULL),(2,'zhangbing','张冰','92894219EF3E7B6D752F058D31C5166C',1,NULL,'13755028679',2,2,NULL,'2','2018-03-27 11:20:52','2018-03-30 14:30:19',0,NULL,0,NULL,NULL,NULL,'22',NULL,NULL),(5,'666666','立即','21218CCA77804D2BA1922C33E0151105',1,NULL,'18774976982',NULL,1,NULL,'哈哈哈','2018-03-30 11:31:05','2018-03-30 16:05:28',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(7,'admin','管理员','21218CCA77804D2BA1922C33E0151105',1,NULL,'15010201410',NULL,1,NULL,'悦行互联','2018-03-30 16:01:22',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 17:36:23
