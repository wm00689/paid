/*
Navicat MySQL Data Transfer

Source Server         : bendi
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : paid

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2015-03-31 17:41:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column_id` int(11) NOT NULL DEFAULT '0',
  `model_id` smallint(3) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `miaoshu` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '7', null, '1', '灯箱广告1', null, null, '0', '', '', '', '/uploads/files/2015320_03.jpg', null, '1427789722', '1427789722');
INSERT INTO `article` VALUES ('2', '7', null, '1', '灯箱广告2', null, null, '0', '', '', '', '/uploads/files/2015320_04.jpg', null, '1427789815', '1427789841');
INSERT INTO `article` VALUES ('3', '7', null, '1', '灯箱广告3', null, null, '0', '', '', '', '/uploads/files/2015320_05.jpg', null, '1427789861', '1427789861');
INSERT INTO `article` VALUES ('4', '7', null, '1', '灯箱广告4', null, null, '0', '', '', '', '/uploads/files/ry1.jpg', null, '1427789877', '1427789877');
INSERT INTO `article` VALUES ('5', '7', null, '1', '灯箱广告5', null, null, '0', '', '', '', '/uploads/files/ry2.jpg', null, '1427789892', '1427789892');

-- ----------------------------
-- Table structure for `columns`
-- ----------------------------
DROP TABLE IF EXISTS `columns`;
CREATE TABLE `columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `template_id` int(2) DEFAULT NULL,
  `model_id` smallint(2) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `ename` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` smallint(4) DEFAULT NULL,
  `isArticle` smallint(5) DEFAULT NULL,
  `isShow` smallint(5) NOT NULL,
  `content` text,
  `file` varchar(200) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `model_f` (`model_id`),
  CONSTRAINT `model_f` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of columns
-- ----------------------------
INSERT INTO `columns` VALUES ('1', '0', '7', '5', '产品展示', 'SHOW', '11', '0', '1', '1', '<p>11</p>', '', '10', '1427765797', '1427765797');
INSERT INTO `columns` VALUES ('2', '0', '2', '5', '生产服务', 'SERVICE', null, '1', null, '1', '<p>111</p>', '', '10', '1427765916', '1427765916');
INSERT INTO `columns` VALUES ('3', '0', '3', '5', '个性定制', 'CUSTORM', null, '2', null, '1', '<p>11</p>', '', '10', '1427765989', '1427765989');
INSERT INTO `columns` VALUES ('4', '0', '4', '5', '合作伙伴', 'COOPERATION', null, '3', null, '1', '<p>11</p>', '', '10', '1427766084', '1427766084');
INSERT INTO `columns` VALUES ('5', '0', '8', '5', '关于我们', 'ABOUT', '1', '4', '1', '1', '<p>11</p>', '', '10', '1427766121', '1427766121');
INSERT INTO `columns` VALUES ('6', '0', '6', '5', '联系我们', 'CONTACT', null, '5', null, '1', '<p>11</p>', '', '10', '1427766151', '1427766151');
INSERT INTO `columns` VALUES ('7', '1', '1', '5', '商务办公', '', null, '1', null, '1', '<p>11</p>', '', '10', '1427766223', '1427766223');
INSERT INTO `columns` VALUES ('8', '1', '1', '5', '产品展示', '', null, '2', null, '1', '<p>11</p>', '', '10', '1427766529', '1427766529');
INSERT INTO `columns` VALUES ('10', '1', '1', '5', '文宣出版', '', null, '3', null, '1', '<p>11</p>', '', '10', '1427766731', '1427766731');
INSERT INTO `columns` VALUES ('11', '1', '1', '5', '教育培训', '', null, '4', null, '1', '<p>11</p>', '', '10', '1427766767', '1427766767');
INSERT INTO `columns` VALUES ('12', '1', '1', '5', '建筑工程', '', null, '5', null, '1', '<p>11</p>', '', '10', '1427766796', '1427766796');
INSERT INTO `columns` VALUES ('13', '1', '1', '5', '台历日历', '', null, '6', null, '1', null, '', '10', '1427766858', '1427766858');
INSERT INTO `columns` VALUES ('14', '1', '1', '5', '包装装潢', '', null, '7', null, '1', null, '', '10', '1427766882', '1427766883');
INSERT INTO `columns` VALUES ('15', '5', '5', '5', '企业简介', '', null, '1', null, '1', '', '', '10', '1427766957', '1427766958');
INSERT INTO `columns` VALUES ('16', '5', '1', '5', '活动庆典', '', null, '2', null, '1', null, '', '10', '1427766991', '1427766991');
INSERT INTO `columns` VALUES ('17', '5', '1', '5', '员工培训', '', null, '3', null, '1', null, '', '10', '1427767016', '1427767016');
INSERT INTO `columns` VALUES ('18', '5', '1', '5', '交流合作', '', null, '3', null, '1', null, '', '10', '1427767202', '1427767202');

-- ----------------------------
-- Table structure for `column_photo`
-- ----------------------------
DROP TABLE IF EXISTS `column_photo`;
CREATE TABLE `column_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `crate_by` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `column_photo_f` (`column_id`),
  CONSTRAINT `column_photo_f` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of column_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1426859759');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1426859762');
INSERT INTO `migration` VALUES ('m150216_075514_create_news_table', '1426859762');
INSERT INTO `migration` VALUES ('m150307_084149_create_category_table', '1426859763');

-- ----------------------------
-- Table structure for `models`
-- ----------------------------
DROP TABLE IF EXISTS `models`;
CREATE TABLE `models` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '模型名称',
  `ename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of models
-- ----------------------------
INSERT INTO `models` VALUES ('5', '文章', 'article');

-- ----------------------------
-- Table structure for `photo`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `article_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_id` int(10) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('1', '图片1', '/uploads/files/Koala.jpg', '1', '7', '1', null, '1', '1427789927', '1427794659');
INSERT INTO `photo` VALUES ('2', '图片2', '/uploads/files/chanpin.jpg', '1', '7', '1', null, '1', '1427789943', '1427794753');
INSERT INTO `photo` VALUES ('3', '图片3', '/uploads/files/Tulips.jpg', '1', '7', '3', null, '3', '1427790261', '1427794801');

-- ----------------------------
-- Table structure for `photo_column`
-- ----------------------------
DROP TABLE IF EXISTS `photo_column`;
CREATE TABLE `photo_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `column_id` int(10) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `column_f` (`column_id`),
  CONSTRAINT `column_f` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photo_column
-- ----------------------------
INSERT INTO `photo_column` VALUES ('1', '图片1', '/uploads/files/2015320_03.jpg', '7', '11', null, null, '1427780442', '1427780442');
INSERT INTO `photo_column` VALUES ('2', '图片2', '/uploads/files/2015320_04.jpg', '7', '2', null, null, '1427780463', '1427780463');
INSERT INTO `photo_column` VALUES ('3', '图片3', '/uploads/files/2015320_05.jpg', '7', '3', null, null, '1427780479', '1427780479');
INSERT INTO `photo_column` VALUES ('4', '图片4', '/uploads/files/2015320_04.jpg', '8', '4', null, null, '1427780982', '1427780982');
INSERT INTO `photo_column` VALUES ('5', '1', '/uploads/files/hz3.jpg', '4', '1', null, null, '1427781702', '1427781702');
INSERT INTO `photo_column` VALUES ('6', '2', '/uploads/files/hz2.jpg', '4', '2', null, null, '1427781723', '1427781723');
INSERT INTO `photo_column` VALUES ('7', '3', '/uploads/files/hz3.jpg', '4', '3', null, null, '1427781738', '1427781738');
INSERT INTO `photo_column` VALUES ('8', '4', '/uploads/files/hz5.jpg', '4', '4', null, null, '1427781750', '1427781750');
INSERT INTO `photo_column` VALUES ('9', '5', '/uploads/files/hz4.jpg', '4', '5', null, null, '1427781763', '1427781763');
INSERT INTO `photo_column` VALUES ('10', '6', '/uploads/files/hz6.jpg', '4', '6', null, null, '1427781890', '1427781890');
INSERT INTO `photo_column` VALUES ('11', '5', '/uploads/files/ry2.jpg', '7', '5', null, null, '1427785489', '1427785489');

-- ----------------------------
-- Table structure for `template`
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('1', '产品展示', 'product');
INSERT INTO `template` VALUES ('2', '生产服务', 'service');
INSERT INTO `template` VALUES ('3', '个性定制', 'custom');
INSERT INTO `template` VALUES ('4', '合作伙伴', 'cooperation');
INSERT INTO `template` VALUES ('5', '关于我们', 'about');
INSERT INTO `template` VALUES ('6', '联系我们', 'contact');
INSERT INTO `template` VALUES ('7', '产品展示top', 'products');
INSERT INTO `template` VALUES ('8', '关于我们top', 'abouts');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '_XlvIAqRwx7SXcfQ4oiMpGQj-u3835-N', '$2y$13$AGVL.yQRJZajqtTaeuHP/.sWsRzfiGbUiwnjh8w8BUwuaC.7frRju', null, 'admin@qq.com', '10', '1426062672', '1426062672');
