/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : biezuomeng

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2013-03-10 16:02:18
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bzm_access`
-- ----------------------------
DROP TABLE IF EXISTS `bzm_access`;
CREATE TABLE `bzm_access` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键自增',
  `acc_url` varchar(255) NOT NULL COMMENT '访问的URL',
  `acc_ip` varchar(50) default NULL COMMENT '访问的IP',
  `acc_dns` varchar(50) default NULL COMMENT '访问的dnx',
  `acc_browser` varchar(200) default NULL COMMENT '浏览器信息',
  `acc_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=691 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bzm_access
-- ----------------------------
INSERT INTO bzm_access VALUES ('1', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'Desktop', '2013-01-07 10:34:29');
INSERT INTO bzm_access VALUES ('2', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', null, '2013-01-07 10:34:33');
INSERT INTO bzm_access VALUES ('3', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'Desktop', '2013-01-07 10:35:57');
INSERT INTO bzm_access VALUES ('4', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'Desktop', '2013-01-07 10:36:15');
INSERT INTO bzm_access VALUES ('5', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'Desktop', '2013-01-07 10:36:15');
INSERT INTO bzm_access VALUES ('6', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'Desktop', '2013-01-07 10:36:20');
INSERT INTO bzm_access VALUES ('7', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'Desktop', '2013-01-07 10:36:21');
INSERT INTO bzm_access VALUES ('8', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'Desktop', '2013-01-07 10:36:21');
INSERT INTO bzm_access VALUES ('9', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'Desktop', '2013-01-07 10:36:21');
INSERT INTO bzm_access VALUES ('10', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:01');
INSERT INTO bzm_access VALUES ('11', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:01');
INSERT INTO bzm_access VALUES ('12', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:01');
INSERT INTO bzm_access VALUES ('13', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:01');
INSERT INTO bzm_access VALUES ('14', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:07');
INSERT INTO bzm_access VALUES ('15', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:08');
INSERT INTO bzm_access VALUES ('16', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:08');
INSERT INTO bzm_access VALUES ('17', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:08');
INSERT INTO bzm_access VALUES ('18', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:09');
INSERT INTO bzm_access VALUES ('19', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:09');
INSERT INTO bzm_access VALUES ('20', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:37:09');
INSERT INTO bzm_access VALUES ('21', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:44:49');
INSERT INTO bzm_access VALUES ('22', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', '5.0', '2013-01-07 10:44:53');
INSERT INTO bzm_access VALUES ('23', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:46:35');
INSERT INTO bzm_access VALUES ('24', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:46:36');
INSERT INTO bzm_access VALUES ('25', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:46:37');
INSERT INTO bzm_access VALUES ('26', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:46:37');
INSERT INTO bzm_access VALUES ('27', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:46:38');
INSERT INTO bzm_access VALUES ('28', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'Opera9.80 Opera9', '2013-01-07 10:47:04');
INSERT INTO bzm_access VALUES ('29', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-01-07 10:47:17');
INSERT INTO bzm_access VALUES ('30', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'Mozilla17.0 Mozilla17', '2013-01-07 10:47:20');
INSERT INTO bzm_access VALUES ('31', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:47:25');
INSERT INTO bzm_access VALUES ('32', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:47:25');
INSERT INTO bzm_access VALUES ('33', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:47:25');
INSERT INTO bzm_access VALUES ('34', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:49:52');
INSERT INTO bzm_access VALUES ('35', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:49:56');
INSERT INTO bzm_access VALUES ('36', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:49:56');
INSERT INTO bzm_access VALUES ('37', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:50:04');
INSERT INTO bzm_access VALUES ('38', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:50:04');
INSERT INTO bzm_access VALUES ('39', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:50:04');
INSERT INTO bzm_access VALUES ('40', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:50:05');
INSERT INTO bzm_access VALUES ('41', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:50:10');
INSERT INTO bzm_access VALUES ('42', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:52:21');
INSERT INTO bzm_access VALUES ('43', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:52:24');
INSERT INTO bzm_access VALUES ('44', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=39', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:52:32');
INSERT INTO bzm_access VALUES ('45', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:52:41');
INSERT INTO bzm_access VALUES ('46', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:53:34');
INSERT INTO bzm_access VALUES ('47', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:53:37');
INSERT INTO bzm_access VALUES ('48', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:53:41');
INSERT INTO bzm_access VALUES ('49', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:58:33');
INSERT INTO bzm_access VALUES ('50', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:58:55');
INSERT INTO bzm_access VALUES ('51', 'http://localhost:1458/Source/Detail.aspx?op=1', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:59:08');
INSERT INTO bzm_access VALUES ('52', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 10:59:22');
INSERT INTO bzm_access VALUES ('53', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-01-07 10:59:58');
INSERT INTO bzm_access VALUES ('54', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'Opera9.80 Opera9', '2013-01-07 11:00:13');
INSERT INTO bzm_access VALUES ('55', 'http://localhost:1458/Source/Detail.aspx?op=39', '127.0.0.1', '127.0.0.1', 'Mozilla17.0 Mozilla17', '2013-01-07 11:00:24');
INSERT INTO bzm_access VALUES ('56', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:04:58');
INSERT INTO bzm_access VALUES ('57', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=40', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:05:03');
INSERT INTO bzm_access VALUES ('58', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=40', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:05:07');
INSERT INTO bzm_access VALUES ('59', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:05:10');
INSERT INTO bzm_access VALUES ('60', 'http://localhost:1458/Source/Detail.aspx?op=40', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:05:15');
INSERT INTO bzm_access VALUES ('61', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:00');
INSERT INTO bzm_access VALUES ('62', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:14');
INSERT INTO bzm_access VALUES ('63', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:15');
INSERT INTO bzm_access VALUES ('64', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:20');
INSERT INTO bzm_access VALUES ('65', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:21');
INSERT INTO bzm_access VALUES ('66', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:21');
INSERT INTO bzm_access VALUES ('67', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:21');
INSERT INTO bzm_access VALUES ('68', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:24');
INSERT INTO bzm_access VALUES ('69', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:36');
INSERT INTO bzm_access VALUES ('70', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:40');
INSERT INTO bzm_access VALUES ('71', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:53');
INSERT INTO bzm_access VALUES ('72', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:53');
INSERT INTO bzm_access VALUES ('73', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:56');
INSERT INTO bzm_access VALUES ('74', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:20:56');
INSERT INTO bzm_access VALUES ('75', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:22:44');
INSERT INTO bzm_access VALUES ('76', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:24:31');
INSERT INTO bzm_access VALUES ('77', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:58:29');
INSERT INTO bzm_access VALUES ('78', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 11:58:38');
INSERT INTO bzm_access VALUES ('79', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 16:59:13');
INSERT INTO bzm_access VALUES ('80', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:01:06');
INSERT INTO bzm_access VALUES ('81', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:01:21');
INSERT INTO bzm_access VALUES ('82', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:01:21');
INSERT INTO bzm_access VALUES ('83', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:01:44');
INSERT INTO bzm_access VALUES ('84', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:01:44');
INSERT INTO bzm_access VALUES ('85', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:01:44');
INSERT INTO bzm_access VALUES ('86', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:01:44');
INSERT INTO bzm_access VALUES ('87', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:01:46');
INSERT INTO bzm_access VALUES ('88', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:06:53');
INSERT INTO bzm_access VALUES ('89', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:08:22');
INSERT INTO bzm_access VALUES ('90', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:08:22');
INSERT INTO bzm_access VALUES ('91', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:08:27');
INSERT INTO bzm_access VALUES ('92', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:08:27');
INSERT INTO bzm_access VALUES ('93', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:08:27');
INSERT INTO bzm_access VALUES ('94', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:08:28');
INSERT INTO bzm_access VALUES ('95', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:08:29');
INSERT INTO bzm_access VALUES ('96', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:09:44');
INSERT INTO bzm_access VALUES ('97', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:09:52');
INSERT INTO bzm_access VALUES ('98', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:09:52');
INSERT INTO bzm_access VALUES ('99', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:09:53');
INSERT INTO bzm_access VALUES ('100', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:09:54');
INSERT INTO bzm_access VALUES ('101', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:10:40');
INSERT INTO bzm_access VALUES ('102', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:10:44');
INSERT INTO bzm_access VALUES ('103', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-07 17:10:52');
INSERT INTO bzm_access VALUES ('104', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:05:48');
INSERT INTO bzm_access VALUES ('105', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:07:47');
INSERT INTO bzm_access VALUES ('106', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:08:35');
INSERT INTO bzm_access VALUES ('107', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:54:37');
INSERT INTO bzm_access VALUES ('108', 'http://172.24.81.162:8001/Web/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:55:11');
INSERT INTO bzm_access VALUES ('109', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:55:12');
INSERT INTO bzm_access VALUES ('110', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:55:18');
INSERT INTO bzm_access VALUES ('111', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:55:20');
INSERT INTO bzm_access VALUES ('112', 'http://172.24.81.162:8001/Web/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:55:20');
INSERT INTO bzm_access VALUES ('113', 'http://172.24.81.162:8001/Web/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:55:21');
INSERT INTO bzm_access VALUES ('114', 'http://172.24.81.162:8001/Web/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:55:21');
INSERT INTO bzm_access VALUES ('115', 'http://172.24.81.162:8001/Web/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:55:31');
INSERT INTO bzm_access VALUES ('116', 'http://172.24.81.162:8001/Web/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:55:32');
INSERT INTO bzm_access VALUES ('117', 'http://172.24.81.162:8001/Web/Detail.aspx?op=40', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:56:53');
INSERT INTO bzm_access VALUES ('118', 'http://172.24.81.162:8001/Web/Detail.aspx?op=41', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:56:56');
INSERT INTO bzm_access VALUES ('119', 'http://172.24.81.162:8001/Web/Detail.aspx?op=41', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:57:18');
INSERT INTO bzm_access VALUES ('120', 'http://172.24.81.162:8001/Web/Detail.aspx?op=41', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 08:57:59');
INSERT INTO bzm_access VALUES ('121', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 09:52:47');
INSERT INTO bzm_access VALUES ('122', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:00:06');
INSERT INTO bzm_access VALUES ('123', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:06');
INSERT INTO bzm_access VALUES ('124', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:11');
INSERT INTO bzm_access VALUES ('125', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:13');
INSERT INTO bzm_access VALUES ('126', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:15');
INSERT INTO bzm_access VALUES ('127', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:15');
INSERT INTO bzm_access VALUES ('128', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:18');
INSERT INTO bzm_access VALUES ('129', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:20');
INSERT INTO bzm_access VALUES ('130', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:22');
INSERT INTO bzm_access VALUES ('131', 'http://172.24.81.162:8001/Web/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:32');
INSERT INTO bzm_access VALUES ('132', 'http://172.24.81.162:8001/Web/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:32');
INSERT INTO bzm_access VALUES ('133', 'http://172.24.81.162:8001/Web/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:32');
INSERT INTO bzm_access VALUES ('134', 'http://172.24.81.162:8001/Web/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:32');
INSERT INTO bzm_access VALUES ('135', 'http://172.24.81.162:8001/Web/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:06:34');
INSERT INTO bzm_access VALUES ('136', 'http://172.24.81.162:8001/Web/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:11:34');
INSERT INTO bzm_access VALUES ('137', 'http://172.24.81.162:8001/Web/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:11:34');
INSERT INTO bzm_access VALUES ('138', 'http://172.24.81.162:8001/Web/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:11:35');
INSERT INTO bzm_access VALUES ('139', 'http://172.24.81.162:8001/Web/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:11:41');
INSERT INTO bzm_access VALUES ('140', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:17:55');
INSERT INTO bzm_access VALUES ('141', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:18:06');
INSERT INTO bzm_access VALUES ('142', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:18:06');
INSERT INTO bzm_access VALUES ('143', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:18:11');
INSERT INTO bzm_access VALUES ('144', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:18:11');
INSERT INTO bzm_access VALUES ('145', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:18:11');
INSERT INTO bzm_access VALUES ('146', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:18:12');
INSERT INTO bzm_access VALUES ('147', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:18:20');
INSERT INTO bzm_access VALUES ('148', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:18:26');
INSERT INTO bzm_access VALUES ('149', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:18:33');
INSERT INTO bzm_access VALUES ('150', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:19:42');
INSERT INTO bzm_access VALUES ('151', 'http://172.24.81.162:8001/Web/dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:19:51');
INSERT INTO bzm_access VALUES ('152', 'http://172.24.81.162:8001/Web/dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:03');
INSERT INTO bzm_access VALUES ('153', 'http://172.24.81.162:8001/Web/dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:03');
INSERT INTO bzm_access VALUES ('154', 'http://172.24.81.162:8001/Web/dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:03');
INSERT INTO bzm_access VALUES ('155', 'http://172.24.81.162:8001/Web/dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:03');
INSERT INTO bzm_access VALUES ('156', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:05');
INSERT INTO bzm_access VALUES ('157', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:18');
INSERT INTO bzm_access VALUES ('158', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:22');
INSERT INTO bzm_access VALUES ('159', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:23');
INSERT INTO bzm_access VALUES ('160', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:24');
INSERT INTO bzm_access VALUES ('161', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:24');
INSERT INTO bzm_access VALUES ('162', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:25');
INSERT INTO bzm_access VALUES ('163', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:26');
INSERT INTO bzm_access VALUES ('164', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:36');
INSERT INTO bzm_access VALUES ('165', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:44');
INSERT INTO bzm_access VALUES ('166', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:44');
INSERT INTO bzm_access VALUES ('167', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:45');
INSERT INTO bzm_access VALUES ('168', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:45');
INSERT INTO bzm_access VALUES ('169', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:45');
INSERT INTO bzm_access VALUES ('170', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:46');
INSERT INTO bzm_access VALUES ('171', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:46');
INSERT INTO bzm_access VALUES ('172', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:20:47');
INSERT INTO bzm_access VALUES ('173', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:00');
INSERT INTO bzm_access VALUES ('174', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:04');
INSERT INTO bzm_access VALUES ('175', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:12');
INSERT INTO bzm_access VALUES ('176', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:16');
INSERT INTO bzm_access VALUES ('177', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:24');
INSERT INTO bzm_access VALUES ('178', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:24');
INSERT INTO bzm_access VALUES ('179', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:25');
INSERT INTO bzm_access VALUES ('180', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:27');
INSERT INTO bzm_access VALUES ('181', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:40');
INSERT INTO bzm_access VALUES ('182', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:43');
INSERT INTO bzm_access VALUES ('183', 'http://172.24.81.162:8001/Web/dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:50');
INSERT INTO bzm_access VALUES ('184', 'http://172.24.81.162:8001/Web/dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:50');
INSERT INTO bzm_access VALUES ('185', 'http://172.24.81.162:8001/Web/dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:51');
INSERT INTO bzm_access VALUES ('186', 'http://172.24.81.162:8001/Web/dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:52');
INSERT INTO bzm_access VALUES ('187', 'http://172.24.81.162:8001/Web/dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:52');
INSERT INTO bzm_access VALUES ('188', 'http://172.24.81.162:8001/Web/dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:53');
INSERT INTO bzm_access VALUES ('189', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:21:54');
INSERT INTO bzm_access VALUES ('190', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:22:10');
INSERT INTO bzm_access VALUES ('191', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:22:13');
INSERT INTO bzm_access VALUES ('192', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:22:40');
INSERT INTO bzm_access VALUES ('193', 'http://172.24.81.162:8001/Web/dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:29:52');
INSERT INTO bzm_access VALUES ('194', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:29:55');
INSERT INTO bzm_access VALUES ('195', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:31:55');
INSERT INTO bzm_access VALUES ('196', 'http://172.24.81.162:8001/Web/dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:32:13');
INSERT INTO bzm_access VALUES ('197', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.81.22', '172.24.81.22', 'IE6.0 IE6', '2013-01-08 10:34:43');
INSERT INTO bzm_access VALUES ('198', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.81.22', '172.24.81.22', 'IE6.0 IE6', '2013-01-08 10:34:55');
INSERT INTO bzm_access VALUES ('199', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.86.86', '172.24.86.86', 'IE8.0 IE8', '2013-01-08 10:35:24');
INSERT INTO bzm_access VALUES ('200', 'http://172.24.81.162:8001/Web/dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-08 10:35:52');
INSERT INTO bzm_access VALUES ('201', 'http://172.24.81.162:8001/Web/Detail.aspx?op=45', '172.24.86.86', '172.24.86.86', 'IE8.0 IE8', '2013-01-08 10:38:47');
INSERT INTO bzm_access VALUES ('202', 'http://172.24.81.162:8001/Web/Detail.aspx?op=45', '172.24.86.86', '172.24.86.86', 'IE8.0 IE8', '2013-01-08 10:39:31');
INSERT INTO bzm_access VALUES ('203', 'http://172.24.81.162:8001/Web/Web.aspx', '172.24.86.86', '172.24.86.86', 'IE8.0 IE8', '2013-01-08 10:39:41');
INSERT INTO bzm_access VALUES ('204', 'http://172.24.81.162:8001/web/Index.aspx', '172.24.71.113', '172.24.71.113', 'AppleMAC-Safari5.0 Desktop', '2013-01-09 07:54:59');
INSERT INTO bzm_access VALUES ('205', 'http://172.24.81.162:8001/web/Detail.aspx?op=45', '172.24.71.113', '172.24.71.113', 'AppleMAC-Safari5.0 Desktop', '2013-01-09 08:00:30');
INSERT INTO bzm_access VALUES ('206', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-09 09:19:04');
INSERT INTO bzm_access VALUES ('207', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-09 09:19:09');
INSERT INTO bzm_access VALUES ('208', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-09 09:19:10');
INSERT INTO bzm_access VALUES ('209', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-09 09:19:13');
INSERT INTO bzm_access VALUES ('210', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-09 09:19:13');
INSERT INTO bzm_access VALUES ('211', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-09 09:19:14');
INSERT INTO bzm_access VALUES ('212', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-09 09:19:14');
INSERT INTO bzm_access VALUES ('213', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 08:31:18');
INSERT INTO bzm_access VALUES ('214', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:11:43');
INSERT INTO bzm_access VALUES ('215', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:11:48');
INSERT INTO bzm_access VALUES ('216', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:11:48');
INSERT INTO bzm_access VALUES ('217', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:11:52');
INSERT INTO bzm_access VALUES ('218', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:11:52');
INSERT INTO bzm_access VALUES ('219', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:11:52');
INSERT INTO bzm_access VALUES ('220', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:11:53');
INSERT INTO bzm_access VALUES ('221', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:12:11');
INSERT INTO bzm_access VALUES ('222', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:18:36');
INSERT INTO bzm_access VALUES ('223', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:18:40');
INSERT INTO bzm_access VALUES ('224', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:18:44');
INSERT INTO bzm_access VALUES ('225', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:18:50');
INSERT INTO bzm_access VALUES ('226', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:22:40');
INSERT INTO bzm_access VALUES ('227', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:22:41');
INSERT INTO bzm_access VALUES ('228', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:22:41');
INSERT INTO bzm_access VALUES ('229', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:22:42');
INSERT INTO bzm_access VALUES ('230', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:22:44');
INSERT INTO bzm_access VALUES ('231', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:23:57');
INSERT INTO bzm_access VALUES ('232', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:24:01');
INSERT INTO bzm_access VALUES ('233', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:24:07');
INSERT INTO bzm_access VALUES ('234', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:24:12');
INSERT INTO bzm_access VALUES ('235', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:24:29');
INSERT INTO bzm_access VALUES ('236', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:30:05');
INSERT INTO bzm_access VALUES ('237', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:30:09');
INSERT INTO bzm_access VALUES ('238', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=46', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:30:15');
INSERT INTO bzm_access VALUES ('239', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:34:31');
INSERT INTO bzm_access VALUES ('240', 'http://localhost:1458/Source/Detail.aspx?op=46', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:34:34');
INSERT INTO bzm_access VALUES ('241', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=46', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:38:37');
INSERT INTO bzm_access VALUES ('242', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:38:48');
INSERT INTO bzm_access VALUES ('243', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:39:08');
INSERT INTO bzm_access VALUES ('244', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:39:08');
INSERT INTO bzm_access VALUES ('245', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:39:10');
INSERT INTO bzm_access VALUES ('246', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:39:10');
INSERT INTO bzm_access VALUES ('247', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:42:24');
INSERT INTO bzm_access VALUES ('248', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:42:25');
INSERT INTO bzm_access VALUES ('249', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:42:25');
INSERT INTO bzm_access VALUES ('250', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:42:30');
INSERT INTO bzm_access VALUES ('251', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:42:31');
INSERT INTO bzm_access VALUES ('252', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:42:31');
INSERT INTO bzm_access VALUES ('253', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:42:31');
INSERT INTO bzm_access VALUES ('254', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 10:42:33');
INSERT INTO bzm_access VALUES ('255', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-10 16:49:01');
INSERT INTO bzm_access VALUES ('256', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:33:04');
INSERT INTO bzm_access VALUES ('257', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:33:04');
INSERT INTO bzm_access VALUES ('258', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:33:08');
INSERT INTO bzm_access VALUES ('259', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:33:09');
INSERT INTO bzm_access VALUES ('260', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:33:09');
INSERT INTO bzm_access VALUES ('261', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:33:09');
INSERT INTO bzm_access VALUES ('262', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:33:11');
INSERT INTO bzm_access VALUES ('263', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:38:00');
INSERT INTO bzm_access VALUES ('264', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:38:02');
INSERT INTO bzm_access VALUES ('265', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=47', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:38:10');
INSERT INTO bzm_access VALUES ('266', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:44:36');
INSERT INTO bzm_access VALUES ('267', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:44:38');
INSERT INTO bzm_access VALUES ('268', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=48', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:45:08');
INSERT INTO bzm_access VALUES ('269', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:47:28');
INSERT INTO bzm_access VALUES ('270', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=48', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:47:31');
INSERT INTO bzm_access VALUES ('271', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=48', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:47:33');
INSERT INTO bzm_access VALUES ('272', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:48:59');
INSERT INTO bzm_access VALUES ('273', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:48:59');
INSERT INTO bzm_access VALUES ('274', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:48:59');
INSERT INTO bzm_access VALUES ('275', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:49:03');
INSERT INTO bzm_access VALUES ('276', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:49:06');
INSERT INTO bzm_access VALUES ('277', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:49:06');
INSERT INTO bzm_access VALUES ('278', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:49:08');
INSERT INTO bzm_access VALUES ('279', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:49:08');
INSERT INTO bzm_access VALUES ('280', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:50:05');
INSERT INTO bzm_access VALUES ('281', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:50:05');
INSERT INTO bzm_access VALUES ('282', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:50:07');
INSERT INTO bzm_access VALUES ('283', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:50:07');
INSERT INTO bzm_access VALUES ('284', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:50:07');
INSERT INTO bzm_access VALUES ('285', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:50:08');
INSERT INTO bzm_access VALUES ('286', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:50:10');
INSERT INTO bzm_access VALUES ('287', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:54:10');
INSERT INTO bzm_access VALUES ('288', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:54:13');
INSERT INTO bzm_access VALUES ('289', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:55:43');
INSERT INTO bzm_access VALUES ('290', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-11 09:56:14');
INSERT INTO bzm_access VALUES ('291', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-14 08:33:37');
INSERT INTO bzm_access VALUES ('292', 'http://localhost:8001/Web/Index.aspx', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-01-14 09:31:39');
INSERT INTO bzm_access VALUES ('293', 'http://localhost:8001/Web/Detail.aspx?op=48', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-01-14 09:31:48');
INSERT INTO bzm_access VALUES ('294', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 08:53:56');
INSERT INTO bzm_access VALUES ('295', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 08:54:03');
INSERT INTO bzm_access VALUES ('296', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 08:54:04');
INSERT INTO bzm_access VALUES ('297', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 08:54:06');
INSERT INTO bzm_access VALUES ('298', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 08:54:06');
INSERT INTO bzm_access VALUES ('299', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 08:54:06');
INSERT INTO bzm_access VALUES ('300', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 08:54:07');
INSERT INTO bzm_access VALUES ('301', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 08:54:10');
INSERT INTO bzm_access VALUES ('302', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 09:09:16');
INSERT INTO bzm_access VALUES ('303', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 09:09:22');
INSERT INTO bzm_access VALUES ('304', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 09:10:15');
INSERT INTO bzm_access VALUES ('305', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-15 09:10:15');
INSERT INTO bzm_access VALUES ('306', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 10:53:55');
INSERT INTO bzm_access VALUES ('307', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:11:09');
INSERT INTO bzm_access VALUES ('308', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:25:51');
INSERT INTO bzm_access VALUES ('309', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:25:58');
INSERT INTO bzm_access VALUES ('310', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:25:59');
INSERT INTO bzm_access VALUES ('311', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:26:07');
INSERT INTO bzm_access VALUES ('312', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:26:08');
INSERT INTO bzm_access VALUES ('313', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:26:08');
INSERT INTO bzm_access VALUES ('314', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:26:10');
INSERT INTO bzm_access VALUES ('315', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:26:11');
INSERT INTO bzm_access VALUES ('316', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:33:31');
INSERT INTO bzm_access VALUES ('317', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:33:33');
INSERT INTO bzm_access VALUES ('318', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:33:37');
INSERT INTO bzm_access VALUES ('319', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:33:40');
INSERT INTO bzm_access VALUES ('320', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:33:42');
INSERT INTO bzm_access VALUES ('321', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:33:50');
INSERT INTO bzm_access VALUES ('322', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:34:43');
INSERT INTO bzm_access VALUES ('323', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:34:51');
INSERT INTO bzm_access VALUES ('324', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:35:07');
INSERT INTO bzm_access VALUES ('325', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:36:21');
INSERT INTO bzm_access VALUES ('326', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:37:03');
INSERT INTO bzm_access VALUES ('327', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:37:11');
INSERT INTO bzm_access VALUES ('329', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:37:50');
INSERT INTO bzm_access VALUES ('330', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:42:31');
INSERT INTO bzm_access VALUES ('331', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=51', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:42:40');
INSERT INTO bzm_access VALUES ('332', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:43:05');
INSERT INTO bzm_access VALUES ('333', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 11:43:05');
INSERT INTO bzm_access VALUES ('334', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:49:30');
INSERT INTO bzm_access VALUES ('335', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:49:33');
INSERT INTO bzm_access VALUES ('336', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:49:33');
INSERT INTO bzm_access VALUES ('337', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:49:59');
INSERT INTO bzm_access VALUES ('338', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:50:00');
INSERT INTO bzm_access VALUES ('339', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:50:00');
INSERT INTO bzm_access VALUES ('340', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:50:00');
INSERT INTO bzm_access VALUES ('341', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:50:07');
INSERT INTO bzm_access VALUES ('342', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:56:40');
INSERT INTO bzm_access VALUES ('343', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:56:43');
INSERT INTO bzm_access VALUES ('344', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=52', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:56:51');
INSERT INTO bzm_access VALUES ('345', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:58:09');
INSERT INTO bzm_access VALUES ('346', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-16 14:58:12');
INSERT INTO bzm_access VALUES ('347', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-17 15:50:17');
INSERT INTO bzm_access VALUES ('348', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-17 15:50:17');
INSERT INTO bzm_access VALUES ('349', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-17 15:50:17');
INSERT INTO bzm_access VALUES ('350', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-17 15:50:23');
INSERT INTO bzm_access VALUES ('351', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-17 15:50:23');
INSERT INTO bzm_access VALUES ('352', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-17 15:50:24');
INSERT INTO bzm_access VALUES ('353', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-17 15:50:24');
INSERT INTO bzm_access VALUES ('354', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-17 15:50:26');
INSERT INTO bzm_access VALUES ('355', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 08:15:51');
INSERT INTO bzm_access VALUES ('356', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 08:15:54');
INSERT INTO bzm_access VALUES ('357', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 08:28:14');
INSERT INTO bzm_access VALUES ('358', 'http://localhost:1458/Source/Detail.aspx?op=50', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 08:28:27');
INSERT INTO bzm_access VALUES ('359', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 09:43:50');
INSERT INTO bzm_access VALUES ('360', 'http://localhost:1458/Source/Detail.aspx?op=1', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 09:58:25');
INSERT INTO bzm_access VALUES ('361', 'http://localhost:1458/Source/Detail.aspx?op=40', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 09:58:50');
INSERT INTO bzm_access VALUES ('362', 'http://localhost:1458/Source/Detail.aspx?op=49', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 09:59:32');
INSERT INTO bzm_access VALUES ('363', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 10:06:06');
INSERT INTO bzm_access VALUES ('364', 'http://localhost:1458/Source/Detail.aspx?op=47', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 10:10:53');
INSERT INTO bzm_access VALUES ('365', 'http://localhost:1458/Source/Detail.aspx?op=47', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 10:11:04');
INSERT INTO bzm_access VALUES ('366', 'http://localhost:1458/Source/Detail.aspx?op=50', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 10:11:08');
INSERT INTO bzm_access VALUES ('367', 'http://localhost:1458/Source/Detail.aspx?op=50', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 10:15:57');
INSERT INTO bzm_access VALUES ('368', 'http://localhost:1458/Source/Detail.aspx?op=1', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 10:18:36');
INSERT INTO bzm_access VALUES ('369', 'http://localhost:1458/Source/Detail.aspx?op=47', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 10:18:45');
INSERT INTO bzm_access VALUES ('370', 'http://localhost:1458/Source/Detail.aspx?op=49', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 10:18:50');
INSERT INTO bzm_access VALUES ('371', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 13:11:55');
INSERT INTO bzm_access VALUES ('372', 'http://localhost:1458/Source/Detail.aspx?op=51', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 13:12:42');
INSERT INTO bzm_access VALUES ('373', 'http://localhost:1458/Source/Detail.aspx?op=45', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 13:44:19');
INSERT INTO bzm_access VALUES ('374', 'http://localhost:1458/Source/Detail.aspx?op=47', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 13:45:52');
INSERT INTO bzm_access VALUES ('375', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:02:54');
INSERT INTO bzm_access VALUES ('376', 'http://localhost:1458/Source/Detail.aspx?op=%E9%A1%B9%E7%9B%AE%E6%80%BB%E7%BB%93', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:19:51');
INSERT INTO bzm_access VALUES ('377', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:19:51');
INSERT INTO bzm_access VALUES ('378', 'http://localhost:1458/Source/Detail.aspx?op=%E9%A1%B9%E7%9B%AE%E6%80%BB%E7%BB%93', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:19:58');
INSERT INTO bzm_access VALUES ('379', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:19:58');
INSERT INTO bzm_access VALUES ('380', 'http://localhost:1458/Source/Detail.aspx?op=C', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:20:00');
INSERT INTO bzm_access VALUES ('381', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:20:01');
INSERT INTO bzm_access VALUES ('383', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:20:06');
INSERT INTO bzm_access VALUES ('384', 'http://localhost:1458/Source/Detail.aspx?op=48', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:20:44');
INSERT INTO bzm_access VALUES ('385', 'http://localhost:1458/Source/Detail.aspx?op=1', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:20:48');
INSERT INTO bzm_access VALUES ('386', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:24:11');
INSERT INTO bzm_access VALUES ('387', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:29:51');
INSERT INTO bzm_access VALUES ('388', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:31:11');
INSERT INTO bzm_access VALUES ('389', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:33:19');
INSERT INTO bzm_access VALUES ('390', 'http://localhost:1458/Source/Detail.aspx?op=40', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:33:49');
INSERT INTO bzm_access VALUES ('391', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:35:26');
INSERT INTO bzm_access VALUES ('392', 'http://localhost:1458/Source/Detail.aspx?op=48', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:35:37');
INSERT INTO bzm_access VALUES ('393', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:35:56');
INSERT INTO bzm_access VALUES ('394', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:36:00');
INSERT INTO bzm_access VALUES ('395', 'http://localhost:1458/Source/Web.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:36:12');
INSERT INTO bzm_access VALUES ('396', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:39:32');
INSERT INTO bzm_access VALUES ('397', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:39:38');
INSERT INTO bzm_access VALUES ('398', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=47', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:39:47');
INSERT INTO bzm_access VALUES ('399', 'http://172.24.81.162:8001/WEB/Web.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:39:56');
INSERT INTO bzm_access VALUES ('400', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:39:59');
INSERT INTO bzm_access VALUES ('401', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-18 14:40:12');
INSERT INTO bzm_access VALUES ('402', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 08:31:36');
INSERT INTO bzm_access VALUES ('403', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 08:31:43');
INSERT INTO bzm_access VALUES ('404', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 08:32:07');
INSERT INTO bzm_access VALUES ('405', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 16:37:05');
INSERT INTO bzm_access VALUES ('406', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 16:37:14');
INSERT INTO bzm_access VALUES ('407', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 16:37:14');
INSERT INTO bzm_access VALUES ('408', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 16:37:15');
INSERT INTO bzm_access VALUES ('409', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 16:37:15');
INSERT INTO bzm_access VALUES ('410', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 16:37:47');
INSERT INTO bzm_access VALUES ('411', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 16:49:49');
INSERT INTO bzm_access VALUES ('412', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-21 16:49:52');
INSERT INTO bzm_access VALUES ('413', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:38:17');
INSERT INTO bzm_access VALUES ('414', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:38:28');
INSERT INTO bzm_access VALUES ('415', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:38:29');
INSERT INTO bzm_access VALUES ('416', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:38:29');
INSERT INTO bzm_access VALUES ('417', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:38:30');
INSERT INTO bzm_access VALUES ('418', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:38:45');
INSERT INTO bzm_access VALUES ('419', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:40:34');
INSERT INTO bzm_access VALUES ('420', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:40:46');
INSERT INTO bzm_access VALUES ('421', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:40:47');
INSERT INTO bzm_access VALUES ('422', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:40:51');
INSERT INTO bzm_access VALUES ('423', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:40:52');
INSERT INTO bzm_access VALUES ('424', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:40:52');
INSERT INTO bzm_access VALUES ('425', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:40:53');
INSERT INTO bzm_access VALUES ('426', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:42:59');
INSERT INTO bzm_access VALUES ('427', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:42:59');
INSERT INTO bzm_access VALUES ('428', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:43:00');
INSERT INTO bzm_access VALUES ('429', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:43:52');
INSERT INTO bzm_access VALUES ('430', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:43:53');
INSERT INTO bzm_access VALUES ('431', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:43:54');
INSERT INTO bzm_access VALUES ('432', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:44:00');
INSERT INTO bzm_access VALUES ('433', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:44:00');
INSERT INTO bzm_access VALUES ('434', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:44:01');
INSERT INTO bzm_access VALUES ('435', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:44:39');
INSERT INTO bzm_access VALUES ('436', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:44:40');
INSERT INTO bzm_access VALUES ('437', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:44:40');
INSERT INTO bzm_access VALUES ('438', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:45:08');
INSERT INTO bzm_access VALUES ('439', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:48:46');
INSERT INTO bzm_access VALUES ('440', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:48:47');
INSERT INTO bzm_access VALUES ('441', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:48:47');
INSERT INTO bzm_access VALUES ('442', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:48:48');
INSERT INTO bzm_access VALUES ('443', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:48:49');
INSERT INTO bzm_access VALUES ('444', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:54:33');
INSERT INTO bzm_access VALUES ('445', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:54:33');
INSERT INTO bzm_access VALUES ('446', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:54:34');
INSERT INTO bzm_access VALUES ('447', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:54:36');
INSERT INTO bzm_access VALUES ('448', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:55:10');
INSERT INTO bzm_access VALUES ('449', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:55:17');
INSERT INTO bzm_access VALUES ('450', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:55:17');
INSERT INTO bzm_access VALUES ('451', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:55:17');
INSERT INTO bzm_access VALUES ('452', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:55:19');
INSERT INTO bzm_access VALUES ('453', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:56:58');
INSERT INTO bzm_access VALUES ('454', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:57:00');
INSERT INTO bzm_access VALUES ('455', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:57:22');
INSERT INTO bzm_access VALUES ('456', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:57:27');
INSERT INTO bzm_access VALUES ('457', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:58:06');
INSERT INTO bzm_access VALUES ('458', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:58:09');
INSERT INTO bzm_access VALUES ('459', 'http://localhost:1458/Source/Detail.aspx?op=54', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:58:12');
INSERT INTO bzm_access VALUES ('460', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 15:59:59');
INSERT INTO bzm_access VALUES ('461', 'http://localhost:1458/Source/Detail.aspx?op=53', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-22 16:00:04');
INSERT INTO bzm_access VALUES ('462', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:02:55');
INSERT INTO bzm_access VALUES ('463', 'http://localhost:1458/Source/Detail.aspx?op=54', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:03:03');
INSERT INTO bzm_access VALUES ('464', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:03:17');
INSERT INTO bzm_access VALUES ('465', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:03:18');
INSERT INTO bzm_access VALUES ('466', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:03:22');
INSERT INTO bzm_access VALUES ('467', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:03:22');
INSERT INTO bzm_access VALUES ('468', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:03:23');
INSERT INTO bzm_access VALUES ('469', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:03:23');
INSERT INTO bzm_access VALUES ('470', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:03:25');
INSERT INTO bzm_access VALUES ('471', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:03:51');
INSERT INTO bzm_access VALUES ('472', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:03:54');
INSERT INTO bzm_access VALUES ('473', 'http://localhost:8001/Web/Index.aspx', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-01-23 08:09:31');
INSERT INTO bzm_access VALUES ('474', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:10:29');
INSERT INTO bzm_access VALUES ('475', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 08:10:31');
INSERT INTO bzm_access VALUES ('476', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 10:09:39');
INSERT INTO bzm_access VALUES ('477', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 10:09:46');
INSERT INTO bzm_access VALUES ('478', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 10:09:49');
INSERT INTO bzm_access VALUES ('479', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 10:09:49');
INSERT INTO bzm_access VALUES ('480', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 10:09:49');
INSERT INTO bzm_access VALUES ('481', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 10:09:50');
INSERT INTO bzm_access VALUES ('482', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 10:09:51');
INSERT INTO bzm_access VALUES ('483', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 10:11:13');
INSERT INTO bzm_access VALUES ('484', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 10:11:15');
INSERT INTO bzm_access VALUES ('485', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 11:05:06');
INSERT INTO bzm_access VALUES ('486', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 11:05:13');
INSERT INTO bzm_access VALUES ('487', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 11:05:13');
INSERT INTO bzm_access VALUES ('488', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 11:05:14');
INSERT INTO bzm_access VALUES ('489', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 11:05:14');
INSERT INTO bzm_access VALUES ('490', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 11:05:22');
INSERT INTO bzm_access VALUES ('491', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 11:15:59');
INSERT INTO bzm_access VALUES ('492', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 11:16:02');
INSERT INTO bzm_access VALUES ('493', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=55', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 11:16:12');
INSERT INTO bzm_access VALUES ('494', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=55', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-23 11:19:53');
INSERT INTO bzm_access VALUES ('495', 'http://172.24.81.162:8001/web/Index.aspx', '172.24.71.113', '172.24.71.113', 'AppleMAC-Safari5.0 Desktop', '2013-01-28 07:48:41');
INSERT INTO bzm_access VALUES ('496', 'http://172.24.81.162:8001/web/Detail.aspx?op=55', '172.24.71.113', '172.24.71.113', 'AppleMAC-Safari5.0 Desktop', '2013-01-28 07:49:18');
INSERT INTO bzm_access VALUES ('497', 'http://172.24.81.162:8001/web/Web.aspx', '172.24.71.113', '172.24.71.113', 'AppleMAC-Safari5.0 Desktop', '2013-01-28 07:49:49');
INSERT INTO bzm_access VALUES ('498', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 08:54:13');
INSERT INTO bzm_access VALUES ('499', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 08:54:21');
INSERT INTO bzm_access VALUES ('500', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 08:54:21');
INSERT INTO bzm_access VALUES ('501', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 08:54:22');
INSERT INTO bzm_access VALUES ('502', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 08:54:22');
INSERT INTO bzm_access VALUES ('503', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 08:54:24');
INSERT INTO bzm_access VALUES ('504', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 08:58:20');
INSERT INTO bzm_access VALUES ('505', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 08:58:25');
INSERT INTO bzm_access VALUES ('506', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 08:58:30');
INSERT INTO bzm_access VALUES ('507', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:00:14');
INSERT INTO bzm_access VALUES ('508', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:00:30');
INSERT INTO bzm_access VALUES ('509', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:00:31');
INSERT INTO bzm_access VALUES ('510', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:00:36');
INSERT INTO bzm_access VALUES ('511', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:00:36');
INSERT INTO bzm_access VALUES ('512', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:00:36');
INSERT INTO bzm_access VALUES ('513', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:00:37');
INSERT INTO bzm_access VALUES ('514', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:00:44');
INSERT INTO bzm_access VALUES ('515', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:00:57');
INSERT INTO bzm_access VALUES ('516', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:02:50');
INSERT INTO bzm_access VALUES ('517', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:03:58');
INSERT INTO bzm_access VALUES ('518', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:05:27');
INSERT INTO bzm_access VALUES ('519', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:05:38');
INSERT INTO bzm_access VALUES ('520', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:08:29');
INSERT INTO bzm_access VALUES ('521', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:13:29');
INSERT INTO bzm_access VALUES ('522', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:13:35');
INSERT INTO bzm_access VALUES ('523', 'http://localhost:1458/Source/Detail.aspx?op=57', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:13:50');
INSERT INTO bzm_access VALUES ('524', 'http://localhost:1458/Source/Detail.aspx?op=57', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:14:59');
INSERT INTO bzm_access VALUES ('525', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:15:04');
INSERT INTO bzm_access VALUES ('526', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=57', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:15:09');
INSERT INTO bzm_access VALUES ('527', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:18:22');
INSERT INTO bzm_access VALUES ('528', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:21:09');
INSERT INTO bzm_access VALUES ('529', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:24:30');
INSERT INTO bzm_access VALUES ('530', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:24:34');
INSERT INTO bzm_access VALUES ('531', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=58', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:24:39');
INSERT INTO bzm_access VALUES ('532', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=52', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:25:17');
INSERT INTO bzm_access VALUES ('533', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:25:36');
INSERT INTO bzm_access VALUES ('534', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:25:36');
INSERT INTO bzm_access VALUES ('535', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:25:38');
INSERT INTO bzm_access VALUES ('536', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:25:39');
INSERT INTO bzm_access VALUES ('537', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:25:45');
INSERT INTO bzm_access VALUES ('538', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:25:45');
INSERT INTO bzm_access VALUES ('539', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:25:45');
INSERT INTO bzm_access VALUES ('540', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:25:45');
INSERT INTO bzm_access VALUES ('541', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:30:01');
INSERT INTO bzm_access VALUES ('542', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:30:03');
INSERT INTO bzm_access VALUES ('543', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:43:43');
INSERT INTO bzm_access VALUES ('544', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:43:43');
INSERT INTO bzm_access VALUES ('545', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:43:44');
INSERT INTO bzm_access VALUES ('546', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:43:47');
INSERT INTO bzm_access VALUES ('547', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:50:45');
INSERT INTO bzm_access VALUES ('548', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:50:50');
INSERT INTO bzm_access VALUES ('549', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:50:52');
INSERT INTO bzm_access VALUES ('550', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:51:12');
INSERT INTO bzm_access VALUES ('551', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:51:30');
INSERT INTO bzm_access VALUES ('552', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:52:22');
INSERT INTO bzm_access VALUES ('553', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:52:22');
INSERT INTO bzm_access VALUES ('554', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:52:26');
INSERT INTO bzm_access VALUES ('555', 'http://localhost:1458/Source/Dn9x/Bzm.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:52:26');
INSERT INTO bzm_access VALUES ('556', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:52:26');
INSERT INTO bzm_access VALUES ('557', 'http://localhost:1458/Source/Dn9x/Notes.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:52:27');
INSERT INTO bzm_access VALUES ('558', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:52:28');
INSERT INTO bzm_access VALUES ('559', 'http://localhost:1458/Source/Dn9x/Post.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:52:47');
INSERT INTO bzm_access VALUES ('560', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:58:26');
INSERT INTO bzm_access VALUES ('561', 'http://localhost:1458/Source/Detail.aspx?op=59', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:58:40');
INSERT INTO bzm_access VALUES ('562', 'http://localhost:1458/Source/Dn9x/Left.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:58:46');
INSERT INTO bzm_access VALUES ('563', 'http://localhost:1458/Source/Dn9x/Enter.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 09:58:46');
INSERT INTO bzm_access VALUES ('564', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 13:21:01');
INSERT INTO bzm_access VALUES ('565', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 13:21:47');
INSERT INTO bzm_access VALUES ('566', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 13:24:05');
INSERT INTO bzm_access VALUES ('567', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 13:25:37');
INSERT INTO bzm_access VALUES ('568', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 13:26:54');
INSERT INTO bzm_access VALUES ('569', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 13:27:03');
INSERT INTO bzm_access VALUES ('570', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 14:29:08');
INSERT INTO bzm_access VALUES ('571', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 14:29:16');
INSERT INTO bzm_access VALUES ('572', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 14:29:16');
INSERT INTO bzm_access VALUES ('573', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 14:29:16');
INSERT INTO bzm_access VALUES ('574', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 14:29:17');
INSERT INTO bzm_access VALUES ('575', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 14:29:21');
INSERT INTO bzm_access VALUES ('576', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-30 14:29:42');
INSERT INTO bzm_access VALUES ('577', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-01-31 08:08:14');
INSERT INTO bzm_access VALUES ('578', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:13:37');
INSERT INTO bzm_access VALUES ('579', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:13:43');
INSERT INTO bzm_access VALUES ('580', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:13:44');
INSERT INTO bzm_access VALUES ('581', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:13:44');
INSERT INTO bzm_access VALUES ('582', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:13:44');
INSERT INTO bzm_access VALUES ('583', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:13:46');
INSERT INTO bzm_access VALUES ('584', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:19:37');
INSERT INTO bzm_access VALUES ('585', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:19:40');
INSERT INTO bzm_access VALUES ('586', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:26:35');
INSERT INTO bzm_access VALUES ('587', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:26:37');
INSERT INTO bzm_access VALUES ('588', 'http://172.24.81.162:8001/WEB/Detail.aspx?op=60', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:26:44');
INSERT INTO bzm_access VALUES ('589', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:26:53');
INSERT INTO bzm_access VALUES ('590', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-01 10:26:54');
INSERT INTO bzm_access VALUES ('591', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-16 07:57:35');
INSERT INTO bzm_access VALUES ('592', 'http://localhost:8001/Web/Index.aspx', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-02-17 15:47:47');
INSERT INTO bzm_access VALUES ('593', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-17 15:54:07');
INSERT INTO bzm_access VALUES ('594', 'http://172.24.81.162:8001/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-17 15:54:10');
INSERT INTO bzm_access VALUES ('595', 'http://localhost:8001/WEB/Index.aspx', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-02-17 15:57:13');
INSERT INTO bzm_access VALUES ('596', 'http://172.24.81.179/web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-17 15:58:21');
INSERT INTO bzm_access VALUES ('597', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 09:41:00');
INSERT INTO bzm_access VALUES ('598', 'http://172.24.81.162:8001/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 09:41:09');
INSERT INTO bzm_access VALUES ('599', 'http://172.24.81.162:8001/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 09:41:09');
INSERT INTO bzm_access VALUES ('600', 'http://172.24.81.162:8001/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 09:41:09');
INSERT INTO bzm_access VALUES ('601', 'http://172.24.81.162:8001/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 09:41:10');
INSERT INTO bzm_access VALUES ('602', 'http://172.24.81.162:8001/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 09:41:13');
INSERT INTO bzm_access VALUES ('603', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:14:44');
INSERT INTO bzm_access VALUES ('604', 'http://172.24.81.179/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:14:44');
INSERT INTO bzm_access VALUES ('605', 'http://localhost/WEB/Index.aspx', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-02-19 10:15:31');
INSERT INTO bzm_access VALUES ('606', 'http://172.24.81.179/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:15:49');
INSERT INTO bzm_access VALUES ('607', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:15:49');
INSERT INTO bzm_access VALUES ('608', 'http://172.24.81.179/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:15:49');
INSERT INTO bzm_access VALUES ('609', 'http://172.24.81.179/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:15:50');
INSERT INTO bzm_access VALUES ('610', 'http://172.24.81.179/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:15:52');
INSERT INTO bzm_access VALUES ('611', 'http://172.24.81.179/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:16');
INSERT INTO bzm_access VALUES ('612', 'http://172.24.81.179/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:16');
INSERT INTO bzm_access VALUES ('613', 'http://172.24.81.179/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:22');
INSERT INTO bzm_access VALUES ('614', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:22');
INSERT INTO bzm_access VALUES ('615', 'http://172.24.81.179/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:22');
INSERT INTO bzm_access VALUES ('616', 'http://172.24.81.179/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:22');
INSERT INTO bzm_access VALUES ('617', 'http://172.24.81.179/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:24');
INSERT INTO bzm_access VALUES ('618', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:26');
INSERT INTO bzm_access VALUES ('619', 'http://172.24.81.179/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:26');
INSERT INTO bzm_access VALUES ('620', 'http://172.24.81.179/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:26');
INSERT INTO bzm_access VALUES ('621', 'http://172.24.81.179/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:27');
INSERT INTO bzm_access VALUES ('622', 'http://172.24.81.179/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:42:47');
INSERT INTO bzm_access VALUES ('623', 'http://172.24.81.179/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:44:22');
INSERT INTO bzm_access VALUES ('624', 'http://172.24.81.179/WEB/Detail.aspx?op=61', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:44:27');
INSERT INTO bzm_access VALUES ('625', 'http://172.24.81.179/WEB/Detail.aspx?op=61', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:48:06');
INSERT INTO bzm_access VALUES ('626', 'http://172.24.81.179/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-19 10:48:23');
INSERT INTO bzm_access VALUES ('627', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-20 10:54:36');
INSERT INTO bzm_access VALUES ('628', 'http://172.24.81.179/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-20 10:54:37');
INSERT INTO bzm_access VALUES ('629', 'http://172.24.81.162:8001/Web/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 08:38:47');
INSERT INTO bzm_access VALUES ('630', 'http://172.24.81.162:8001/Web/Detail.aspx?op=61', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 08:39:03');
INSERT INTO bzm_access VALUES ('631', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 11:30:14');
INSERT INTO bzm_access VALUES ('632', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 11:30:35');
INSERT INTO bzm_access VALUES ('633', 'http://172.24.81.179/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 11:30:35');
INSERT INTO bzm_access VALUES ('634', 'http://172.24.81.179/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 11:30:45');
INSERT INTO bzm_access VALUES ('635', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 11:32:48');
INSERT INTO bzm_access VALUES ('636', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 11:42:52');
INSERT INTO bzm_access VALUES ('637', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 11:45:36');
INSERT INTO bzm_access VALUES ('638', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 11:45:57');
INSERT INTO bzm_access VALUES ('639', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 11:46:10');
INSERT INTO bzm_access VALUES ('640', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 11:46:32');
INSERT INTO bzm_access VALUES ('641', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 12:33:01');
INSERT INTO bzm_access VALUES ('642', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 12:36:23');
INSERT INTO bzm_access VALUES ('643', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 12:46:50');
INSERT INTO bzm_access VALUES ('644', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 15:17:30');
INSERT INTO bzm_access VALUES ('645', 'http://172.24.81.179/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-21 15:17:31');
INSERT INTO bzm_access VALUES ('646', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-23 08:47:15');
INSERT INTO bzm_access VALUES ('647', 'http://172.24.81.179/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-23 08:47:15');
INSERT INTO bzm_access VALUES ('648', 'http://172.24.81.179/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-23 08:47:21');
INSERT INTO bzm_access VALUES ('649', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-23 14:50:25');
INSERT INTO bzm_access VALUES ('650', 'http://172.24.81.179/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-23 14:50:27');
INSERT INTO bzm_access VALUES ('651', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-27 12:29:00');
INSERT INTO bzm_access VALUES ('652', 'http://172.24.81.179/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-27 12:29:00');
INSERT INTO bzm_access VALUES ('653', 'http://172.24.81.179/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-02-27 12:29:07');
INSERT INTO bzm_access VALUES ('654', 'http://172.24.81.179/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-01 11:38:32');
INSERT INTO bzm_access VALUES ('655', 'http://172.24.81.179/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-01 11:38:34');
INSERT INTO bzm_access VALUES ('656', 'http://172.24.81.179/WEB/Detail.aspx?op=55', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-01 11:39:04');
INSERT INTO bzm_access VALUES ('657', 'http://localhost/WEB/Index.aspx', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-03-06 16:29:50');
INSERT INTO bzm_access VALUES ('658', 'http://localhost/WEB/Index.aspx', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-03-06 16:30:17');
INSERT INTO bzm_access VALUES ('659', 'http://172.24.81.188/WEB/Index.aspx', '172.24.81.188', '172.24.81.188', 'AppleMAC-Safari5.0 Desktop', '2013-03-06 16:46:58');
INSERT INTO bzm_access VALUES ('660', 'http://172.24.81.188/WEB/Index.aspx', '172.24.81.188', '172.24.81.188', 'IE6.0 IE6', '2013-03-06 16:47:09');
INSERT INTO bzm_access VALUES ('661', 'http://172.24.81.188/WEB/Index.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-06 16:47:38');
INSERT INTO bzm_access VALUES ('662', 'http://172.24.81.188/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-06 16:47:59');
INSERT INTO bzm_access VALUES ('663', 'http://172.24.81.188/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-06 16:47:59');
INSERT INTO bzm_access VALUES ('664', 'http://172.24.81.188/WEB/Detail.aspx?op=61', '172.24.81.188', '172.24.81.188', 'AppleMAC-Safari5.0 Desktop', '2013-03-06 16:49:30');
INSERT INTO bzm_access VALUES ('665', 'http://172.24.81.188/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-07 17:16:55');
INSERT INTO bzm_access VALUES ('666', 'http://172.24.81.188/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-07 17:16:55');
INSERT INTO bzm_access VALUES ('667', 'http://172.24.81.188/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-07 17:17:06');
INSERT INTO bzm_access VALUES ('668', 'http://172.24.81.188/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-07 17:17:06');
INSERT INTO bzm_access VALUES ('669', 'http://172.24.81.188/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-07 17:17:06');
INSERT INTO bzm_access VALUES ('670', 'http://172.24.81.188/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-07 17:17:07');
INSERT INTO bzm_access VALUES ('671', 'http://172.24.81.188/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-07 17:17:10');
INSERT INTO bzm_access VALUES ('672', 'http://172.24.81.188/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 08:02:04');
INSERT INTO bzm_access VALUES ('673', 'http://172.24.81.188/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 08:02:04');
INSERT INTO bzm_access VALUES ('674', 'http://172.24.81.188/WEB/Dn9x/Enter.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 08:02:13');
INSERT INTO bzm_access VALUES ('675', 'http://172.24.81.188/WEB/Dn9x/Bzm.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 08:02:14');
INSERT INTO bzm_access VALUES ('676', 'http://172.24.81.188/WEB/Dn9x/Left.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 08:02:14');
INSERT INTO bzm_access VALUES ('677', 'http://172.24.81.188/WEB/Dn9x/Notes.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 08:02:15');
INSERT INTO bzm_access VALUES ('678', 'http://172.24.81.188/WEB/Dn9x/Post.aspx', '172.24.80.52', '172.24.80.52', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 08:02:17');
INSERT INTO bzm_access VALUES ('679', 'http://172.24.81.188/WEB/Dn9x/Bzm.aspx', '172.24.81.188', '172.24.81.188', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 09:50:36');
INSERT INTO bzm_access VALUES ('680', 'http://172.24.81.188/WEB/Index.aspx', '172.24.81.188', '172.24.81.188', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 09:50:36');
INSERT INTO bzm_access VALUES ('681', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-03-08 10:41:31');
INSERT INTO bzm_access VALUES ('682', 'http://172.24.81.188/WEB/Index.aspx', '172.24.81.188', '172.24.81.188', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 12:30:33');
INSERT INTO bzm_access VALUES ('683', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'IE6.0 IE6', '2013-03-08 12:31:55');
INSERT INTO bzm_access VALUES ('684', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 12:32:46');
INSERT INTO bzm_access VALUES ('685', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 12:35:39');
INSERT INTO bzm_access VALUES ('686', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 13:59:28');
INSERT INTO bzm_access VALUES ('687', 'http://localhost:1458/Source/Detail.aspx?op=60', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 13:59:43');
INSERT INTO bzm_access VALUES ('688', 'http://localhost:1458/Source/Detail.aspx?op=60', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-03-08 14:00:02');
INSERT INTO bzm_access VALUES ('689', 'http://localhost:1458/Source/Index.aspx', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-03-09 08:38:01');
INSERT INTO bzm_access VALUES ('690', 'http://localhost:1458/Source/Detail.aspx?op=60', '127.0.0.1', '127.0.0.1', 'AppleMAC-Safari5.0 Desktop', '2013-03-09 08:38:28');

-- ----------------------------
-- Table structure for `bzm_admin`
-- ----------------------------
DROP TABLE IF EXISTS `bzm_admin`;
CREATE TABLE `bzm_admin` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键自增',
  `admin_Name` varchar(255) NOT NULL COMMENT '管理员名称',
  `admin_Pswd` varchar(255) NOT NULL COMMENT '管理员密码',
  `admin_Head` varchar(255) NOT NULL COMMENT '管理员头像',
  `admin_Sex` varchar(10) NOT NULL COMMENT '管理员性别',
  `admin_Birth` varchar(100) NOT NULL COMMENT '管理员出生日期',
  `admin_Email` varchar(200) NOT NULL COMMENT '管理员邮箱',
  `admin_QQ` varchar(50) NOT NULL COMMENT '管理员QQ',
  `admin_Tel` varchar(50) NOT NULL COMMENT '管理员电话',
  `admin_Motto` varchar(255) NOT NULL COMMENT '管理员座右铭',
  `remark` varchar(255) default NULL COMMENT '备注',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `PK_admin_ID` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bzm_admin
-- ----------------------------
INSERT INTO bzm_admin VALUES ('1', 'Dn9x', '4C745565B4E32FB5FA5E3BC7AA57ADC3', 'asdfe', '男', '22', 'xiuxu123@live.cn', '123', '123', '没有人能让我输，除非我不想赢', '');

-- ----------------------------
-- Table structure for `bzm_article`
-- ----------------------------
DROP TABLE IF EXISTS `bzm_article`;
CREATE TABLE `bzm_article` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键ID',
  `article_Title` varchar(255) NOT NULL COMMENT '标题',
  `article_Content` longtext NOT NULL COMMENT '内容',
  `article_Date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP COMMENT '日期',
  `article_TagId` int(11) NOT NULL COMMENT 'TagId',
  `article_access` int(20) NOT NULL default '0' COMMENT '访问量Id',
  `article_AdminId` int(11) NOT NULL COMMENT '作者ID',
  `remark` varchar(255) default NULL COMMENT '备注',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `article_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bzm_article
-- ----------------------------
INSERT INTO bzm_article VALUES ('1', '项目总结', '<p>&nbsp; &nbsp; &nbsp; &nbsp;今天终于做完了这个项目，编码的时间并不久大概才4天左右吧，但是后期的调试和运行却花费了我很多的时间，今天在这里和大家讲讲我做的自己的这个小网站的心得吧！！！</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;刚开始的时候我一直在想我要不要用SSH，可是后来还是用了，虽然有点小题大作的感觉但是想到后期的扩展和维护我还是用了SSH,我是一个刚学SSH没多久的一个新人所以也想试试自己是否可以做出来，在整个编码的过程中我觉得最需要的是耐心，刚开始的时候有点心急导致我漏写了一个括号结果花了我两天的时间才找到这个地方，所以在这里也和大家说一下编码是一个有耐心和耐性的活！</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; 说说网站吧，我的这个应用程序目前开放的就两个板块，一个是看站长发表的文章和心得还有一个是给站长留言的板块，你可能会问为什么不做会员的功能和回复的功能，我觉得没有必要（目前觉得）,一方面我的空间比较小，还有我只是把一些心得分享出来给那些还在迷茫中的人看看而已也或许并不能帮助他们，我是一个新人所以请前辈们就别拍我了，而且我的一些心得对于前辈们也是没有什么作用，我只是想给那些新人看看，至于能不能帮助他们那就看自己的体会了，</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;如果您对站长有意见和建议都可以给站长留言，虽然站长无法回复你们，但是好的意见和建议站长是会接受和改进的。</p>', '2013-01-18 14:19:26', '1', '1', '1', '');
INSERT INTO bzm_article VALUES ('39', '解决通过IP连接MySQL不允许', '<strong>\r\n<p style=\"font-family:\'Times New Roman\';font-size:14px;background-color:#F9FCFE;\">\r\n	有时候在连接数据库时，会出现host \'172.24.80.52\'&nbsp;is not allowed to connect to this mysql server 的错误报告，用root登入还是报这个错。\r\n</p>\r\n<p style=\"font-family:\'Times New Roman\';font-size:14px;background-color:#F9FCFE;\">\r\n	出现这个错误说明服务器不让你登入，必需新建一个账户，然后把你的库的权限赋给这个用户\r\n</p>\r\n<span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">假如Database:Test&nbsp;</span><br />\r\n<span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">创建用户:Jacky 密码: pwd&nbsp;</span><br />\r\n<span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;color:#0000FF;\">CREATE</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">&nbsp;</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\"></span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\"></span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;color:#FF00FF;\">USER</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">&nbsp;bzmdn9x&nbsp;</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">IDENTIFIED&nbsp;</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\"></span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;color:#0000FF;\">BY</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">&nbsp;</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\"></span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\"></span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;color:#FF0000;\">\'</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">pwd</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;color:#FF0000;\">\'</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">&nbsp;</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">;</span><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">进入Mysql&nbsp;</span><br />\r\n<span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">&gt;grant insert,delete,update,select,drop,create on Test.* to <strong><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">bzmdn9x</span></strong>@\"%\" identified by \"pwd\";&nbsp;&nbsp;&nbsp;&nbsp;</span><br />\r\n<br />\r\n</strong>\r\n<p>\r\n	<strong><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">ok，问题解决。</span></strong>\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\"><br />\r\n</span></strong>\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-family:\'Times New Roman\';font-size:14px;line-height:22px;background-color:#F9FCFE;\">文章参考:<a href=\"http://www.codesky.net/article/200907/119346.html\">http://www.codesky.net/article/200907/119346.html</a></span></strong>\r\n</p>', '2013-01-18 14:19:29', '5', '1', '1', null);
INSERT INTO bzm_article VALUES ('40', '控制层高度自动/最小', '<p>\r\n	为了控制层的高度，但是又想它有一个最小的高度，还要兼容很多浏览器：\r\n</p>\r\n<p>\r\n<pre class=\"prettyprint lang-css\">#main\r\n{\r\n	height:auto !important;\r\n	height:900px;\r\n	min-height:900px;\r\n}</pre>\r\n</p>\r\n<p>\r\n	参考:<a href=\"http://www.16sucai.com/2011/05/7460.html\">http://www.16sucai.com/2011/05/7460.html</a>\r\n</p>', '2013-01-18 14:19:31', '3', '1', '1', null);
INSERT INTO bzm_article VALUES ('45', '具有潜在危险 Request.Form 的值已从用户端..', '<p>\r\n	有时候在页面上提交数据到后会出现“<span style=\"color:#337FE5;\">具有潜在危险 Request.Form 的值已从用户端 (editor_id=\"&lt;p&gt; SDFSDF &lt;/p&gt; ...\")</span>”错误信息，是页面验证不通过，可以使用下面方法：\r\n</p>\r\n<p>\r\n	1.\r\n</p>\r\n<p>\r\n	<span style=\"color:#337FE5;\">&lt;%@ Page Language=\"C#\" AutoEventWireup=\"true\" <span style=\"color:#E53333;\">ValidateRequest=\"false\"</span> CodeFile=\"Post.aspx.cs\" Inherits=\"XXX_Post\" %&gt;</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	2.配置文件\r\n</p>\r\n<p>\r\n	&nbsp; <span style=\"color:#337FE5;\">&nbsp;&lt;system.web&gt;</span><br />\r\n<span style=\"color:#337FE5;\">&nbsp; &nbsp; &nbsp; <span style=\"color:#E53333;\">&lt;pages validateRequest=\"false\"&gt;&lt;/pages&gt;</span></span><br />\r\n<span style=\"color:#337FE5;\">&nbsp; &nbsp; &lt;/system.web&gt;</span> \r\n</p>\r\n<p>\r\n	当然用哪种的要看个人了，第一个作用于一个页面，后面作用于此配置文件下的所有文件及文件夹里面的文件\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	参考：<a href=\"http://blog.sina.com.cn/s/blog_79a08b290100u283.html\">http://blog.sina.com.cn/s/blog_79a08b290100u283.html</a>\r\n</p>', '2013-01-08 10:29:52', '2', '1', '1', '');
INSERT INTO bzm_article VALUES ('46', '解除Jquery导致的多次绑定', '<p>\r\n	在Jquery中多次调用某个绑定的方法，结果这个绑定导致某个方法被多次调用，因为Jquery中的绑定是累加而不是替换，所以我们可以在绑定之前先解除绑定，如下方法被多次调用：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	//處理有制程選項的料號<br />\r\nfunction checkH(str, type, obj){<br />\r\n&nbsp; &nbsp; //判断传入的值是否包含指定数据<br />\r\n&nbsp; &nbsp; if(str.indexOf(\"-A*&amp;amp;\") &amp;gt; 0 || str.indexOf(\"-C*&amp;amp;\") &amp;gt; 0){<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; //判断是否处理，2不用<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; if(type == \"1\"){<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; //得到这个tr对象<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; var tr = $(obj).parent().parent().children(\"td\");<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; //获取第二个td的索引<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; var index = tr.length-2;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; //获取该位置的值<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; var cishu = $(obj).parent().parent().children(\"td:eq(\"+index+\")\").children().val()<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; //判断该位置的值是否为空<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if(cishu.length == 0){<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; //先解除绑定，因为此方法多次调用<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color:#337FE5;\">$(obj).parent().parent().children(\"td:eq(\"+index+\")\").children().unbind(\"blur\");</span><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; //重新绑定<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $(obj).parent().parent().children(\"td:eq(\"+index+\")\").children()<span style=\"color:#337FE5;\">.bind</span>(\"blur\", function() {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; var o1 = $(this).parent().parent().children(\"td:eq(1)\").children(\":eq(0)\").val();<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; var o2 = $(this).parent().parent().children(\"td:eq(1)\").children(\":eq(1)\").val();<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $(this).parent().parent().children(\"td:eq(1)\").children(\":eq(0)\").val(o1 + $(this).val());<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $(this).parent().parent().children(\"td:eq(1)\").children(\":eq(1)\").val(o2 + $(this).val());<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; });<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; }<br />\r\n&nbsp; &nbsp; }<br />\r\n}<br />\r\n</p>', '2013-01-10 10:38:31', '4', '1', '1', '');
INSERT INTO bzm_article VALUES ('47', 'C#同时给多个下拉框赋值', '<p>\r\n	在C#项目中要同时给两个或者多个下拉框赋值，而且同时赋多个连续的值，如果一个一个的来就有点麻烦，所以写了个简单的方法是用:\r\n</p>\r\n<pre class=\"prettyprint lang-cs\">    /// &lt;summary&gt;\r\n    /// 初始化小時和分鐘\r\n    /// &lt;/summary&gt;\r\n    /// &lt;param name=\"name\"&gt;可以同時初始化多個&lt;/param&gt;\r\n    private void InitTime(int count, params DropDownList[] name)\r\n    {\r\n        for (int j = 0; j &lt; name.Length; j++)\r\n        {\r\n            for (int i = 0; i &lt; count; i++)\r\n            {\r\n                if (i &lt; 10)\r\n                {\r\n                    string h = \"0\" + i;\r\n\r\n                    name[j].Items.Insert(i, h);\r\n                }\r\n                else\r\n                {\r\n                    name[j].Items.Insert(i, i.ToString());\r\n                }\r\n            }\r\n        }\r\n    }</pre>\r\n<p>\r\n	2.调用的时候传直接传下拉框的对象：\r\n</p>\r\n<pre class=\"prettyprint lang-cs\">    //初始化小時和分鐘\r\n    InitTime(24, new DropDownList[2] { this.Ddl_StartHour, this.Ddl_EndHour });</pre>\r\n<p>\r\n	<br />\r\n</p>', '2013-01-11 09:38:00', '2', '1', '1', '');
INSERT INTO bzm_article VALUES ('48', 'C#动态产生表格', '<p>\r\n	在C#项目中需要动态产生一个表格，首先考虑到是用拼接的方式来产生一个表格，可是后面考虑之后还是是用C#提供的动态生成表格，这样比较容易满足我的需求，而且这样产生的元素也可动态的绑定事件：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint lang-cs\">    /// &lt;summary&gt;\r\n    /// 初始化屬性選項\r\n    /// &lt;/summary&gt;\r\n    private void InitAttr()\r\n    {\r\n        //實例化\r\n        BidBll bb = new BidBll();\r\n\r\n        //得到選項結果\r\n        DataTable dt = bb.GetAttrSetByAppCode(Common.GetInfo(User.Identity.Name, UserKey.FACTNO), SystemSetting.App_Code, \"0\");\r\n\r\n        //創建表格\r\n        HtmlTable ht = new HtmlTable();\r\n        ht.Width = \"100%\";\r\n        ht.Border = 0;\r\n\r\n        //創建列\r\n        HtmlTableRow htr = new HtmlTableRow();\r\n\r\n        //創建單元格\r\n        HtmlTableCell htc = new HtmlTableCell();\r\n        htc.Align = \"center\";\r\n\r\n        //創建select\r\n        HtmlSelect hs = new HtmlSelect();\r\n        hs.ID = \"Sel_BidType\";\r\n        hs.Name = \"Sel_BidType\";\r\n        hs.Attributes.Add(\"onchange\", \"CheckBidType(this)\");\r\n        hs.Items.Add(new ListItem(\"原物料\", \"0\"));\r\n        hs.Items.Add(new ListItem(\"總工務\", \"1\"));\r\n\r\n        //放到單元格里\r\n        htc.Controls.Add(hs);\r\n\r\n        //放到tr中\r\n        htr.Controls.Add(htc);\r\n\r\n        //判斷是否有數據\r\n        if (dt.Rows.Count &gt; 0)\r\n        {\r\n            //循環顯示\r\n            for (int i = 0; i &lt; dt.Rows.Count; i++)\r\n            {\r\n                //創建單元格\r\n                HtmlTableCell htc1 = new HtmlTableCell();\r\n                htc1.Align = \"right\";\r\n\r\n                if (dt.Rows[i][\"value\"].ToString() == \"1\")\r\n                {\r\n                    HtmlInputCheckBox chb = new HtmlInputCheckBox();\r\n                    chb.Value = \"1\";\r\n                    chb.ID = dt.Rows[i][\"WEB_NAME\"].ToString();\r\n                    chb.Name = dt.Rows[i][\"WEB_NAME\"].ToString();\r\n                    chb.Checked = true;\r\n\r\n                    htc1.Controls.Add(chb);\r\n                }\r\n                else\r\n                {\r\n                    HtmlInputCheckBox chb = new HtmlInputCheckBox();\r\n                    chb.Value = \"1\";\r\n                    chb.ID = dt.Rows[i][\"WEB_NAME\"].ToString();\r\n                    chb.Name = dt.Rows[i][\"WEB_NAME\"].ToString();\r\n\r\n                    htc1.Controls.Add(chb);\r\n                }\r\n\r\n                htr.Controls.Add(htc1);\r\n\r\n                //創建單元格--顯示名稱\r\n                HtmlTableCell htc2 = new HtmlTableCell();\r\n                htc2.Align = \"left\";\r\n                htc2.InnerHtml = dt.Rows[i][\"NAME\"].ToString();\r\n\r\n                //給名稱\r\n                htr.Controls.Add(htc2);\r\n            }\r\n        }\r\n\r\n        //添加到表格里\r\n        ht.Controls.Add(htr);\r\n\r\n        //放到層里\r\n        this.Div_Attrs.Controls.Add(ht);\r\n    }</pre>\r\n<p>\r\n	最后的Div_Attrs是在前端已经存在的DIV\r\n</p>', '2013-01-11 09:44:37', '2', '1', '1', '');
INSERT INTO bzm_article VALUES ('49', '强制结束被占用的端口', '<p>\r\n	有时候某些端口会无故的被占用，而且这个时候我们又需要使用这个端口，我们也可以修改我们要使用的端口，但是有时候我们需要结束这个端口：\r\n</p>\r\n<p>\r\n	<span style=\"color:#337FE5;\">netstat -ano</span><span style=\"color:#337FE5;\"></span> \r\n</p>\r\n<p>\r\n	这个命令可以显示所有的端口使用情况，然后找到自己想要解决的那个端口的PID,\r\n</p>\r\n<p>\r\n	<span style=\"color:#337FE5;\">taskkill -pid XXXX -f</span><span style=\"color:#337FE5;\"></span> \r\n</p>\r\n然后通过这个命令强制杀掉这个进程 &nbsp;XXXX指端口号', '2013-01-11 09:55:33', '7', '1', '1', '');
INSERT INTO bzm_article VALUES ('50', '使用临时密码的思路', '<p>\r\n	有时候我们的系统中有会员功能或者有大量的用户登录，而这些用户的密码都是加密处理过的，而这时我们需要通过某个会员的账户号进入系统或者怎样，我们可以做个临时密码的功能，比如说这个临时密码的有效时间是1天或者1个小时等，不管是在后台实现还是在前端程序实现，可以如下思路：\r\n</p>\r\n<p>\r\n	1.首先获取此用户的某一个绝对唯一的属性，比如UID(数字型)，\r\n</p>\r\n<p>\r\n	2.根据这个UID乘以当前今天的日期的天数，这样你就会获取一个数字型的字串，这个字串就可以当做临时密码。\r\n</p>\r\n<p>\r\n	3.在用户使用这个临时密码登陆的时候会先用这个密码验证，如果不通过，就在调用产生临时密码的方法或函数生成一个密码和用户传递过来的作比较，符合就放行。\r\n</p>\r\n<p>\r\n	4.这样的密码就可以保持一天的时效性。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	当然这个只是很简单的思路，实际中在实现的时候肯定要比这个复杂很多，但是不管多么复杂的内容都是有简单拼凑在一起的，同样也可以实现一个小时时效性的临时密码，\r\n</p>', '2013-01-15 09:09:16', '7', '1', '1', '');
INSERT INTO bzm_article VALUES ('51', 'A标签调用邮件发送', '<p>\r\n	在给企业内部我们经常会使用邮箱作为联系工具，有些是使用Outlook,有些是使用Lotus,而我们在开发的时候经常会在系统中留下服务人员的信息，比如：\r\n</p>\r\n<p>\r\n	<span style=\"color:#999999;\">資訊服務</span> <a href=\"mailto:xiaolong.qi@gh.gbmgroup.com?cc=web.service@gh.gbmgroup.com&amp;subject=About%20WorkFlow\"><span style=\"color:#337FE5;\">Dn9x</span></a><span class=\"wd\" style=\"color:#999999;\">☏</span>&nbsp;\r\n</p>\r\n<p>\r\n	这个时候我们希望点击\"<span style=\"color:#337FE5;\">Dn9x</span>\"的时候自动跳到给他发送邮件，并且可以设置好主题什么的，我们可以使用\"&lt;A&gt;\"标签然后给它带一定的参数：\r\n</p>\r\n<p>\r\n	<span style=\"color:#337FE5;\">&lt;a href=\"mailto:dn9x@gh.gbmgroup.com?cc=dn9x1@gh.gbmgroup.com&amp;subject=主题名称\"&gt;Dn9x&lt;a/&gt;</span> \r\n</p>\r\n这样就可以实现', '2013-01-18 08:17:58', '8', '1', '1', '');
INSERT INTO bzm_article VALUES ('52', '实现网页头部信息闪动', '<p>\r\n	有些聊天的网站，当我们有未读信息的时候网页的头部会闪动提示我们有未读信息，今天想了一下通过不断改变title的innerHtml来实现，这里我使用了Jquery，使用这个只是为了方便，下面是我的代码，\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-js\">    &lt;script type=\"text/javascript\"&gt;\r\n        function Show(){\r\n            var title = $(\"title\").html();\r\n            \r\n            if(title == \"【你有未读信息】\"){\r\n                $(\"title\").html(\"【　　　　　　　　　　　】\");\r\n            }else{\r\n                $(\"title\").html(\"【你有未读信息】\")\r\n            }\r\n        }\r\n        \r\n        setInterval(\"Show()\", 1000);//1秒换一次\r\n    &lt;/script&gt;</pre>\r\n</span> \r\n<p>\r\n	默认已经导入Jquery的库了\r\n</p>', '2013-01-16 14:57:52', '4', '1', '1', '');
INSERT INTO bzm_article VALUES ('53', 'C#中使用ref参数', '<p>\r\n	在C#中有时候需要某个方法返回值，但是需要返回多个值，可是一般的方法只能返回一个值，这个时候可以用ref参数：\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-cs\">    private string GetMsg(string op, ref string op2)\r\n    { \r\n        //設置ref參數\r\n        op2 = \"您好\";\r\n\r\n        return \"我是\" + op;\r\n    }</pre>\r\n</span> \r\n<p>\r\n	这个方法会返回一个string类型的值，通过ref参数也会获取一个string类型的值，可以这样使用：\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-cs\">    private void Init()\r\n    {\r\n        string op = \"\";\r\n\r\n        string result = GetMsg(\"王明\", op);\r\n    }</pre>\r\n</span> \r\n<p>\r\n	ref在使用的时候要提前初始化，还有一个类似的out传参，方式一样，但是可以不用提前初始化，但是返回的时候out参数一定要赋值，都是引用传递！\r\n</p>', '2013-01-21 16:49:49', '2', '1', '1', '');
INSERT INTO bzm_article VALUES ('54', 'C# 文件和字节流的转换', '<p style=\"color:#454545;font-family:Tahoma, Helvetica, Arial, STHeiti;font-size:14px;background-color:#FFFFFF;\">\r\n	1、<strong>读取文件，并转换为字节流</strong>&nbsp;\r\n</p>\r\n<p style=\"color:#454545;font-family:Tahoma, Helvetica, Arial, STHeiti;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#337FE5;\">FileStream fs = new FileStream(filename,FileMode.Open, FileAccess.Read);&nbsp;</span><br />\r\n<span style=\"color:#337FE5;\">byte[] infbytes = new byte[(int)fs.Length];&nbsp;</span><br />\r\n<span style=\"color:#337FE5;\">fs.Read(infbytes, 0, infbytes.Length);&nbsp;</span><br />\r\n<span style=\"color:#337FE5;\">fs.Close();&nbsp;</span><br />\r\n<span style=\"color:#337FE5;\">return infbytes;</span> \r\n</p>\r\n<p style=\"color:#454545;font-family:Tahoma, Helvetica, Arial, STHeiti;font-size:14px;background-color:#FFFFFF;\">\r\n	<br />\r\n2、<strong>将字节流写入文件</strong>&nbsp;\r\n</p>\r\n<p style=\"color:#454545;font-family:Tahoma, Helvetica, Arial, STHeiti;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"color:#337FE5;\">FileStream fs = new FileStream(\"D:inf.dlv\",FileMode.Create, FileAccess.Write);&nbsp;</span><br />\r\n<span style=\"color:#337FE5;\">fs.Write(infbytes, 0, inf.Length);&nbsp;</span><br />\r\n<span style=\"color:#337FE5;\">fs.Close();&nbsp;</span> \r\n</p>\r\n<p style=\"font-family:Tahoma, Helvetica, Arial, STHeiti;font-size:14px;background-color:#FFFFFF;\">\r\n	<span><br />\r\n</span> \r\n</p>\r\n参考：<a href=\"http://hi.baidu.com/jiang_yy_jiang/item/f2f3348e99272f834414cfa3\">http://hi.baidu.com/jiang_yy_jiang/item/f2f3348e99272f834414cfa3</a>', '2013-01-23 10:11:13', '2', '1', '1', '');
INSERT INTO bzm_article VALUES ('55', 'C#发送邮件时带附件', '在C#中发送邮件需要带附件，我们需要把附件转化为字节流，<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-cs\">//得到文件\r\nFileStream fs = new FileStream(Server.MapPath(\"../../File/Temp/XXX.xls\"), FileMode.Open, FileAccess.Read);\r\n\r\n//声明\r\nbyte[] infbytes = new byte[(int)fs.Length];\r\n        \r\n//读取文件\r\nfs.Read(infbytes, 0, infbytes.Length);\r\n\r\n//关闭文件\r\nfs.Close();\r\n\r\n//转化\r\nMemoryStream stream = new MemoryStream(infbytes);\r\n\r\n//声明邮件信息\r\nSystem.Net.Mail.MailMessage mm = new System.Net.Mail.MailMessage();\r\n\r\n//发送方\r\nmm.From = new System.Net.Mail.MailAddress(ConfigurationManager.AppSettings[\"MailForm\"].ToString());\r\n\r\n//发送给\r\nmm.To.Add(mailTo);\r\n\r\n//CC\r\nmm.CC.Add(ConfigurationManager.AppSettings[\"BccMail\"].ToString());\r\n\r\n//主旨\r\nmm.Subject = \"XXXXX\";\r\n\r\n//内容是否已HTML展示\r\nmm.IsBodyHtml = true;\r\n        \r\n//内容\r\nmm.Body = result;\r\n        \r\n//附件\r\nSystem.Net.Mail.Attachment att = new System.Net.Mail.Attachment(stream, \"XXX.xls\");\r\nmm.Attachments.Add(att);\r\n\r\n//邮件服务器\r\nSystem.Net.Mail.SmtpClient sc = new System.Net.Mail.SmtpClient(ConfigurationManager.AppSettings[\"MailServer\"]);\r\n\r\n//发送\r\nsc.Send(mm);</pre>\r\n</span>', '2013-01-23 11:15:59', '2', '1', '1', '');
INSERT INTO bzm_article VALUES ('56', 'C#字符串转字节流', '<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	项目中经常会使用字符串转为各种类型，\r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	1.字符串转比特数组\r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(1)<span style=\"color:#337FE5;\">byte[] bt=System.Text.Encoding.Default.GetBytes(\"字符串\");</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(2)<span style=\"color:#337FE5;\">byte[] bt=Convert.FromBase64String(\"字符串\");</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	<span style=\"color:#337FE5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	2.字符串转流\r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(1)<span style=\"color:#337FE5;\">MemoryStream ms=new MemoryStream(System.Text.Encoding.Default.GetBytes(\"字符串\"));</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(2)<span style=\"color:#337FE5;\">MemoryStream ms=new MemoryStream(Convert.FromBase64String(\"字符串\"));</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	<span style=\"color:#337FE5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	3.流转比特数组\r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(1)<span style=\"color:#337FE5;\">byte[] bt=ms.ToArray();</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(2)<span style=\"color:#337FE5;\">MemoryStream ms=new MemoryStream();ms.Write(bt,0,ms.Length);</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	<span style=\"color:#337FE5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	4.流转字符串\r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(1)<span style=\"color:#337FE5;\">string str=Convert.ToBase64String(ms.ToArray());</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(2)<span style=\"color:#337FE5;\">string str=System.Text.Encoding.Default.GetString(ms.ToArray());</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	<span style=\"color:#337FE5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	5.比特数组转字符串\r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(1)<span style=\"color:#337FE5;\">string str=System.Text.Encoding.Default.GetString(bt);</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(2)<span style=\"color:#337FE5;\">string str=Convert.ToBase64String(bt);</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	<span style=\"color:#337FE5;\"><br />\r\n</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	6.比特数组转流\r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(1)<span style=\"color:#337FE5;\">MemoryStream ms=new MemoryStream(bt);</span> \r\n</p>\r\n<p style=\"margin-left:auto;font-size:14px;color:#403226;background-color:#FFFFFF;\">\r\n	(2)<span style=\"color:#337FE5;\">MemoryStream ms=new MemoryStream();ms.Read(bt,0,bt.Lenght);</span> \r\n</p>\r\n<span>参考：</span><a href=\"http://www.cnblogs.com/followyourheart/articles/2416830.html\">http://www.cnblogs.com/followyourheart/articles/2416830.html</a>', '2013-01-30 09:05:31', '2', '1', '1', '');
INSERT INTO bzm_article VALUES ('57', 'C#读写资源文件RESX', '<p>\r\n	在C#中经常要保存一些数据，这时我们可以使用资源档文件，读取和写入都很方便！\r\n</p>\r\n<p>\r\n	读取：\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-cs\">string path = System.AppDomain.CurrentDomain.BaseDirectory;\r\n\r\nResXResourceReader rsxr = new ResXResourceReader(path + \"App_GlobalResources\\Email.resx\");\r\n\r\nIDictionaryEnumerator id = rsxr.GetEnumerator();\r\n\r\nforeach (DictionaryEntry d in rsxr)\r\n{\r\n     if (d.Key.ToString() == \"A\")\r\n     {\r\n          path = d.Value;\r\n     }\r\n}\r\n\r\nrsxr.Close();\r\n</pre>\r\n</span> \r\n<p>\r\n	写入：\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-cs\">string email = this.Hid_Email.Value.Trim();\r\n\r\nResXResourceWriter rw = new ResXResourceWriter(path + \"App_GlobalResources\\Email.resx\");\r\n\r\nrw.AddResource(\"AA\", email);\r\n\r\nrw.Close();\r\n</pre>\r\n</span> \r\n<p>\r\n	<br />\r\n</p>', '2013-01-30 09:13:32', '2', '1', '1', '');
INSERT INTO bzm_article VALUES ('58', 'C#中简单使用XML文件', '<p>\r\n	C#中简单使用XML文件进行读取和写入：\r\n</p>\r\n<span style=\"color:#EE33EE;\"> \r\n<pre class=\"prettyprint lang-xml\">&lt;?xml version=\"1.0\" encoding=\"utf-8\"?&gt;\r\n&lt;root&gt;&lt;![CDATA[配置郵件]]&gt;\r\n  &lt;Emails IsActived=\"True\"&gt;\r\n    &lt;EmailId&gt;AA&lt;/EmailId&gt;\r\n    &lt;EmailName&gt;12&lt;/EmailName&gt;\r\n  &lt;/Emails&gt;\r\n&lt;/root&gt;</pre>\r\n</span> \r\n<p>\r\n	操作次XML:<span style=\"color:#337FE5;\"></span>\r\n</p>\r\n<span style=\"color:#337FE5;\">\r\n<pre class=\"prettyprint lang-cs\">//實例化對象\r\nXmlDocument doc = new XmlDocument();\r\n\r\n//獲取系統當前目錄\r\nstring str = System.AppDomain.CurrentDomain.BaseDirectory;\r\n\r\n//XML文件的路徑\r\nstring path = str + \"Email.xml\";\r\n\r\n//判斷文件是否存在\r\nif (System.IO.File.Exists(path))\r\n{\r\n    //加載XML文件\r\n    doc.Load(path);\r\n}\r\n\r\n//讀取節點\r\nXmlNode nds = doc.DocumentElement.SelectSingleNode(\"Emails\");\r\n\r\nXmlNodeList nlist = doc.DocumentElement.SelectSingleNode(\"Emails\").ChildNodes;\r\n\r\n//循环操作\r\nforeach (XmlNode xn in nlist)\r\n{\r\n    XmlElement xe = (XmlElement)xn;\r\n\r\n    if (xe.Name == \"EmailName\")\r\n    {\r\n        XmlNodeList xo = xe.ChildNodes;\r\n\r\n        XmlNode xl = xo[0];         //开始这个节点里面要有数据\r\n\r\n        XmlText xx = (XmlText)xl;\r\n\r\n        xx.InnerText = email;       //这样会累加\r\n    }\r\n}\r\n\r\ndoc.Save(path);</pre>\r\n</span> \r\n<p>\r\n	<br />\r\n</p>', '2013-01-30 09:24:30', '2', '1', '1', '');
INSERT INTO bzm_article VALUES ('59', 'C#根据字符截取为数组', '<p>\r\n	经常会有一定格式的字符串要截取为数组，这个时候我们可以直接使用C#提供的split方法，这个方法有多个重载:\r\n</p>\r\n<p>\r\n	1.\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-cs\">char[] separator = { \';\' };\r\n\r\nstring[] res = valu.Split(separator);\r\n</pre>\r\n</span><span></span> \r\n<p>\r\n	2.使用正则，根据字符串截取\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-cs\">string str=\"aaajsbbbjsccc\";\r\n\r\nstring[] sArray=Regex.Split(str,\"js\",RegexOptions.IgnoreCase);\r\n</pre>\r\n</span><span></span> \r\n<p>\r\n	3.使用正则，根据多个字符截取\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-cs\">string str=\"aaajbbbscccjdddseee\"; \r\n\r\nstring[] sArray=str.Split(new char[2] {\'j\',\'s\'}); \r\n</pre>\r\n</span><span></span> \r\n<p>\r\n	参考：http://www.cnblogs.com/yugen/archive/2010/08/18/1802781.html\r\n</p>', '2013-01-30 09:58:17', '2', '0', '1', null);
INSERT INTO bzm_article VALUES ('60', 'C# String类型转Date类型', '方法一：<span style=\"color:#337FE5;\">Convert.ToDateTime(string)</span><br />\r\n<br />\r\nstring格式有要求，必须是yyyy-MM-dd hh:mm:ss<br />\r\n<br />\r\n================================================<br />\r\n<br />\r\n方法二：<span style=\"color:#337FE5;\">Convert.ToDateTime(string, IFormatProvider)</span><br />\r\n<br />\r\nDateTime dt;<br />\r\n<br />\r\nDateTimeFormatInfo dtFormat = new System.GlobalizationDateTimeFormatInfo();<br />\r\n<br />\r\ndtFormat.ShortDatePattern = \"yyyy/MM/dd\";<br />\r\n<br />\r\ndt = Convert.ToDateTime(\"2011/05/26\", dtFormat);<br />\r\n<br />\r\n================================================<br />\r\n<br />\r\n方法二：<span style=\"color:#337FE5;\">DateTime.ParseExact()</span><br />\r\n<br />\r\nstring dateString = \"20110526\";<br />\r\n<br />\r\nDateTime dt = DateTime.ParseExact(dateString, \"yyyyMMdd\", System.Globalization.CultureInfo.CurrentCulture);<br />\r\n<br />\r\n或者<br />\r\n<br />\r\nDateTime dt = DateTime.ParseExact(dateString, \"yyyyMMdd\", System.Globalization.CultureInfo.InvariantCulture);<br />\r\n<br />\r\n<p>\r\n	参考：<a href=\"http://www.cnblogs.com/Pickuper/articles/2058880.html\">http://www.cnblogs.com/Pickuper/articles/2058880.html</a> \r\n</p>', '2013-02-01 10:26:35', '2', '1', '1', '');
INSERT INTO bzm_article VALUES ('61', 'jQuery提示插件-toastr ', '<p>\r\n	今天在开源中国上面看到一个jquery提示插件--toastr，这个插件很简洁、干净，而且使用起来也非常的方便，下面就说下具体的使用方法：\r\n</p>\r\n<p>\r\n	1.首先在页面中导入样式文件：toastr.css，这个是负责样式的，而且有图片封装在里面，所以为了美观这个样式表一定要添加。\r\n</p>\r\n<p>\r\n	2.导入Jquery的类库文件，\r\n</p>\r\n<p>\r\n	3.导入toastr-1.1.5.js文件，这里我用的是1.1.5的版本，\r\n</p>\r\n<p>\r\n	完整页面代码如：\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-js\">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n    &lt;title&gt;toastr QUnit Tests&lt;/title&gt;\r\n    &lt;link href=\"toastr.css\" rel=\"stylesheet\" type=\"text/css\" /&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;input type=\"button\" value=\"OK\" id=\"Btn_OK\" /&gt;\r\n    &lt;input type=\"button\" value=\"Clear\" id=\"Btn_Clear\" /&gt;\r\n	\r\n    &lt;script src=\"jquery-1.4.2.min.js\" type=\"text/javascript\"&gt;&lt;/script&gt;\r\n    &lt;script src=\"toastr-1.1.5.js\" type=\"text/javascript\"&gt;&lt;/script&gt;\r\n    &lt;script type=\"text/javascript\"&gt;\r\n        $(document).ready(function(){\r\n            $(\"#Btn_OK\").click(function(){\r\n	        toastr.warning(\'My name is Inigo Montoya. You killed my father, prepare to die!\');\r\n	    });\r\n			\r\n	    $(\"#Btn_Clear\").click(function(){\r\n		toastr.clear();		\r\n	    });\r\n	});\r\n    &lt;/script&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n</pre>\r\n</span><span></span> \r\n<p>\r\n	效果：\r\n</p>\r\n<p>\r\n	<img src=\"/WEB/Pub/Editor/attached/image/20130219/20130219104603_2031.bmp\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	下面说说它提供的方法，toastr以供提供了5个方法:\r\n</p>\r\n<p>\r\n	1.<span style=\"color:#009900;\">warning</span>&nbsp;&nbsp;2.<span style=\"color:#009900;\">success</span>&nbsp;&nbsp;3.<span style=\"color:#009900;\">error</span>&nbsp;&nbsp;4.<span style=\"color:#009900;\">info</span>&nbsp;&nbsp; 5.<span style=\"color:#60D978;\">clear</span> \r\n</p>\r\n<p>\r\n	前面四个方法都是三个参数，第一个是必输的，后面两个都可以省略，如底层代码：\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-js\">warning = function (message, title, optionsOverride) {\r\n     return notify({\r\n          iconClass: getOptions().iconClasses.warning,\r\n          message: message,\r\n          optionsOverride: optionsOverride,\r\n          title: title\r\n     });\r\n},</pre>\r\n</span><span></span> \r\n<p>\r\n	第一个参数是要提示的信息：\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-js\">toastr.warning(\'我是提示信息的内容\');</pre>\r\n</span><span></span> \r\n<p>\r\n	第二个参数是提示的标题：\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-js\">toastr.success(\'我是提示信息的内容\', \'标题\');</pre>\r\n</span><span></span> \r\n<p>\r\n	第三个参数有点复杂，可以设置比如样式，淡出时间啊等等，显示的位置是右下角\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-js\">toastr.error(\'我是提示信息的内容\', \'标题\', {positionClass: \'toast-bottom-left\'});</pre>\r\n</span><span></span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	2.clear这个方法是清除提示用的，直接调用就是清除所有的提示：\r\n</p>\r\n<span style=\"color:#337FE5;\"> \r\n<pre class=\"prettyprint lang-js\">toastr.clear();</pre>\r\n</span><span></span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"color:#E53333;\">注意：</span>之前我用的jquery是1.4.2的，总是clear方法有问题，后来我去官方演示网站上看到他用的是1.6.3的类库，我换成1.6.3的就可以了，所以jquery尽量还是用新的版本！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	参考:<a href=\"http://codeseven.github.com/toastr/\">http://codeseven.github.com/toastr/</a> \r\n</p>', '2013-02-19 10:48:03', '4', '1', '1', null);

-- ----------------------------
-- Table structure for `bzm_comment`
-- ----------------------------
DROP TABLE IF EXISTS `bzm_comment`;
CREATE TABLE `bzm_comment` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键ID',
  `comm_User` varchar(50) NOT NULL COMMENT '评论的用户名称',
  `comm_Content` varchar(5000) NOT NULL COMMENT '评论的内容',
  `comm_Date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP COMMENT '评论日期',
  `comm_articleId` int(11) NOT NULL COMMENT '评论的文章ID',
  `remark` varchar(255) default NULL COMMENT '备注',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `comment_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bzm_comment
-- ----------------------------
INSERT INTO bzm_comment VALUES ('1', 'AAA', 'SDFWESDF', '2013-01-02 00:00:00', '2', null);
INSERT INTO bzm_comment VALUES ('2', 'DDD', 'fghdfghdfghdfghdfgh', '2013-01-02 00:00:00', '1', null);
INSERT INTO bzm_comment VALUES ('3', 'DDD', 'fghdfghdfghdfghdfgh', '2013-01-02 00:00:00', '1', null);
INSERT INTO bzm_comment VALUES ('4', 'SDF', 'asdf', '2013-01-02 00:00:00', '1', null);
INSERT INTO bzm_comment VALUES ('5', 'CCC', 'SDFSDF673452342342xcvxcvxcvxcvxcvxcvxcvxcvxcvxcvxcvxcvxccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc', '2013-01-03 00:00:00', '1', null);
INSERT INTO bzm_comment VALUES ('6', '宦仁波', '测试汉字的显示是否正常，如果不正常请确认，', '2013-01-03 00:00:00', '1', null);
INSERT INTO bzm_comment VALUES ('7', 'ESTE', 'DSFcvb345', '2013-01-03 00:00:00', '1', null);
INSERT INTO bzm_comment VALUES ('8', '从市人', '四川路上了地笑了笑成交量上等方面oivzj数据吃咯我看到了新课程v渐叟批评死了操控性哦草v领消除恐惧了行程vj死了的空间佛山等级佛啊就是对佛教爱上东平房间爱死哦的房间爱搜ip地方就爱哦阿斯顿发骄傲是地方煎熬i桑德菲杰安分守己两地分居阿拉斯加地方了卡机是地方了卡机上岛咖啡', '2013-01-03 00:00:00', '2', null);
INSERT INTO bzm_comment VALUES ('9', '从市人', '说说网站吧，我的这个应用程序目前开放的就两个板块，一个是看站长发表的文章和心得还有一个是给站长留言的板块，你可能会问为什么不做会员的功能和回复的功能，我觉得没有必要（目前觉得）,一方面我的空间比较小，还有我只是把一些心得分享出来给那些还在迷茫中的人看看而已也或许并不能帮助他们，我是一个新人所以请前辈们就别拍我了，而且我的一些心得对于前辈们也是没有什么作用，我只是想给那些新人看看，至于能不能帮助他们那就看自己的体会了', '2013-01-03 00:00:00', '2', null);
INSERT INTO bzm_comment VALUES ('10', '阿斯蒂芬', '阿斯顿发生的发生地方 阿斯顿发生的发生阿斯顿发斯蒂芬阿斯顿发斯蒂芬阿斯顿发斯蒂芬阿斯顿发生大发阿斯顿发生大发阿斯蒂芬爱上发生的发生大发是打发斯蒂芬阿斯顿发生的发生的发生的发生大发阿斯顿发生的发生打发打发法师打法是否打算的发生的发生大发', '2013-01-07 10:25:39', '39', null);
INSERT INTO bzm_comment VALUES ('11', 'sdf', 'asdfasdfasdf', '2013-01-08 08:57:02', '41', null);
INSERT INTO bzm_comment VALUES ('12', 'asdf', 'asdf', '2013-03-08 13:59:50', '60', null);
INSERT INTO bzm_comment VALUES ('13', 'Test', '阿斯顿发生的发生的发生地方阿斯顿发生', '2013-03-08 17:32:24', '60', null);
INSERT INTO bzm_comment VALUES ('14', 'Test', '法国获得法国和地方工会', '2013-03-08 17:32:48', '60', null);
INSERT INTO bzm_comment VALUES ('15', 'WDS', 'asdfasdf', '2013-03-09 08:41:07', '60', null);
INSERT INTO bzm_comment VALUES ('16', 'DGX', 'GSFSDFSDF', '2013-03-09 08:56:14', '60', null);
INSERT INTO bzm_comment VALUES ('17', 'CVXVX', '法规和对方过得更好', '2013-03-09 09:00:47', '60', null);
INSERT INTO bzm_comment VALUES ('18', 'SFXC', '个红色如此vbxzxcsdfa', '2013-03-09 09:02:23', '60', null);

-- ----------------------------
-- Table structure for `bzm_tag`
-- ----------------------------
DROP TABLE IF EXISTS `bzm_tag`;
CREATE TABLE `bzm_tag` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键自增',
  `tag_Name` varchar(255) NOT NULL COMMENT '标签名称',
  `tag_Num` varchar(255) NOT NULL COMMENT '标签编号',
  `remark` varchar(255) default NULL COMMENT '备注',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `tag_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bzm_tag
-- ----------------------------
INSERT INTO bzm_tag VALUES ('1', 'Java', 'Java', null);
INSERT INTO bzm_tag VALUES ('2', 'C#', 'C#', null);
INSERT INTO bzm_tag VALUES ('3', 'CSS', 'CSS', null);
INSERT INTO bzm_tag VALUES ('4', 'JavaScript', 'JavaScript', null);
INSERT INTO bzm_tag VALUES ('5', 'MySQL', 'MySQL', null);
INSERT INTO bzm_tag VALUES ('6', 'Oracle', 'Oralce', null);
INSERT INTO bzm_tag VALUES ('7', 'Other', 'Other', null);
INSERT INTO bzm_tag VALUES ('8', 'Html', 'Html', null);
