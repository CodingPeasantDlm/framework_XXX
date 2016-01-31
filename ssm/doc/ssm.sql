/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : ssm
Target Host     : localhost:3306
Target Database : ssm
Date: 2016-01-27 17:08:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SN` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `STATUS` enum('ACTIVE','INACTIVE') NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  `ORGID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROLE_SN` (`SN`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'manager', '管理员', null, 'ACTIVE', '2013-01-13 19:15:51', '2013-01-13 19:15:53', null);
INSERT INTO `sys_role` VALUES ('2', 'reader', '用户', null, 'ACTIVE', '2013-01-13 19:16:26', '2013-01-13 19:16:29', null);
INSERT INTO `sys_role` VALUES ('3', 'author', '作者', null, 'ACTIVE', '2013-01-13 19:16:48', '2013-01-13 19:16:52', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GENDER` enum('male','female') DEFAULT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `VERIFY` varchar(50) DEFAULT NULL COMMENT '用户注册验证码',
  `NICKNAME` varchar(50) DEFAULT NULL,
  `FIRST_NAME` varchar(30) DEFAULT NULL,
  `LAST_NAME` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE` varchar(30) DEFAULT NULL,
  `STATUS` enum('PENDING','ACTIVE','INACTIVE','DELETED') NOT NULL,
  `BIRTH_DATE` datetime DEFAULT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'male', 'admin', '123456', null, '超级管理员', null, null, 'zhanghuihua@sohu.com', '1234546567', 'ACTIVE', '2011-11-13 00:00:00', '2012-09-13 20:39:01', '2012-09-16 22:14:15');
INSERT INTO `sys_user` VALUES ('2', 'male', 'zhanghuihua', '123456', null, '张慧华', null, null, 'zhanghuihua@sohu.com', '1234546567', 'ACTIVE', null, '2012-09-16 14:55:10', '2014-03-13 15:20:03');
INSERT INTO `sys_user` VALUES ('3', 'male', 'duquan', '123456', null, '杜权', null, null, 'd@j-ui.com', '', 'ACTIVE', null, '2013-07-27 19:32:17', '2013-07-27 19:32:17');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `USER_ID` int(10) unsigned NOT NULL,
  `ROLE_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`USER_ID`,`ROLE_ID`),
  KEY `FK_sys_user_role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('1', '3');
INSERT INTO `sys_user_role` VALUES ('2', '3');
