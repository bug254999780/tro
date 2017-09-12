/*
Navicat MySQL Data Transfer

Source Server         : 120.26.198.195
Source Server Version : 50716
Source Host           : 120.26.198.195:3306
Source Database       : tro

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-09-12 10:40:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hive_table
-- ----------------------------
DROP TABLE IF EXISTS `hive_table`;
CREATE TABLE `hive_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hive_table
-- ----------------------------
INSERT INTO `hive_table` VALUES ('1', 'cust_info', '1');
INSERT INTO `hive_table` VALUES ('2', 'client_jump', '1');
INSERT INTO `hive_table` VALUES ('3', 'test', '0');

-- ----------------------------
-- Table structure for upms_log
-- ----------------------------
DROP TABLE IF EXISTS `upms_log`;
CREATE TABLE `upms_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `description` varchar(100) DEFAULT NULL COMMENT '操作描述',
  `username` varchar(20) DEFAULT NULL COMMENT '操作用户',
  `start_time` bigint(20) DEFAULT NULL COMMENT '操作时间',
  `spend_time` int(11) DEFAULT NULL COMMENT '消耗时间',
  `base_path` varchar(500) DEFAULT NULL COMMENT '根路径',
  `uri` varchar(500) DEFAULT NULL COMMENT 'URI',
  `url` varchar(500) DEFAULT NULL COMMENT 'URL',
  `method` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `parameter` mediumtext,
  `user_agent` varchar(500) DEFAULT NULL COMMENT '用户标识',
  `ip` varchar(30) DEFAULT NULL COMMENT 'IP地址',
  `result` mediumtext,
  `permissions` varchar(100) DEFAULT NULL COMMENT '权限值',
  PRIMARY KEY (`log_id`),
  KEY `log_id` (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1575 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志';

-- ----------------------------
-- Records of upms_log
-- ----------------------------
INSERT INTO `upms_log` VALUES ('1551', '日志列表', 'admin', '1505183403555', '152', 'http://localhost:1111', '/manage/log/list', 'http://localhost:1111/manage/log/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '127.0.0.1', '{\"total\":0,\"rows\":[]}', 'upms:log:read');
INSERT INTO `upms_log` VALUES ('1552', '权限列表', 'admin', '1505183404098', '156', 'http://localhost:1111', '/manage/permission/list', 'http://localhost:1111/manage/permission/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":38,\"rows\":[{\"ctime\":1,\"icon\":\"zmdi zmdi-accounts-list\",\"name\":\"系统组织管理\",\"orders\":1,\"permissionId\":1,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":2,\"icon\":\"\",\"name\":\"系统-管理\",\"orders\":2,\"permissionId\":2,\"permissionValue\":\"upms:system:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/system/index\"},{\"ctime\":3,\"icon\":\"\",\"name\":\"组织-管理\",\"orders\":3,\"permissionId\":3,\"permissionValue\":\"upms:organization:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/organization/index\"},{\"ctime\":4,\"icon\":\"zmdi zmdi-accounts\",\"name\":\"角色用户管理\",\"orders\":4,\"permissionId\":4,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":6,\"icon\":\"\",\"name\":\"角色-管理\",\"orders\":6,\"permissionId\":5,\"permissionValue\":\"upms:role:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/role/index\"},{\"ctime\":5,\"icon\":\"\",\"name\":\"用户-管理\",\"orders\":5,\"permissionId\":6,\"permissionValue\":\"upms:user:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/user/index\"},{\"ctime\":7,\"icon\":\"zmdi zmdi-lock-outline\",\"name\":\"权限资源管理\",\"orders\":7,\"permissionId\":7,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":12,\"icon\":\"zmdi zmdi-more\",\"name\":\"其他数据管理\",\"orders\":12,\"permissionId\":12,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":14,\"icon\":\"\",\"name\":\"会话-管理\",\"orders\":14,\"permissionId\":14,\"permissionValue\":\"upms:session:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/session/index\"},{\"ctime\":15,\"icon\":\"\",\"name\":\"日志-管理\",\"orders\":15,\"permissionId\":15,\"permissionValue\":\"upms:log:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/log/index\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('1553', '角色列表', 'admin', '1505183406844', '153', 'http://localhost:1111', '/manage/role/list', 'http://localhost:1111/manage/role/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":3,\"rows\":[{\"ctime\":1,\"description\":\"拥有所有权限\",\"name\":\"super\",\"orders\":1,\"roleId\":1,\"status\":1,\"title\":\"超级管理员\"},{\"ctime\":1487471013117,\"description\":\"拥有除权限管理系统外的所有权限\",\"name\":\"admin\",\"orders\":1487471013117,\"roleId\":2,\"status\":1,\"title\":\"管理员\"},{\"ctime\":1503645236661,\"description\":\"1\",\"name\":\"测试1\",\"orders\":1503645236661,\"roleId\":3,\"status\":1,\"title\":\"1\"}]}', 'upms:role:read');
INSERT INTO `upms_log` VALUES ('1554', '用户列表', 'admin', '1505183408821', '209', 'http://localhost:1111', '/manage/user/list', 'http://localhost:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":3,\"rows\":[{\"avatar\":\"/resources/tro-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"15618669257@189.cn\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"徐启明(超)\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/tro-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"15618669257@189.cn\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"徐启明(测)\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"},{\"avatar\":\"/resources/tro-admin/images/avatar.jpg\",\"ctime\":1503645149924,\"email\":\"15618669257@189.cn\",\"locked\":0,\"password\":\"4753C0371A30D006C4B8133D34C5A1CF\",\"phone\":\"2328549\",\"realname\":\"徐启明\",\"salt\":\"0d8f631d3ebf42058b988cf9447e01de\",\"sex\":1,\"userId\":3,\"username\":\"xqm@189.cn\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES ('1555', '组织列表', 'admin', '1505183410853', '148', 'http://localhost:1111', '/manage/organization/list', 'http://localhost:1111/manage/organization/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":2,\"rows\":[{\"ctime\":1,\"description\":\"北京总部\",\"name\":\"总部\",\"organizationId\":1,\"status\":1},{\"ctime\":1503644607100,\"description\":\"测试\",\"name\":\"天翼客服\",\"organizationId\":8,\"status\":1}]}', 'upms:organization:read');
INSERT INTO `upms_log` VALUES ('1556', '系统列表', 'admin', '1505183413097', '169', 'http://localhost:1111', '/manage/system/list', 'http://localhost:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":2,\"rows\":[{\"banner\":\"/resources/tro-admin/images/tro-upms.png\",\"basepath\":\"http://localhost:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"tro-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/tro-admin/images/tro-cms.png\",\"basepath\":\"http://localhost:1113\",\"ctime\":1504753668594,\"description\":\"监控\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"tykf-monitor\",\"orders\":1504753668594,\"status\":1,\"systemId\":2,\"theme\":\"#447ad5\",\"title\":\"监控管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES ('1557', '后台首页', 'admin', '1505183441769', '289', 'http://localhost:1111', '/manage/index', 'http://localhost:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('1558', '会话首页', 'admin', '1505183482333', '0', 'http://localhost:1111', '/manage/session/index', 'http://localhost:1111/manage/session/index', 'GET', null, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '127.0.0.1', '\"/manage/session/index.jsp\"', 'upms:session:read');
INSERT INTO `upms_log` VALUES ('1559', '会话列表', 'admin', '1505183496112', '110', 'http://localhost:1111', '/manage/session/list', 'http://localhost:1111/manage/session/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":1,\"rows\":[{\"attributeKeys\":[\"org.apache.shiro.subject.support.DefaultSubjectContext_AUTHENTICATED_SESSION_KEY\",\"tro.upms.type\",\"org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY\"],\"status\":\"on_line\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"valid\":true}]}', 'upms:session:read');
INSERT INTO `upms_log` VALUES ('1560', '后台首页', 'admin', '1505183582735', '174', 'http://localhost:1111', '/manage/index', 'http://localhost:1111/manage/index', 'GET', null, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '\"/manage/index.jsp\"', null);
INSERT INTO `upms_log` VALUES ('1561', '系统首页', 'admin', '1505183594071', '0', 'http://localhost:1111', '/manage/system/index', 'http://localhost:1111/manage/system/index', 'GET', null, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES ('1562', '组织首页', 'admin', '1505183601064', '0', 'http://localhost:1111', '/manage/organization/index', 'http://localhost:1111/manage/organization/index', 'GET', null, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '\"/manage/organization/index.jsp\"', 'upms:organization:read');
INSERT INTO `upms_log` VALUES ('1563', '用户首页', 'admin', '1505183601519', '0', 'http://localhost:1111', '/manage/user/index', 'http://localhost:1111/manage/user/index', 'GET', null, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES ('1564', '权限首页', 'admin', '1505183601983', '0', 'http://localhost:1111', '/manage/permission/index', 'http://localhost:1111/manage/permission/index', 'GET', null, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '\"/manage/permission/index.jsp\"', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('1565', '角色首页', 'admin', '1505183604970', '0', 'http://localhost:1111', '/manage/role/index', 'http://localhost:1111/manage/role/index', 'GET', null, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '127.0.0.1', '\"/manage/role/index.jsp\"', 'upms:role:read');
INSERT INTO `upms_log` VALUES ('1566', '会话首页', 'admin', '1505183605306', '0', 'http://localhost:1111', '/manage/session/index', 'http://localhost:1111/manage/session/index', 'GET', null, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '\"/manage/session/index.jsp\"', 'upms:session:read');
INSERT INTO `upms_log` VALUES ('1567', '日志首页', 'admin', '1505183606106', '0', 'http://localhost:1111', '/manage/log/index', 'http://localhost:1111/manage/log/index', 'GET', null, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '\"/manage/log/index.jsp\"', 'upms:log:read');
INSERT INTO `upms_log` VALUES ('1568', '组织列表', 'admin', '1505183609704', '179', 'http://localhost:1111', '/manage/organization/list', 'http://localhost:1111/manage/organization/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":2,\"rows\":[{\"ctime\":1,\"description\":\"北京总部\",\"name\":\"总部\",\"organizationId\":1,\"status\":1},{\"ctime\":1503644607100,\"description\":\"测试\",\"name\":\"天翼客服\",\"organizationId\":2,\"status\":1}]}', 'upms:organization:read');
INSERT INTO `upms_log` VALUES ('1569', '用户列表', 'admin', '1505183609914', '131', 'http://localhost:1111', '/manage/user/list', 'http://localhost:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":3,\"rows\":[{\"avatar\":\"/resources/tro-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"15618669257@189.cn\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"徐启明(超)\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/tro-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"15618669257@189.cn\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"徐启明(测)\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"},{\"avatar\":\"/resources/tro-admin/images/avatar.jpg\",\"ctime\":1503645149924,\"email\":\"15618669257@189.cn\",\"locked\":0,\"password\":\"4753C0371A30D006C4B8133D34C5A1CF\",\"phone\":\"2328549\",\"realname\":\"徐启明\",\"salt\":\"0d8f631d3ebf42058b988cf9447e01de\",\"sex\":1,\"userId\":3,\"username\":\"xqm@189.cn\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES ('1570', '权限列表', 'admin', '1505183610526', '81', 'http://localhost:1111', '/manage/permission/list', 'http://localhost:1111/manage/permission/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":38,\"rows\":[{\"ctime\":1,\"icon\":\"zmdi zmdi-accounts-list\",\"name\":\"系统组织管理\",\"orders\":1,\"permissionId\":1,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":2,\"icon\":\"\",\"name\":\"系统管理\",\"orders\":2,\"permissionId\":2,\"permissionValue\":\"upms:system:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/system/index\"},{\"ctime\":3,\"icon\":\"\",\"name\":\"组织管理\",\"orders\":3,\"permissionId\":3,\"permissionValue\":\"upms:organization:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/organization/index\"},{\"ctime\":4,\"icon\":\"zmdi zmdi-accounts\",\"name\":\"角色用户管理\",\"orders\":4,\"permissionId\":4,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":6,\"icon\":\"\",\"name\":\"角色管理\",\"orders\":6,\"permissionId\":5,\"permissionValue\":\"upms:role:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/role/index\"},{\"ctime\":5,\"icon\":\"\",\"name\":\"用户管理\",\"orders\":5,\"permissionId\":6,\"permissionValue\":\"upms:user:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/user/index\"},{\"ctime\":7,\"icon\":\"zmdi zmdi-lock-outline\",\"name\":\"权限资源管理\",\"orders\":7,\"permissionId\":7,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":12,\"icon\":\"zmdi zmdi-more\",\"name\":\"其他数据管理\",\"orders\":12,\"permissionId\":12,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":14,\"icon\":\"\",\"name\":\"会话管理\",\"orders\":14,\"permissionId\":14,\"permissionValue\":\"upms:session:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/session/index\"},{\"ctime\":15,\"icon\":\"\",\"name\":\"日志管理\",\"orders\":15,\"permissionId\":15,\"permissionValue\":\"upms:log:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/log/index\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES ('1571', '系统列表', 'admin', '1505183610526', '174', 'http://localhost:1111', '/manage/system/list', 'http://localhost:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":2,\"rows\":[{\"banner\":\"/resources/tro-admin/images/tro-upms.png\",\"basepath\":\"http://localhost:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"tro-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/tro-admin/images/tro-cms.png\",\"basepath\":\"http://localhost:1113\",\"ctime\":1504753668594,\"description\":\"监控\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"tro-monitor\",\"orders\":1504753668594,\"status\":1,\"systemId\":2,\"theme\":\"#447ad5\",\"title\":\"监控管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES ('1572', '会话列表', 'admin', '1505183610944', '287', 'http://localhost:1111', '/manage/session/list', 'http://localhost:1111/manage/session/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":1,\"rows\":[{\"attributeKeys\":[\"org.apache.shiro.subject.support.DefaultSubjectContext_AUTHENTICATED_SESSION_KEY\",\"tro.upms.type\",\"org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY\"],\"status\":\"on_line\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"valid\":true}]}', 'upms:session:read');
INSERT INTO `upms_log` VALUES ('1573', '日志列表', 'admin', '1505183616890', '163', 'http://localhost:1111', '/manage/log/list', 'http://localhost:1111/manage/log/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":22,\"rows\":[{\"basePath\":\"http://localhost:1111\",\"description\":\"日志列表\",\"ip\":\"127.0.0.1\",\"logId\":1551,\"method\":\"GET\",\"parameter\":\"order=asc&offset=0&limit=10\",\"permissions\":\"upms:log:read\",\"result\":\"{\\\"total\\\":0,\\\"rows\\\":[]}\",\"spendTime\":152,\"startTime\":1505183403555,\"uri\":\"/manage/log/list\",\"url\":\"http://localhost:1111/manage/log/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://localhost:1111\",\"description\":\"权限列表\",\"ip\":\"0:0:0:0:0:0:0:1\",\"logId\":1552,\"method\":\"GET\",\"parameter\":\"order=asc&offset=0&limit=10\",\"permissions\":\"upms:permission:read\",\"result\":\"{\\\"total\\\":38,\\\"rows\\\":[{\\\"ctime\\\":1,\\\"icon\\\":\\\"zmdi zmdi-accounts-list\\\",\\\"name\\\":\\\"系统组织管理\\\",\\\"orders\\\":1,\\\"permissionId\\\":1,\\\"permissionValue\\\":\\\"\\\",\\\"pid\\\":0,\\\"status\\\":1,\\\"systemId\\\":1,\\\"type\\\":1,\\\"uri\\\":\\\"\\\"},{\\\"ctime\\\":2,\\\"icon\\\":\\\"\\\",\\\"name\\\":\\\"系统-管理\\\",\\\"orders\\\":2,\\\"permissionId\\\":2,\\\"permissionValue\\\":\\\"upms:system:read\\\",\\\"pid\\\":1,\\\"status\\\":1,\\\"systemId\\\":1,\\\"type\\\":2,\\\"uri\\\":\\\"/manage/system/index\\\"},{\\\"ctime\\\":3,\\\"icon\\\":\\\"\\\",\\\"name\\\":\\\"组织-管理\\\",\\\"orders\\\":3,\\\"permissionId\\\":3,\\\"permissionValue\\\":\\\"upms:organization:read\\\",\\\"pid\\\":1,\\\"status\\\":1,\\\"systemId\\\":1,\\\"type\\\":2,\\\"uri\\\":\\\"/manage/organization/index\\\"},{\\\"ctime\\\":4,\\\"icon\\\":\\\"zmdi zmdi-accounts\\\",\\\"name\\\":\\\"角色用户管理\\\",\\\"orders\\\":4,\\\"permissionId\\\":4,\\\"permissionValue\\\":\\\"\\\",\\\"pid\\\":0,\\\"status\\\":1,\\\"systemId\\\":1,\\\"type\\\":1,\\\"uri\\\":\\\"\\\"},{\\\"ctime\\\":6,\\\"icon\\\":\\\"\\\",\\\"name\\\":\\\"角色-管理\\\",\\\"orders\\\":6,\\\"permissionId\\\":5,\\\"permissionValue\\\":\\\"upms:role:read\\\",\\\"pid\\\":4,\\\"status\\\":1,\\\"systemId\\\":1,\\\"type\\\":2,\\\"uri\\\":\\\"/manage/role/index\\\"},{\\\"ctime\\\":5,\\\"icon\\\":\\\"\\\",\\\"name\\\":\\\"用户-管理\\\",\\\"orders\\\":5,\\\"permissionId\\\":6,\\\"permissionValue\\\":\\\"upms:user:read\\\",\\\"pid\\\":4,\\\"status\\\":1,\\\"systemId\\\":1,\\\"type\\\":2,\\\"uri\\\":\\\"/manage/user/index\\\"},{\\\"ctime\\\":7,\\\"icon\\\":\\\"zmdi zmdi-lock-outline\\\",\\\"name\\\":\\\"权限资源管理\\\",\\\"orders\\\":7,\\\"permissionId\\\":7,\\\"permissionValue\\\":\\\"\\\",\\\"pid\\\":0,\\\"status\\\":1,\\\"systemId\\\":1,\\\"type\\\":1,\\\"uri\\\":\\\"\\\"},{\\\"ctime\\\":12,\\\"icon\\\":\\\"zmdi zmdi-more\\\",\\\"name\\\":\\\"其他数据管理\\\",\\\"orders\\\":12,\\\"permissionId\\\":12,\\\"permissionValue\\\":\\\"\\\",\\\"pid\\\":0,\\\"status\\\":1,\\\"systemId\\\":1,\\\"type\\\":1,\\\"uri\\\":\\\"\\\"},{\\\"ctime\\\":14,\\\"icon\\\":\\\"\\\",\\\"name\\\":\\\"会话-管理\\\",\\\"orders\\\":14,\\\"permissionId\\\":14,\\\"permissionValue\\\":\\\"upms:session:read\\\",\\\"pid\\\":12,\\\"status\\\":1,\\\"systemId\\\":1,\\\"type\\\":2,\\\"uri\\\":\\\"/manage/session/index\\\"},{\\\"ctime\\\":15,\\\"icon\\\":\\\"\\\",\\\"name\\\":\\\"日志-管理\\\",\\\"orders\\\":15,\\\"permissionId\\\":15,\\\"permissionValue\\\":\\\"upms:log:read\\\",\\\"pid\\\":12,\\\"status\\\":1,\\\"systemId\\\":1,\\\"type\\\":2,\\\"uri\\\":\\\"/manage/log/index\\\"}]}\",\"spendTime\":156,\"startTime\":1505183404098,\"uri\":\"/manage/permission/list\",\"url\":\"http://localhost:1111/manage/permission/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://localhost:1111\",\"description\":\"角色列表\",\"ip\":\"0:0:0:0:0:0:0:1\",\"logId\":1553,\"method\":\"GET\",\"parameter\":\"order=asc&offset=0&limit=10\",\"permissions\":\"upms:role:read\",\"result\":\"{\\\"total\\\":3,\\\"rows\\\":[{\\\"ctime\\\":1,\\\"description\\\":\\\"拥有所有权限\\\",\\\"name\\\":\\\"super\\\",\\\"orders\\\":1,\\\"roleId\\\":1,\\\"status\\\":1,\\\"title\\\":\\\"超级管理员\\\"},{\\\"ctime\\\":1487471013117,\\\"description\\\":\\\"拥有除权限管理系统外的所有权限\\\",\\\"name\\\":\\\"admin\\\",\\\"orders\\\":1487471013117,\\\"roleId\\\":2,\\\"status\\\":1,\\\"title\\\":\\\"管理员\\\"},{\\\"ctime\\\":1503645236661,\\\"description\\\":\\\"1\\\",\\\"name\\\":\\\"测试1\\\",\\\"orders\\\":1503645236661,\\\"roleId\\\":3,\\\"status\\\":1,\\\"title\\\":\\\"1\\\"}]}\",\"spendTime\":153,\"startTime\":1505183406844,\"uri\":\"/manage/role/list\",\"url\":\"http://localhost:1111/manage/role/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://localhost:1111\",\"description\":\"用户列表\",\"ip\":\"0:0:0:0:0:0:0:1\",\"logId\":1554,\"method\":\"GET\",\"parameter\":\"order=asc&offset=0&limit=10\",\"permissions\":\"upms:user:read\",\"result\":\"{\\\"total\\\":3,\\\"rows\\\":[{\\\"avatar\\\":\\\"/resources/tro-admin/images/avatar.jpg\\\",\\\"ctime\\\":1,\\\"email\\\":\\\"15618669257@189.cn\\\",\\\"locked\\\":0,\\\"password\\\":\\\"3038D9CB63B3152A79B8153FB06C02F7\\\",\\\"phone\\\":\\\"\\\",\\\"realname\\\":\\\"徐启明(超)\\\",\\\"salt\\\":\\\"66f1b370c660445a8657bf8bf1794486\\\",\\\"sex\\\":1,\\\"userId\\\":1,\\\"username\\\":\\\"admin\\\"},{\\\"avatar\\\":\\\"/resources/tro-admin/images/avatar.jpg\\\",\\\"ctime\\\":1493394720495,\\\"email\\\":\\\"15618669257@189.cn\\\",\\\"locked\\\":0,\\\"password\\\":\\\"285C9762F5F9046F5893F752DFAF3476\\\",\\\"phone\\\":\\\"\\\",\\\"realname\\\":\\\"徐启明(测)\\\",\\\"salt\\\":\\\"d2d0d03310444ad388a8b290b0fe8564\\\",\\\"sex\\\":1,\\\"userId\\\":2,\\\"username\\\":\\\"test\\\"},{\\\"avatar\\\":\\\"/resources/tro-admin/images/avatar.jpg\\\",\\\"ctime\\\":1503645149924,\\\"email\\\":\\\"15618669257@189.cn\\\",\\\"locked\\\":0,\\\"password\\\":\\\"4753C0371A30D006C4B8133D34C5A1CF\\\",\\\"phone\\\":\\\"2328549\\\",\\\"realname\\\":\\\"徐启明\\\",\\\"salt\\\":\\\"0d8f631d3ebf42058b988cf9447e01de\\\",\\\"sex\\\":1,\\\"userId\\\":3,\\\"username\\\":\\\"xqm@189.cn\\\"}]}\",\"spendTime\":209,\"startTime\":1505183408821,\"uri\":\"/manage/user/list\",\"url\":\"http://localhost:1111/manage/user/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://localhost:1111\",\"description\":\"组织列表\",\"ip\":\"0:0:0:0:0:0:0:1\",\"logId\":1555,\"method\":\"GET\",\"parameter\":\"order=asc&offset=0&limit=10\",\"permissions\":\"upms:organization:read\",\"result\":\"{\\\"total\\\":2,\\\"rows\\\":[{\\\"ctime\\\":1,\\\"description\\\":\\\"北京总部\\\",\\\"name\\\":\\\"总部\\\",\\\"organizationId\\\":1,\\\"status\\\":1},{\\\"ctime\\\":1503644607100,\\\"description\\\":\\\"测试\\\",\\\"name\\\":\\\"天翼客服\\\",\\\"organizationId\\\":8,\\\"status\\\":1}]}\",\"spendTime\":148,\"startTime\":1505183410853,\"uri\":\"/manage/organization/list\",\"url\":\"http://localhost:1111/manage/organization/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://localhost:1111\",\"description\":\"系统列表\",\"ip\":\"0:0:0:0:0:0:0:1\",\"logId\":1556,\"method\":\"GET\",\"parameter\":\"order=asc&offset=0&limit=10\",\"permissions\":\"upms:system:read\",\"result\":\"{\\\"total\\\":2,\\\"rows\\\":[{\\\"banner\\\":\\\"/resources/tro-admin/images/tro-upms.png\\\",\\\"basepath\\\":\\\"http://localhost:1111\\\",\\\"ctime\\\":1,\\\"description\\\":\\\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\\\",\\\"icon\\\":\\\"zmdi zmdi-shield-security\\\",\\\"name\\\":\\\"tro-upms-server\\\",\\\"orders\\\":1,\\\"status\\\":1,\\\"systemId\\\":1,\\\"theme\\\":\\\"#29A176\\\",\\\"title\\\":\\\"权限管理系统\\\"},{\\\"banner\\\":\\\"/resources/tro-admin/images/tro-cms.png\\\",\\\"basepath\\\":\\\"http://localhost:1113\\\",\\\"ctime\\\":1504753668594,\\\"description\\\":\\\"监控\\\",\\\"icon\\\":\\\"zmdi zmdi-cloud\\\",\\\"name\\\":\\\"tykf-monitor\\\",\\\"orders\\\":1504753668594,\\\"status\\\":1,\\\"systemId\\\":2,\\\"theme\\\":\\\"#447ad5\\\",\\\"title\\\":\\\"监控管理系统\\\"}]}\",\"spendTime\":169,\"startTime\":1505183413097,\"uri\":\"/manage/system/list\",\"url\":\"http://localhost:1111/manage/system/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://localhost:1111\",\"description\":\"后台首页\",\"ip\":\"0:0:0:0:0:0:0:1\",\"logId\":1557,\"method\":\"GET\",\"result\":\"\\\"/manage/index.jsp\\\"\",\"spendTime\":289,\"startTime\":1505183441769,\"uri\":\"/manage/index\",\"url\":\"http://localhost:1111/manage/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://localhost:1111\",\"description\":\"会话首页\",\"ip\":\"127.0.0.1\",\"logId\":1558,\"method\":\"GET\",\"permissions\":\"upms:session:read\",\"result\":\"\\\"/manage/session/index.jsp\\\"\",\"spendTime\":0,\"startTime\":1505183482333,\"uri\":\"/manage/session/index\",\"url\":\"http://localhost:1111/manage/session/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://localhost:1111\",\"description\":\"会话列表\",\"ip\":\"0:0:0:0:0:0:0:1\",\"logId\":1559,\"method\":\"GET\",\"parameter\":\"order=asc&offset=0&limit=10\",\"permissions\":\"upms:session:read\",\"result\":\"{\\\"total\\\":1,\\\"rows\\\":[{\\\"attributeKeys\\\":[\\\"org.apache.shiro.subject.support.DefaultSubjectContext_AUTHENTICATED_SESSION_KEY\\\",\\\"tro.upms.type\\\",\\\"org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY\\\"],\\\"status\\\":\\\"on_line\\\",\\\"userAgent\\\":\\\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\\\",\\\"valid\\\":true}]}\",\"spendTime\":110,\"startTime\":1505183496112,\"uri\":\"/manage/session/list\",\"url\":\"http://localhost:1111/manage/session/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://localhost:1111\",\"description\":\"后台首页\",\"ip\":\"0:0:0:0:0:0:0:1\",\"logId\":1560,\"method\":\"GET\",\"result\":\"\\\"/manage/index.jsp\\\"\",\"spendTime\":174,\"startTime\":1505183582735,\"uri\":\"/manage/index\",\"url\":\"http://localhost:1111/manage/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\",\"username\":\"admin\"}]}', 'upms:log:read');
INSERT INTO `upms_log` VALUES ('1574', '角色列表', 'admin', '1505183618391', '226', 'http://localhost:1111', '/manage/role/list', 'http://localhost:1111/manage/role/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0:0:0:0:0:0:0:1', '{\"total\":3,\"rows\":[{\"ctime\":1,\"description\":\"拥有所有权限\",\"name\":\"super\",\"orders\":1,\"roleId\":1,\"status\":1,\"title\":\"超级管理员\"},{\"ctime\":1487471013117,\"description\":\"拥有除权限管理系统外的所有权限\",\"name\":\"admin\",\"orders\":1487471013117,\"roleId\":2,\"status\":1,\"title\":\"管理员\"},{\"ctime\":1503645236661,\"description\":\"1\",\"name\":\"测试1\",\"orders\":1503645236661,\"roleId\":3,\"status\":1,\"title\":\"1\"}]}', 'upms:role:read');

-- ----------------------------
-- Table structure for upms_organization
-- ----------------------------
DROP TABLE IF EXISTS `upms_organization`;
CREATE TABLE `upms_organization` (
  `organization_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(10) DEFAULT NULL COMMENT '所属上级',
  `name` varchar(20) DEFAULT NULL COMMENT '组织名称',
  `description` varchar(1000) DEFAULT NULL COMMENT '组织描述',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='组织';

-- ----------------------------
-- Records of upms_organization
-- ----------------------------
INSERT INTO `upms_organization` VALUES ('1', null, '总部', '北京总部', '1', '1');
INSERT INTO `upms_organization` VALUES ('2', null, '天翼客服', '测试', '1503644607100', '1');

-- ----------------------------
-- Table structure for upms_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_permission`;
CREATE TABLE `upms_permission` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `system_id` int(10) unsigned NOT NULL COMMENT '所属系统',
  `pid` int(10) DEFAULT NULL COMMENT '所属上级',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型(1:目录,2:菜单,3:按钮)',
  `permission_value` varchar(50) DEFAULT NULL COMMENT '权限值',
  `uri` varchar(100) DEFAULT NULL COMMENT '路径',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COMMENT='权限';

-- ----------------------------
-- Records of upms_permission
-- ----------------------------
INSERT INTO `upms_permission` VALUES ('1', '1', '0', '系统组织管理', '1', '', '', 'zmdi zmdi-accounts-list', '1', '1', '1');
INSERT INTO `upms_permission` VALUES ('2', '1', '1', '系统管理', '2', 'upms:system:read', '/manage/system/index', '', '1', '2', '2');
INSERT INTO `upms_permission` VALUES ('3', '1', '1', '组织管理', '2', 'upms:organization:read', '/manage/organization/index', '', '1', '3', '3');
INSERT INTO `upms_permission` VALUES ('4', '1', '0', '角色用户管理', '1', '', '', 'zmdi zmdi-accounts', '1', '4', '4');
INSERT INTO `upms_permission` VALUES ('5', '1', '4', '角色管理', '2', 'upms:role:read', '/manage/role/index', '', '1', '6', '6');
INSERT INTO `upms_permission` VALUES ('6', '1', '4', '用户管理', '2', 'upms:user:read', '/manage/user/index', '', '1', '5', '5');
INSERT INTO `upms_permission` VALUES ('7', '1', '0', '权限资源管理', '1', '', '', 'zmdi zmdi-lock-outline', '1', '7', '7');
INSERT INTO `upms_permission` VALUES ('12', '1', '0', '其他数据管理', '1', '', '', 'zmdi zmdi-more', '1', '12', '12');
INSERT INTO `upms_permission` VALUES ('14', '1', '12', '会话管理', '2', 'upms:session:read', '/manage/session/index', '', '1', '14', '14');
INSERT INTO `upms_permission` VALUES ('15', '1', '12', '日志管理', '2', 'upms:log:read', '/manage/log/index', '', '1', '15', '15');
INSERT INTO `upms_permission` VALUES ('24', '1', '2', '系统-新增', '3', 'upms:system:create', '/manage/system/create', 'zmdi zmdi-plus', '1', '24', '24');
INSERT INTO `upms_permission` VALUES ('25', '1', '2', '系统-编辑', '3', 'upms:system:update', '/manage/system/update', 'zmdi zmdi-edit', '1', '25', '25');
INSERT INTO `upms_permission` VALUES ('26', '1', '2', '系统-删除', '3', 'upms:system:delete', '/manage/system/delete', 'zmdi zmdi-close', '1', '26', '26');
INSERT INTO `upms_permission` VALUES ('27', '1', '3', '组织-新增', '3', 'upms:organization:create', '/manage/organization/create', 'zmdi zmdi-plus', '1', '27', '27');
INSERT INTO `upms_permission` VALUES ('28', '1', '3', '组织-编辑', '3', 'upms:organization:update', '/manage/organization/update', 'zmdi zmdi-edit', '1', '28', '28');
INSERT INTO `upms_permission` VALUES ('29', '1', '3', '组织-删除', '3', 'upms:organization:delete', '/manage/organization/delete', 'zmdi zmdi-close', '1', '29', '29');
INSERT INTO `upms_permission` VALUES ('30', '1', '6', '用户-新增', '3', 'upms:user:create', '/manage/user/create', 'zmdi zmdi-plus', '1', '30', '30');
INSERT INTO `upms_permission` VALUES ('31', '1', '6', '用户-编辑', '3', 'upms:user:update', '/manage/user/update', 'zmdi zmdi-edit', '1', '31', '31');
INSERT INTO `upms_permission` VALUES ('32', '1', '6', '用户-删除', '3', 'upms:user:delete', '/manage/user/delete', 'zmdi zmdi-close', '1', '32', '32');
INSERT INTO `upms_permission` VALUES ('33', '1', '5', '角色-新增', '3', 'upms:role:create', '/manage/role/create', 'zmdi zmdi-plus', '1', '33', '33');
INSERT INTO `upms_permission` VALUES ('34', '1', '5', '角色-编辑', '3', 'upms:role:update', '/manage/role/update', 'zmdi zmdi-edit', '1', '34', '34');
INSERT INTO `upms_permission` VALUES ('35', '1', '5', '角色-删除', '3', 'upms:role:delete', '/manage/role/delete', 'zmdi zmdi-close', '1', '35', '35');
INSERT INTO `upms_permission` VALUES ('36', '1', '39', '权限-新增', '3', 'upms:permission:create', '/manage/permission/create', 'zmdi zmdi-plus', '1', '36', '36');
INSERT INTO `upms_permission` VALUES ('37', '1', '39', '权限-编辑', '3', 'upms:permission:update', '/manage/permission/update', 'zmdi zmdi-edit', '1', '37', '37');
INSERT INTO `upms_permission` VALUES ('38', '1', '39', '权限-删除', '3', 'upms:permission:delete', '/manage/permission/delete', 'zmdi zmdi-close', '1', '38', '38');
INSERT INTO `upms_permission` VALUES ('39', '1', '7', '权限管理', '2', 'upms:permission:read', '/manage/permission/index', null, '1', '39', '39');
INSERT INTO `upms_permission` VALUES ('46', '1', '5', '角色-权限', '3', 'upms:role:permission', '/manage/role/permission', 'zmdi zmdi-key', '1', '1488091928257', '1488091928257');
INSERT INTO `upms_permission` VALUES ('48', '1', '6', '用户-组织', '3', 'upms:user:organization', '/manage/user/organization', 'zmdi zmdi-accounts-list', '1', '1488120011165', '1488120011165');
INSERT INTO `upms_permission` VALUES ('50', '1', '6', '用户-角色', '3', 'upms:user:role', '/manage/user/role', 'zmdi zmdi-accounts', '1', '1488120554175', '1488120554175');
INSERT INTO `upms_permission` VALUES ('51', '1', '6', '用户-权限', '3', 'upms:user:permission', '/manage/user/permission', 'zmdi zmdi-key', '1', '1488092013302', '1488092013302');
INSERT INTO `upms_permission` VALUES ('53', '1', '14', '强制退出', '3', 'upms:session:forceout', '/manage/session/forceout', 'zmdi zmdi-run', '1', '1488379514715', '1488379514715');
INSERT INTO `upms_permission` VALUES ('57', '1', '15', '日志-删除', '3', 'upms:log:delete', '/manage/log/delete', 'zmdi zmdi-close', '1', '1489503867909', '1489503867909');
INSERT INTO `upms_permission` VALUES ('61', '2', '0', '其他数据管理', '1', '', '', 'zmdi zmdi-more', '1', '1489835455359', '1489835455359');
INSERT INTO `upms_permission` VALUES ('86', '6', '0', 'Hive监控管理', '1', '', '', 'zmdi zmdi-widgets', '1', '1504858504243', '1504858504243');
INSERT INTO `upms_permission` VALUES ('87', '6', '86', 'HIve管理', '2', 'cms:hive:read', '/manage/hive/index', 'zmdi zmdi-widgets', '1', '1505094611245', '1505094611245');
INSERT INTO `upms_permission` VALUES ('88', '6', '87', 'Hive表-新增', '3', 'cms:hive:create', '/manage/hive/create', 'zmdi zmdi-plus', '1', '1505100433252', '1505100433252');
INSERT INTO `upms_permission` VALUES ('89', '6', '87', 'Hive表-修改', '3', 'cms:hive:update', '/manage/hive/update', 'zmdi zmdi-edit', '1', '1505100600155', '1505100600155');
INSERT INTO `upms_permission` VALUES ('90', '6', '87', 'Hive表-删除', '3', 'cms:hive:delete', '/manage/hive/delete', 'zmdi zmdi-close', '1', '1505100675667', '1505100675667');

-- ----------------------------
-- Table structure for upms_role
-- ----------------------------
DROP TABLE IF EXISTS `upms_role`;
CREATE TABLE `upms_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `title` varchar(20) DEFAULT NULL COMMENT '角色标题',
  `description` varchar(1000) DEFAULT NULL COMMENT '角色描述',
  `ctime` bigint(20) NOT NULL COMMENT '创建时间',
  `orders` bigint(20) NOT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='角色';

-- ----------------------------
-- Records of upms_role
-- ----------------------------
INSERT INTO `upms_role` VALUES ('1', 'super', '超级管理员', '拥有所有权限', '1', '1', '1');
INSERT INTO `upms_role` VALUES ('2', 'admin', '管理员', '拥有除权限管理系统外的所有权限', '1487471013117', '1487471013117', '1');
INSERT INTO `upms_role` VALUES ('3', '测试1', '1', '1', '1503645236661', '1503645236661', '1');

-- ----------------------------
-- Table structure for upms_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_role_permission`;
CREATE TABLE `upms_role_permission` (
  `role_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色编号',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`role_permission_id`),
  KEY `FK_Reference_23` (`role_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`role_id`) REFERENCES `upms_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COMMENT='角色权限关联表';

-- ----------------------------
-- Records of upms_role_permission
-- ----------------------------
INSERT INTO `upms_role_permission` VALUES ('1', '1', '1');
INSERT INTO `upms_role_permission` VALUES ('2', '1', '2');
INSERT INTO `upms_role_permission` VALUES ('3', '1', '3');
INSERT INTO `upms_role_permission` VALUES ('4', '1', '4');
INSERT INTO `upms_role_permission` VALUES ('5', '1', '5');
INSERT INTO `upms_role_permission` VALUES ('6', '1', '6');
INSERT INTO `upms_role_permission` VALUES ('7', '1', '7');
INSERT INTO `upms_role_permission` VALUES ('8', '1', '39');
INSERT INTO `upms_role_permission` VALUES ('12', '1', '12');
INSERT INTO `upms_role_permission` VALUES ('14', '1', '14');
INSERT INTO `upms_role_permission` VALUES ('15', '1', '15');
INSERT INTO `upms_role_permission` VALUES ('17', '1', '17');
INSERT INTO `upms_role_permission` VALUES ('19', '1', '19');
INSERT INTO `upms_role_permission` VALUES ('20', '1', '20');
INSERT INTO `upms_role_permission` VALUES ('21', '1', '21');
INSERT INTO `upms_role_permission` VALUES ('24', '1', '24');
INSERT INTO `upms_role_permission` VALUES ('27', '1', '27');
INSERT INTO `upms_role_permission` VALUES ('28', '1', '28');
INSERT INTO `upms_role_permission` VALUES ('29', '1', '29');
INSERT INTO `upms_role_permission` VALUES ('30', '1', '30');
INSERT INTO `upms_role_permission` VALUES ('31', '1', '31');
INSERT INTO `upms_role_permission` VALUES ('32', '1', '32');
INSERT INTO `upms_role_permission` VALUES ('33', '1', '33');
INSERT INTO `upms_role_permission` VALUES ('34', '1', '34');
INSERT INTO `upms_role_permission` VALUES ('35', '1', '35');
INSERT INTO `upms_role_permission` VALUES ('36', '1', '36');
INSERT INTO `upms_role_permission` VALUES ('37', '1', '37');
INSERT INTO `upms_role_permission` VALUES ('38', '1', '38');
INSERT INTO `upms_role_permission` VALUES ('39', '1', '46');
INSERT INTO `upms_role_permission` VALUES ('40', '1', '51');
INSERT INTO `upms_role_permission` VALUES ('44', '1', '48');
INSERT INTO `upms_role_permission` VALUES ('45', '1', '50');
INSERT INTO `upms_role_permission` VALUES ('47', '1', '53');
INSERT INTO `upms_role_permission` VALUES ('48', '1', '18');
INSERT INTO `upms_role_permission` VALUES ('49', '1', '54');
INSERT INTO `upms_role_permission` VALUES ('50', '1', '54');
INSERT INTO `upms_role_permission` VALUES ('51', '1', '55');
INSERT INTO `upms_role_permission` VALUES ('52', '1', '54');
INSERT INTO `upms_role_permission` VALUES ('53', '1', '55');
INSERT INTO `upms_role_permission` VALUES ('54', '1', '56');
INSERT INTO `upms_role_permission` VALUES ('55', '1', '57');
INSERT INTO `upms_role_permission` VALUES ('56', '1', '58');
INSERT INTO `upms_role_permission` VALUES ('57', '1', '58');
INSERT INTO `upms_role_permission` VALUES ('58', '1', '59');
INSERT INTO `upms_role_permission` VALUES ('59', '1', '60');
INSERT INTO `upms_role_permission` VALUES ('60', '1', '61');
INSERT INTO `upms_role_permission` VALUES ('61', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('62', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('63', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('64', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('65', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('66', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('67', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('68', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('69', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('70', '1', '65');
INSERT INTO `upms_role_permission` VALUES ('71', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('72', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('73', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('74', '1', '65');
INSERT INTO `upms_role_permission` VALUES ('75', '1', '66');
INSERT INTO `upms_role_permission` VALUES ('76', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('77', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('78', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('79', '1', '65');
INSERT INTO `upms_role_permission` VALUES ('80', '1', '66');
INSERT INTO `upms_role_permission` VALUES ('81', '1', '67');
INSERT INTO `upms_role_permission` VALUES ('82', '1', '68');
INSERT INTO `upms_role_permission` VALUES ('83', '1', '69');
INSERT INTO `upms_role_permission` VALUES ('84', '1', '69');
INSERT INTO `upms_role_permission` VALUES ('85', '1', '70');
INSERT INTO `upms_role_permission` VALUES ('86', '1', '69');
INSERT INTO `upms_role_permission` VALUES ('87', '1', '70');
INSERT INTO `upms_role_permission` VALUES ('88', '1', '71');
INSERT INTO `upms_role_permission` VALUES ('89', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('90', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('91', '1', '73');
INSERT INTO `upms_role_permission` VALUES ('92', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('93', '1', '73');
INSERT INTO `upms_role_permission` VALUES ('94', '1', '74');
INSERT INTO `upms_role_permission` VALUES ('95', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('96', '1', '73');
INSERT INTO `upms_role_permission` VALUES ('97', '1', '74');
INSERT INTO `upms_role_permission` VALUES ('98', '1', '75');
INSERT INTO `upms_role_permission` VALUES ('99', '1', '76');
INSERT INTO `upms_role_permission` VALUES ('100', '1', '76');
INSERT INTO `upms_role_permission` VALUES ('101', '1', '77');
INSERT INTO `upms_role_permission` VALUES ('102', '1', '76');
INSERT INTO `upms_role_permission` VALUES ('103', '1', '77');
INSERT INTO `upms_role_permission` VALUES ('105', '1', '79');
INSERT INTO `upms_role_permission` VALUES ('106', '1', '80');
INSERT INTO `upms_role_permission` VALUES ('107', '1', '81');
INSERT INTO `upms_role_permission` VALUES ('108', '1', '81');
INSERT INTO `upms_role_permission` VALUES ('109', '1', '82');
INSERT INTO `upms_role_permission` VALUES ('110', '1', '81');
INSERT INTO `upms_role_permission` VALUES ('111', '1', '82');
INSERT INTO `upms_role_permission` VALUES ('112', '1', '83');
INSERT INTO `upms_role_permission` VALUES ('113', '1', '84');
INSERT INTO `upms_role_permission` VALUES ('114', '1', '84');
INSERT INTO `upms_role_permission` VALUES ('115', '1', '85');
INSERT INTO `upms_role_permission` VALUES ('121', '1', '78');
INSERT INTO `upms_role_permission` VALUES ('122', '1', '78');
INSERT INTO `upms_role_permission` VALUES ('124', '1', '25');
INSERT INTO `upms_role_permission` VALUES ('125', '1', '26');
INSERT INTO `upms_role_permission` VALUES ('126', '3', '4');
INSERT INTO `upms_role_permission` VALUES ('127', '3', '6');
INSERT INTO `upms_role_permission` VALUES ('128', '3', '5');

-- ----------------------------
-- Table structure for upms_system
-- ----------------------------
DROP TABLE IF EXISTS `upms_system`;
CREATE TABLE `upms_system` (
  `system_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `banner` varchar(150) DEFAULT NULL COMMENT '背景',
  `theme` varchar(50) DEFAULT NULL COMMENT '主题',
  `basepath` varchar(100) DEFAULT NULL COMMENT '根目录',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态(-1:黑名单,1:正常)',
  `name` varchar(20) DEFAULT NULL COMMENT '系统名称',
  `title` varchar(20) DEFAULT NULL COMMENT '系统标题',
  `description` varchar(300) DEFAULT NULL COMMENT '系统描述',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='系统';

-- ----------------------------
-- Records of upms_system
-- ----------------------------
INSERT INTO `upms_system` VALUES ('1', 'zmdi zmdi-shield-security', '/resources/tro-admin/images/tro-upms.png', '#29A176', 'http://localhost:1111', '1', 'tro-upms-server', '权限管理系统', '用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）', '1', '1');
INSERT INTO `upms_system` VALUES ('2', 'zmdi zmdi-cloud', '/resources/tro-admin/images/tro-cms.png', '#447ad5', 'http://localhost:1113', '1', 'tro-monitor', '监控管理系统', '监控', '1504753668594', '1504753668594');

-- ----------------------------
-- Table structure for upms_user
-- ----------------------------
DROP TABLE IF EXISTS `upms_user`;
CREATE TABLE `upms_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(20) NOT NULL COMMENT '帐号',
  `password` varchar(32) NOT NULL COMMENT '密码MD5(密码+盐)',
  `salt` varchar(32) DEFAULT NULL COMMENT '盐',
  `realname` varchar(20) DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(150) DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `locked` tinyint(4) DEFAULT NULL COMMENT '状态(0:正常,1:锁定)',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='用户';

-- ----------------------------
-- Records of upms_user
-- ----------------------------
INSERT INTO `upms_user` VALUES ('1', 'admin', '3038D9CB63B3152A79B8153FB06C02F7', '66f1b370c660445a8657bf8bf1794486', '徐启明(超)', '/resources/tro-admin/images/avatar.jpg', '', '15618669257@189.cn', '1', '0', '1');
INSERT INTO `upms_user` VALUES ('2', 'test', '285C9762F5F9046F5893F752DFAF3476', 'd2d0d03310444ad388a8b290b0fe8564', '徐启明(测)', '/resources/tro-admin/images/avatar.jpg', '', '15618669257@189.cn', '1', '0', '1493394720495');
INSERT INTO `upms_user` VALUES ('3', 'xqm@189.cn', '4753C0371A30D006C4B8133D34C5A1CF', '0d8f631d3ebf42058b988cf9447e01de', '徐启明', '/resources/tro-admin/images/avatar.jpg', '2328549', '15618669257@189.cn', '1', '0', '1503645149924');

-- ----------------------------
-- Table structure for upms_user_organization
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_organization`;
CREATE TABLE `upms_user_organization` (
  `user_organization_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `organization_id` int(10) unsigned NOT NULL COMMENT '组织编号',
  PRIMARY KEY (`user_organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='用户组织关联表';

-- ----------------------------
-- Records of upms_user_organization
-- ----------------------------
INSERT INTO `upms_user_organization` VALUES ('19', '1', '1');
INSERT INTO `upms_user_organization` VALUES ('20', '1', '4');
INSERT INTO `upms_user_organization` VALUES ('21', '1', '5');
INSERT INTO `upms_user_organization` VALUES ('22', '1', '6');
INSERT INTO `upms_user_organization` VALUES ('23', '1', '7');
INSERT INTO `upms_user_organization` VALUES ('24', '3', '8');
INSERT INTO `upms_user_organization` VALUES ('26', '4', '4');
INSERT INTO `upms_user_organization` VALUES ('27', '4', '6');
INSERT INTO `upms_user_organization` VALUES ('28', '4', '8');

-- ----------------------------
-- Table structure for upms_user_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_permission`;
CREATE TABLE `upms_user_permission` (
  `user_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限编号',
  `type` tinyint(4) NOT NULL COMMENT '权限类型(-1:减权限,1:增权限)',
  PRIMARY KEY (`user_permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COMMENT='用户权限关联表';

-- ----------------------------
-- Records of upms_user_permission
-- ----------------------------
INSERT INTO `upms_user_permission` VALUES ('3', '1', '22', '-1');
INSERT INTO `upms_user_permission` VALUES ('4', '1', '22', '1');
INSERT INTO `upms_user_permission` VALUES ('5', '2', '24', '-1');
INSERT INTO `upms_user_permission` VALUES ('6', '2', '26', '-1');
INSERT INTO `upms_user_permission` VALUES ('7', '2', '27', '-1');
INSERT INTO `upms_user_permission` VALUES ('8', '2', '29', '-1');
INSERT INTO `upms_user_permission` VALUES ('9', '2', '32', '-1');
INSERT INTO `upms_user_permission` VALUES ('10', '2', '51', '-1');
INSERT INTO `upms_user_permission` VALUES ('11', '2', '48', '-1');
INSERT INTO `upms_user_permission` VALUES ('12', '2', '50', '-1');
INSERT INTO `upms_user_permission` VALUES ('13', '2', '35', '-1');
INSERT INTO `upms_user_permission` VALUES ('14', '2', '46', '-1');
INSERT INTO `upms_user_permission` VALUES ('15', '2', '37', '-1');
INSERT INTO `upms_user_permission` VALUES ('16', '2', '38', '-1');
INSERT INTO `upms_user_permission` VALUES ('17', '2', '57', '-1');
INSERT INTO `upms_user_permission` VALUES ('18', '2', '56', '-1');
INSERT INTO `upms_user_permission` VALUES ('19', '2', '59', '-1');
INSERT INTO `upms_user_permission` VALUES ('20', '2', '78', '-1');
INSERT INTO `upms_user_permission` VALUES ('21', '2', '67', '-1');
INSERT INTO `upms_user_permission` VALUES ('22', '2', '83', '-1');
INSERT INTO `upms_user_permission` VALUES ('23', '2', '71', '-1');
INSERT INTO `upms_user_permission` VALUES ('24', '2', '75', '-1');
INSERT INTO `upms_user_permission` VALUES ('25', '4', '1', '1');
INSERT INTO `upms_user_permission` VALUES ('26', '4', '2', '1');
INSERT INTO `upms_user_permission` VALUES ('27', '4', '24', '1');
INSERT INTO `upms_user_permission` VALUES ('28', '4', '25', '1');
INSERT INTO `upms_user_permission` VALUES ('29', '4', '26', '1');
INSERT INTO `upms_user_permission` VALUES ('30', '1', '86', '1');
INSERT INTO `upms_user_permission` VALUES ('31', '1', '87', '1');
INSERT INTO `upms_user_permission` VALUES ('32', '1', '88', '1');
INSERT INTO `upms_user_permission` VALUES ('33', '1', '89', '1');
INSERT INTO `upms_user_permission` VALUES ('34', '1', '90', '1');

-- ----------------------------
-- Table structure for upms_user_role
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_role`;
CREATE TABLE `upms_user_role` (
  `user_role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `role_id` int(10) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of upms_user_role
-- ----------------------------
INSERT INTO `upms_user_role` VALUES ('4', '1', '1');
INSERT INTO `upms_user_role` VALUES ('5', '1', '2');
INSERT INTO `upms_user_role` VALUES ('6', '2', '1');
INSERT INTO `upms_user_role` VALUES ('7', '2', '2');
INSERT INTO `upms_user_role` VALUES ('11', '4', '3');
INSERT INTO `upms_user_role` VALUES ('12', '3', '1');
