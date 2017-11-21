/*
Navicat MySQL Data Transfer

Source Server         : zxt
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : mooc

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2015-08-06 13:50:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `rootId` int(11) DEFAULT NULL,
  `writer` varchar(22) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cont` text,
  `pdate` datetime DEFAULT NULL,
  `isLeaf` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`writer`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('3', '0', '3', 'love', 'PHP是最好的语言', '对啊对啊', '2015-05-09 13:51:07', '0');
INSERT INTO `article` VALUES ('4', '0', '4', 'zxt', 'MVC框架是什么？', '有人知道么？', '2015-05-09 13:51:49', '0');
INSERT INTO `article` VALUES ('5', '0', '5', 'zxt', 'javascript语言', '动态网页编辑语言', '2015-05-09 13:52:33', '0');
INSERT INTO `article` VALUES ('11', '5', '5', 'love', '后台系统流程', '海啸”。在这次的毕业设计中', '2015-05-09 15:13:37', '0');
INSERT INTO `article` VALUES ('27', '11', '5', 'nick', 'trbvytj', 'v5jvej', '2015-05-09 17:23:20', '0');
INSERT INTO `article` VALUES ('28', '0', '28', 'nick', '名可名', '非常名', '2015-05-09 17:29:53', '0');
INSERT INTO `article` VALUES ('29', '28', '28', 'nick', '好好学习', '天天向上', '2015-05-09 17:31:23', '0');
INSERT INTO `article` VALUES ('30', '11', '5', 'nick', '一生有你', '520', '2015-05-09 17:35:44', '0');
INSERT INTO `article` VALUES ('31', '5', '5', 'nick', '第一台能', ' 99b8v.mt', '2015-05-09 17:47:15', '0');
INSERT INTO `article` VALUES ('32', '28', '28', 'nick', '好饿啊', '走吃饭饭去', '2015-05-09 17:51:34', '0');
INSERT INTO `article` VALUES ('33', '26', '26', 'nick', 'myfavourite', 'littlelion', '2015-05-09 18:13:00', '0');
INSERT INTO `article` VALUES ('34', '3', '3', 'nick', '毕业设计什么时候才是个头啊', '快了 还有二十几天 坚持啊', '2015-05-09 18:16:25', '0');
INSERT INTO `article` VALUES ('35', '34', '3', 'nick', 'apple', 'apple', '2015-05-09 18:17:32', '0');
INSERT INTO `article` VALUES ('36', '0', '36', 'nick', 'MOOCs', '大规模在线慕课管理平台', '2015-05-09 18:20:58', '1');
INSERT INTO `article` VALUES ('37', '36', '36', 'nick', '课程管理怎么编', '慢慢来 会有办法的', '2015-05-09 18:22:21', '0');
INSERT INTO `article` VALUES ('38', '36', '36', 'nick', '1234566', '111', '2015-05-09 18:26:53', '0');
INSERT INTO `article` VALUES ('42', '41', '41', 'nick', '1234566', '突然VB额', '2015-05-09 19:16:33', '0');
INSERT INTO `article` VALUES ('43', '41', '41', 'nick', 'javascript语言', '成测测的到底 ', '2015-05-09 19:17:44', '0');
INSERT INTO `article` VALUES ('45', '44', '44', 'nick', '不要报警一天', '一软件', '2015-05-09 19:24:09', '0');
INSERT INTO `article` VALUES ('48', '0', '48', 'love', '校园运动会真热闹啊', '可惜我们都快毕业了', '2015-05-10 15:52:49', '0');
INSERT INTO `article` VALUES ('49', '48', '48', 'love79', '撒', '办的越来越好了', '2015-05-10 16:19:14', '0');
INSERT INTO `article` VALUES ('50', '48', '48', 'love79', '管理员', '3333', '2015-05-10 16:30:09', '0');
INSERT INTO `article` VALUES ('52', '0', '52', 'zxt', '功能性需求', '是什么？', '2015-05-10 22:44:57', '0');
INSERT INTO `article` VALUES ('53', '0', '53', 'love79', '终于发现问题了', '哈哈哈哈', '2015-05-10 22:46:08', '1');
INSERT INTO `article` VALUES ('54', '52', '52', 'love79', '具体系统功能需求描述，分为两部分功能：前台和后台管理。', '一、前台功能主要包括：用户的登录、注册，课程的浏览、搜索、订阅，在线论坛，个人资料管理、密码设置。', '2015-05-10 22:46:31', '0');
INSERT INTO `article` VALUES ('55', '0', '55', 'favorite', 'JSP', '一个JSP页面可以用两个表单么？', '2015-05-12 15:39:54', '0');
INSERT INTO `article` VALUES ('56', '55', '55', 'favorite', 'JSP页面表单', '应该可以的', '2015-05-12 15:40:22', '0');
INSERT INTO `article` VALUES ('58', '56', '56', 'nick', '课程管理', '图书馆查资料去呗！还能怎么了', '2015-05-12 16:26:52', '0');
INSERT INTO `article` VALUES ('59', '58', '57', 'nick', '课程管理', '求助大神', '2015-05-12 16:27:22', '0');
INSERT INTO `article` VALUES ('60', '0', '60', 'nick', 'MOOC', '开发目的', '2015-05-12 17:49:13', '0');
INSERT INTO `article` VALUES ('61', '60', '60', 'zxt', '开发目的', '本毕业设计主要目的是综合大学期间所学习的专业知识，结合JavaWeb编程相关知识实现一个慕课平台应用程序。以Myeclipse作为开发平台，通过实践将自己学到的知识运用到实践中，能提高自己的应用能力。即时了解和掌握流行的慕课机制并且应用到实践过程中，将极大的提高自己的设计和开发的积极性；提升自己的理论和技术水平，跟踪国内外最新的技术和开发模式，为以后类似的开发累计经验，\r\n通过开发的这个MOOC管理平台，为在校学生提供最合适他们的在线课程，让学生提早体验一个全新的教育理念。\r\n本毕业设计主要目的是综合大学期间所学习的专业知识，结合JavaWeb编程相关知识实现一个慕课平台应用程序。以Myeclipse作为开发平台，通过实践将自己学到的知识运用到实践中，能提高自己的应用能力。即时了解和掌握流行的慕课机制并且应用到实践过程中，将极大的提高自己的设计和开发的积极性；提升自己的理论和技术水平，跟踪国内外最新的技术和开发模式，为以后类似的开发累计经验，\r\n通过开发的这个MOOC管理平台，为在校学生提供最合适他们的在线课程，让学生提早体验一个全新的教育理念。\r\n本毕业设计主要目的是综合大学期间所学习的专业知识，结合JavaWeb编程相关知识实现一个慕课平台应用程序。以Myeclipse作为开发平台，通过实践将自己学到的知识运用到实践中，能提高自己的应用能力。即时了解和掌握流行的慕课机制并且应用到实践过程中，将极大的提高自己的设计和开发的积极性；提升自己的理论和技术水平，跟踪国内外最新的技术和开发模式，为以后类似的开发累计经验，\r\n通过开发的这个MOOC管理平台，为在校学生提供最合适他们的在线课程，让学生提早体验一个全新的教育理念。\r\n通过开发的这个MOOC管理平台，为在校学生提供最合适他们的在线课程，让学生提早体验一个全新的教育理念。', '2015-05-12 17:56:15', '0');
INSERT INTO `article` VALUES ('63', '28', '28', 'love', '2015515', '2015515', '2015-05-15 18:45:58', '0');
INSERT INTO `article` VALUES ('64', '62', '62', '3940089050', '3940089050', '3940089050', '2015-05-17 13:23:53', '0');
INSERT INTO `article` VALUES ('65', '64', '62', 'love79', 'u恶化后', 'uqu93qc0', '2015-05-18 12:23:10', '0');
INSERT INTO `article` VALUES ('67', '4', '4', 'love79', 'MVC框架概述', 'MVC全名是Model View Controller，是模型(model)－视图(view)－控制器(controller)的缩写，一种软件设计典范，用一种业务逻辑、数据、界面显示分离的方法组织代码，将业务逻辑聚集到一个部件里面，在改进和个性化定制界面及用户交互的同时，不需要重新编写业务逻辑。MVC被独特的发展起来用于映射传统的输入、处理和输出功能在一个逻辑的图形化用户界面的结构中。', '2015-05-20 19:20:03', '0');
INSERT INTO `article` VALUES ('68', '60', '60', 'love', ' MOOC 慕课管理平台', '一个是主要用于学生使用的学习管理系统，另一个是教师使用的课程管理系统，学生可以在平台上视频学习、在线讨论、个人资料设置、密码修改等，教师可以在平台上编辑管理课程内容，发布优质课程、论坛管理、系统管理等。本文重点结合JAVA WEB编程及JSP网页开发相关知识，以Browser/Server为开发模式，以Myeclipse为开发环境设计一个基于WINDOWS平台的能够进行在线讨论的慕课管理系统.', '2015-05-20 19:29:38', '0');
INSERT INTO `article` VALUES ('70', '69', '69', 'love', '11', '111', '2015-05-24 21:52:44', '0');
INSERT INTO `article` VALUES ('72', '0', '72', 'love', '111111', '111111', '2015-06-02 10:04:12', '1');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(30) NOT NULL DEFAULT '0',
  `name` varchar(30) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `introduce` text,
  `picurl` varchar(255) DEFAULT NULL,
  `movieurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '毛中特', '肖秀荣', '政治经济', 'admin', '2015-05-08', '  毛泽东思想与中国特色社会理论体系概论 \r\n基础班 ', 'uploadimage/mao.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\mzt.avi');
INSERT INTO `course` VALUES ('2', '马克思主义原理1', '阮华', '政治经济', 'admin', '2015-05-10', '马克思主义原理--马原基本原理概述', 'uploadimage/mayuan.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\my1.avi');
INSERT INTO `course` VALUES ('3', '操作系统', 'operating system', '工程技术', 'admin', '2015-05-11', '操作系统（英语：Operating System，简称OS）是管理和控制计算机硬件与软件资源的计算机程序，是直接运行在“裸机”上的最基本的系统软件，任何其他软件都必须在操作系统的支持下才能运行。操作系统所处位置作系统是用户和计算机的接口，同时也是计算机硬件和其他软件的接口。操作系统的功能包括管理计算机系统的硬件、软件及数据资源，控制程序运行，改善人机界面，为其它应用软件提供支持等，使计算机系统所有资源最大限度地发挥作用，提供了各种形式的用户界面，使用户有一个好的工作环境，为其它软件的开发提供必要的服务和相应的接口。', 'uploadimage/op.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\opp.avi');
INSERT INTO `course` VALUES ('4', '中国近代史纲要', '任燕翔', '文学历史', 'admin', '2015-05-12', '中国近代史纲要', 'uploadimage/shigang.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\sg1.avi');
INSERT INTO `course` VALUES ('5', '英语口语', '心灵鸡汤', '基础学科', 'admin', '2015-05-13', '心灵鸡汤', 'uploadimage/oral.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\sg2.avi');
INSERT INTO `course` VALUES ('6', '画江湖之不良人', '张子凡', '工程技术', 'admin', '2015-05-15', '这部动画巨制以一种前所未有的方式描述了交织着战乱与黑暗的五代十国时期，黄巢起义、朱温篡位、李氏族诛、友珪弑父、沙陀争霸等著名的历史事件和民间传说贯穿于其中。几位主角同群雄侠隐仗剑高歌江湖，于历史漩涡中的乱世里经历了青春与爱情、背叛与忠诚的沧桑变幻、悲喜轮回，最终成为了终结这个时代、开创新纪元的决定性力量，也堪称是一段浪漫辉煌的中国式武侠历史传奇。', 'uploadimage/blr.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\op2.avi');
INSERT INTO `course` VALUES ('7', '勇者大冒险1', '安研', '工程技术', 'admin', '2015-05-17', '  相信大家初中时一定有过在家背着老妈偷玩游戏、被老妈发现后挨训的悲催记忆。本片是由中国传媒大学动画学院07级的四位应届毕业生创作，旨在通过一个初中小男孩在现实与游戏中穿越的故事，唤起大家童年里那令人啼笑皆非、亦或是唏嘘不已的记忆 ', 'uploadimage/dmx.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\sg3.avi');
INSERT INTO `course` VALUES ('8', '初中物理', '李丽珍', '基础学科', 'admin', '2015-05-18', ' 共13章，涉及力学、热学、电磁学、振动和波、波动光学、狭义相对论和量子物理基础等. 每章包括基本内容之外，还包括阅读材料、复习与小结、练习题. 内容深浅适当，讲解正确清晰，叙述引人入胜，例题指导详尽，全书联系实际，特别是注意介绍物理知识和物理思想在实际中的应用. 本书有电子教材和学习辅导书等配套资料. ', 'uploadimage/dxwl.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\03.avi');
INSERT INTO `course` VALUES ('9', '国宝档案', '任志宏 四库全书', '文学历史', 'admin', '2015-05-18', ' 节目将介绍一个具体的国宝文物，这些凝聚着中华民族智慧和传统文化的历代传世国宝文物，既有受到政府保护收藏在祖国大陆各个博物馆中的，也有收藏于民间被国人精心呵护的；既有因历史原因东渡海峡存于宝岛台湾的，也有历尽磨难流失海外漂泊他乡的…… ', 'uploadimage/guobao.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\op4.avi');
INSERT INTO `course` VALUES ('10', '马克思主义原理2', '阮华,唯物主义', '政治经济', 'admin', '2015-05-19', '哲学理论，肯定世界的基本组成为物质，物质形式与过程是我们认识世界的主要途径，持着只有事实上的物质才是存在的实体的这一种观点，并且被认为是物理主义的一种形式。该理论的基础是，所有的实体（和概念）都是物质的一种构成或者表达，并且，所有的现象（包括意识）都是物质相互作用的结果，在意识与物质之间，物质决定了意识，而意识则是客观世界在人脑中的生理反应，也就是有机物出于对物质的反应。', 'uploadimage/my.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\my2.avi');
INSERT INTO `course` VALUES ('11', '百家讲坛', ' 易中天品三国隆中对策', '文学历史', 'admin', '2015-05-19', ' 《百家讲坛》在专家、学者和百姓之间架起一座知识的桥梁 ', 'uploadimage/bjjt.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\op3.avi');
INSERT INTO `course` VALUES ('12', '勇者大冒险2', '神荼', '工程技术', '11111', '2015-05-19', '生死莫测', 'uploadimage/shentu.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\sg3.avi');
INSERT INTO `course` VALUES ('13', '高中物理', '通过实验，认识电场和磁场，会用电场线、电场强度描述电场，会用磁感线、磁感应强度描述磁场。知道磁通量。\r\n例1 用电场线描绘两个等量异种点电荷周围的电场。\r\n01 带电物体在电磁场中的运动', '基础学科', '11111', '2015-05-19', '  通过实验，认识电场和磁场，会用电场线、电场强度描述电场，会用磁感线、磁感应强度描述磁场。知道磁通量。\r\n例1 用电场线描绘两个等量异种点电荷周围的电场。\r\n例2 用磁感线描绘通电直导线周围的磁场。', 'uploadimage/gzwl.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\op2.avi');
INSERT INTO `course` VALUES ('14', '马克思主义原理3', '阮华', '政治经济', 'admin', '2015-05-23', '辩证唯物主义', 'uploadimage/mks.jpg', 'F:\\myeclipse-8.5.0-win32\\apache-tomcat-6.0.32\\webapps\\MOOCs\\uploadimage\\06.avi');

-- ----------------------------
-- Table structure for `mycourse`
-- ----------------------------
DROP TABLE IF EXISTS `mycourse`;
CREATE TABLE `mycourse` (
  `username` varchar(30) NOT NULL,
  `id` int(30) NOT NULL,
  PRIMARY KEY (`username`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mycourse
-- ----------------------------
INSERT INTO `mycourse` VALUES ('111111', '1');
INSERT INTO `mycourse` VALUES ('123456', '12');
INSERT INTO `mycourse` VALUES ('3940089050', '4');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `adminname` varchar(30) NOT NULL,
  `adminpwd` varchar(30) NOT NULL,
  `adminnick` varchar(30) NOT NULL,
  `sex` text,
  `dept` text,
  `tele` text,
  PRIMARY KEY (`adminname`,`adminnick`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='teacher SET ModifiedFieldsAndValues WHERE AllFieldsAndOldValues LIMIT 1';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('111111', '111111', 'love79', '女', '教师', ' 15527937555');
INSERT INTO `teacher` VALUES ('admin', 'admin', 'nick', '女', '副教授', '15527937157');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(30) NOT NULL,
  `userpwd` varchar(30) NOT NULL,
  `usernick` varchar(30) NOT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `birth` varchar(30) DEFAULT NULL,
  `tele` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`,`usernick`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1110321332', 'love79', 'zxt', '女', '1992813', '15527937157');
INSERT INTO `user` VALUES ('111111', '111111', 'love', '女', '1992522', '13312456788');
