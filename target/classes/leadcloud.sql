/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : leadcloud

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2013-01-02 15:47:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `core_roles`
-- ----------------------------
DROP TABLE IF EXISTS `core_roles`;
CREATE TABLE `core_roles` (
  `ID` varchar(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_roles
-- ----------------------------
INSERT INTO `core_roles` VALUES ('ROLE_ADMIN', '系统管理员', '系统管理员角色');
INSERT INTO `core_roles` VALUES ('ROLE_USER', '普通用户', '普通用户角色，登陆后所有用户具有该角色');

-- ----------------------------
-- Table structure for `core_users`
-- ----------------------------
DROP TABLE IF EXISTS `core_users`;
CREATE TABLE `core_users` (
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `NICKNAME` varchar(50) default NULL,
  `CREATED` datetime NOT NULL,
  `MODIFIED` datetime NOT NULL,
  `LAST_LOGIN` datetime default NULL,
  PRIMARY KEY  (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_users
-- ----------------------------
INSERT INTO `core_users` VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', 'sunphy@gmail.com', '张三', '2013-01-01 20:56:03', '2013-01-01 20:56:08', '2013-01-01 20:56:11');

-- ----------------------------
-- Table structure for `core_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `core_user_role`;
CREATE TABLE `core_user_role` (
  `ROLE_ID` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  PRIMARY KEY  (`ROLE_ID`,`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_user_role
-- ----------------------------
INSERT INTO `core_user_role` VALUES ('ROLE_ADMIN', 'admin');
INSERT INTO `core_user_role` VALUES ('ROLE_USER', 'admin');
