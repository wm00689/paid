/*
Navicat MySQL Data Transfer

Source Server         : yii2
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : hualiang

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-03-28 22:27:41
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('11', '1', '0', '1', '技术1111', null, '<p>334各国护航军舰aaa</p>', '0', '', '', '', '/uploads/images/746E8324F73A.jpg', null, null, '1427529889');
INSERT INTO `article` VALUES ('16', '8', null, '1', '华粮溯源', null, '<p><img src=\"http://localhost:63342/hlhtml/images/suyuan.jpg\"/></p>', '0', '', '', '', '', null, null, null);
INSERT INTO `article` VALUES ('17', '8', null, '1', '华粮溯源2', null, '<p>1234</p>', '0', '', '', '', '/uploads/files/Desert.jpg', null, null, null);
INSERT INTO `article` VALUES ('18', '9', null, '1', '一九八五', null, '', '0', '', '', '', '', null, null, '1427461869');
INSERT INTO `article` VALUES ('20', '9', null, '1', '一九九二', null, null, '0', '', '', '', '', null, null, '1427461877');
INSERT INTO `article` VALUES ('21', '9', null, '1', '二零一零', null, null, '0', '', '', '', '/uploads/files/Desert.jpg', null, null, '1427461886');
INSERT INTO `article` VALUES ('23', '10', null, '1', '董事长 张原野', null, '<p>央视网消息（新闻联播）：中共中央政治局3月24日下午就深化司法体制改革、保证司法公正进行第二十一次集体学习。中共中央总书记习近平在主持学习时强调，深化司法体制改革，建设公正高效权威的社会主义司法制度，是推进国家治理体系和治理能力现代化的重要举措。公正司法事关人民切身利益，事关社会公平正义，事关全面推进依法治国。要坚持司法体制改革的正确政治方向，坚持以提高司法公信力为根本尺度，坚持符合国情和遵循司法规律相结合，坚持问题导向、勇于攻坚克难，坚定信心，凝聚共识，锐意进取，破解难题，坚定不移深化司法体制改革，不断促进社会公平正义。。</p>', '0', '', '', '', '/uploads/files/rw1.jpg', null, null, null);
INSERT INTO `article` VALUES ('24', '10', null, '1', '总书记：习近平', null, '<p>969－1975年 陕西省<a target=\"_blank\" href=\"http://baike.baidu.com/view/975612.htm\" style=\"text-decoration: none; color: rgb(19, 110, 194);\">延川县</a>文安驿公社梁家河大队知青、党支部书记</p><p><br/><span class=\"description\" style=\"display: block; color: rgb(85, 85, 85); font-size: 12px; font-family: 宋体; word-wrap: break-word; word-break: break-all; line-height: 15px; padding: 8px 7px; min-height: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(224, 224, 224);\">习近平</span></p><p>1975－1979年&nbsp;<a target=\"_blank\" href=\"http://baike.baidu.com/view/1563.htm\" style=\"text-decoration: none; color: rgb(19, 110, 194);\">清华大学</a>化工系基本有机合成专业学习</p><p>1979－1982年&nbsp;<a target=\"_blank\" href=\"http://baike.baidu.com/view/24640.htm\" style=\"text-decoration: none; color: rgb(19, 110, 194);\">国务院办公厅</a>、中央军委办公厅秘书（现役）</p><p>1982－1983年 河北省<a target=\"_blank\" href=\"http://baike.baidu.com/view/132969.htm\" style=\"text-decoration: none; color: rgb(19, 110, 194);\">正定县</a>委副书记</p><p>1983－1985年&nbsp;<a target=\"_blank\" href=\"http://baike.baidu.com/view/4112.htm\" style=\"text-decoration: none; color: rgb(19, 110, 194);\">河北省</a>正定县委书记，正定县武装部第一政委、党委第一书记</p><p><br/></p>', '0', '', '', '', '/uploads/files/rw1.jpg', null, null, null);
INSERT INTO `article` VALUES ('25', '13', null, '1', '华粮定位', null, '<p>新华网仰光3月26日电 （记者张云飞）缅甸执政党报《联邦日报》26日报道说，经过一月有余的战事，缅甸军方已经控制整个果敢地区。\r\n\r\n报道说，缅甸军方已经在果敢地区发出通令，敦促地方武装放下武器，并承诺保证其安全。\r\n\r\n老街军管当局在电话中告诉新华社记者，截至24日晚，果敢地区所有主要战略高地都已被军队控制，老街局势相对稳定，一些商店已经开门营业。\r\n\r\n2月9日，缅甸政府军与地方武装在果敢地区爆发战事。持续至今的战事严重影响边境地区安全稳定。缅甸官方统计，交战双方有400余人伤亡</p>', '0', '', '', '', '', null, '1427375172', '1427375172');
INSERT INTO `article` VALUES ('26', '13', null, '1', '华粮宗旨', null, '<p>22222222222222新华网仰光3月26日电 （记者张云飞）缅甸执政党报《联邦日报》26日报道说，经过一月有余的战事，缅甸军方已经控制整个果敢地区。 报道说，缅甸军方已经在果敢地区发出通令，敦促地方武装放下武器，并承诺保证其安全。 老街军管当局在电话中告诉新华社记者，截至24日晚，果敢地区所有主要战略高地都已被军队控制，老街局势相对稳定，一些商店已经开门营业。 2月9日，缅甸政府军与地方武装在果敢地区爆发战事。持续至今的战事严重影响边境地区安全稳定。缅甸官方统计，交战双方有400余人伤亡</p>', '0', '', '', '', '', null, '1427375211', '1427378376');
INSERT INTO `article` VALUES ('27', '13', null, '1', '华粮使命', null, '<p>333333333333333新华网仰光3月26日电 （记者张云飞）缅甸执政党报《联邦日报》26日报道说，经过一月有余的战事，缅甸军方已经控制整个果敢地区。 报道说，缅甸军方已经在果敢地区发出通令，敦促地方武装放下武器，并承诺保证其安全。 老街军管当局在电话中告诉新华社记者，截至24日晚，果敢地区所有主要战略高地都已被军队控制，老街局势相对稳定，一些商店已经开门营业。 2月9日，缅甸政府军与地方武装在果敢地区爆发战事。持续至今的战事严重影响边境地区安全稳定。缅甸官方统计，交战双方有400余人伤亡</p>', '0', '', '', '', '', null, '1427375232', '1427378383');
INSERT INTO `article` VALUES ('28', '15', null, '1', 'UC九游完成阿里手游业务整合 将发布新战略', null, '<p>越位<br/>　　Ö1.凡进攻队员较球更接近于对方球门线者，即为处于越位位置。下列情况除外：　<br/>　　·a.该队员在本方半场内。<br/>　　·b.至少有对方队员两人比该队员更接近于对方的球门线。<br/>　　Ö2.当队员踢或触及球的一瞬间，同队队员处于越位位置时，裁判员认为该队员有下列行为，则应判为越位：<br/>　　·a.在干扰比赛或干扰对方；<br/>　　·b.企图从越位位置获得利益。<br/>　　Ö3.下列情况，队员不应被判为越位：<br/>　　·a.队员仅仅处在越位位置；<br/>　　·b.队员直接接得球门球、角球或界外掷球。<br/>　</p>', '0', '', '', '', '', null, '1427380010', '1427447726');
INSERT INTO `article` VALUES ('29', '15', null, '1', 'UC九游完成阿里手游业务整合222222222', null, '<p>22222222222222新浪科技讯 3月11日下午消息，新浪科技从接近九游的消息人士获悉，九游与阿里游戏的整合已经初步完成，即将下周一宣布新的移动游戏平台战略2014年初，阿里巴巴宣布推出手机游戏平台，除了利用手机淘宝、支付宝钱包等阿里旗下用户过亿的超级App入口开展游戏分发业务，同时独家代理运营《暖暖环游世界》、《愤怒的小鸟斯黛拉》等多款手游。</p><p>6月，阿里巴巴集团与UC优视联合宣布，UC优视全资融入阿里巴巴集团，并组建阿里移动事业群，新任事业群总裁俞永福表示，阿里移动事业群在成功整合阿里集团的浏览器和搜索业务之后，未来还将整合阿里集团其他相关业务和团队。</p><p>这些团队包括地图、移动游戏、移动阅读、应用分发等。一个月后，俞永福即出任高德移动互联网事业部总经理，正式接管互联网地图业务。在此之前，UC曾先后整合一搜团队推出神马搜索，整合淘宝浏览器推出UC浏览器PC版</p><p>2014年11月，阿里游戏官方宣布，将手游业务交由阿里移动事业群负责。据了解，九游已经登录手机淘宝和支付宝钱包，位置类似于京东和大众点评在微信的推广入口。</p><p>与360、91等渠道相比，九游以重度游戏用户集中、ARUP值高著称。据记者了解，2014年，九游为《天龙八部》、《全民奇迹》、《征途》等多款手游大作贡献的收入，在全渠道占比中都名列第一，《卧虎藏龙》首测当日，九游收入更是超全盘的60%。阿里集团在搜索、游戏这些垂直互联网业务上的路线逐渐清晰，就是向俞永福领衔的阿里巴巴移动事业群集中。(张楠)</p><p>与360、91等渠道相比，九游以重度游戏用户集中、ARUP值高著称。据记者了解，2014年，九游为《天龙八部》、《全民奇迹》、《征途》等多款手游大作贡献的收入，在全渠道占比中都名列第一，《卧虎藏龙》首测当日，九游收入更是超全盘的60%。阿里集团在搜索、游戏这些垂直互联网业务上的路线逐渐清晰，就是向俞永福领衔的阿里巴巴移动事业群集中。(张楠)</p>', '0', '', '', '', '', null, '1427380062', '1427439893');
INSERT INTO `article` VALUES ('30', '15', null, '1', '123', null, '<p>34567</p>', '0', '', '', '', '', null, '1427423223', '1427439908');
INSERT INTO `article` VALUES ('31', '15', null, '1', '444', null, '<p>5678</p>', '0', '', '', '', '', null, '1427423272', '1427439920');
INSERT INTO `article` VALUES ('32', '15', null, '1', '555', null, '<p>t56666</p>', '0', '', '', '', '', null, '1427426462', '1427426462');
INSERT INTO `article` VALUES ('33', '15', null, '1', '666', null, '<p>666677</p>', '0', '', '', '', '', null, '1427438150', '1427438772');
INSERT INTO `article` VALUES ('34', '3', null, '1', '2015上海农博会', null, '<p>111111111111111<br/></p>', '0', '', '', '', '/uploads/files/nbh1.jpg', null, '1427441675', '1427448908');
INSERT INTO `article` VALUES ('35', '3', null, '1', '2015上海第二十六届农博会>', null, '<p>222222222222222</p>', '0', '', '', '', '/uploads/files/nbh2.jpg', null, '1427441753', '1427448938');
INSERT INTO `article` VALUES ('36', '3', null, '1', '上海第二十六届农博会>333', null, '<p>3333333333333333</p>', '0', '', '', '', '/uploads/files/nbh3.jpg', null, '1427441786', '1427442660');
INSERT INTO `article` VALUES ('37', '16', null, '1', '11111111', null, '<p>3332234111</p>', '0', '', '', '', '', null, '1427447051', '1427447051');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of columns
-- ----------------------------
INSERT INTO `columns` VALUES ('1', '0', '1', '1', '走进华粮', '1234帮不帮1123', '1', '1', '1', '<p>我们是<span style=\"margin: 0px; padding: 0px; font-size: 72px;\">谁？</span></p><p>中国华粮集团有限责任公司</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(255, 255, 255); line-height: 25px; font-family: &#39;microsoft yahei&#39;; font-size: 12px; white-space: normal; background-color: rgb(85, 186, 100);\">中国华粮集团有限公司秉承“善本、归元、循道”的理念，立足三农、服务民生，致力于农林牧副渔等行业，以农业、文化、网络、金融、小镇经济为五大产业方向，是高端大农业产品“标准化”的制定者、实施者。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(255, 255, 255); line-height: 25px; font-family: &#39;microsoft yahei&#39;; font-size: 12px; white-space: normal; background-color: rgb(85, 186, 100);\">华粮使命：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(255, 255, 255); line-height: 25px; font-family: &#39;microsoft yahei&#39;; font-size: 12px; white-space: normal; background-color: rgb(85, 186, 100);\">1、让员工和家人更健康；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(255, 255, 255); line-height: 25px; font-family: &#39;microsoft yahei&#39;; font-size: 12px; white-space: normal; background-color: rgb(85, 186, 100);\">2、让投资者回报更高；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(255, 255, 255); line-height: 25px; font-family: &#39;microsoft yahei&#39;; font-size: 12px; white-space: normal; background-color: rgb(85, 186, 100);\">3、让农民耕种快乐、种好地，好种地，地种好；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(255, 255, 255); line-height: 25px; font-family: &#39;microsoft yahei&#39;; font-size: 12px; white-space: normal; background-color: rgb(85, 186, 100);\">4、奉献“品质、环保、简约、方便、便宜”的好产品；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(255, 255, 255); line-height: 25px; font-family: &#39;microsoft yahei&#39;; font-size: 12px; white-space: normal; background-color: rgb(85, 186, 100);\">5、让人们体验喜悦和生命的美好；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(255, 255, 255); line-height: 25px; font-family: &#39;microsoft yahei&#39;; font-size: 12px; white-space: normal; background-color: rgb(85, 186, 100);\">6、为社会贡献一个受人尊敬的企业。</p><p><br/></p>', '/uploads/files/Koala.jpg', '10', '1426860398', '1426860398');
INSERT INTO `columns` VALUES ('2', '0', '3', '1', '耕织堂', '122', '2', '1', '1', '<p>22</p>', '', '10', '1426860646', '1426860646');
INSERT INTO `columns` VALUES ('3', '0', '4', '1', '农博会', 'aa', '3', '2', '1', '<p>222</p>', '', '10', '1426860665', '1426860665');
INSERT INTO `columns` VALUES ('8', '1', '14', '1', '华粮溯源', '123', '1', '2', '1', '<p>aaa</p>', '/uploads/files/suyuan.jpg', '10', '1426898856', '1426898856');
INSERT INTO `columns` VALUES ('9', '1', '9', '1', '企业荣誉', '123', '3', '2', '1', '<p>爱爱爱</p>', '', '10', '1426898887', '1426898887');
INSERT INTO `columns` VALUES ('10', '1', '2', '1', '团队介绍', '12', '2', '1', '1', '<p>11</p>', '', '10', '1426898960', '1426898960');
INSERT INTO `columns` VALUES ('13', '1', '10', '1', '品牌理念', 'q\'q\'q', '4', '1', '1', '<p>12</p>', '', '10', '1427082642', '1427082642');
INSERT INTO `columns` VALUES ('14', '1', '11', '1', '科研创新', '122', '5', '1', '1', '<p>123</p>', '', '10', '1427082745', '1427082745');
INSERT INTO `columns` VALUES ('15', '1', '6', '1', '集团新闻', '12', '6', '2', '1', '<p>34</p>', '', '10', '1427082784', '1427082784');
INSERT INTO `columns` VALUES ('16', '1', '6', '1', '媒体报道', '11', '7', '2', '1', '<p>12</p>', '', '10', '1427082803', '1427082803');
INSERT INTO `columns` VALUES ('17', '2', '1', '1', '国家政策', '1', '1', '2', '1', '<p>11</p>', '', '10', '1427082914', '1427082914');
INSERT INTO `columns` VALUES ('18', '2', '1', '1', '世界趋势', '11', '2', '2', '1', '<p>11</p>', '', '10', '1427082950', '1427082950');
INSERT INTO `columns` VALUES ('19', '2', '1', '1', '心灵鸡汤', '11', '3', '2', '1', '<p>11</p>', '', '10', '1427082980', '1427082980');
INSERT INTO `columns` VALUES ('20', '0', '1', '1', '华粮商道', '11', '4', '1', '1', '<p>11</p>', '', '10', '1427093555', '1427093555');
INSERT INTO `columns` VALUES ('21', '0', '13', '1', '华粮联盟', 'AA', '5', '1', '1', '<p style=\"text-align: center;\"><strong><br/></strong></p><p style=\"text-align: center;\"><strong>11222</strong></p><p><strong>AAAAAAAAAAAA</strong></p>', '', '10', '1427093599', '1427093599');
INSERT INTO `columns` VALUES ('22', '3', '5', '1', '异地特色', 'aa', null, '1', '1', '<p>11</p>', '', '10', '1427098876', '1427098876');
INSERT INTO `columns` VALUES ('23', '20', '1', '1', '官方商城', '11', null, '1', '1', '<p>1</p>', '', '10', '1427098913', '1427098913');
INSERT INTO `columns` VALUES ('24', '21', '7', '1', '合作客户', '11', '1', '1', '1', '<p>2233</p>', '', '10', '1427266726', '1427266726');
INSERT INTO `columns` VALUES ('29', '21', '8', '1', '联系我们', '11', '1', '1', '1', '<p>12</p>', '', '10', '1427443264', '1427443264');
INSERT INTO `columns` VALUES ('30', '21', '12', '1', '加入我们', '111', '3', '1', '1', '<p>234</p>', '', '10', '1427443329', '1427443329');

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
  `article_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_id` int(10) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('4', '奖牌一', '/uploads/files/ry1.jpg', '18', '9', '123', null, '12', '1427356201', '1427532818');
INSERT INTO `photo` VALUES ('5', '奖牌2', '/uploads/files/ry1.jpg', '18', '9', '2', null, '1', '1427356233', '1427532856');
INSERT INTO `photo` VALUES ('6', '奖牌3', '/uploads/files/ry2.jpg', '20', '9', '44', null, '1', '1427362882', '1427532837');
INSERT INTO `photo` VALUES ('7', '奖牌4', '/uploads/files/ry1.jpg', '21', null, '1', null, '2', '1427362916', '1427532847');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photo_column
-- ----------------------------
INSERT INTO `photo_column` VALUES ('1', '啊飒飒的', '/uploads/files/Desert.jpg', null, '1234', null, '1', '1427250372', '1427250372');
INSERT INTO `photo_column` VALUES ('2', '皮草2', '/uploads/files/Desert.jpg', null, '123', null, '345', '1427250601', '1427250601');
INSERT INTO `photo_column` VALUES ('3', '123', '/uploads/files/Desert.jpg', '1', '34', '1', null, '1427259833', '1427259833');
INSERT INTO `photo_column` VALUES ('4', '23', '/uploads/files/Desert.jpg', '1', '4455', '2', null, '1427260123', '1427260123');
INSERT INTO `photo_column` VALUES ('5', '1', '/uploads/files/hezuo%20(1).jpg', '24', '12', null, null, '1427446405', '1427446405');
INSERT INTO `photo_column` VALUES ('6', '2', '/uploads/files/hezuo%20(2).jpg', '24', '2', null, null, '1427446415', '1427446415');
INSERT INTO `photo_column` VALUES ('7', '3', '/uploads/files/hezuo%20(3).jpg', '24', '3', null, null, '1427446425', '1427446425');

-- ----------------------------
-- Table structure for `template`
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('1', '走进华粮', 'zjhl');
INSERT INTO `template` VALUES ('2', '团队介绍', 'tdjs');
INSERT INTO `template` VALUES ('3', '耕织堂', 'gzt');
INSERT INTO `template` VALUES ('4', '农博会', 'nbh');
INSERT INTO `template` VALUES ('5', '农博会-下级', 'nbh_list');
INSERT INTO `template` VALUES ('6', '集团新闻', 'jtxw');
INSERT INTO `template` VALUES ('7', '合作客户', 'hzkh');
INSERT INTO `template` VALUES ('8', '联系我们', 'lxwm');
INSERT INTO `template` VALUES ('9', '企业荣誉', 'qyry');
INSERT INTO `template` VALUES ('10', '品牌理念', 'ppln');
INSERT INTO `template` VALUES ('11', '科研创新', 'kycx');
INSERT INTO `template` VALUES ('12', '加入我们', 'jrwm');
INSERT INTO `template` VALUES ('13', '华粮联盟', 'hllm');
INSERT INTO `template` VALUES ('14', '华粮溯源', 'hlsy');

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
