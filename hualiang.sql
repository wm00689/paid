/*
Navicat MySQL Data Transfer

Source Server         : bendi
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : hualiang

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2015-03-24 17:57:07
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
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `miaoshu` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('11', '1', '0', '1', '技术1', null, '<p>334各国护航军舰aaa</p>', '0', '', '', '', '2015-03-20 22:40:17', '2015-03-20 22:40:17', '/uploads/images/746E8324F73A.jpg', null);
INSERT INTO `article` VALUES ('12', '1', null, '1', 'qwe', null, '<p>ttyy</p>', '0', '', '', '', '2015-03-24 11:29:57', '2015-03-24 11:29:57', '/uploads/files/Chrysanthemum.jpg', null);
INSERT INTO `article` VALUES ('16', '8', null, '1', '华粮溯源', null, '<p><img src=\"http://localhost:63342/hlhtml/images/suyuan.jpg\"/></p>', '0', '', '', '', '2015-03-24 15:26:21', '2015-03-24 15:26:21', '', null);
INSERT INTO `article` VALUES ('17', '8', null, '1', '华粮溯源2', null, '<p>1234</p>', '0', '', '', '', '2015-03-24 15:28:28', '2015-03-24 15:28:28', '/uploads/files/Desert.jpg', null);
INSERT INTO `article` VALUES ('18', '9', null, '1', '1985', null, '', '0', '', '', '', '2015-03-24 17:42:13', '2015-03-24 17:42:13', '', null);
INSERT INTO `article` VALUES ('20', '9', null, '1', '1985', null, null, '0', '', '', '', '2015-03-24 17:49:44', '2015-03-24 17:49:44', '', null);
INSERT INTO `article` VALUES ('21', '9', null, '1', '1992', null, null, '0', '', '', '', '2015-03-24 17:50:42', '2015-03-24 17:50:42', '/uploads/files/Desert.jpg', null);

-- ----------------------------
-- Table structure for `columns`
-- ----------------------------
DROP TABLE IF EXISTS `columns`;
CREATE TABLE `columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `template_id` int(2) DEFAULT NULL,
  `model_id` smallint(2) NOT NULL,
  `cname` varchar(32) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` smallint(4) DEFAULT NULL,
  `isArticle` smallint(5) NOT NULL,
  `isShow` smallint(5) NOT NULL,
  `content` text,
  `file` varchar(200) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `model_f` (`model_id`),
  CONSTRAINT `model_f` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of columns
-- ----------------------------
INSERT INTO `columns` VALUES ('1', '0', '1', '1', '走进华粮', '1234帮不帮1123', '1', '1', '1', '<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp;asddff1233 &nbsp;1234 &nbsp;</p>', '/uploads/files/Desert.jpg', '10', '1426860398', '1426860398');
INSERT INTO `columns` VALUES ('2', '0', null, '1', '耕织堂', null, '2', '1', '1', '<p>22</p>', null, '10', '1426860646', '1426860646');
INSERT INTO `columns` VALUES ('3', '0', '2', '2', '农博会', null, '3', '1', '1', '<p>222</p>', null, '10', '1426860665', '1426860665');
INSERT INTO `columns` VALUES ('8', '1', '1', '1', '华粮溯源', '123', '1', '2', '1', '<p>aaa</p>', '', '10', '1426898856', '1426898856');
INSERT INTO `columns` VALUES ('9', '1', '1', '1', '企业荣誉', '123', '3', '2', '1', '<p>爱爱爱</p>', '', '10', '1426898887', '1426898887');
INSERT INTO `columns` VALUES ('10', '1', '2', '1', '团队介绍', null, '2', '1', '1', '<p>11</p>', null, '10', '1426898960', '1426898960');
INSERT INTO `columns` VALUES ('13', '1', null, '1', '品牌理念', null, '4', '1', '1', null, null, '10', '1427082642', '1427082642');
INSERT INTO `columns` VALUES ('14', '1', null, '1', '科研创新', null, '5', '1', '1', null, null, '10', '1427082745', '1427082745');
INSERT INTO `columns` VALUES ('15', '1', null, '1', '集团新闻', null, '6', '2', '1', null, null, '10', '1427082784', '1427082784');
INSERT INTO `columns` VALUES ('16', '1', null, '1', '媒体报道', null, '7', '2', '1', null, null, '10', '1427082803', '1427082803');
INSERT INTO `columns` VALUES ('17', '2', null, '1', '国家政策', null, '1', '2', '1', null, null, '10', '1427082914', '1427082914');
INSERT INTO `columns` VALUES ('18', '2', null, '1', '世界趋势', null, '2', '2', '1', null, null, '10', '1427082950', '1427082950');
INSERT INTO `columns` VALUES ('19', '2', null, '1', '心灵鸡汤', null, '3', '2', '1', null, null, '10', '1427082980', '1427082980');
INSERT INTO `columns` VALUES ('20', '0', '1', '1', '华粮商道', null, '4', '1', '1', null, null, '10', '1427093555', '1427093555');
INSERT INTO `columns` VALUES ('21', '0', '1', '1', '华粮联盟', null, '5', '1', '1', null, null, '10', '1427093599', '1427093599');
INSERT INTO `columns` VALUES ('22', '3', '1', '1', '异地特色', null, null, '1', '1', null, null, '10', '1427098876', '1427098876');
INSERT INTO `columns` VALUES ('23', '20', '1', '1', '官方商城', null, null, '1', '1', null, null, '10', '1427098913', '1427098913');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of models
-- ----------------------------
INSERT INTO `models` VALUES ('1', '文章', 'article');
INSERT INTO `models` VALUES ('2', '图片', 'photo');
INSERT INTO `models` VALUES ('3', '企业荣誉', 'rongyu');

-- ----------------------------
-- Table structure for `photo`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_id` int(10) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for `template`
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('1', '走进华粮', 'zjhl');
INSERT INTO `template` VALUES ('2', '团队介绍', 'tdjs');

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
