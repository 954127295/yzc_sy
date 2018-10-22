# Host: localhost  (Version: 5.5.40)
# Date: 2018-10-21 22:52:57
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "pig_permission"
#

CREATE TABLE `pig_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `per` varchar(200) NOT NULL DEFAULT '' COMMENT '权限属性（集团总监、区域总监、子公司总监、场长、段长、饲养员）',
  `controller` varchar(20) NOT NULL DEFAULT '' COMMENT '控制器',
  `function` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '操作（栏目）名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='权限检测表';

#
# Data for table "pig_permission"
#

INSERT INTO `pig_permission` VALUES (1,'1,2,3','Index','index','首页'),(2,'2','Index','ceshi','测试'),(3,'2,3','Index','shiyu','时鱼');

#
# Structure for table "pig_user"
#

CREATE TABLE `pig_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(200) NOT NULL DEFAULT '' COMMENT '密码',
  `key` char(3) NOT NULL DEFAULT '' COMMENT '密码加密key',
  `permission` enum('1','2','3','4','5','6') DEFAULT '6' COMMENT '权限（集团总监、区域总监、子公司总监、场长、段长、饲养员）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台管理员表';

#
# Data for table "pig_user"
#

INSERT INTO `pig_user` VALUES (1,'admin','77d3b7ed9db7d236b9eac8262d27f6a5','123','1'),(2,'admin1','77d3b7ed9db7d236b9eac8262d27f6a5','123','2');
