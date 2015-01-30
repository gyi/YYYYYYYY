/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : platformanage

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-01-30 11:48:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryAna` int(11) DEFAULT NULL,
  `isDeleted` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category
-- ----------------------------

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL,
  `gameId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `supId` int(11) DEFAULT NULL,
  `commentContext` text,
  `commentTime` datetime DEFAULT NULL,
  `isDeleted` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------

-- ----------------------------
-- Table structure for tb_download
-- ----------------------------
DROP TABLE IF EXISTS `tb_download`;
CREATE TABLE `tb_download` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `gameId` varchar(255) DEFAULT NULL,
  `downloadTime` datetime DEFAULT NULL,
  `isDeleted` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_download
-- ----------------------------

-- ----------------------------
-- Table structure for tb_game
-- ----------------------------
DROP TABLE IF EXISTS `tb_game`;
CREATE TABLE `tb_game` (
  `id` int(11) NOT NULL,
  `gameId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `gameName` varchar(255) DEFAULT NULL,
  `gameModifyTime` datetime DEFAULT NULL,
  `gameIntroduce` text,
  `gameIcon` varchar(255) DEFAULT NULL,
  `gamePicture` varchar(255) DEFAULT NULL,
  `gameVideo` varchar(255) DEFAULT NULL,
  `gameDownload` varchar(255) DEFAULT NULL,
  `gameGit` varchar(255) DEFAULT NULL,
  `gameTab` varchar(255) DEFAULT NULL,
  `gameCommentSum` int(11) DEFAULT NULL,
  `gameBrowseSum` int(11) DEFAULT NULL,
  `gameSupportSum` int(11) DEFAULT NULL,
  `gameOpposeSum` int(11) DEFAULT NULL,
  `gameDownloadSum` int(11) DEFAULT NULL,
  `gameGrade` int(11) DEFAULT NULL,
  `isDeleted` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_game
-- ----------------------------

-- ----------------------------
-- Table structure for tb_grade
-- ----------------------------
DROP TABLE IF EXISTS `tb_grade`;
CREATE TABLE `tb_grade` (
  `id` int(11) NOT NULL,
  `gradeName` varchar(255) DEFAULT NULL,
  `gradeDesc` varchar(255) DEFAULT NULL,
  `isDeleted` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_grade
-- ----------------------------

-- ----------------------------
-- Table structure for tb_tab
-- ----------------------------
DROP TABLE IF EXISTS `tb_tab`;
CREATE TABLE `tb_tab` (
  `id` int(11) NOT NULL,
  `tabName` varchar(255) DEFAULT NULL,
  `tabSum` varchar(255) DEFAULT NULL,
  `isDeleted` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tab
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `useRegisterTime` datetime DEFAULT NULL,
  `userLoginTime` datetime DEFAULT NULL,
  `isLogin` int(2) DEFAULT NULL,
  `isDeleted` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------

-- ----------------------------
-- Table structure for tb_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_userinfo`;
CREATE TABLE `tb_userinfo` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userGenter` int(2) DEFAULT NULL,
  `userDOB` datetime DEFAULT NULL,
  `userArea` varchar(255) DEFAULT NULL,
  `userSignature` text,
  `userIcon` varchar(255) DEFAULT NULL,
  `userExp` int(11) DEFAULT NULL,
  `userCredit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_userinfo
-- ----------------------------
