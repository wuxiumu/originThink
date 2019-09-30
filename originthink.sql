/*
Navicat MySQL Data Transfer

Source Server         : phpsMysql
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : originthink

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-09-30 14:26:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for think_album
-- ----------------------------
DROP TABLE IF EXISTS `think_album`;
CREATE TABLE `think_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '0',
  `type` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0 默认轮播， 1 活动轮播',
  `name` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `disable` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `ord` int(11) NOT NULL DEFAULT '0',
  `update_by` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='相册';

-- ----------------------------
-- Records of think_album
-- ----------------------------
INSERT INTO `think_album` VALUES ('1', '0', '0', '0', '1', null, null, null, null, '0', '2', '2019-08-23 15:24:03', '2019-08-02 15:24:13', null, '1', '4', null);
INSERT INTO `think_album` VALUES ('2', '0', '0', '0', '2', null, null, null, null, '0', '0', '2019-08-16 15:24:06', '2019-08-15 15:24:17', null, '0', null, null);
INSERT INTO `think_album` VALUES ('3', '0', '0', '0', '3', null, null, null, null, '0', '0', '2019-08-22 15:24:10', '2019-08-22 15:24:20', null, '0', null, null);
INSERT INTO `think_album` VALUES ('4', '38', '0-37', '0', 'qwq', '/public/file/image/201908/28/20190828113554_886.png', '1', '1', null, '1', '1', '2019-08-15 10:45:12', '2019-08-28 11:35:57', '', '2', '4', '4');
INSERT INTO `think_album` VALUES ('5', '38', '0-37', '0', '报名', '/public/file/image/201908/28/20190828113539_551.png', 'https://www.baidu.com', '123', null, '1', '1', '2019-08-15 11:10:32', '2019-08-28 17:13:33', null, '122', '4', '4');
INSERT INTO `think_album` VALUES ('6', '39', '0-37', '0', 'qwe', '/public/file/image/201908/15/20190815115929_250.png', 'qwe', 'qwe', null, '1', '1', '2019-08-15 11:43:56', '2019-08-15 15:24:31', null, '123', '4', '4');
INSERT INTO `think_album` VALUES ('7', '1', '0-40-43', '1', '小宝贝卡丁车', '/public/file/image/201908/16/20190816103847_869.gif', 'http://kart.net', '4444444444444', null, '1', '1', '2019-08-16 10:12:43', '2019-08-09 15:24:34', null, '3', '4', '4');
INSERT INTO `think_album` VALUES ('8', '1', '0-40-43', '1', '小宝贝卡丁车', '/public/file/image/201908/16/20190816101342_146.gif', 'https://www.baidu.com', 'qweqw', null, '1', '1', '2019-08-16 10:13:45', '2019-08-22 15:24:38', null, '1', '4', '4');
INSERT INTO `think_album` VALUES ('9', '1', '0-40-43', '1', '', '/public/file/image/201908/16/20190816145720_704.jpg', '', '', null, '1', '1', '2019-08-16 14:57:02', '2019-08-16 15:24:42', null, '0', '4', '4');
INSERT INTO `think_album` VALUES ('10', '1', '0-40-43', '11', '小宝贝卡丁车', '/public/file/image/201908/23/20190823183112_755.jpg', 'qwe', '123', null, '1', '1', '2019-08-23 18:31:26', '2019-08-23 18:31:26', null, '1', '4', '4');
INSERT INTO `think_album` VALUES ('11', '2', '0-40-41', '11', '疾速双休', '/public/file/image/201908/28/20190828172119_863.png', '', '', null, '1', '1', '2019-08-28 17:21:23', '2019-08-28 17:21:23', null, '1', '4', '4');
INSERT INTO `think_album` VALUES ('12', '2', '0-40-41', '11', '疾速双休', '/public/file/image/201908/28/20190828172129_588.png', '', '', null, '1', '1', '2019-08-28 17:21:32', '2019-08-28 17:21:32', null, '2', '4', '4');
INSERT INTO `think_album` VALUES ('13', '2', '0-40-41', '1', '疾速双休', '/public/file/image/201908/28/20190828172144_804.jpg', '1', '', null, '1', '1', '2019-08-28 17:21:49', '2019-08-28 17:21:49', null, '0', '4', '4');
INSERT INTO `think_album` VALUES ('14', '10', '0-40-42', '11', '卡丁车-室内赛道', '/public/file/image/201908/29/20190829114122_800.png', '', '', null, '1', '1', '2019-08-29 11:41:24', '2019-08-29 11:41:24', null, '0', '4', '4');
INSERT INTO `think_album` VALUES ('15', '10', '0-40-42', '1', '卡丁车-室内赛道', '/public/file/image/201908/29/20190829114140_955.png', '', '', null, '1', '1', '2019-08-29 11:41:42', '2019-08-29 11:41:42', null, '0', '4', '4');
INSERT INTO `think_album` VALUES ('16', '38', '0-37', '0', '轮播-测-1', '/public/file/image/201909/19/20190919102303_212.jpg', '', '轮播-测-1', null, '9', '2', '2019-09-19 10:23:04', '2019-09-23 10:02:33', null, '0', '4', '4');
INSERT INTO `think_album` VALUES ('17', '38', '0-37', '0', '轮播-测-2', '/public/file/image/201909/19/20190919102318_645.jpg', '', '轮播-测-2', null, '9', '2', '2019-09-19 10:23:19', '2019-09-23 10:02:31', null, '133', '4', '4');

-- ----------------------------
-- Table structure for think_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group`;
CREATE TABLE `think_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：为1正常，为0禁用',
  `rules` char(80) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id， 多个规则","隔开',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_group
-- ----------------------------
INSERT INTO `think_auth_group` VALUES ('1', '管理员组', '1', '1,2,3,4,5,6,8,9,10', '0', '1494407780');
INSERT INTO `think_auth_group` VALUES ('2', '普通用户组', '1', '1,2,3,4,10,13,14,18,19', '0', '1494308736');

-- ----------------------------
-- Table structure for think_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group_access`;
CREATE TABLE `think_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_group_access
-- ----------------------------
INSERT INTO `think_auth_group_access` VALUES ('1', '1');
INSERT INTO `think_auth_group_access` VALUES ('2', '2');

-- ----------------------------
-- Table structure for think_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_rule`;
CREATE TABLE `think_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：为1正常，为0禁用',
  `condition` char(100) NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  `menu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否是菜单；0:否，1:是',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `sort` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_rule
-- ----------------------------
INSERT INTO `think_auth_rule` VALUES ('1', '#', '首页', '0', '1', '1', '', '1', 'layui-icon layui-icon-home', '1');
INSERT INTO `think_auth_rule` VALUES ('2', '#', '用户管理', '0', '1', '1', '', '1', 'layui-icon layui-icon-user', '1');
INSERT INTO `think_auth_rule` VALUES ('3', 'admin/userList', '用户列表', '2', '1', '1', '', '1', null, '1');
INSERT INTO `think_auth_rule` VALUES ('4', 'admin/groupList', '用户组列表', '2', '1', '1', '', '1', null, '1');
INSERT INTO `think_auth_rule` VALUES ('5', 'admin/edit', '添加用户', '2', '1', '1', '', '0', '', '1');
INSERT INTO `think_auth_rule` VALUES ('6', '#', '系统管理', '0', '1', '1', '', '1', 'layui-icon layui-icon-set', '1');
INSERT INTO `think_auth_rule` VALUES ('7', 'admin/cleanCache', '清除缓存', '6', '1', '1', '', '1', '', '1');
INSERT INTO `think_auth_rule` VALUES ('8', 'admin/menu', '菜单管理', '6', '1', '1', '', '1', '', '1');
INSERT INTO `think_auth_rule` VALUES ('9', 'admin/home', '系统信息', '1', '1', '1', '', '1', '', '1');
INSERT INTO `think_auth_rule` VALUES ('10', 'admin/log', '日志管理', '6', '1', '1', '', '1', '', '1');
INSERT INTO `think_auth_rule` VALUES ('11', 'admin/editMenu', '编辑菜单', '6', '1', '1', '', '0', '', '1');
INSERT INTO `think_auth_rule` VALUES ('12', 'admin/deleteMenu', '删除菜单', '6', '1', '1', '', '0', '', '1');
INSERT INTO `think_auth_rule` VALUES ('13', 'admin/config', '系统配置', '6', '1', '1', '', '1', '', '1');
INSERT INTO `think_auth_rule` VALUES ('14', 'admin/siteConfig', '站点配置', '6', '1', '1', '', '1', '', '1');
INSERT INTO `think_auth_rule` VALUES ('15', 'admin/editGroup', '添加编辑用户组', '2', '1', '1', '', '0', '', '1');
INSERT INTO `think_auth_rule` VALUES ('16', 'admin/disableGroup', '禁用用户组', '2', '1', '1', '', '0', '', '1');
INSERT INTO `think_auth_rule` VALUES ('17', 'admin/ruleList', '规则列表', '2', '1', '1', '', '0', '', '1');
INSERT INTO `think_auth_rule` VALUES ('18', 'admin/editRule', '修改规则', '2', '1', '1', '', '0', '', '1');
INSERT INTO `think_auth_rule` VALUES ('19', '#', '会员管理', '0', '1', '1', '', '1', 'icon layui-icon layui-icon-user', '1');
INSERT INTO `think_auth_rule` VALUES ('20', 'admin/memberList', '会员列表', '19', '1', '1', '', '1', '', '1');

-- ----------------------------
-- Table structure for think_column
-- ----------------------------
DROP TABLE IF EXISTS `think_column`;
CREATE TABLE `think_column` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `pid` int(11) NOT NULL DEFAULT '0',
  `path` varchar(255) DEFAULT '0',
  `gid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '组id',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片',
  `pic_info` varchar(255) DEFAULT NULL,
  `album_info` varchar(255) DEFAULT NULL COMMENT '相册/图片集合',
  `name_en` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL COMMENT '英文名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL,
  `url` text COMMENT '连接',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `create_by` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `update_by` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `disable` smallint(3) unsigned DEFAULT '1' COMMENT '1-正常,2-封禁',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:enable, 0:disable, 9:deleted',
  `weights` int(11) DEFAULT NULL COMMENT '权重',
  `ord` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `num` int(10) unsigned NOT NULL DEFAULT '1',
  `class` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='程序的分类';

-- ----------------------------
-- Records of think_column
-- ----------------------------
INSERT INTO `think_column` VALUES ('1', '0', '0', '0', null, null, null, null, 'functional module', 'I期-后台功能模块', '', null, '#', '1565855500', '4', '1565855500', '4', '1', '1', null, '3', '1', null, null);
INSERT INTO `think_column` VALUES ('2', '1', '0-1', '0', null, '', null, null, '', '权限管理', '', null, '', '1565770860', '4', '1565770860', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('3', '2', '0-1-2', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '部门管理', '', null, 'admin/department/list', '1565855551', '4', '1565855551', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('4', '2', '0-1-2', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '成员管理', '', null, 'admin/member/list', '1565855573', '4', '1565855573', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('5', '2', '0-1-2', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '权限分配', '', null, 'admin/admin/admin_Competence/0', '1568198353', '4', '1568198353', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('6', '1', '0-1', '0', null, '', null, null, '', '轮播管理', '', null, '', '1565770970', '4', '1565770970', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('7', '6', '0-1-6', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '轮播列表', '', null, 'admin/album/list?pid=38', '1565855724', '4', '1565855724', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('8', '6', '0-1-6', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '轮播分类', '', null, 'admin/album/list', '1565855695', '4', '1565855695', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('9', '1', '0-1', '0', null, '', null, null, '', '活动管理', '', null, '', '1565771072', '4', '1565771072', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('10', '9', '0-1-9', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '活动分类', '', null, 'admin/activity/list', '1565855843', '4', '1565855843', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('11', '9', '0-1-9', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '活动创建', '', null, 'admin/activity/add?pid=41', '1565855886', '4', '1565855886', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('12', '9', '0-1-9', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '活动地址', '', null, 'admin/address/list?type=1', '1566184142', '4', '1566184142', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('13', '1', '0-1', '0', null, '', null, null, '', '订单管理', '', null, '', '1565771134', '4', '1565771134', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('14', '13', '0-1-13', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '订单列表', '', null, 'admin/members-exercise/list', '1566903140', '4', '1566903140', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('15', '13', '0-1-13', '0', null, '', null, null, '', '订单详情', '', null, '', '1566903142', '4', '1566903142', '4', '0', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('16', '1', '0-1', '0', null, '', null, null, '', '用户管理', '', null, '', '1565771161', '4', '1565771161', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('17', '16', '0-1-16', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '照片审核', '', null, 'admin/membersphoto/list', '1568203906', '4', '1568203906', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('18', '16', '0-1-16', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '用户管理', '', null, 'admin/members/list?status=1', '1566459773', '4', '1566459773', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('19', '16', '0-1-16', '0', null, '', null, null, '', '用户搜索', '', null, '', '1566459777', '4', '1566459777', '4', '0', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('20', '13', '0-1-13', '0', null, '', null, null, '', '订单搜索', '', null, '', '1566464521', '4', '1566464521', '4', '0', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('21', '1', '0-1', '0', null, '', null, null, '', '通知管理', '', null, '', '1565771225', '4', '1565771225', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('22', '21', '0-1-21', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '系统通知', '', null, 'admin/basicmanagement/list?type=2&pid=45', '1566286973', '4', '1566286973', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('23', '21', '0-1-21', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '通知分类', '', null, 'admin/basicmanagement/list?type=2&pid=44&notice=mod', '1566286850', '4', '1566286850', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('24', '1', '0-1', '0', null, '', null, null, '', '资讯管理', '', null, '#', '1565771255', '4', '1565771255', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('25', '24', '0-1-24', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '资讯列表', '', null, 'admin/basicmanagement/list?type=2&pid=48', '1566284516', '4', '1566284516', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('26', '24', '0-1-24', '0', null, '', '', null, '', '资讯添加', '', null, 'admin/basicmanagement/list?type=2&pid=47&news=mod', '1566284433', '4', '1566284433', '4', '0', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('27', '24', '0-1-24', '0', null, '', null, null, '', '资讯分类', '', null, 'admin/basicmanagement/list?type=2&pid=47&notice=mod', '1565771415', '4', '1565771415', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('28', '1', '0-1', '0', null, '', null, null, '', '财务管理', '', null, '', '1565771432', '4', '1565771432', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('29', '28', '0-1-28', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '支付管理', '', null, 'admin/orders/paymentManagement', '1568802552', '4', '1568802552', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('30', '28', '0-1-28', '0', null, '/public/plugin/generalmall/images/image.png', '', null, '', '数据统计', '', null, 'admin/orders/dataStatistics', '1568802545', '4', '1568802545', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('31', '28', '0-1-28', '0', null, '', null, null, '', '支付订单搜索', '', null, '', '1566464501', '4', '1566464501', '4', '0', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('32', '1', '0-1', '0', null, '', null, null, '', '基础管理', '', null, '#', '1565771481', '4', '1565771481', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('33', '32', '0-1-32', '0', null, '', null, null, '', '客服电话', '', null, 'admin/basicmanagement/list?type=2&pid=51', '1565771491', '4', '1565771491', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('34', '32', '0-1-32', '0', null, '', null, null, '', '支付协议', '', null, 'admin/basicmanagement/list?type=2&pid=52', '1565771506', '4', '1565771506', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('35', '32', '0-1-32', '0', null, '', null, null, '', '安全协议', '', null, 'admin/basicmanagement/list?type=2&pid=53', '1565771517', '4', '1565771517', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('36', '32', '0-1-32', '0', null, '', null, null, '', '活动协议', '', null, 'admin/basicmanagement/list?type=2&pid=54', '1565771529', '4', '1565771529', '4', '1', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('37', '0', '0', '0', null, null, null, null, 'Album classification', '相册分类', '', null, '#', '1565836314', '4', '1565836314', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('38', '37', '0-37', '0', null, null, null, null, 'Home carousel', '首页轮播', '首页轮播', null, '#', '1565836373', '4', '1565841483', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('39', '37', '0-37', '0', null, null, null, null, null, '报名12', '', null, null, '1565840603', '4', '1569204177', '4', '2', '9', null, '123', '1', null, null);
INSERT INTO `think_column` VALUES ('40', '0', '0', '0', null, null, null, null, 'Activity classification', '活动分类', '活动分类', null, '#', '1565849079', '4', '1565849079', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('41', '40', '0-40', '0', null, null, null, null, 'Weekend event carnival', '卡丁车-晋级赛道', '卡丁车-晋级赛道', null, '#', '1565849114', '4', '1567049935', '4', '1', '1', null, '3', '1', null, null);
INSERT INTO `think_column` VALUES ('42', '40', '0-40', '0', null, null, null, null, null, '卡丁车-室内', '卡丁车-室内', null, null, '1565850053', '4', '1565871657', '4', '1', '1', null, '2', '1', null, null);
INSERT INTO `think_column` VALUES ('43', '40', '0-40', '0', null, null, null, null, null, '卡丁车-室外', '卡丁车-室外', null, null, '1565850897', '4', '1565871680', '4', '1', '1', null, '1', '1', null, null);
INSERT INTO `think_column` VALUES ('44', '0', '0', '0', null, null, null, null, 'Notification management', '通知管理', '', null, '#', '1565946407', '4', '1565946407', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('45', '44', '0-44', '0', null, null, null, null, 'System notification', '系统通知', '', null, '#', '1565946446', '4', '1565946446', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('46', '44', '0-44', '0', null, null, null, null, 'Other notification', '其他通知', '', null, '#', '1565946460', '4', '1568196774', '4', '1', '9', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('47', '0', '0', '0', null, null, null, null, 'Information management', '资讯管理', '', null, '#', '1565946495', '4', '1565946495', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('48', '47', '0-47', '0', null, '/public/plugin/generalmall/images/image.png', '', null, 'News list', '资讯列表', '', null, '#', '1566284962', '4', '1568862815', '4', '2', '1', null, '0', '1', null, '');
INSERT INTO `think_column` VALUES ('49', '47', '0-47', '0', null, null, null, null, 'Other information', '卡丁车', '', null, '#', '1566284771', '4', '1566978027', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('50', '0', '0', '0', null, null, null, null, 'Basic management', '基础管理', '', null, '#', '1565946616', '4', '1565946616', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('51', '50', '0-50', '0', null, null, null, null, 'Consumer hotline', '客服电话', '', null, '#', '1565946638', '4', '1565946638', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('52', '50', '0-50', '0', null, null, null, null, 'Payment agreement', '支付协议', '', null, '#', '1565946649', '4', '1565946649', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('53', '50', '0-50', '0', null, null, null, null, 'Security Protocol', '安全协议', '', null, '#', '1565946660', '4', '1565946660', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('54', '50', '0-50', '0', null, null, null, null, 'Activity agreement', '活动协议', '', null, '#', '1565946674', '4', '1565946674', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('55', '21', '0-1', '0', null, null, null, null, null, '系统通知001', '123123', null, null, '1566282762', '4', '1566282762', '4', '0', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('56', '47', '0', '0', null, null, null, null, null, 'f5赛车', '', null, null, '1566963103', '4', '1566978025', '4', '1', '1', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('57', '37', '0-37', '0', null, null, null, null, null, '相册-测-01', '相册-测-01', null, null, '1568860073', '4', '1569204172', '4', '2', '9', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('58', '40', '0-40', '0', null, null, null, null, null, '活动分类-测-1', '活动分类-测-1', null, null, '1568860203', '4', '1569204168', '4', '1', '9', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('59', '40', '0-40', '0', null, null, null, null, null, '活动分类-测-2222', '活动分类-测-1', null, null, '1568860214', '4', '1568860253', '4', '2', '9', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('60', '44', '0', '0', null, null, null, null, null, '通知分类-测-1', '通知分类-测-1', null, null, '1568861379', '4', '1569204222', '4', '2', '9', null, '0', '1', null, null);
INSERT INTO `think_column` VALUES ('61', '47', '0', '0', null, null, null, null, null, '分类', '', null, null, '1568862105', '4', '1568862105', '4', '1', '1', null, '0', '1', null, null);

-- ----------------------------
-- Table structure for think_config
-- ----------------------------
DROP TABLE IF EXISTS `think_config`;
CREATE TABLE `think_config` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '配置字段名',
  `title` varchar(255) NOT NULL COMMENT '配置标题名称',
  `value` varchar(255) NOT NULL COMMENT '配置参数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_config
-- ----------------------------
INSERT INTO `think_config` VALUES ('1', 'system_config', '系统配置', '{\"debug\": \"0\", \"trace\": \"0\", \"trace_type\": \"0\"}', '0', '1523414007', '1531729547');
INSERT INTO `think_config` VALUES ('2', 'site_config', '站点配置', '{\"name\": \"originThink\", \"title\": \"originThink\", \"copyright\": \"copyright @2018 originThink\",\"icp\": \"苏ICP备0000000号\"}', '1', '1523414007', '1536478335');

-- ----------------------------
-- Table structure for think_login_log
-- ----------------------------
DROP TABLE IF EXISTS `think_login_log`;
CREATE TABLE `think_login_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `user` varchar(255) NOT NULL COMMENT '账号',
  `name` varchar(255) NOT NULL COMMENT '用户名',
  `last_login_ip` varchar(32) NOT NULL COMMENT '登录ip',
  `create_time` int(11) unsigned NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_login_log
-- ----------------------------
INSERT INTO `think_login_log` VALUES ('1', '1', 'admin', 'admin', '127.0.0.1', '1568861291');
INSERT INTO `think_login_log` VALUES ('2', '1', 'admin', 'admin', '127.0.0.1', '1568861415');

-- ----------------------------
-- Table structure for think_members
-- ----------------------------
DROP TABLE IF EXISTS `think_members`;
CREATE TABLE `think_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `path` varchar(255) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL COMMENT '账号',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `profile_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `last_login_ip` varchar(32) NOT NULL DEFAULT '0.0.0.0' COMMENT '最后登录ip地址',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否禁用；0: 禁用 1:正常',
  `updatapassword` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_members
-- ----------------------------
INSERT INTO `think_members` VALUES ('1', '0', 'admin', 'admin', '/uploads/20190919\\33c2e2167fee9d56709709da12271389.gif', '$2y$10$HLh4UHoluqLvwsNN6vQxz.tuKMA5xYp6rH2vOpA.74sxiQbjwm2My', '89', '127.0.0.1', '1568861415', '1', '1', '0', '1568865029');
INSERT INTO `think_members` VALUES ('2', '0', 'admin1', 'admin1', null, '$2y$10$HLh4UHoluqLvwsNN6vQxz.tuKMA5xYp6rH2vOpA.74sxiQbjwm2My', '13', '127.0.0.1', '1535891091', '1', '1', '0', '1535891091');

-- ----------------------------
-- Table structure for think_posts
-- ----------------------------
DROP TABLE IF EXISTS `think_posts`;
CREATE TABLE `think_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '0',
  `type` int(10) unsigned DEFAULT '0' COMMENT '1：活动，2：通知，3：资讯，4：基础',
  `name` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `status` smallint(6) unsigned NOT NULL DEFAULT '1',
  `disable` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `other` varchar(255) NOT NULL,
  `ord` int(11) NOT NULL DEFAULT '0',
  `create_by` int(10) unsigned DEFAULT NULL,
  `update_by` int(10) unsigned DEFAULT NULL,
  `num_clicks` int(255) unsigned NOT NULL DEFAULT '1',
  `top` smallint(3) unsigned NOT NULL DEFAULT '2',
  `price` double unsigned NOT NULL DEFAULT '0' COMMENT '价格',
  `most` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '活动可参加人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COMMENT='1：活动，2：通知，3：资讯，4：基础';

-- ----------------------------
-- Records of think_posts
-- ----------------------------
INSERT INTO `think_posts` VALUES ('1', '43', '0-40', '1', '卡丁车-室外赛道', null, '/public/file/image/201908/15/20190815155026_721.gif', '234', '卡丁车是英文KARTING的译音，意为微型运动汽车，卡丁车运动于1940年在东欧开始出现，到了20世纪50年代末才在欧美普及并迅速发展起来。它的结构极其简单一个车架，一台两冲程发动机，四个独立车轮便构成了卡丁车的全部。因其具有易于驾驶，安全而又刺激的特点，所以迅速风靡世界， 1962年由国际汽车联合会巴莱斯特主席创议成立了国际汽车联合会卡丁车委员会，后更名为世界卡丁车联合会。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">卡丁车是英文KARTING的译音，意为微型运动汽车，卡丁车运动于1940年在</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%B8%9C%E6%AC%A7/7149362\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">东欧</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">开始出现，到了20世纪50年代末才在欧美普及并迅速发展起来。它的结构极其简单一个车架，一台两冲程发动机，四个独立车轮便构成了卡丁车的全部。因其具有易于驾驶，安全而又刺激的特点，所以迅速风靡世界， 1962年由</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%9B%BD%E9%99%85%E6%B1%BD%E8%BD%A6%E8%81%94%E5%90%88%E4%BC%9A/3469506\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">国际汽车联合会</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">巴莱斯特主席创议成立了国际汽车联合会卡丁车委员会，后更名为世界卡丁车联合会。</span></p>', '1', '1', '2019-08-15 14:42:53', '2019-08-29 11:42:36', '234', '3', '4', '4', '1', '1', '0.01', '10');
INSERT INTO `think_posts` VALUES ('2', '41', '0-40', '1', '卡丁车-晋级赛道', null, '/public/file/image/201908/28/20190828172104_470.png', null, '卡丁车是英文KARTING的译音，意为微型运动汽车，卡丁车运动于1940年在东欧开始出现，到了20世纪50年代末才在欧美普及并迅速发展起来。它的结构极其简单一个车架，一台两冲程发动机，四个独立车轮便构成了卡丁车的全部。因其具有易于驾驶，安全而又刺激的特点，所以迅速风靡世界， 1962年由国际汽车联合会巴莱斯特主席创议成立了国际汽车联合会卡丁车委员会，后更名为世界卡丁车联合会。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">卡丁车是英文KARTING的译音，意为微型运动汽车，卡丁车运动于1940年在</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%B8%9C%E6%AC%A7/7149362\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">东欧</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">开始出现，到了20世纪50年代末才在欧美普及并迅速发展起来。它的结构极其简单一个车架，一台两冲程发动机，四个独立车轮便构成了卡丁车的全部。因其具有易于驾驶，安全而又刺激的特点，所以迅速风靡世界， 1962年由</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%9B%BD%E9%99%85%E6%B1%BD%E8%BD%A6%E8%81%94%E5%90%88%E4%BC%9A/3469506\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">国际汽车联合会</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">巴莱斯特主席创议成立了国际汽车联合会卡丁车委员会，后更名为世界卡丁车联合会。</span></p>', '1', '1', '2019-08-15 15:28:00', '2019-08-29 11:40:05', '', '11', '4', '4', '1', '2', '0.01', '11');
INSERT INTO `think_posts` VALUES ('3', '45', '0-1-21', '2', '系统消息1', null, '/public/plugin/generalmall/images/image.png', null, '123e', '<p>123qweqwe</p>', '9', '1', '2019-08-20 14:39:25', '2019-09-11 18:29:11', '', '12', '4', '4', '1', '2', '0.01', '1');
INSERT INTO `think_posts` VALUES ('4', '45', '0-1-21', '2', '系统消息2', null, '', null, 'qweqwe', '<p>qweqweqwe</p>', '9', '1', '2019-08-20 14:41:26', '2019-09-11 18:29:10', '', '0', '4', '4', '1', '2', '0.01', '1');
INSERT INTO `think_posts` VALUES ('5', '45', '0-1-21', '2', '系统消息3', null, '', null, 'qweqwe', '<p>qweqwe</p>', '9', '1', '2019-08-20 14:42:01', '2019-09-11 18:29:08', '', '0', '4', '4', '1', '2', '0.01', '1');
INSERT INTO `think_posts` VALUES ('6', '45', '0-1-21', '2', 'qweqweqweqwe', null, '', null, 'qweqwe', '<p>qweqwe</p>', '9', '1', '2019-08-20 14:43:32', '2019-09-11 18:29:06', '', '0', '4', '4', '1', '2', '0.01', '1');
INSERT INTO `think_posts` VALUES ('7', '48', '0-47', '2', '炎炎夏日上演的极速体验', null, '/public/file/image/201908/28/20190828113257_276.png', null, '卡丁车(Karting)，又称高卡车(Go-Kart)或小型赛车，是一种赛车运动。顾名思义，车手所驾的车子论大小、功率输出比专业级的...', '<h3 style=\"margin: 5px 0px; padding: 1px 8px; font-size: 14px; height: 25px; color: rgb(255, 255, 255); background: rgb(160, 160, 160); border: 1px solid rgb(229, 229, 229); border-radius: 4px; line-height: 25px; font-family: \">TCP链接协议概述<br/></h3><p style=\"margin-top: 15px; margin-bottom: 10px; padding: 0px; line-height: 23.4px; color: rgb(68, 68, 68); font-size: 13px; font-family: \">建立TCP需要三次握手才能建立，而断开连接则需要四次握手。整个过程如下图所示：<br/><img src=\"/public_file/ueditor/upload/image/20190820/1566286288911012.jpg\" alt=\"\"/>&nbsp;&nbsp;</p><h3 style=\"margin: 5px 0px; padding: 1px 8px; font-size: 14px; height: 25px; color: rgb(255, 255, 255); background: rgb(160, 160, 160); border: 1px solid rgb(229, 229, 229); border-radius: 4px; line-height: 25px; font-family: \">建立连接的过程<br/></h3><p style=\"margin-top: 15px; margin-bottom: 10px; padding: 0px; line-height: 23.4px; color: rgb(68, 68, 68); font-size: 13px; font-family: \">首先Client端发送连接请求报文，Server段接受连接后回复ACK报文，并为这次连接分配资源。Client端接收到ACK报文后也向Server段发生ACK报文，并分配资源，这样TCP连接就建立了。<img src=\"/public_file/ueditor/upload/image/20190820/1566286288621456.jpg\" alt=\"\"/></p><h3 style=\"margin: 5px 0px; padding: 1px 8px; font-size: 14px; height: 25px; color: rgb(255, 255, 255); background: rgb(160, 160, 160); border: 1px solid rgb(229, 229, 229); border-radius: 4px; line-height: 25px; font-family: \">断开连接的过程<br/></h3><p style=\"margin-top: 15px; margin-bottom: 10px; padding: 0px; line-height: 23.4px; color: rgb(68, 68, 68); font-size: 13px; font-family: \">断开连接端可以是Client端，也可以是Server端。假设Client端发起中断连接请求，就先发送FIN报文。Server端接到FIN报文后，但是如果还有数据没有发送完成，则不必急着关闭Socket，可以继续发送数据。所以服务器端先发送ACK，告诉Client端：请求已经收到了，但是我还没准备好，请继续等待停止的消息。这个时候Client端就进入FIN_WAIT状态，继续等待Server端的FIN报文。当Server端确定数据已发送完成，则向Client端发送FIN报文，告诉Client端：服务器这边数据发完了，准备好关闭连接了。Client端收到FIN报文后，就知道可以关闭连接了，但是他还是不相信网络，所以发送ACK后进入TIME_WAIT状态， Server端收到ACK后，就知道可以断开连接了。Client端等待了2MSL后依然没有收到回复，则证明Server端已正常关闭，最后，Client端也可以关闭连接了至此，TCP连接就已经完全关闭了！关闭连接的过程如下图所示：<br/><img src=\"/public_file/ueditor/upload/image/20190820/1566286288843650.jpg\" alt=\"\"/></p><p><br/></p>', '1', '1', '2019-08-20 15:31:33', '2019-08-28 11:35:25', '', '0', '4', '4', '1', '2', '0.01', '1');
INSERT INTO `think_posts` VALUES ('8', '56', '0', '2', '   f5赛车', null, '/public/file/image/201908/28/20190828144351_144.png', null, '   f5赛车   f5赛车   f5赛车', '<p><span style=\"color: rgb(57, 57, 57); font-family: \">&nbsp; &nbsp;f5赛车</span><span style=\"color: rgb(57, 57, 57); font-family: \">&nbsp; &nbsp;f5赛车</span><span style=\"color: rgb(57, 57, 57); font-family: \">&nbsp; &nbsp;f5赛车</span><span style=\"color: rgb(57, 57, 57); font-family: \">&nbsp; &nbsp;f5赛车</span></p>', '1', '1', '2019-08-28 11:31:58', '2019-08-28 14:43:54', '', '0', '4', '4', '1', '2', '0.01', '1');
INSERT INTO `think_posts` VALUES ('9', '49', '0-47', '2', '卡丁车信息', null, '/public/file/image/201908/28/20190828144323_940.png', null, '卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息', '<p>卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息卡丁车信息</p>', '1', '1', '2019-08-28 14:43:37', '2019-08-28 14:43:37', '', '0', '4', '4', '1', '2', '0.01', '1');
INSERT INTO `think_posts` VALUES ('10', '42', '0-40', '1', '卡丁车-室内赛道', null, '/public/file/image/201908/29/20190829114054_470.png', null, '卡丁车是英文KARTING的译音，意为微型运动汽车，卡丁车运动于1940年在东欧开始出现，到了20世纪50年代末才在欧美普及并迅速发展起来。它的结构极其简单一个车架，一台两冲程发动机，四个独立车轮便构成了卡丁车的全部。因其具有易于驾驶，安全而又刺激的特点，所以迅速风靡世界， 1962年由国际汽车联合会巴莱斯特主席创议成立了国际汽车联合会卡丁车委员会，后更名为世界卡丁车联合会。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">卡丁车是英文KARTING的译音，意为微型运动汽车，卡丁车运动于1940年在</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%B8%9C%E6%AC%A7/7149362\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">东欧</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">开始出现，到了20世纪50年代末才在欧美普及并迅速发展起来。它的结构极其简单一个车架，一台两冲程发动机，四个独立车轮便构成了卡丁车的全部。因其具有易于驾驶，安全而又刺激的特点，所以迅速风靡世界， 1962年由</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%9B%BD%E9%99%85%E6%B1%BD%E8%BD%A6%E8%81%94%E5%90%88%E4%BC%9A/3469506\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">国际汽车联合会</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">巴莱斯特主席创议成立了国际汽车联合会卡丁车委员会，后更名为世界卡丁车联合会。</span></p>', '1', '1', '2019-08-29 11:40:57', '2019-08-29 11:40:57', '', '2', '4', '4', '1', '2', '0.01', '10');
INSERT INTO `think_posts` VALUES ('11', '45', '0-44', '2', '系统通知001', null, '', null, '系统通知001', '<p>系统通知001系统通知001系统通知001系统通知001系统通知001</p>', '9', '1', '2019-09-11 18:24:47', '2019-09-11 18:29:05', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('12', '45', '0-44', '2', '系统通知002', null, '', null, '系统通知002', '<p>系统通知002系统通知002系统通知002系统通知002</p>', '9', '1', '2019-09-11 18:26:20', '2019-09-11 18:29:03', '', '1', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('13', '45', '0-44', '2', '系统通知002', null, '', null, '系统通知002', '<p>系统通知002系统通知002系统通知002系统通知002</p>', '9', '1', '2019-09-11 18:26:36', '2019-09-11 18:29:01', '', '1', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('14', '45', '0-44', '2', '系统通知002', null, '', null, '系统通知002', '<p>系统通知002系统通知002系统通知002系统通知002</p>', '9', '1', '2019-09-11 18:27:23', '2019-09-11 18:29:00', '', '1', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('15', '45', '0-44', '2', '   系统通知01', null, '', null, '   系统通知01', '<p>&nbsp; &nbsp;系统通知01&nbsp; &nbsp;系统通知01&nbsp; &nbsp;系统通知01&nbsp; &nbsp;系统通知01&nbsp; &nbsp;系统通知01&nbsp; &nbsp;系统通知01</p>', '1', '1', '2019-09-11 18:29:23', '2019-09-11 18:29:23', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('16', '51', '0-50', '2', '', null, '', null, '18903676153', '', '1', '1', '2019-09-12 15:15:20', '2019-09-12 15:15:20', '', '0', '11', '11', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('17', '52', '0-50', '2', '   支付协议', null, '', null, '   支付协议   支付协议   支付协议   支付协议', '<p><span style=\"color: rgb(57, 57, 57); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;支付协议</span><span style=\"color: rgb(57, 57, 57); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;支付协议</span><span style=\"color: rgb(57, 57, 57); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;支付协议</span><span style=\"color: rgb(57, 57, 57); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;支付协议</span><span style=\"color: rgb(57, 57, 57); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;支付协议</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(57, 57, 57); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 13px;\">&nbsp;&nbsp; 支付协议</span><span style=\"color: rgb(57, 57, 57); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;支付协议</span><span style=\"color: rgb(57, 57, 57); font-family: &quot;Microsoft YaHei&quot;, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;支付协议</span></p>', '1', '1', '2019-09-12 15:34:39', '2019-09-12 15:34:39', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('18', '53', '0-50', '2', '   安全协议', null, '/public/plugin/generalmall/images/image.png', null, '', '<p><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp;北京某某科技有限公司(以下简称“某某科技”)再次特别提醒您(用户)在注册成为用户之前，请认真阅读本《用户协议》(以下简称“协议”)，确保您充分理解本协议中各条款。请您审慎阅读并选择接受或不接受本协议。除非您接受本协议所有条款，否则您无权注册、登录或使用本协议所涉服务。您的注册、登录、使用等行为将视为对本协议的接受，并同意接受本协议各项条款的约束。</span></p><p><span style=\"color: rgb(0, 0, 0);\">一、账号注册</span></p><p><span style=\"color: rgb(0, 0, 0);\">1、用户在使用本服务前需要注册一个“APP”账号。“APP”账号应当使用手机号码绑定注册，请用户使用尚未与“APP”账号绑定的手机号码。以及未被某某科技根据本协议封禁的手机号码注册“APP”账号。欧某科技可以根据用户需求或产品需求对账号注册和绑定的方式进行更改，而无须事先通知用户。</span></p><p><span style=\"color: rgb(0, 0, 0);\">2、用户在使用本服务前需要注册一个“APP”账号。“APP”账号应当使用手机号码绑定注册，请用户使用尚未与“APP”账号绑定的手机号码。</span></p><p><span style=\"color: rgb(0, 0, 0);\">3、用户在使用本服务前需要注册一个“APP”账号。“APP”账号应当使用手机号码绑定注册，请用户使用尚未与“APP”账号绑定的手机号码。</span></p><p><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp;二、用户个人隐私信息保护</span></p><p><span style=\"color: rgb(0, 0, 0);\">1、用户在使用本服务前需要注册一个“APP”账号。“APP”账号应当使用手机号码绑定注册，请用户使用尚未与“APP”账号绑定的手机号码。</span></p><p><span style=\"color: rgb(0, 0, 0);\">2、用户在使用本服务前需要注册一个“APP”账号。“APP”账号应当使用手机号码绑定注册，请用户使用尚未与“APP”账号绑定的手机号码。</span></p><p><br/></p>', '1', '1', '2019-09-12 15:34:47', '2019-09-12 16:38:39', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('19', '54', '0-50', '2', ' 活动协议', null, '/public/plugin/generalmall/images/image.png', null, ' 活动协议 活动协议 活动协议', '<p style=\"white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp;北京某某科技有限公司(以下简称“某某科技”)再次特别提醒您(用户)在注册成为用户之前，请认真阅读本《用户协议》(以下简称“协议”)，确保您充分理解本协议中各条款。请您审慎阅读并选择接受或不接受本协议。除非您接受本协议所有条款，否则您无权注册、登录或使用本协议所涉服务。您的注册、登录、使用等行为将视为对本协议的接受，并同意接受本协议各项条款的约束。</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">一、账号注册</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1、用户在使用本服务前需要注册一个“APP”账号。“APP”账号应当使用手机号码绑定注册，请用户使用尚未与“APP”账号绑定的手机号码。以及未被某某科技根据本协议封禁的手机号码注册“APP”账号。欧某科技可以根据用户需求或产品需求对账号注册和绑定的方式进行更改，而无须事先通知用户。</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2、用户在使用本服务前需要注册一个“APP”账号。“APP”账号应当使用手机号码绑定注册，请用户使用尚未与“APP”账号绑定的手机号码。</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3、用户在使用本服务前需要注册一个“APP”账号。“APP”账号应当使用手机号码绑定注册，请用户使用尚未与“APP”账号绑定的手机号码。</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp;二、用户个人隐私信息保护</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">1、用户在使用本服务前需要注册一个“APP”账号。“APP”账号应当使用手机号码绑定注册，请用户使用尚未与“APP”账号绑定的手机号码。</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2、用户在使用本服务前需要注册一个“APP”账号。“APP”账号应当使用手机号码绑定注册，请用户使用尚未与“APP”账号绑定的手机号码。</span></p><p><br/></p>', '1', '1', '2019-09-12 15:34:56', '2019-09-12 16:38:24', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('20', '41', '0-40', '1', '活动-测-1', null, '/public/file/image/201909/19/20190919103253_930.jpg', null, '活动-测-1', '<p>活动-测-1</p>', '1', '1', '2019-09-19 10:33:01', '2019-09-19 10:33:01', '', '0', '4', '4', '1', '2', '1236', '20');
INSERT INTO `think_posts` VALUES ('21', '41', '0-40', '1', '1', null, '', null, '', '', '1', '1', '2019-09-19 10:33:17', '2019-09-19 10:33:17', '', '0', '4', '4', '1', '2', '0', '0');
INSERT INTO `think_posts` VALUES ('22', '58', '0-40', '1', '1', null, '', null, '', '', '9', '1', '2019-09-19 10:35:07', '2019-09-19 10:37:11', '', '0', '4', '4', '1', '2', '0', '0');
INSERT INTO `think_posts` VALUES ('23', '58', '0-40', '1', '活动-测-1', null, '/public/file/image/201909/19/20190919103658_437.jpg', null, '活动-测-1', '<p>活动-测-1</p>', '1', '1', '2019-09-19 10:37:06', '2019-09-19 10:37:06', '', '0', '4', '4', '1', '2', '1236', '20');
INSERT INTO `think_posts` VALUES ('24', '41', '0-40', '1', '活动-测-2-晋级赛道', null, '/public/file/image/201909/19/20190919103854_611.jpg', null, '活动-测-2-晋级赛道', '<p>活动-测-2-晋级赛道</p>', '1', '1', '2019-09-19 10:39:02', '2019-09-19 10:39:02', '', '0', '4', '4', '1', '2', '233', '2');
INSERT INTO `think_posts` VALUES ('25', '45', '0-44', '2', '通知-测-1', null, '/public/file/image/201909/19/20190919104846_921.jpg', null, '通知-测-1', '<p>通知-测-1</p>', '9', '1', '2019-09-19 10:48:49', '2019-09-23 10:03:35', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('26', '45', '0-44', '2', '通知-测-2', null, '/public/file/image/201909/19/20190919104901_562.jpg', null, '通知-测-2222', '<p>通知-测-2</p>', '9', '1', '2019-09-19 10:49:05', '2019-09-23 10:03:33', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('27', '45', '0-44', '2', '通知分类-测-1', null, '', null, '通知分类-测-1', '<p>通知分类-测-1</p>', '9', '2', '2019-09-19 10:50:02', '2019-09-23 10:03:31', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('28', '60', '0', '2', '通知-测-1-通知分类', null, '/public/file/image/201909/19/20190919105036_964.jpg', null, '通知-测-1-通知分类', '<p>v通知-测-1-通知分类</p>', '1', '1', '2019-09-19 10:50:45', '2019-09-19 10:50:45', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('29', '48', '0-47', '2', '咨讯-测-1', null, '/public/file/image/201909/19/20190919110006_433.jpg', null, '咨讯-测-1', '<p>咨讯-测-1</p>', '9', '1', '2019-09-19 11:00:09', '2019-09-23 10:03:59', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('30', '48', '0-47', '2', '咨讯-测-2222', null, '/public/file/image/201909/19/20190919110025_416.jpg', null, '咨讯-测-2', '<p>咨讯-测-2</p>', '9', '2', '2019-09-19 11:00:28', '2019-09-19 11:00:55', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('31', '61', '0', '2', '咨讯-测-3', null, '/public/file/image/201909/19/20190919110207_499.jpg', null, '咨讯-测-3', '<p>咨讯-测-3</p>', '9', '1', '2019-09-19 11:02:10', '2019-09-23 10:04:08', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('32', '51', '0-50', '2', '客服-测-1', null, '/public/file/image/201909/19/20190919110249_542.jpg', null, '客服-测-1', '<p>客服-测-1</p>', '9', '1', '2019-09-19 11:02:52', '2019-09-23 10:04:38', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('33', '43', '0-40', '1', '室外活动-测-1', null, '/public/file/image/201909/19/20190919110527_765.jpg', null, '室外活动-测-1', '<p>室外活动-测-1</p>', '1', '2', '2019-09-19 11:05:30', '2019-09-23 10:03:16', '', '5', '4', '4', '1', '2', '1236', '2');
INSERT INTO `think_posts` VALUES ('34', '56', '0', '2', 'f5-测', null, '/public/file/image/201909/19/20190919110955_866.jpg', null, 'f5-测', '', '9', '1', '2019-09-19 11:09:57', '2019-09-23 10:04:19', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('35', '48', '0-47', '2', '咨询999999999999999', null, '/public/file/image/201909/19/20190919111216_439.jpg', null, '咨询999999999999999', '', '9', '1', '2019-09-19 11:12:17', '2019-09-23 10:03:56', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('36', '53', '0-50', '2', '安全协议1112', null, '/public/file/image/201909/19/20190919112817_717.jpg', null, '安全协议', '<p><span style=\"color: rgb(57, 57, 57); font-family: \">安全协议</span></p>', '9', '2', '2019-09-19 11:28:20', '2019-09-23 10:04:48', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('37', '53', '0-50', '2', 's', null, '', null, '', '', '9', '1', '2019-09-19 11:28:40', '2019-09-19 11:28:45', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('38', '54', '0-50', '2', '活动协议-1111', null, '/public/file/image/201909/19/20190919113449_626.jpg', null, '活动协议-1111', '', '9', '1', '2019-09-19 11:34:52', '2019-09-23 10:04:54', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('39', '52', '0-50', '2', ' 支付协议-1111', null, '/public/file/image/201909/19/20190919113520_867.jpg', null, ' 支付协议-1111', '<p>&nbsp;支付协议-1111</p>', '9', '1', '2019-09-19 11:35:31', '2019-09-23 10:04:44', '', '0', '4', '4', '1', '2', '0', '1');
INSERT INTO `think_posts` VALUES ('40', '45', '0-44', '2', '111112222222', null, '', null, '222222222', '<p>2222222</p>', '9', '1', '2019-09-20 18:14:46', '2019-09-23 10:05:59', '', '0', '4', '4', '1', '2', '0', '1');

-- ----------------------------
-- Table structure for think_user
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user` varchar(32) NOT NULL COMMENT '账号',
  `name` varchar(255) NOT NULL COMMENT '用户名',
  `head` varchar(255) DEFAULT NULL COMMENT '头像',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `last_login_ip` varchar(32) NOT NULL DEFAULT '0.0.0.0' COMMENT '最后登录ip地址',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否禁用；0: 禁用 1:正常',
  `updatapassword` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user_unique` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_user
-- ----------------------------
INSERT INTO `think_user` VALUES ('1', 'admin', 'admin', '/uploads/20190919\\33c2e2167fee9d56709709da12271389.gif', '$2y$10$HLh4UHoluqLvwsNN6vQxz.tuKMA5xYp6rH2vOpA.74sxiQbjwm2My', '89', '127.0.0.1', '1568861415', '1', '1', '0', '1568865029');
INSERT INTO `think_user` VALUES ('2', 'admin1', 'admin1', null, '$2y$10$HLh4UHoluqLvwsNN6vQxz.tuKMA5xYp6rH2vOpA.74sxiQbjwm2My', '13', '127.0.0.1', '1535891091', '1', '1', '0', '1535891091');
