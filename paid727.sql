-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.73


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema paid
--

CREATE DATABASE IF NOT EXISTS paid;
USE paid;

--
-- Definition of table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `model_id` smallint(3) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` text,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `miaoshu` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`id`,`menu_id`,`model_id`,`user_id`,`title`,`slug`,`content`,`comments_count`,`meta_title`,`description`,`keywords`,`file`,`miaoshu`,`created_at`,`updated_at`) VALUES 
 (7,19,NULL,1,'123阿斯蒂芬',NULL,'<p>ASD帮不帮</p>',0,'123','345','','',NULL,1428994681,1428996590),
 (8,19,NULL,1,'DFGH',NULL,'<p>C CVB</p>',0,'','','','',NULL,1428995191,1428995191),
 (9,19,NULL,1,'DFGH',NULL,'<p>C CVB</p>',0,'','','','',NULL,1428995399,1428995399),
 (12,7,NULL,1,'万能笔记本',NULL,'<p>期刊、杂志、书刊，书籍，本册，样本、样册，标书，证书，立体书，画册、宣传、产品册，说明书，操作手册，封套，折页，手提袋（纸质手袋，环保袋，无纺布袋，购物袋礼品袋等），拎袋，海报，招贴，信封，信纸，红包，书签，文件夹，档案袋，菜谱，菜单，酒单，礼盒（酒盒，表盒，首饰盒等），纸盒，包装盒，礼品盒，彩盒，瓦楞盒，贺卡，明信片，胸卡，胸牌，台卡，桌牌，名牌，插卡，吊牌，吊卡，邀请函，奖状，笔记本，记事本，台历，挂历，日历，周历，标签，不干胶,名片，DM单，卡（会员卡，IC卡,PVC卡，磁卡，射频卡，充值卡，纸卡等），DVD(盘贴，光盘印刷，光盘刻录等）,票据（门票，入场票，月饼票，粽子票等），优惠券（优惠券，代金券，餐券，奖券，等位券，泊车券等），便签（便签纸，便利贴，n次贴等），单页（单片，宣传单等），相册，纸杯，纸垫，塑料袋，签到本，留言簿，各种合同，各种报告，各种报表，各种会议记录，各种PPT讲演稿，各种word文档，个人家谱，家族家谱，办公纸纸制品，商务纸制品等，数码快印，静安数码快印，快印，，静安快印，数码打印，数码印刷，数字印刷，打印，复印，彩色打印，黑白打印，彩色胶印，图文，图文店，图文快印，快印店，图文快印店，印刷，黑白胶印，丝印，烫印，UV，凹凸印，喷绘，写真，UV平版打印，骑马订，有线胶装，无线胶装，圈装，欧式装，塑封，压条装，包边装，图纸装订，活页装，铜钉装，硬精装，软精装，联裱精装，有线精装，无线精装，活页联裱精装，拉页装订，古书装，真皮封，塑料封，布料封，PVC卡,艺术纸，铜版纸，特种纸，不干胶，异型模切，可变数据，个性化印刷，创意，策划，设计，平面设计，书刊，书刊排版，广告排版，广告设计</p>',0,'万能笔记本','ghjk','dfgh','/uploads/files/wanneng.png',NULL,1433164005,1435556234),
 (18,7,NULL,1,'书籍',NULL,'<p>各种类型的书籍：精装书，平装书，骑马订，胶装，圈装等</p>',0,'印刷品','上海陶派实业公司旗下拥有派登快印连锁店和陶彩印刷厂','书刊，期刊、杂志、书刊，书籍，本册，样本、样册，标书，证书，立体书，画册、宣传、产品册，说明书，手册，封套，折页，手提袋，拎袋，海报，招贴，信封，信纸，红包，书签，文件夹，档案袋，菜谱，菜单，酒单，礼盒，纸盒，包装盒，礼品盒，彩盒，瓦楞盒，贺卡，明信片，胸卡，胸牌，台卡，桌牌，名牌，插卡，吊牌，吊卡，邀请函，奖状，笔记本，记事本，台历，挂历，日历，周历，标签，不干胶,名片，DM单，卡,盘贴，票，据，券，便签，单页，单片，相册，纸杯，纸垫，塑料袋，签到本，留言簿，合同，报告，报表，家谱','/uploads/images/book.jpg',NULL,1433857918,1433857918),
 (21,7,NULL,1,'公司介绍手册',NULL,NULL,0,'公司介绍手册','ghjk','dfgh','/uploads/files/DM1(3).jpg',NULL,1435555560,1435555560),
 (22,7,NULL,1,'皮料笔记本',NULL,NULL,0,'皮料笔记本','ghjk','dfgh','/uploads/files/book2(2).jpg',NULL,1435556051,1435556051),
 (23,7,NULL,1,'真皮笔记本',NULL,NULL,0,'真皮笔记本','ghjk','dfgh','/uploads/files/corticalbook1.jpg',NULL,1435556107,1435556107),
 (24,7,NULL,1,'皮质本册',NULL,'<p>数码快印，静安数码快印，快印，，静安快印，数码打印，数码印刷，数字印刷，打印，复印，彩色打印，黑白打印，彩色胶印，图文，图文店，图文快印，快印店，图文快印店，印刷，黑白胶印，丝印，烫印，UV，凹凸印，喷绘，写真，UV平版打印，骑马订，有线胶装，无线胶装，圈装，欧式装，塑封，压条装，包边装，图纸装订，活页装，铜钉装，硬精装，软精装，联裱精装，有线精装，无线精装，活页联裱精装，拉页装订，古书装，真皮封，塑料封，布料封，PVC卡,艺术纸，铜版纸，特种纸，不干胶，异型模切，可变数据，个性化印刷，创意，策划，设计，平面设计，书刊，书刊排版，广告排版，广告设计，期刊、杂志、书刊，书籍，本册，样本、样册，标书，证书，立体书，画册、宣传、产品册，说明书，操作手册，封套，折页，手提袋（纸质手袋，环保袋，无纺布袋，购物袋礼品袋等），拎袋，海报，招贴，信封，信纸，红包，书签，文件夹，档案袋，菜谱，菜单，酒单，礼盒（酒盒，表盒，首饰盒等），纸盒，包装盒，礼品盒，彩盒，瓦楞盒，贺卡，明信片，胸卡，胸牌，台卡，桌牌，名牌，插卡，吊牌，吊卡，邀请函，奖状，笔记本，记事本，台历，挂历，日历，周历，标签，不干胶,名片，DM单，卡（会员卡，IC卡,PVC卡，磁卡，射频卡，充值卡，纸卡等），DVD(盘贴，光盘印刷，光盘刻录等）,票据（门票，入场票，月饼票，粽子票等），优惠券（优惠券，代金券，餐券，奖券，等位券，泊车券等），便签（便签纸，便利贴，n次贴等），单页（单片，宣传单等），相册，纸杯，纸垫，塑料袋，签到本，留言簿，各种合同，各种报告，各种报表，各种会议记录，各种PPT讲演稿，各种word文档，个人家谱，家族家谱，办公纸纸制品，商务纸制品等</p>',0,'皮质本册','ghjk','dfgh','/uploads/files/corticalbook3.jpg',NULL,1435556660,1435556660),
 (25,7,NULL,1,'活页笔记本',NULL,NULL,0,'活页笔记本','ghjk','dfgh','/uploads/files/corticalbook4(2).jpg',NULL,1435556717,1435556717),
 (26,7,NULL,1,'高档笔记本',NULL,NULL,0,'高档笔记本','ghjk','dfgh','/uploads/files/corticalbook2(1).jpg',NULL,1435556772,1435556772),
 (27,7,NULL,1,'便携笔记本',NULL,NULL,0,'便携笔记本','ghjk','dfgh','/uploads/files/corticalbook5.jpg',NULL,1435556815,1435556815),
 (28,7,NULL,1,'D型铁圈笔记本',NULL,NULL,0,'D型铁圈笔记本','ghjk','dfgh','/uploads/files/corticalbook37.jpg',NULL,1435556886,1435556886),
 (29,7,NULL,1,'定制本册',NULL,NULL,0,'定制本册','ghjk','dfgh','/uploads/files/corticalbook.jpg',NULL,1435556956,1435556956),
 (30,7,NULL,1,'定制菜谱',NULL,NULL,0,'定制菜谱','ghjk','dfgh','/uploads/files/cuanxianzhuangcaipu.jpg',NULL,1435557137,1435557137),
 (31,7,NULL,1,'水晶蝴蝶联裱精装菜谱',NULL,'',0,'水晶蝴蝶联裱精装菜谱','ghjk','dfgh','/uploads/files/caipu6.jpg',NULL,1435557286,1435557286),
 (32,7,NULL,1,'穿线精装烫印logo菜谱',NULL,NULL,0,'穿线精装烫印logo菜谱','ghjk','dfgh','/uploads/files/caipu4.jpg',NULL,1435557361,1435557361),
 (33,7,NULL,1,'穿线精装烫印logo包金属角菜谱',NULL,NULL,0,'穿线精装烫印logo包金属角菜谱','ghjk','dfgh','/uploads/files/cp.jpg',NULL,1435557492,1435557492),
 (34,7,NULL,1,'古书装订菜谱',NULL,NULL,0,'古书装订菜谱','ghjk','dfgh','/uploads/files/caipu8.jpg',NULL,1435557541,1435557541),
 (35,7,NULL,1,'铜钉活页金装菜谱',NULL,NULL,0,'铜钉活页金装菜谱','ghjk','dfgh','/uploads/files/tdzcp.jpg',NULL,1435557582,1435557582),
 (36,7,NULL,1,'皮料烫金菜谱',NULL,NULL,0,'皮料烫金菜谱','ghjk','dfgh','/uploads/files/caipu9.jpg',NULL,1435557708,1435557708),
 (37,7,NULL,1,'变色皮折页烫印菜谱',NULL,NULL,0,'变色皮折页烫印菜谱','ghjk','dfgh','/uploads/files/caipu2.jpg',NULL,1435557773,1435557773),
 (38,7,NULL,1,'联裱精装菜谱',NULL,NULL,0,'联裱精装菜谱','ghjk','dfgh','/uploads/files/caipu3.jpg',NULL,1435557817,1435557817),
 (39,7,NULL,1,'烫印艺术纸高档名片',NULL,NULL,0,'烫印艺术纸高档名片','ghjk','dfgh','/uploads/files/card.jpg',NULL,1435557863,1435557863),
 (40,7,NULL,1,'打印盘贴盘盒刻录光盘',NULL,NULL,0,'打印盘贴盘盒刻录光盘','ghjk','dfgh','/uploads/files/DVD2.jpg',NULL,1435558002,1435558002),
 (41,7,NULL,1,'DVD套装',NULL,NULL,0,'DVD套装','ghjk','dfgh','/uploads/files/DVD(1).jpg',NULL,1435558067,1435558067),
 (42,7,NULL,1,'工作证胸牌胸卡吊绳',NULL,NULL,0,'吊牌吊绳胸牌胸卡','ghjk','dfgh','/uploads/files/chestcard.jpg',NULL,1435558132,1435558174),
 (43,7,NULL,1,'服装吊牌吊卡商标标牌',NULL,NULL,0,'服装吊牌吊卡商标标牌','ghjk','dfgh','/uploads/files/tags1.jpg',NULL,1435558253,1435558253),
 (44,7,NULL,1,'PVC会员卡VIP卡异型卡充值卡储值卡塑料卡',NULL,NULL,0,'PVC会员卡VIP卡异型卡充值卡储值卡塑料卡','ghjk','dfgh','/uploads/files/PVCcard.jpg',NULL,1435558449,1435558449),
 (45,7,NULL,1,'IC卡智能卡芯片卡射频卡',NULL,NULL,0,'IC卡智能卡芯片卡射频卡','ghjk','dfgh','/uploads/files/IC2.jpg',NULL,1435558565,1435748344),
 (46,7,NULL,1,'DM单页',NULL,NULL,0,'DM单页','ghjk','dfgh','/uploads/files/DM2.jpg',NULL,1435558800,1435558800),
 (47,7,NULL,1,'圈装折页穿绳简易菜谱',NULL,NULL,0,'圈装折页穿绳简易菜谱','ghjk','dfgh','/uploads/files/menu1.jpg',NULL,1435558868,1435558868),
 (48,7,NULL,1,'精装高档D型圈文件夹',NULL,NULL,0,'精装高档D型圈文件夹','ghjk','dfgh','/uploads/files/Looseleaffolder.jpg',NULL,1435559038,1435559038),
 (49,7,NULL,1,'优惠券餐券抵用券月饼票入场券',NULL,NULL,0,'优惠券餐券抵用券月饼票入场券','ghjk','dfgh','/uploads/files/paper1.jpg',NULL,1435559114,1435559114),
 (50,7,NULL,1,'N次贴便利贴标记贴',NULL,NULL,0,'N次贴便利贴标记贴','ghjk','dfgh','/uploads/files/N1.jpg',NULL,1435559207,1435559207),
 (51,7,NULL,1,'胶装书籍教材画册',NULL,NULL,0,'胶装书籍教材画册','ghjk','dfgh','/uploads/files/product2.jpg',NULL,1435559272,1435559272),
 (52,7,NULL,1,'产品手册公司介绍',NULL,NULL,0,'产品手册公司介绍','ghjk','dfgh','/uploads/files/product1.jpg',NULL,1435559328,1435559328),
 (53,7,NULL,1,'楼书',NULL,NULL,0,'楼书','ghjk','dfgh','/uploads/files/picture3.jpg',NULL,1435559363,1435559363),
 (54,7,NULL,1,'皮质精装画册图书书籍',NULL,NULL,0,'皮质精装画册图书书籍','ghjk','dfgh','/uploads/files/picture1.jpg',NULL,1435559421,1435559421),
 (55,7,NULL,1,'双插袋封套文件夹',NULL,NULL,0,'双插袋封套文件夹','ghjk','dfgh','/uploads/files/envelope1.jpg',NULL,1435559495,1435559495),
 (56,7,NULL,1,'单插袋文件夹封套',NULL,NULL,0,'单插袋文件夹封套','ghjk','dfgh','/uploads/files/envelope2.jpg',NULL,1435559519,1435559519),
 (57,7,NULL,1,'信封信纸名片',NULL,NULL,0,'信封信纸名片','ghjk','dfgh','/uploads/files/255.jpg',NULL,1435559616,1435559616),
 (58,7,NULL,1,'档案袋文件袋资料袋',NULL,NULL,0,'档案袋文件袋资料袋','ghjk','dfgh','/uploads/files/filecover(1).jpg',NULL,1435559665,1435559665),
 (59,7,NULL,1,'折页邀请函',NULL,NULL,0,'折页邀请函','ghjk','dfgh','/uploads/files/foldingfinvitation(1).jpg',NULL,1435559698,1435559698),
 (60,7,NULL,1,'针式联单复写纸单据',NULL,NULL,0,'针式联单复写纸单据','ghjk','dfgh','/uploads/files/documents1.jpg',NULL,1435559797,1435559797),
 (61,7,NULL,1,'联单单据',NULL,NULL,0,'联单单据','ghjk','dfgh','/uploads/files/duplicate.jpg',NULL,1435559829,1435559829),
 (62,7,NULL,1,'纸杯',NULL,NULL,0,'纸杯','ghjk','dfgh','/uploads/files/Papercups.jpg',NULL,1435559851,1435559851),
 (63,7,NULL,1,'智能卡结构图',NULL,NULL,0,'智能卡结构图','ghjk','dfgh','/uploads/files/sssdde2.jpg',NULL,1435748444,1435748444),
 (64,7,NULL,1,'各类标书',NULL,NULL,0,'各类标书','ghjk','dfgh','/uploads/files/12-125123682.jpg',NULL,1435998854,1435998888),
 (65,7,NULL,1,'各种皮纹标书',NULL,NULL,0,'各种皮纹标书','ghjk','dfgh','/uploads/files/002SvhGSgy.jpg',NULL,1435998952,1435998952),
 (66,7,NULL,1,'精装标书',NULL,NULL,0,'精装标书','ghjk','dfgh','/uploads/files/1305003656.jpg',NULL,1435999010,1435999010),
 (67,7,NULL,1,'标书',NULL,NULL,0,'标书','ghjk','dfgh','/uploads/files/2014042414.jpg',NULL,1435999094,1435999094),
 (68,7,NULL,1,'商务标书',NULL,NULL,0,'商务标书','ghjk','dfgh','/uploads/files/2013121200.jpg',NULL,1435999130,1435999130),
 (69,7,NULL,1,'打孔装订',NULL,NULL,0,'打孔装订','ghjk','dfgh','/uploads/files/7200.jpg',NULL,1436001183,1436001183),
 (70,7,NULL,1,'打孔装',NULL,NULL,0,'打孔装','ghjk','dfgh','/uploads/files/20140627160149132.jpg',NULL,1436001207,1436001207),
 (71,7,NULL,1,'铁圈精装',NULL,NULL,0,'铁圈精装','ghjk','dfgh','/uploads/files/560498.jpg',NULL,1436001279,1436001279),
 (72,7,NULL,1,'铁圈装订',NULL,NULL,0,'铁圈装订','ghjk','dfgh','/uploads/files/7724166_1.jpg',NULL,1436001331,1436001331),
 (73,7,NULL,1,'水晶蝴蝶装',NULL,NULL,0,'水晶蝴蝶装','ghjk','dfgh','/uploads/files/20120426143518_3266.jpg',NULL,1436001386,1436001386),
 (74,7,NULL,1,'硬面铁圈装',NULL,NULL,0,'硬面铁圈装','ghjk','dfgh','/uploads/files/Redocn_2012032009160533.jpg',NULL,1436001431,1436001431),
 (75,7,NULL,1,'欧式装',NULL,NULL,0,'欧式装','ghjk','dfgh','/uploads/files/IMG_0601.JPG',NULL,1436001477,1436001477),
 (76,7,NULL,1,'压条装',NULL,NULL,0,'压条装','ghjk','dfgh','/uploads/files/551bb2d2N6ffaf6cd.jpg',NULL,1436001498,1436001498),
 (77,12,NULL,1,'精装楼书',NULL,NULL,0,'精装楼书','','','/uploads/files/200917234823882_2.jpg',NULL,1436001859,1436001859),
 (78,12,NULL,1,'楼层图',NULL,NULL,0,'楼层图','','','/uploads/files/2389.jpg',NULL,1436001915,1436002874),
 (79,12,NULL,1,'楼书',NULL,NULL,0,'楼书','','','/uploads/files/0723100206392.jpg',NULL,1436001940,1436001940),
 (80,12,NULL,1,'平面图',NULL,NULL,0,'平面图','','','/uploads/files/06r58PICs6C.jpg',NULL,1436001983,1436001983),
 (81,12,NULL,1,'硫酸图',NULL,NULL,0,'硫酸图','','','/uploads/files/23233.jpg',NULL,1436002011,1436002011),
 (82,12,NULL,1,'蓝图',NULL,NULL,0,'蓝图','','','/uploads/files/2335.jpg',NULL,1436002038,1436002038),
 (83,12,NULL,1,'标书',NULL,NULL,0,'标书','','','/uploads/files/071da017e645457a9c021c65356df409.jpg',NULL,1436002081,1436002081),
 (84,12,NULL,1,'工程设计蓝图',NULL,NULL,0,'工程设计蓝图','','','/uploads/files/e35e260d7ab3b2d69afd754f69f765d1.jpg',NULL,1436002130,1436002130),
 (85,12,NULL,1,'盖章蓝图复印装订',NULL,NULL,0,'盖章蓝图复印装订','','','/uploads/files/1eebc4eb49927fe9.jpg',NULL,1436002186,1436002186),
 (86,12,NULL,1,'图纸折叠折图',NULL,NULL,0,'图纸折叠折图','','','/uploads/files/3c6d55fbb2fb43167e5b6b7620a4462309f7d371.jpg',NULL,1436002236,1436002236),
 (87,12,NULL,1,'白图装订成册留档',NULL,NULL,0,'白图装订成册留档','','','/uploads/files/89ada83d1cf0f5ce66fef0121473906a_310_0_max.jpg',NULL,1436002306,1436002306),
 (88,12,NULL,1,'蓝图装订包边',NULL,NULL,0,'蓝图装订包边','','','/uploads/files/2302.gif',NULL,1436002363,1436002363),
 (89,12,NULL,1,'成套工程图纸装订成册留档',NULL,NULL,0,'成套工程图纸装订成册留档','','','/uploads/files/thumb.jpg',NULL,1436002444,1436002444),
 (90,12,NULL,1,'图纸分类装订',NULL,NULL,0,'图纸分类装订','','','/uploads/files/thumb2.jpg',NULL,1436002492,1436002492),
 (91,12,NULL,1,'工程设计图',NULL,NULL,0,'工程设计图','','','/uploads/files/1320061055390222.jpg',NULL,1436002546,1436002546),
 (92,12,NULL,1,'各种建筑工程标书',NULL,NULL,0,'各种建筑工程标书','','','/uploads/files/2407856.jpg',NULL,1436002587,1436002587),
 (93,12,NULL,1,'白图留档文件',NULL,NULL,0,'白图留档文件','','','/uploads/files/130379615541996249.JPG',NULL,1436002624,1436002624),
 (94,12,NULL,1,'建筑工程类标书',NULL,NULL,0,'建筑工程类标书','','','/uploads/files/f10417ee68ab7c85.jpg',NULL,1436002683,1436002683),
 (95,13,NULL,1,'挂历各种挂历',NULL,NULL,0,'挂历各种挂历','','','/uploads/files/gl1.jpg',NULL,1436003205,1436003205),
 (96,13,NULL,1,'压条挂历',NULL,NULL,0,'压条挂历','','','/uploads/files/gl2.jpg',NULL,1436003236,1436003236),
 (97,13,NULL,1,'标准台历',NULL,NULL,0,'标准台历','','','/uploads/files/tl4.jpg',NULL,1436003274,1436003274),
 (98,13,NULL,1,'水晶台历',NULL,NULL,0,'水晶台历','','','/uploads/files/tl2.jpg',NULL,1436003301,1436003301),
 (99,13,NULL,1,'企业定制台历',NULL,NULL,0,'企业定制台历','','','/uploads/files/tl3.jpg',NULL,1436003426,1436003426),
 (100,13,NULL,1,'便携式台历',NULL,NULL,0,'便携式台历','','','/uploads/files/tl5.jpg',NULL,1436003488,1436003488),
 (101,13,NULL,1,'个性化台历',NULL,NULL,0,'个性化台历','','','/uploads/files/tl6.jpg',NULL,1436003526,1436003526),
 (102,13,NULL,1,'各种风格台历',NULL,NULL,0,'各种风格台历','','','/uploads/files/tl8.jpg',NULL,1436003552,1436003552),
 (103,13,NULL,1,'常规台历',NULL,NULL,0,'常规台历','','','/uploads/files/tl7.jpg',NULL,1436003576,1436003576),
 (104,13,NULL,1,'各种有机玻璃台历',NULL,NULL,0,'各种有机玻璃台历','','','/uploads/files/tl14.jpg',NULL,1436003609,1436003609),
 (105,13,NULL,1,'三角支架台历',NULL,NULL,0,'三角支架台历','','','/uploads/files/tl9.jpg',NULL,1436003646,1436003646),
 (106,13,NULL,1,'定制水晶台历',NULL,NULL,0,'定制水晶台历','','','/uploads/files/tl12.jpg',NULL,1436003691,1436003691),
 (107,13,NULL,1,'精致台历',NULL,NULL,0,'精致台历','','','/uploads/files/tl11.jpg',NULL,1436003724,1436003724),
 (108,13,NULL,1,'各种设计台历',NULL,NULL,0,'各种设计台历','','','/uploads/files/tl10.jpg',NULL,1436003765,1436003765),
 (109,13,NULL,1,'可变数据分区台历',NULL,NULL,0,'可变数据分区台历','','','/uploads/files/tl13.jpg',NULL,1436003809,1436003809),
 (110,10,NULL,1,'出版书籍',NULL,NULL,0,'出版书籍','','','/uploads/files/jz1.jpg',NULL,1436185114,1436185114),
 (111,10,NULL,1,'古书装订书籍',NULL,NULL,0,'古书装订书籍','','','/uploads/files/a14.jpg',NULL,1436185151,1436185151),
 (112,10,NULL,1,'固本珍藏装订书籍',NULL,NULL,0,'固本珍藏装订书籍','','','/uploads/files/jz2.jpg',NULL,1436185189,1436185189),
 (113,10,NULL,1,'礼盒包装书籍',NULL,NULL,0,'礼盒包装书籍','','','/uploads/files/jz3.jpg',NULL,1436185292,1436185292),
 (114,10,NULL,1,'经典古籍',NULL,NULL,0,'经典古籍','','','/uploads/files/jz8.jpg',NULL,1436185322,1436185322),
 (115,10,NULL,1,'精品书册',NULL,NULL,0,'精品书册','','','/uploads/files/jz6.jpg',NULL,1436185364,1436185364),
 (116,10,NULL,1,'典藏全集系列丛书',NULL,NULL,0,'典藏全集系列丛书','','','/uploads/files/jz4.jpg',NULL,1436185479,1436185479),
 (117,10,NULL,1,'经典名著',NULL,NULL,0,'经典名著','','','/uploads/files/jz7.jpg',NULL,1436185544,1436185544),
 (118,10,NULL,1,'工具书',NULL,NULL,0,'工具书','','','/uploads/files/jz9.jpg',NULL,1436185640,1436185640),
 (119,10,NULL,1,'各类出版书籍',NULL,NULL,0,'各类出版书籍','','','/uploads/files/p5.jpg',NULL,1436185678,1436185678),
 (120,10,NULL,1,'书本',NULL,NULL,0,'书本','','','/uploads/files/p8.jpg',NULL,1436185707,1436185707),
 (121,10,NULL,1,'各类丛书',NULL,NULL,0,'各类丛书','','','/uploads/files/sj2.jpg',NULL,1436185732,1436185732),
 (122,10,NULL,1,'特种工艺图书',NULL,NULL,0,'特种工艺图书','','','/uploads/files/sj3.jpg',NULL,1436185854,1436185854),
 (123,10,NULL,1,'各类画册',NULL,NULL,0,'各类画册','','','/uploads/files/sj.jpg',NULL,1436185878,1436185878),
 (124,10,NULL,1,'公司宣传册',NULL,NULL,0,'公司宣传册','','','/uploads/files/zy1.jpg',NULL,1436185916,1436185916),
 (125,10,NULL,1,'宣传折页',NULL,NULL,0,'宣传折页','','','/uploads/files/zy2.jpg',NULL,1436186023,1436186023),
 (126,10,NULL,1,'宣传资料',NULL,NULL,0,'宣传资料','','','/uploads/files/zy3.jpg',NULL,1436186057,1436186057),
 (127,10,NULL,1,'华人杂志',NULL,NULL,0,'华人杂志','','','/uploads/files/zz1.jpg',NULL,1436186105,1436186105),
 (128,10,NULL,1,'时尚杂志',NULL,NULL,0,'时尚杂志','','','/uploads/files/zz4.jpg',NULL,1436186137,1436186137),
 (129,10,NULL,1,'女性杂志',NULL,NULL,0,'女性杂志','','','/uploads/files/zz2.jpg',NULL,1436186165,1436186165),
 (130,10,NULL,1,'男性杂志',NULL,NULL,0,'男性杂志','','','/uploads/files/zz5.jpg',NULL,1436186198,1436186198),
 (131,10,NULL,1,'都市杂志',NULL,NULL,0,'都市杂志','','','/uploads/files/zz3.jpg',NULL,1436186268,1436186268),
 (132,10,NULL,1,'八卦杂志',NULL,NULL,0,'八卦杂志','','','/uploads/files/zz7.jpg',NULL,1436186305,1436186305),
 (133,10,NULL,1,'娱乐杂志',NULL,NULL,0,'娱乐杂志','','','/uploads/files/zz6.jpg',NULL,1436186324,1436186324),
 (134,10,NULL,1,'潮流杂志',NULL,NULL,0,'潮流杂志','','','/uploads/files/zz8.jpg',NULL,1436186351,1436186351),
 (135,11,NULL,1,'宣传培训手册',NULL,NULL,0,'宣传培训手册','','','/uploads/files/2zepe9nt7c.jpg',NULL,1436186473,1436186473),
 (136,11,NULL,1,'政府培训资料',NULL,NULL,0,'政府培训资料','','','/uploads/files/eewtr.jpg',NULL,1436186521,1436186521),
 (137,11,NULL,1,'事业单位培训资料',NULL,NULL,0,'事业单位培训资料','','','/uploads/files/7pzworfa7j.jpg',NULL,1436186557,1436186557),
 (138,11,NULL,1,'分页精装培训手册',NULL,NULL,0,'分页精装培训手册','','','/uploads/files/jz5.jpg',NULL,1436186609,1436186609),
 (139,11,NULL,1,'行业培训手册',NULL,NULL,0,'行业培训手册','','','/uploads/files/21e6d069-562b-4c2d-865c-a63ed516839e.jpg',NULL,1436186652,1436186652),
 (140,11,NULL,1,'老师培训手册',NULL,NULL,0,'老师培训手册','','','/uploads/files/97558PICvTp.jpg',NULL,1436186709,1436186709),
 (141,11,NULL,1,'套装培训资料',NULL,NULL,0,'套装培训资料','','','/uploads/files/200712282139792.jpg',NULL,1436186735,1436186735),
 (142,11,NULL,1,'销售培训手册',NULL,NULL,0,'销售培训手册','','','/uploads/files/503928-1_w.jpg',NULL,1436186768,1436186768),
 (143,11,NULL,1,'英语培训书籍',NULL,NULL,0,'英语培训书籍','','','/uploads/files/21063988-1_w.jpg',NULL,1436186819,1436186819),
 (144,11,NULL,1,'英语培训教材',NULL,NULL,0,'英语培训教材','','','/uploads/files/p4.jpg',NULL,1436186851,1436186851),
 (145,11,NULL,1,'维修培训手册',NULL,NULL,0,'维修培训手册','','','/uploads/files/5609800_202239163000_2.jpg',NULL,1436186894,1436186894),
 (146,11,NULL,1,'领导培训手册',NULL,NULL,0,'领导培训手册','','','/uploads/files/1040532409-1_w_1.jpg',NULL,1436186920,1436186920),
 (147,11,NULL,1,'培训教材',NULL,NULL,0,'培训教材','','','/uploads/files/2010110171559977.jpg',NULL,1436186954,1436186954),
 (148,11,NULL,1,'培训资料教材',NULL,NULL,0,'培训资料教材','','','/uploads/files/qz2.jpg',NULL,1436187003,1436187003),
 (149,11,NULL,1,'学习手册',NULL,NULL,0,'学习手册','','','/uploads/files/1293501377645373831.jpg',NULL,1436187037,1436187037),
 (150,11,NULL,1,'培训教材',NULL,NULL,0,'培训教材','','','/uploads/files/a0000191920.jpg',NULL,1436187068,1436187068),
 (151,11,NULL,1,'技能培训手册',NULL,NULL,0,'技能培训手册','','','/uploads/files/rBEhU1HNTSYIAAAAAAJ-EtoZOaUAAAnAwDnvSkAAn4q084.jpg',NULL,1436187100,1436187100),
 (152,11,NULL,1,'教育机构教材',NULL,NULL,0,'教育机构教材','','','/uploads/files/p7.jpg',NULL,1436187134,1436187134),
 (153,11,NULL,1,'培训机构教材与资料',NULL,NULL,0,'培训机构教材与资料','','','/uploads/files/sj1.jpg',NULL,1436187368,1436187368),
 (154,11,NULL,1,'教材资料',NULL,NULL,0,'教材资料','','','/uploads/files/qz1.jpg',NULL,1436187470,1436187470),
 (155,11,NULL,1,'学校教材',NULL,NULL,0,'学校教材','','','/uploads/files/p6.jpg',NULL,1436187521,1436187521),
 (156,11,NULL,1,'宣传资料教材',NULL,NULL,0,'宣传资料教材','','','/uploads/files/p1.jpg',NULL,1436187564,1436187564),
 (157,11,NULL,1,'立体图画教材',NULL,NULL,0,'立体图画教材','','','/uploads/files/p2.jpg',NULL,1436187589,1436187589),
 (158,14,NULL,1,'各类标签',NULL,NULL,0,'各类标签','','','/uploads/files/1(2).jpg',NULL,1436187752,1436187752),
 (159,14,NULL,1,'各类标签贴纸',NULL,NULL,0,'各类标签贴纸','','','/uploads/files/7rty.jpg',NULL,1436187784,1436187784),
 (160,14,NULL,1,'塑料马夹袋',NULL,NULL,0,'塑料马夹袋','','','/uploads/files/6ttgg.jpg',NULL,1436187828,1436187828),
 (161,14,NULL,1,'各种月饼盒',NULL,NULL,0,'各种月饼盒','','','/uploads/files/34fdg2.jpg',NULL,1436187863,1436187863),
 (162,14,NULL,1,'彩色瓦楞盒',NULL,NULL,0,'彩色瓦楞盒','','','/uploads/files/3rrty.JPG',NULL,1436187886,1436187886),
 (163,14,NULL,1,'手提袋',NULL,NULL,0,'手提袋','','','/uploads/files/76gtb.jpg',NULL,1436187928,1436187928),
 (164,14,NULL,1,'瓦楞彩色礼盒',NULL,NULL,0,'瓦楞彩色礼盒','','','/uploads/files/124.jpg',NULL,1436187983,1436187983),
 (165,14,NULL,1,'红酒木质礼盒',NULL,NULL,0,'红酒木质礼盒','','','/uploads/files/236.jpg',NULL,1436188027,1436188027),
 (166,14,NULL,1,'红酒单瓶木质礼盒',NULL,NULL,0,'红酒单瓶木质礼盒','','','/uploads/files/264.jpg',NULL,1436188074,1436188074),
 (167,14,NULL,1,'单瓶洋酒木盒',NULL,NULL,0,'单瓶洋酒木盒','','','/uploads/files/345.jpg',NULL,1436188112,1436188112),
 (168,14,NULL,1,'各种贴标',NULL,NULL,0,'各种贴标','','','/uploads/files/453.jpg',NULL,1436188153,1436188153),
 (169,14,NULL,1,'防伪标签',NULL,NULL,0,'防伪标签','','','/uploads/files/456.jpg',NULL,1436188181,1436188181),
 (170,14,NULL,1,'木质洋酒盒',NULL,NULL,0,'木质洋酒盒','','','/uploads/files/543.jpg',NULL,1436188224,1436188224),
 (171,14,NULL,1,'红酒木盒',NULL,NULL,0,'红酒木盒','','','/uploads/files/556.jpg',NULL,1436188258,1436188258),
 (172,14,NULL,1,'精品月饼盒',NULL,NULL,0,'精品月饼盒','','','/uploads/files/766h1.jpg',NULL,1436188725,1436188725),
 (173,14,NULL,1,'各种购物袋',NULL,NULL,0,'各种购物袋','','','/uploads/files/1223(1).jpg',NULL,1436188775,1436188775),
 (174,14,NULL,1,'纸袋',NULL,NULL,0,'纸袋','','','/uploads/files/3451.jpg',NULL,1436188803,1436188803),
 (175,14,NULL,1,'环保纸袋',NULL,NULL,0,'环保纸袋','','','/uploads/files/7662.jpg',NULL,1436188838,1436188838),
 (176,14,NULL,1,'环保手提袋',NULL,NULL,0,'环保手提袋','','','/uploads/files/12673.jpg',NULL,1436188868,1436188868),
 (177,14,NULL,1,'各类环保手袋',NULL,NULL,0,'各类环保手袋','','','/uploads/files/87665.jpg',NULL,1436188910,1436188910),
 (178,14,NULL,1,'本色瓦楞箱',NULL,NULL,0,'本色瓦楞箱','','','/uploads/files/1234.jpg',NULL,1436188952,1436188952),
 (179,14,NULL,1,'瓦楞箱',NULL,NULL,0,'瓦楞箱','','','/uploads/files/2582.jpg',NULL,1436188974,1436188974),
 (180,14,NULL,1,'彩色包装盒',NULL,NULL,0,'彩色包装盒','','','/uploads/files/6778.jpg',NULL,1436189044,1436189044),
 (181,14,NULL,1,'瓦楞包装箱',NULL,NULL,0,'瓦楞包装箱','','','/uploads/files/978671.jpg',NULL,1436189087,1436189087),
 (182,14,NULL,1,'灰板礼盒',NULL,NULL,0,'灰板礼盒','','','/uploads/files/3453.jpg',NULL,1436189119,1436189119),
 (183,14,NULL,1,'礼品盒',NULL,NULL,0,'礼品盒','','','/uploads/files/5678.jpg',NULL,1436189152,1436189152),
 (184,14,NULL,1,'精品盒',NULL,NULL,0,'精品盒','','','/uploads/files/32439.jpg',NULL,1436189192,1436189192),
 (185,14,NULL,1,'礼品盒',NULL,NULL,0,'礼品盒','','','/uploads/files/43511.jpg',NULL,1436189216,1436189216),
 (186,14,NULL,1,'彩色礼盒',NULL,NULL,0,'彩色礼盒','','','/uploads/files/78812.jpg',NULL,1436189290,1436189290),
 (187,14,NULL,1,'异型彩色礼盒',NULL,NULL,0,'异型彩色礼盒','','','/uploads/files/78978.jpg',NULL,1436189320,1436189320),
 (188,14,NULL,1,'各种精品礼盒',NULL,NULL,0,'各种精品礼盒','','','/uploads/files/457710.jpg',NULL,1436189411,1436189411),
 (189,14,NULL,1,'心型礼盒',NULL,NULL,0,'心型礼盒','','','/uploads/files/567567.jpg',NULL,1436189442,1436189442),
 (190,14,NULL,1,'标准礼盒',NULL,NULL,0,'标准礼盒','','','/uploads/files/789789.jpg',NULL,1436189484,1436189484),
 (191,14,NULL,1,'彩色硬纸版盒',NULL,NULL,0,'彩色硬纸版盒','','','/uploads/files/945546.jpg',NULL,1436189516,1436189516),
 (192,14,NULL,1,'复杂包装礼盒',NULL,NULL,0,'复杂包装礼盒','','','/uploads/files/090887.jpg',NULL,1436189569,1436189569),
 (193,14,NULL,1,'复杂立体盒',NULL,NULL,0,'复杂立体盒','','','/uploads/files/345654.jpg',NULL,1436189632,1436189632),
 (194,14,NULL,1,'彩色礼品纸板箱',NULL,NULL,0,'彩色礼品纸板箱','','','/uploads/files/57567.jpg',NULL,1436189676,1436189676),
 (195,14,NULL,1,'简易天地盖礼盒',NULL,NULL,0,'简易天地盖礼盒','','','/uploads/files/55667.jpg',NULL,1436189725,1436189725),
 (196,14,NULL,1,'月饼礼品盒',NULL,NULL,0,'月饼礼品盒','','','/uploads/files/yyttr3.jpg',NULL,1436189787,1436189787),
 (197,14,NULL,1,'彩色硬板礼品书盒',NULL,NULL,0,'彩色硬板礼品书盒','','','/uploads/files/5369ede63dfae967fc000001.JPEG',NULL,1436189860,1436189860),
 (198,14,NULL,1,'翻盖连体木盒',NULL,NULL,0,'翻盖连体木盒','','','/uploads/files/4565.jpg',NULL,1436189939,1436189939),
 (199,14,NULL,1,'精品木盒',NULL,NULL,0,'精品木盒','','','/uploads/files/5335.jpg',NULL,1436189963,1436189963),
 (200,14,NULL,1,'蛋糕纸质礼盒',NULL,NULL,0,'蛋糕纸质礼盒','','','/uploads/files/45645.jpg',NULL,1436190001,1436190001),
 (201,14,NULL,1,'便捷瓦楞礼盒',NULL,NULL,0,'便捷瓦楞礼盒','','','/uploads/files/978978.jpg',NULL,1436190044,1436190044),
 (202,14,NULL,1,'产品套装礼盒',NULL,NULL,0,'产品套装礼盒','','','/uploads/files/87651.jpg',NULL,1436190092,1436190092),
 (203,14,NULL,1,'衬衣内页包装盒',NULL,NULL,0,'衬衣内页包装盒','','','/uploads/files/baozhuanghe2.jpg',NULL,1436190158,1436190158),
 (204,14,NULL,1,'PVC天窗纸盒',NULL,NULL,0,'PVC天窗纸盒','','','/uploads/files/123213.jpg',NULL,1436190202,1436190202),
 (205,14,NULL,1,'透明天窗纸盒',NULL,NULL,0,'透明天窗纸盒','','','/uploads/files/678765.jpg',NULL,1436190229,1436190229),
 (206,14,NULL,1,'药品盒',NULL,NULL,0,'药品盒','','','/uploads/files/5543.jpg',NULL,1436190290,1436190290),
 (207,14,NULL,1,'飞机盒',NULL,NULL,0,'飞机盒','','','/uploads/files/434562.jpg',NULL,1436190325,1436190325),
 (208,14,NULL,1,'纸盒',NULL,NULL,0,'纸盒','','','/uploads/files/32248.jpg',NULL,1436190365,1436190365),
 (209,14,NULL,1,'各类纸质包装盒',NULL,NULL,0,'各类纸质包装盒','','','/uploads/files/bdtmh1.jpg',NULL,1436190433,1436190433),
 (210,14,NULL,1,'各类纸盒',NULL,NULL,0,'各类纸盒','','','/uploads/files/8908906.jpg',NULL,1436190495,1436190495),
 (211,14,NULL,1,'各类礼盒纸盒',NULL,NULL,0,'各类礼盒纸盒','','','/uploads/files/7644.jpg',NULL,1436190527,1436190527),
 (212,14,NULL,1,'各类小型礼盒',NULL,NULL,0,'各类小型礼盒','','','/uploads/files/764534.jpg',NULL,1436190591,1436190591),
 (213,14,NULL,1,'吸塑纸盒',NULL,NULL,0,'吸塑纸盒','','','/uploads/files/6434.jpg',NULL,1436190631,1436190631),
 (214,14,NULL,1,'吸塑盒',NULL,NULL,0,'吸塑盒','','','/uploads/files/5879.jpg',NULL,1436190649,1436190649),
 (215,14,NULL,1,'塑料袋',NULL,NULL,0,'塑料袋','','','/uploads/files/8667.jpg',NULL,1436190682,1436190682),
 (216,14,NULL,1,'各种塑料包装',NULL,NULL,0,'各种塑料包装','','','/uploads/files/980890.jpg',NULL,1436190714,1436190714),
 (217,14,NULL,1,'各类塑料袋',NULL,NULL,0,'各类塑料包装','','','/uploads/files/6575673.jpg',NULL,1436190745,1436190809),
 (218,14,NULL,1,'激光防伪标签',NULL,NULL,0,'激光防伪标签','','','/uploads/files/65443.jpg',NULL,1436190850,1436190850),
 (219,14,NULL,1,'各种条码标签',NULL,NULL,0,'各种条码标签','','','/uploads/files/345345.jpg',NULL,1436190881,1436190881),
 (220,14,NULL,1,'各种说明标签',NULL,NULL,0,'各种说明标签','','','/uploads/files/34534534.jpg',NULL,1436190921,1436190921),
 (221,14,NULL,1,'各类产品标签',NULL,NULL,0,'各类产品标签','','','/uploads/files/biaoqian1(2).jpg',NULL,1436190958,1436190958),
 (222,14,NULL,1,'玻璃瓶特种印刷',NULL,NULL,0,'玻璃瓶特种印刷','','','/uploads/files/bl2.jpg',NULL,1436191028,1436191028),
 (223,14,NULL,1,'特种印刷',NULL,NULL,0,'特种印刷','','','/uploads/files/bl1.jpg',NULL,1436191047,1436191047),
 (224,14,NULL,1,'有机玻璃印刷',NULL,NULL,0,'有机玻璃印刷','','','/uploads/files/yjnl.jpg',NULL,1436191092,1436191092),
 (225,14,NULL,1,'化妆瓶印刷',NULL,NULL,0,'化妆瓶印刷','','','/uploads/files/wlp3.jpg',NULL,1436191424,1436191424),
 (226,14,NULL,1,'陶瓷印刷',NULL,NULL,0,'陶瓷印刷','','','/uploads/files/mkb.jpg',NULL,1436191449,1436191449),
 (227,14,NULL,1,'各类化妆品包装印刷',NULL,NULL,0,'各类化妆品包装印刷','','','/uploads/files/slp1.jpg',NULL,1436191530,1436191530),
 (228,14,NULL,1,'塑料瓶印刷',NULL,NULL,0,'塑料瓶印刷','','','/uploads/files/slp5.jpg',NULL,1436191563,1436191563),
 (229,14,NULL,1,'玻璃瓶印刷',NULL,NULL,0,'玻璃瓶印刷','','','/uploads/files/slp4.jpg',NULL,1436191601,1436191601),
 (230,14,NULL,1,'曲面印刷',NULL,NULL,0,'曲面印刷','','','/uploads/files/sl2.jpg',NULL,1436191633,1436191633),
 (231,14,NULL,1,'各类防伪标签印刷',NULL,NULL,0,'各类防伪标签印刷','','','/uploads/files/fw2.jpg',NULL,1436191747,1436191747),
 (232,14,NULL,1,'头盔印刷',NULL,NULL,0,'头盔印刷','','','/uploads/files/tk.jpg',NULL,1436191791,1436191791),
 (233,14,NULL,1,'各种印刷品',NULL,NULL,0,'各种印刷品','','','/uploads/files/tr1.jpg',NULL,1436191826,1436191826),
 (234,14,NULL,1,'金属标牌',NULL,NULL,0,'金属标牌','','','/uploads/files/jsb2.jpg',NULL,1436191865,1436191865),
 (235,14,NULL,1,'各种异型金属标牌',NULL,NULL,0,'各种异型金属标牌','','','/uploads/files/jsb3.jpg',NULL,1436191898,1436191898),
 (236,14,NULL,1,'徽标',NULL,NULL,0,'徽标','','','/uploads/files/jsb1.jpg',NULL,1436191925,1436191925),
 (237,14,NULL,1,'各类滴塑',NULL,NULL,0,'各类滴塑','','','/uploads/files/ds.jpg',NULL,1436191965,1436191965),
 (238,8,NULL,1,'各种旗帜',NULL,NULL,0,'各种旗帜','','','/uploads/files/a3343.jpg',NULL,1436193708,1436193708),
 (239,8,NULL,1,'室内吊旗',NULL,NULL,0,'室内吊旗','','','/uploads/files/aDSC01728.jpg',NULL,1436193776,1436193776),
 (240,8,NULL,1,'室内促销道旗',NULL,NULL,0,'室内促销道旗','','','/uploads/files/aDSC01733.jpg',NULL,1436193841,1436193841),
 (241,8,NULL,1,'室内挂旗',NULL,NULL,0,'室内挂旗','','','/uploads/files/aIMG_0553.JPG',NULL,1436193887,1436193887),
 (242,8,NULL,1,'室外道旗',NULL,NULL,0,'室外道旗','','','/uploads/files/aDSC01745.jpg',NULL,1436193914,1436193914),
 (243,8,NULL,1,'室内商场挂饰',NULL,NULL,0,'室内商场挂饰','','','/uploads/files/aIMG_0310.JPG',NULL,1436193971,1436193971),
 (244,8,NULL,1,'写真裱雪弗板',NULL,NULL,0,'写真裱雪弗板','','','/uploads/files/b5544b.jpg',NULL,1436194084,1436194084),
 (245,8,NULL,1,'有机玻璃夹层写真logo墙',NULL,NULL,0,'有机玻璃夹层写真logo墙','','','/uploads/files/bDSC01424.jpg',NULL,1436194129,1436194129),
 (246,8,NULL,1,'写真裱KT版异型道具',NULL,NULL,0,'写真裱KT版异型道具','','','/uploads/files/bDSC06018.JPG',NULL,1436194207,1436194207),
 (247,8,NULL,1,'异型雪弗板裱写真',NULL,NULL,0,'异型雪弗板裱写真','','','/uploads/files/bIMG_0224.JPG',NULL,1436194276,1436194276),
 (248,8,NULL,1,'户外广告灯箱及灯箱片',NULL,NULL,0,'户外广告灯箱及灯箱片','','','/uploads/files/c2331.jpg',NULL,1436194336,1436194336),
 (249,8,NULL,1,'商超展示堆头展示活动柜',NULL,NULL,0,'商超展示堆头展示活动柜','','','/uploads/files/c6782.jpg',NULL,1436194414,1436194414),
 (250,8,NULL,1,'灯箱',NULL,NULL,0,'灯箱','','','/uploads/files/cer543.jpg',NULL,1436194443,1436194443),
 (251,8,NULL,1,'广告灯箱',NULL,NULL,0,'广告灯箱','','','/uploads/files/cerr42.jpg',NULL,1436194466,1436194466),
 (252,8,NULL,1,'桁架背景墙',NULL,NULL,0,'桁架背景墙','','','/uploads/files/csdf62.jpg',NULL,1436194504,1436194504),
 (253,8,NULL,1,'户外高炮广告牌',NULL,NULL,0,'户外高炮广告牌','','','/uploads/files/csdgg1.jpg',NULL,1436194537,1436194537),
 (254,8,NULL,1,'户外外墙广告牌',NULL,NULL,0,'户外外墙广告牌','','','/uploads/files/cse4563.jpg',NULL,1436194569,1436194569),
 (255,8,NULL,1,'促销堆头',NULL,NULL,0,'促销堆头','','','/uploads/files/csr451.jpg',NULL,1436194612,1436194612),
 (256,8,NULL,1,'户外道具模型',NULL,NULL,0,'户外道具模型','','','/uploads/files/dDSC01679.jpg',NULL,1436194648,1436194648),
 (257,8,NULL,1,'商超促销展示墙',NULL,NULL,0,'商超促销展示墙','','','/uploads/files/dIMG_0298.JPG',NULL,1436194696,1436194696),
 (258,8,NULL,1,'展览展示道具',NULL,NULL,0,'展览展示道具','','','/uploads/files/dIMG_0307.JPG',NULL,1436194732,1436194732),
 (259,8,NULL,1,'互动道具抽奖箱',NULL,NULL,0,'互动道具抽奖箱','','','/uploads/files/dIMG_0352.JPG',NULL,1436194775,1436194775),
 (260,8,NULL,1,'促销展示纸质环保货架',NULL,NULL,0,'促销展示纸质环保货架','','','/uploads/files/dssde.jpg',NULL,1436194810,1436194810),
 (261,8,NULL,1,'人像牌',NULL,NULL,0,'人像牌','','','/uploads/files/eCIMG0293.JPG',NULL,1436194857,1436194857),
 (262,8,NULL,1,'异型立牌',NULL,NULL,0,'异型立牌','','','/uploads/files/eDSC01428.jpg',NULL,1436194891,1436194891),
 (263,8,NULL,1,'人像立牌',NULL,NULL,0,'人像立牌','','','/uploads/files/eDSC01961_1481.jpg',NULL,1436194929,1436194929),
 (264,8,NULL,1,'人形立牌',NULL,NULL,0,'人形立牌','','','/uploads/files/eIMG_0113.JPG',NULL,1436194980,1436194980),
 (265,8,NULL,1,'异型立牌',NULL,NULL,0,'异型立牌','','','/uploads/files/eIMG_4396.jpg',NULL,1436195005,1436195005),
 (266,8,NULL,1,'窗花',NULL,NULL,0,'窗花','','','/uploads/files/fer3.jpg',NULL,1436195050,1436195050),
 (267,8,NULL,1,'户外庆典道具',NULL,NULL,0,'户外庆典道具','','','/uploads/files/fIMG_0236.JPG',NULL,1436195134,1436195134),
 (268,8,NULL,1,'年会道具',NULL,NULL,0,'年会道具','','','/uploads/files/fIMG_0324.JPG',NULL,1436195171,1436195171),
 (269,8,NULL,1,'商场节日道具',NULL,NULL,0,'商场节日道具','','','/uploads/files/fIMG_0337.JPG',NULL,1436195198,1436195198),
 (270,8,NULL,1,'户外情景道具',NULL,NULL,0,'户外情景道具','','','/uploads/files/fIMG_0535.JPG',NULL,1436195256,1436195256),
 (271,8,NULL,1,'圣诞窗花',NULL,NULL,0,'圣诞窗花','','','/uploads/files/fsd3.jpg',NULL,1436195294,1436195294),
 (272,8,NULL,1,'节日窗花',NULL,NULL,0,'节日窗花','','','/uploads/files/fwer.jpg',NULL,1436195324,1436195324),
 (273,8,NULL,1,'拉网展架',NULL,NULL,0,'拉网展架','','','/uploads/files/lwzj.jpg',NULL,1436195361,1436195361),
 (274,8,NULL,1,'X展架',NULL,NULL,0,'X展架','','','/uploads/files/ABUIABACGAAgzImEnQUotZzsVTCnBDigAw.jpg',NULL,1436195561,1436195561),
 (275,8,NULL,1,'易拉宝',NULL,NULL,0,'易拉宝','','','/uploads/files/023511d2b5ec665859.jpg',NULL,1436195582,1436195582),
 (276,8,NULL,1,'有机玻璃展示架',NULL,NULL,0,'有机玻璃展示架','','','/uploads/files/gIMG_0230.JPG',NULL,1436195623,1436195623),
 (277,8,NULL,1,'亚克力展示架',NULL,NULL,0,'亚克力展示架','','','/uploads/files/gIMG_0341.JPG',NULL,1436195652,1436195652),
 (278,8,NULL,1,'有机玻璃台卡',NULL,NULL,0,'有机玻璃台卡','','','/uploads/files/gIMG_0509.JPG',NULL,1436195683,1436195683),
 (279,8,NULL,1,'亚克力杂志架',NULL,NULL,0,'亚克力杂志架','','','/uploads/files/gIMG_0459.JPG',NULL,1436195723,1436195723),
 (280,8,NULL,1,'化妆品展示台',NULL,NULL,0,'化妆品展示台','','','/uploads/files/gIMG_0469.JPG',NULL,1436195749,1436195749),
 (281,8,NULL,1,'亚克力异型展览展示道具',NULL,NULL,0,'亚克力异型展览展示道具','','','/uploads/files/gwew3.jpg',NULL,1436195785,1436195785),
 (282,18,NULL,1,'合作共赢',NULL,NULL,0,'合作共赢','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。','派登快印,淘彩印刷','/uploads/files/qt5.jpg',NULL,1436519769,1436519769),
 (284,18,NULL,1,'合作拓展培训',NULL,NULL,0,'合作拓展培训','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。','派登快印,淘彩印刷','/uploads/files/qu73.jpg',NULL,1436519880,1436519880),
 (285,18,NULL,1,'与同行优秀企业交流互动',NULL,NULL,0,'与同行优秀企业交流互动','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。','派登快印,淘彩印刷','/uploads/files/qy1(2).jpg',NULL,1436521414,1436521414),
 (286,17,NULL,1,'集体培训现场',NULL,NULL,0,'集体培训现场','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。','派登快印,淘彩印刷','/uploads/files/20140624105148897.jpg',NULL,1436522012,1436522012),
 (287,17,NULL,1,'前台接待培训现场',NULL,NULL,0,'前台接待培训现场','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。','派登快印,淘彩印刷','/uploads/files/200922931569_2(1).jpg',NULL,1436522032,1436522373),
 (288,17,NULL,1,'前期设计拼版人员培训现场',NULL,NULL,0,'前期设计拼版人员培训现场','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。','派登快印,淘彩印刷','/uploads/files/5e82ce5001cb41d5800b4aa8525a21d5(1).jpg',NULL,1436522077,1436522396);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;


--
-- Definition of table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
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
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `model_f` (`model_id`),
  CONSTRAINT `model_f` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`,`parentid`,`template_id`,`model_id`,`cname`,`ename`,`url`,`sort`,`isArticle`,`isShow`,`content`,`file`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`title`,`keywords`,`description`) VALUES 
 (1,0,7,5,'产品展示','SHOW','11',0,1,1,'<p>11</p>','',10,1427765797,1433819806,NULL,NULL,'派登-产品展示','dfgh','ghjk'),
 (2,0,2,5,'生产服务','SERVICE',NULL,1,NULL,1,'<p>111</p>','',10,1427765916,1433819799,NULL,NULL,'派登-生产服务','派登快印,淘彩印刷','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为'),
 (3,0,3,5,'个性定制','CUSTORM',NULL,2,NULL,1,'<p>11</p>','',10,1427765989,1433819791,NULL,NULL,'派登-个性定制','派登快印,淘彩印刷','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为'),
 (4,0,4,5,'合作伙伴','COOPERATION',NULL,3,NULL,1,'<p>11</p>','',10,1427766084,1433819782,NULL,NULL,'派登-合作伙伴','派登快印,淘彩印刷','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为'),
 (5,0,8,5,'关于我们','ABOUT','1',4,1,1,'<p style=\"font-size: 14px; color: rgb(150, 149, 149);\">&nbsp;&nbsp;&nbsp;&nbsp;我们公司从事快印印刷行业已有10多年的历史，为众多优秀企业提供长期全方位全天候生产服务（服务过的企业有：欧莱雅化妆品集团，宝洁公司，宾利汽车，福特汽车，保时捷汽车，美度手表，雷蒙威手表，苹果，法国食品协会，保罗利佳酒业集团，卡慕酒业集团，赛诺菲药业集团，罗氏药业集团，阿斯利康药业集团，绿地集团，恒大集团，陆家嘴集团，96广场，天安房地产集团，克顿传媒影视集团，微软，甲骨文，理光，GE通用电气，西门子，宜家，GUESS服装装饰，ELLE服装装饰，CK服装服饰，现代设计，YKK，李奥贝纳广告公司，奥美广告公司，阿里巴巴，驴妈妈，一号店，SMG上广电，壳牌，中石油，中铁三建，三一重工，青岛啤酒，海尔，复旦大学，上海大学，上海交通大学，新东方，华尔街英语，政府以及事业单位等。）</p><p style=\"font-size: 14px; color: rgb(150, 149, 149);\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;本公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题。我们协助客户将他们的形象与产品完美地呈现给终端消费者或目标受众。我们将努力为社会带来新颖高效的商业模式、为市场带来高度差异化的产品、为客户带来全方位的个性化服务、为我们自己带来广阔的新兴市场。我们将为客户打造集约型的广义印刷一站式采购平台。我们将以最大诚意追求质量第一、服务至上的企业宗旨。</p><p style=\"font-size: 14px; color: rgb(150, 149, 149);\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;我们将为客户提供贴心、专业、高效的生产与服务。</p>','/uploads/files/zongbu.jpg',10,1427766121,1433819774,NULL,'1','派登-关于我们','派登快印,淘彩印刷','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为'),
 (6,0,6,5,'联系我们','CONTACT',NULL,5,NULL,1,'<p>谢谢您的光临！我们的客服时间为每天：当天8:00到次日凌晨2点</p><p style=\"font-family: &#39;microsoft yahei&#39;;\">旗舰店：上海市静安区江宁路631号7号楼2楼整层</p><p style=\"font-family: &#39;microsoft yahei&#39;;\">印刷包装：上海市松江区泗泾镇望东南路34弄1-3号&nbsp;</p><p style=\"font-family: &#39;microsoft yahei&#39;;\">电话：021-62790806，021-62792035</p><p style=\"font-family: &#39;microsoft yahei&#39;;\">手机：17717624416</p>','/uploads/files/about2.jpg',10,1427766151,1436258034,NULL,NULL,'派登-联系我们','派登快印,淘彩印刷','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为'),
 (7,1,1,5,'商务办公','',NULL,1,NULL,1,'<p>11</p>','',10,1427766223,1433818909,NULL,NULL,'商务办公','dfgh','ghjk'),
 (8,1,1,5,'展览展示','',NULL,2,NULL,1,'<p>11</p>','',10,1427766529,1432989862,NULL,NULL,'','',''),
 (10,1,1,5,'文宣出版','',NULL,3,NULL,1,'<p>11</p>','',10,1427766731,1427766731,NULL,NULL,'','',''),
 (11,1,1,5,'教育培训','',NULL,4,NULL,1,'<p>11</p>','',10,1427766767,1427766767,NULL,NULL,'','',''),
 (12,1,1,5,'建筑工程','',NULL,5,NULL,1,'<p>11</p>','',10,1427766796,1427766796,NULL,NULL,'','',''),
 (13,1,1,5,'台历日历','',NULL,6,NULL,1,NULL,'',10,1427766858,1427766858,NULL,NULL,'','',''),
 (14,1,1,5,'包装装潢','',NULL,7,NULL,1,NULL,'',10,1427766882,1427766883,NULL,NULL,'','',''),
 (15,5,5,5,'企业简介','',NULL,1,NULL,1,'<p style=\"font-size: 14px; color: rgb(150, 149, 149);\">&nbsp;&nbsp;&nbsp;&nbsp;我们公司从事快印印刷行业已有10多年的历史，为众多优秀企业提供长期全方位全天候生产服务（服务过的企业有：欧莱雅化妆品集团，宝洁公司，宾利汽车，福特汽车，保时捷汽车，美度手表，雷蒙威手表，苹果，法国食品协会，保罗利佳酒业集团，卡慕酒业集团，赛诺菲药业集团，罗氏药业集团，阿斯利康药业集团，绿地集团，恒大集团，陆家嘴集团，96广场，天安房地产集团，克顿传媒影视集团，微软，甲骨文，理光，GE通用电气，西门子，宜家，GUESS服装装饰，ELLE服装装饰，CK服装服饰，现代设计，YKK，李奥贝纳广告公司，奥美广告公司，阿里巴巴，驴妈妈，一号店，SMG上广电，壳牌，中石油，中铁三建，三一重工，青岛啤酒，海尔，复旦大学，上海大学，上海交通大学，新东方，华尔街英语，政府以及事业单位等。）</p><p style=\"font-size: 14px; color: rgb(150, 149, 149);\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;本公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题。我们协助客户将他们的形象与产品完美地呈现给终端消费者或目标受众。我们将努力为社会带来新颖高效的商业模式、为市场带来高度差异化的产品、为客户带来全方位的个性化服务、为我们自己带来广阔的新兴市场。我们将为客户打造集约型的广义印刷一站式采购平台。我们将以最大诚意追求质量第一、服务至上的企业宗旨。</p><p style=\"font-size: 14px; color: rgb(150, 149, 149);\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;我们将为客户提供贴心、专业、高效的生产与服务。</p>','/uploads/files/zongbu.jpg',10,1427766957,1428982779,NULL,'1','','',''),
 (16,5,5,5,'活动庆典','',NULL,2,NULL,1,'<p>年度优秀员工年会颁奖现场</p>','/uploads/files/hd11.jpg',10,1427766991,1436520364,NULL,NULL,'活动庆典','派登快印,淘彩印刷','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。'),
 (17,5,1,5,'员工培训','',NULL,3,NULL,1,'','',10,1427767016,1436522165,NULL,NULL,'员工培训','派登快印,淘彩印刷','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。'),
 (18,5,1,5,'交流合作','',NULL,3,NULL,1,'','',10,1427767202,1436521871,NULL,NULL,'交流合作','派登快印,淘彩印刷','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。'),
 (19,0,1,5,'首页',NULL,NULL,NULL,NULL,2,'<p>11</p>','',10,1428658489,1433819685,NULL,NULL,'派登-首页','派登快印,淘彩印刷','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


--
-- Definition of table `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` (`version`,`apply_time`) VALUES 
 ('m000000_000000_base',1426859759),
 ('m130524_201442_init',1426859762),
 ('m150216_075514_create_news_table',1426859762),
 ('m150307_084149_create_category_table',1426859763);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;


--
-- Definition of table `models`
--

DROP TABLE IF EXISTS `models`;
CREATE TABLE `models` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '模型名称',
  `ename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `models`
--

/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` (`id`,`name`,`ename`) VALUES 
 (5,'文章','article'),
 (6,'aas','assd');
/*!40000 ALTER TABLE `models` ENABLE KEYS */;


--
-- Definition of table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `article_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu_id` int(10) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo`
--

/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` (`id`,`title`,`url`,`article_id`,`menu_id`,`description`,`sort`,`status`,`created_at`,`updated_at`) VALUES 
 (1,'图片1','/uploads/images/%E4%B8%87%E8%83%BD%E7%AC%94%E8%AE%B0%E6%9C%AC.jpg','1',7,'1',NULL,1,1427789927,1432991260),
 (7,'1','/uploads/files/DVD.jpg','6',8,'1',NULL,1,1427936480,1435401007),
 (8,'12','/uploads/files/contact.jpg','10',14,'2',NULL,2,1430120909,1430121405),
 (9,'11','/uploads/files/Desert.jpg','11',14,'11',NULL,11,1430122388,1430122388),
 (11,'1','/uploads/files/wanneng.png','12',7,'1',NULL,1,1433901832,1433901832),
 (12,'112','/uploads/files/DM(1).jpg','14',7,'121',NULL,11,1433902077,1433902077);
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;


--
-- Definition of table `photo_menu`
--

DROP TABLE IF EXISTS `photo_menu`;
CREATE TABLE `photo_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `menu_id` int(10) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `place` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `column_f` (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo_menu`
--

/*!40000 ALTER TABLE `photo_menu` DISABLE KEYS */;
INSERT INTO `photo_menu` (`id`,`title`,`url`,`menu_id`,`description`,`sort`,`status`,`created_at`,`updated_at`,`place`,`link`) VALUES 
 (4,'图片4','/uploads/files/2015320_04.jpg',8,'4',NULL,NULL,1427780982,1427780982,NULL,''),
 (15,'neibu-1','/uploads/files/neibu-1.jpg',6,'neibuhuanjing',NULL,NULL,1428633462,1428633462,NULL,''),
 (16,'neibu-2','/uploads/files/neibu-2.jpg',6,'neibuhuanjing',NULL,NULL,1428633484,1428633484,NULL,''),
 (17,'neibu-3','/uploads/files/neibu-3.jpg',6,'neibuhuanjing',NULL,NULL,1428633504,1428633504,NULL,''),
 (18,'1','/uploads/files/1(1).jpg',4,'1',NULL,NULL,1428652137,1428652137,NULL,''),
 (19,'2','/uploads/files/2.jpg',4,'2',NULL,NULL,1428652154,1428652154,NULL,''),
 (20,'3','/uploads/files/5.jpg',4,'3',NULL,NULL,1428652170,1428652170,NULL,''),
 (21,'4','/uploads/files/9.jpg',4,'4',NULL,NULL,1428652189,1428652189,NULL,''),
 (22,'5','/uploads/files/10.jpg',4,'5',NULL,NULL,1428652203,1428652203,NULL,''),
 (23,'6','/uploads/files/11.jpg',4,'6',NULL,NULL,1428652217,1428652217,NULL,''),
 (24,'7','/uploads/files/12.jpg',4,'7',NULL,NULL,1428652234,1428652234,NULL,''),
 (25,'8','/uploads/files/13.jpg',4,'8',NULL,NULL,1428652247,1428652247,NULL,''),
 (26,'9','/uploads/files/15.jpg',4,'9',NULL,NULL,1428652267,1428652267,NULL,''),
 (27,'10','/uploads/files/16.jpg',4,'10',NULL,NULL,1428652285,1428652285,NULL,''),
 (28,'11','/uploads/files/17.jpg',4,'11',NULL,NULL,1428652298,1428652298,NULL,''),
 (29,'12','/uploads/files/18.jpg',4,'12',NULL,NULL,1428652314,1428652314,NULL,''),
 (30,'13','/uploads/files/19.jpg',4,'13',NULL,NULL,1428652330,1428652330,NULL,''),
 (31,'14','/uploads/files/20.jpg',4,'14',NULL,NULL,1428652345,1428652345,NULL,''),
 (32,'15','/uploads/files/21.jpg',4,'15',NULL,NULL,1428652360,1428652360,NULL,''),
 (33,'16','/uploads/files/22.jpg',4,'16',NULL,NULL,1428652376,1428652376,NULL,''),
 (34,'17','/uploads/files/24.jpg',4,'17',NULL,NULL,1428652393,1428652393,NULL,''),
 (35,'18','/uploads/files/25.jpg',4,'18',NULL,NULL,1428652408,1428652408,NULL,''),
 (36,'19','/uploads/files/26.jpg',4,'19',NULL,NULL,1428652425,1428652425,NULL,''),
 (37,'20','/uploads/files/27.jpg',4,'20',NULL,NULL,1428652439,1428652439,NULL,''),
 (38,'21','/uploads/files/28.jpg',4,'21',NULL,NULL,1428652454,1428652454,NULL,''),
 (39,'22','/uploads/files/29.jpg',4,'22',NULL,NULL,1428652467,1428652467,NULL,''),
 (40,'p1','/uploads/files/leftziti.png',19,'',NULL,NULL,1428658703,1428658703,'p1',''),
 (41,'2','/uploads/files/rightimg.png',19,'',NULL,NULL,1428658772,1428658772,'p2',''),
 (42,'购买','/uploads/files/shop1.png',19,'1',NULL,NULL,1428658838,1436255767,'购买','http://pan.baidu.com/s/1eQda1hg'),
 (43,'2','/uploads/files/shop22.png',19,'1',NULL,NULL,1428658864,1436255739,'购买','http://item.taobao.com/item.htm?spm=a1z10.5-c.w4002-10672900635.19.DWkMyA&id=44781540111'),
 (44,'3','/uploads/files/shop3.png',19,'',NULL,NULL,1428658885,1436255883,'购买','http://paid.xiuyun99.com/menu/6'),
 (45,'2','/uploads/files/pinpai.png',19,'',NULL,NULL,1428658942,1428658942,'t1',''),
 (46,'t2','/uploads/files/dianhua.png',19,'',NULL,NULL,1428658988,1428658988,'t2',''),
 (47,'t3','/uploads/files/232322322.jpg',19,'',NULL,NULL,1428659032,1428659446,'t3',''),
 (48,'23','/uploads/files/6.jpg',4,'23',NULL,NULL,1428659744,1428659744,'',''),
 (49,'24','/uploads/files/8.jpg',4,'24',NULL,NULL,1428659757,1428659757,'',''),
 (50,'252','/uploads/files/7.jpg',4,'25',NULL,NULL,1428659805,1436414004,'',''),
 (51,'产品标签','/uploads/images/%E4%BA%A7%E5%93%81%E6%A0%87%E7%AD%BE.jpg',14,'',NULL,NULL,1429890952,1429890952,'',''),
 (52,'镭射防伪标签','/uploads/images/%E9%95%AD%E5%B0%84%E9%98%B2%E4%BC%AA%E6%A0%87%E7%AD%BE.jpg',14,'',NULL,NULL,1429891140,1429891140,'',''),
 (53,'防伪标签','/uploads/images/%E9%98%B2%E4%BC%AA%E6%A0%87%E7%AD%BE.jpg',14,'',NULL,NULL,1429891156,1429891156,'',''),
 (54,'125','/uploads/files/01.jpg',NULL,'',NULL,NULL,1436332183,1436332183,'',''),
 (55,'沃尔玛','/uploads/files/01(1).jpg',NULL,'logo',NULL,NULL,1436413214,1436413214,'',''),
 (56,'1212','/uploads/files/logo.png',NULL,'1212',NULL,NULL,1436413283,1436413283,'',''),
 (57,'1212','/uploads/files/logo22.png',NULL,'1212',11,NULL,1436413307,1436413307,'',''),
 (58,'112','/uploads/files/baozhuanghe2.jpg',NULL,'WWWEE',2,NULL,1436413548,1436413548,'1',''),
 (59,'234','/uploads/files/01.jpg',NULL,'234',2,NULL,1436414093,1436414093,'',''),
 (61,'沃尔玛','/uploads/files/01(2).jpg',4,'logo',NULL,NULL,1436420999,1436420999,'',''),
 (62,'02','/uploads/files/02.jpg',4,'logo',NULL,NULL,1436421035,1436421035,'',''),
 (63,'03','/uploads/files/03.jpg',4,'logo',NULL,NULL,1436421050,1436421050,'',''),
 (64,'04','/uploads/files/04.jpg',4,'logo',NULL,NULL,1436421062,1436421062,'',''),
 (65,'05','/uploads/files/05.jpg',4,'logo',NULL,NULL,1436421083,1436421083,'',''),
 (66,'06','/uploads/files/06.jpg',4,'logo',NULL,NULL,1436421096,1436421096,'',''),
 (67,'07','/uploads/files/07.jpg',4,'logo',NULL,NULL,1436421108,1436421108,'',''),
 (68,'08','/uploads/files/08.jpg',4,'logo',NULL,NULL,1436421120,1436421120,'',''),
 (69,'09','/uploads/files/09.jpg',4,'logo',NULL,NULL,1436421133,1436421133,'',''),
 (70,'10','/uploads/files/10(1).jpg',4,'logo',NULL,NULL,1436421148,1436421148,'',''),
 (71,'11','/uploads/files/11(1).jpg',4,'logo',NULL,NULL,1436421168,1436421168,'',''),
 (72,'12','/uploads/files/12(1).jpg',4,'logo',NULL,NULL,1436421182,1436421182,'',''),
 (73,'13','/uploads/files/13(1).jpg',4,'logo',NULL,NULL,1436421195,1436421195,'',''),
 (74,'14','/uploads/files/14.jpg',4,'logo',NULL,NULL,1436421209,1436421209,'',''),
 (75,'15','/uploads/files/15(1).jpg',4,'logo',NULL,NULL,1436421222,1436421222,'',''),
 (76,'16','/uploads/files/16(1).jpg',4,'logo',NULL,NULL,1436421234,1436421234,'',''),
 (77,'17','/uploads/files/17(1).jpg',4,'logo',NULL,NULL,1436421247,1436421247,'',''),
 (78,'18','/uploads/files/18(1).jpg',4,'logo',NULL,NULL,1436421260,1436421260,'',''),
 (79,'19','/uploads/files/19(1).jpg',4,'logo',NULL,NULL,1436421272,1436421272,'',''),
 (80,'20','/uploads/files/20(1).jpg',4,'logo',NULL,NULL,1436421283,1436421283,'',''),
 (81,'21','/uploads/files/21(1).jpg',4,'logo',NULL,NULL,1436421300,1436421300,'',''),
 (82,'22','/uploads/files/22(1).jpg',4,'logo',NULL,NULL,1436421313,1436421313,'',''),
 (83,'23','/uploads/files/23.jpg',4,'logo',NULL,NULL,1436421327,1436421327,'',''),
 (84,'24','/uploads/files/24(1).jpg',4,'logo',NULL,NULL,1436421340,1436421340,'',''),
 (85,'25','/uploads/files/25(1).jpg',4,'logo',NULL,NULL,1436421353,1436421353,'',''),
 (86,'26','/uploads/files/26(1).jpg',4,'logo',NULL,NULL,1436421367,1436421367,'',''),
 (87,'27','/uploads/files/27(1).jpg',4,'logo',NULL,NULL,1436421382,1436421382,'',''),
 (88,'28','/uploads/files/28(1).jpg',4,'logo',NULL,NULL,1436421396,1436421396,'',''),
 (89,'29','/uploads/files/29(1).jpg',4,'logo',NULL,NULL,1436421410,1436421410,'',''),
 (90,'30','/uploads/files/30.jpg',4,'logo',NULL,NULL,1436421423,1436421423,'',''),
 (91,'31','/uploads/files/31.jpg',4,'logo',NULL,NULL,1436421436,1436421436,'',''),
 (92,'32','/uploads/files/32.jpg',4,'logo',NULL,NULL,1436421449,1436421449,'',''),
 (93,'33','/uploads/files/33.jpg',4,'logo',NULL,NULL,1436421461,1436421461,'',''),
 (94,'34','/uploads/files/34.jpg',4,'logo',NULL,NULL,1436421484,1436421484,'',''),
 (95,'35','/uploads/files/35.jpg',4,'logo',NULL,NULL,1436421496,1436421496,'',''),
 (96,'36','/uploads/files/36.jpg',4,'logo',NULL,NULL,1436421508,1436421508,'',''),
 (97,'37','/uploads/files/37.jpg',4,'logo',NULL,NULL,1436421520,1436421520,'',''),
 (98,'38','/uploads/files/38.jpg',4,'logo',NULL,NULL,1436421533,1436421533,'',''),
 (99,'39','/uploads/files/39.jpg',4,'logo',NULL,NULL,1436421545,1436421545,'',''),
 (100,'40','/uploads/files/40.jpg',4,'logo',NULL,NULL,1436421573,1436421573,'',''),
 (101,'41','/uploads/files/41.jpg',4,'logo',NULL,NULL,1436421587,1436421587,'',''),
 (102,'42','/uploads/files/42.jpg',4,'logo',NULL,NULL,1436421600,1436421600,'',''),
 (103,'43','/uploads/files/43.jpg',4,'logo',NULL,NULL,1436421614,1436421614,'',''),
 (104,'44','/uploads/files/44.jpg',4,'logo',NULL,NULL,1436421627,1436421627,'',''),
 (105,'45','/uploads/files/45.jpg',4,'logo',NULL,NULL,1436421639,1436421639,'',''),
 (106,'46','/uploads/files/46.jpg',4,'logo',NULL,NULL,1436421653,1436421653,'',''),
 (107,'47','/uploads/files/47.jpg',4,'logo',NULL,NULL,1436421666,1436421666,'',''),
 (108,'48','/uploads/files/48.jpg',4,'logo',NULL,NULL,1436421678,1436421678,'',''),
 (109,'49','/uploads/files/49.jpg',4,'logo',NULL,NULL,1436421690,1436421690,'',''),
 (110,'50','/uploads/files/50.jpg',4,'logo',NULL,NULL,1436421703,1436421703,'',''),
 (111,'51','/uploads/files/51.jpg',4,'logo',NULL,NULL,1436421715,1436421715,'',''),
 (112,'52','/uploads/files/52.jpg',4,'logo',NULL,NULL,1436421726,1436421726,'',''),
 (113,'53','/uploads/files/53.jpg',4,'logo',NULL,NULL,1436421745,1436421745,'',''),
 (114,'54','/uploads/files/54.jpg',4,'logo',NULL,NULL,1436421756,1436421756,'',''),
 (115,'55','/uploads/files/55.jpg',4,'logo',NULL,NULL,1436421768,1436421768,'',''),
 (116,'56','/uploads/files/56.jpg',4,'logo',NULL,NULL,1436421781,1436421781,'',''),
 (117,'57','/uploads/files/57.jpg',4,'logo',NULL,NULL,1436421795,1436421795,'',''),
 (118,'58','/uploads/files/58.jpg',4,'logo',NULL,NULL,1436421808,1436421808,'','');
/*!40000 ALTER TABLE `photo_menu` ENABLE KEYS */;


--
-- Definition of table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site`
--

/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` (`id`,`title`,`keywords`,`description`) VALUES 
 (1,'派登','派登快印,淘彩印刷','上海淘派实业有限公司长期致力于解决客户在快印、印刷、包装及图文再现方面遇到的一系列问题，为客户提供贴心、专业、高效的生产与服务。');
/*!40000 ALTER TABLE `site` ENABLE KEYS */;


--
-- Definition of table `template`
--

DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template`
--

/*!40000 ALTER TABLE `template` DISABLE KEYS */;
INSERT INTO `template` (`id`,`name`,`ename`) VALUES 
 (1,'产品展示','product'),
 (2,'生产服务','service'),
 (3,'个性定制','custom'),
 (4,'合作伙伴','cooperation'),
 (5,'关于我们','about'),
 (6,'联系我们','contact'),
 (7,'产品展示top','products'),
 (8,'关于我们top','abouts');
/*!40000 ALTER TABLE `template` ENABLE KEYS */;


--
-- Definition of table `user`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) VALUES 
 (1,'admin','_XlvIAqRwx7SXcfQ4oiMpGQj-u3835-N','$2y$13$AGVL.yQRJZajqtTaeuHP/.sWsRzfiGbUiwnjh8w8BUwuaC.7frRju',NULL,'admin@qq.com',10,1426062672,1426062672),
 (2,'paid','6W5meJvlzFcvejVeo2dm56IxaIc3TK8W','$2y$13$HSqnTHnXOJf9R19nI6/p8eVLzL7EDGSXjIDIDarT//nS1mUhAIWoS',NULL,'hua@qq.com',10,1428902116,1428902116);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
