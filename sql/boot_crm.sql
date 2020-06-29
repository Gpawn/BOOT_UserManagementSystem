CREATE DATABASE  IF NOT EXISTS `boot_crm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `boot_crm`;
-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: boot_crm
-- ------------------------------------------------------
-- Server version	5.7.24-log

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
-- Table structure for table `base_dict`
--

DROP TABLE IF EXISTS `base_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_dict` (
  `dict_id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '数据字典项目名称',
  `dict_item_code` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '数据字典项目代码(可为空)',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) CHARACTER SET utf8 NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_dict`
--

LOCK TABLES `base_dict` WRITE;
/*!40000 ALTER TABLE `base_dict` DISABLE KEYS */;
INSERT INTO `base_dict` VALUES ('1','001','客户行业','教育培训 ',NULL,1,'1',NULL),('10','003','公司性质','民企',NULL,3,'1',NULL),('12','004','年营业额','1-10万',NULL,1,'1',NULL),('13','004','年营业额','10-20万',NULL,2,'1',NULL),('14','004','年营业额','20-50万',NULL,3,'1',NULL),('15','004','年营业额','50-100万',NULL,4,'1',NULL),('16','004','年营业额','100-500万',NULL,5,'1',NULL),('17','004','年营业额','500-1000万',NULL,6,'1',NULL),('18','005','客户状态','基础客户',NULL,1,'1',NULL),('19','005','客户状态','潜在客户',NULL,2,'1',NULL),('2','001','客户行业','电子商务',NULL,2,'1',NULL),('20','005','客户状态','成功客户',NULL,3,'1',NULL),('21','005','客户状态','无效客户',NULL,4,'1',NULL),('22','006','客户级别','普通客户',NULL,1,'1',NULL),('23','006','客户级别','VIP客户',NULL,2,'1',NULL),('24','007','商机状态','意向客户',NULL,1,'1',NULL),('25','007','商机状态','初步沟通',NULL,2,'1',NULL),('26','007','商机状态','深度沟通',NULL,3,'1',NULL),('27','007','商机状态','签订合同',NULL,4,'1',NULL),('3','001','客户行业','对外贸易',NULL,3,'1',NULL),('30','008','商机类型','新业务',NULL,1,'1',NULL),('31','008','商机类型','现有业务',NULL,2,'1',NULL),('32','009','商机来源','电话营销',NULL,1,'1',NULL),('33','009','商机来源','网络营销',NULL,2,'1',NULL),('34','009','商机来源','推广活动',NULL,3,'1',NULL),('4','001','客户行业','酒店旅游',NULL,4,'1',NULL),('5','001','客户行业','房地产',NULL,5,'1',NULL),('6','002','客户信息来源','电话营销',NULL,1,'1',NULL),('7','002','客户信息来源','网络营销',NULL,2,'1',NULL),('8','003','公司性质','合资',NULL,1,'1',NULL),('9','003','公司性质','国企',NULL,2,'1',NULL);
/*!40000 ALTER TABLE `base_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '客户名称',
  `cust_user_id` int(32) DEFAULT NULL COMMENT '负责人id',
  `cust_create_id` int(32) DEFAULT NULL COMMENT '创建人id',
  `cust_source` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户信息来源',
  `cust_industry` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户所属行业',
  `cust_level` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户级别',
  `cust_linkman` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人',
  `cust_phone` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '固定电话',
  `cust_mobile` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT '移动电话',
  `cust_zipcode` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮政编码',
  `cust_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系地址',
  `cust_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `rows` int(11) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `customer_user_id_idx` (`cust_create_id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (14,'张礼仪',NULL,1,'7','3','23','小雪','010-88888887','13848399998','100096','北京昌平区西三旗','2016-04-08 16:32:01',NULL,NULL),(15,' 韩确信',NULL,2,'7','3','23','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:01',NULL,NULL),(16,'李清照',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:01',NULL,NULL),(17,'赵朔',NULL,4,'6','4','23','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:02',NULL,NULL),(22,'王小明',NULL,3,'6','2','23','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:03',NULL,NULL),(24,'杨小伟',NULL,2,'7','5','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:03',NULL,NULL),(25,'Tom',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:03',NULL,NULL),(26,'jack',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:03',NULL,NULL),(28,'Rose',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:04',NULL,NULL),(29,' 韩愈',NULL,1,'7','1','23','小雪','010-88888886','13888888886','100096','北京昌平区西三旗','2016-04-08 16:32:04',NULL,NULL),(30,'叶璇',NULL,2,'6','2','23','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:04',NULL,NULL),(31,'韩红',NULL,4,'7','1','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:04',NULL,NULL),(33,'兰海',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:04',NULL,NULL),(34,'韩怡凡',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:05',NULL,NULL),(35,'姜文',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:05',NULL,NULL),(36,'韩雪菲',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:05',NULL,NULL),(37,'梦倩倩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:05',NULL,NULL),(38,'孙武',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:05',NULL,NULL),(39,'韩一平',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:06',NULL,NULL),(40,'韩涛旭',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:06',NULL,NULL),(41,'韩苗苗',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:06',NULL,NULL),(42,'韩蓄',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:06',NULL,NULL),(43,'韩丰年',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:06',NULL,NULL),(44,'韩梅',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07',NULL,NULL),(45,'韩盛宇',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07',NULL,NULL),(46,'韩卫建',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07',NULL,NULL),(47,'韩哲今 ',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07',NULL,NULL),(48,'韩坤昊',NULL,5,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07',NULL,NULL),(49,'韩少奕',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:07',NULL,NULL),(50,'小钱',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08',NULL,NULL),(51,'韩哲元',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08',NULL,NULL),(52,'小周',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08',NULL,NULL),(53,'韩林志 ',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08',NULL,NULL),(54,'小丽',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08',NULL,NULL),(55,'韩霖希',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:08',NULL,NULL),(56,'韩志辰',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:09',NULL,NULL),(57,'韩尚东',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:09',NULL,NULL),(58,'张三',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:09',NULL,NULL),(59,'李四',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:29',NULL,NULL),(60,'韩少淞',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:29',NULL,NULL),(61,'韩江洋',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:29',NULL,NULL),(62,'韩乐承',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:29',NULL,NULL),(63,'韩普伦',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30',NULL,NULL),(64,'韩颜安',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30',NULL,NULL),(65,'王五',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30',NULL,NULL),(66,'韩宏柏',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30',NULL,NULL),(67,'韩欣铄',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30',NULL,NULL),(68,'赵六',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:30',NULL,NULL),(69,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:31',NULL,NULL),(70,'小韩',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:31',NULL,NULL),(71,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:31',NULL,NULL),(72,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:31',NULL,NULL),(73,'小七',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:31',NULL,NULL),(74,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32',NULL,NULL),(75,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32',NULL,NULL),(76,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32',NULL,NULL),(77,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32',NULL,NULL),(78,'小郑',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32',NULL,NULL),(79,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:32',NULL,NULL),(80,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:33',NULL,NULL),(81,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:33',NULL,NULL),(82,'小吴',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:33',NULL,NULL),(83,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:33',NULL,NULL),(144,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:44',NULL,NULL),(145,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:44',NULL,NULL),(146,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:44',NULL,NULL),(147,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:45',NULL,NULL),(148,'小韩',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:45',NULL,NULL),(149,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:45',NULL,NULL),(150,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:45',NULL,NULL),(151,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:45',NULL,NULL),(152,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46',NULL,NULL),(153,'晶晶',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46',NULL,NULL),(154,'倩倩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46',NULL,NULL),(155,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46',NULL,NULL),(156,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46',NULL,NULL),(157,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:46',NULL,NULL),(158,'小韩',NULL,1,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:47',NULL,NULL),(159,'小韩',NULL,2,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:47',NULL,NULL),(160,'小韩',NULL,3,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:47',NULL,NULL),(161,'小韩',NULL,4,'6','2','22','小雪','010-88888887','13888888888','100096','北京昌平区西三旗','2016-04-08 16:32:47',NULL,NULL),(171,'小韩',NULL,3,'7','1','23','小雪','010-8235438','13755555555','100000','北京昌平区西三旗','2017-05-05 10:23:07',NULL,NULL),(172,'小韩',NULL,2,'6','2','22','小雪','010-0000000','13288546521','100859','北京昌平区西三旗','2017-05-05 10:51:08',NULL,NULL),(173,'小洛',NULL,1,'6','1','22','小雪','01062872234','13521023333','100000','北京昌平区西三旗','2017-05-05 10:57:09',NULL,NULL),(174,'小月',NULL,1,'6','1','22','小雪','0482-8235438','13848399998','137400','内蒙古兴安盟乌兰浩特市','2017-05-05 11:33:27',NULL,NULL),(175,'小韩',NULL,1,'6','1','22','小石','0791-88130000','15179105961','330098','江西省南昌市瑶湖高校园区','2017-05-05 13:17:11',NULL,NULL),(176,'小智',NULL,1,'7','1','23','小黑','400-618-4000','13520203625','100091','北京市海淀区','2017-05-16 15:49:07',NULL,NULL),(177,'小程',NULL,1,'6','1','23','小韩','010-88886616','13718026541','100000','北京市昌平区','2017-05-16 16:25:59',NULL,NULL),(178,'杭州网易网络科技有限公司',NULL,1,'7','2','23','杭易','+8657187654321','','','','2020-06-02 21:53:58',NULL,NULL),(180,'小虎',NULL,1,'7','5','22','小敏','','','','','2020-06-03 11:27:33',NULL,NULL),(181,'小郑',NULL,1,'7','5','23','小郑','0571-88805566','','310018','杭州钱江新区','2020-06-03 19:49:48',NULL,NULL),(182,'若羌',NULL,1,'7','3','22','小若','','','','','2020-06-03 20:23:47',NULL,NULL),(183,'若羌',NULL,1,'7','3','22','小若','','','','','2020-06-03 20:24:00',NULL,NULL),(184,'若羌',NULL,1,'7','3','22','小若','55555555','555555','555555','5555555555555','2020-06-03 20:25:50',NULL,NULL),(185,'若羌',NULL,1,'7','3','22','小若','55555555','555555','555555','5555555555555','2020-06-03 20:30:58',NULL,NULL),(186,'小艾',NULL,NULL,'6','1','22','艾青','666666','666666','666666','6666666',NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '用户账号',
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '用户密码',
  `user_state` int(1) NOT NULL COMMENT '1:正常,0:暂停',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin@163.com','韩磊','admin',1),(2,'m0002','李小雪','123',1),(3,'m0003','石延年','123',1),(4,'m0004','陈子昂','123',1);
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

-- Dump completed on 2020-06-29  8:48:27