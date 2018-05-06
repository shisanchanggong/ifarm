/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : ifarm-console

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 06/05/2018 23:37:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_console_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_console_permission`;
CREATE TABLE `t_console_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) NULL DEFAULT NULL,
  `permission_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_console_permission
-- ----------------------------
INSERT INTO `t_console_permission` VALUES (1, 1, '/console_1/menu', 'console系统', '2018-04-14 20:33:22');
INSERT INTO `t_console_permission` VALUES (2, 2, '/console_101/menu', '综合管理', '2018-04-14 20:33:22');
INSERT INTO `t_console_permission` VALUES (3, 3, '/console_102/menu', '基础数据', '2018-04-14 20:33:22');
INSERT INTO `t_console_permission` VALUES (4, 4, '/console_103/menu', '系统设置', '2018-04-14 20:33:22');
INSERT INTO `t_console_permission` VALUES (5, 7, '/console_10301/menu', '用户管理', '2018-04-14 20:33:22');
INSERT INTO `t_console_permission` VALUES (6, 9, '/console_10303/menu', '菜单管理', '2018-04-14 20:33:22');
INSERT INTO `t_console_permission` VALUES (7, 9, '/console_10303/add', '增加菜单', '2018-04-14 20:33:22');
INSERT INTO `t_console_permission` VALUES (8, 5, '/console_10303/update', '修改菜单', '2018-04-30 17:42:36');
INSERT INTO `t_console_permission` VALUES (9, 9, '/console_10303/update', '修改菜单', '2018-05-06 23:13:58');
INSERT INTO `t_console_permission` VALUES (10, 9, '/ console_10303/permission/add', '新增权限', '2018-05-06 23:21:54');
INSERT INTO `t_console_permission` VALUES (11, 9, '/ console_10303/permission/update', '修改权限', '2018-05-06 23:25:13');
INSERT INTO `t_console_permission` VALUES (12, 9, '/ console_10303/permission/delete', '删除权限', '2018-05-06 23:31:47');

-- ----------------------------
-- Table structure for t_console_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_console_resource`;
CREATE TABLE `t_console_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resource_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `router` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `component` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resource_level` tinyint(4) NULL DEFAULT NULL,
  `resource_type` tinyint(4) NULL DEFAULT NULL,
  `display_order` tinyint(4) NULL DEFAULT NULL,
  `node_icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leaf_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modify_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_console_resource
-- ----------------------------
INSERT INTO `t_console_resource` VALUES (1, 'console_1', 'console系统', NULL, NULL, 'root', 1, 1, 1, NULL, NULL, 'N', 'Y', '2018-04-14 19:55:02', '2018-04-14 19:55:05');
INSERT INTO `t_console_resource` VALUES (2, 'console_101', '综合管理', '', NULL, 'console_1', 2, 2, 1, 'el-icon-document', NULL, 'N', 'Y', '2018-04-14 20:06:21', '2018-04-14 20:06:21');
INSERT INTO `t_console_resource` VALUES (3, 'console_102', '基础数据', '', NULL, 'console_1', 2, 2, 2, 'el-icon-edit', NULL, 'N', 'Y', '2018-04-14 20:06:21', '2018-04-14 20:06:21');
INSERT INTO `t_console_resource` VALUES (4, 'console_103', '系统设置', '', NULL, 'console_1', 2, 2, 3, 'el-icon-setting', NULL, 'N', 'Y', '2018-04-14 20:06:21', '2018-04-14 20:06:21');
INSERT INTO `t_console_resource` VALUES (5, 'console_10201', '词条管理', 'termsCodeManagement', 'setting/termsCodeManagement', 'console_102', 3, 3, 1, '', NULL, 'Y', 'Y', '2018-04-14 20:06:21', '2018-05-05 15:10:22');
INSERT INTO `t_console_resource` VALUES (6, 'console_10202', '字典管理', 'termsValueManagement', 'setting/termsValueManagement', 'console_102', 3, 3, 1, '', NULL, 'Y', 'N', '2018-04-14 20:06:21', '2018-04-14 20:06:21');
INSERT INTO `t_console_resource` VALUES (7, 'console_10301', '用户管理', 'userManagement', 'setting/userManagement', 'console_103', 3, 3, 1, '', NULL, 'Y', 'Y', '2018-04-14 20:06:21', '2018-04-14 20:06:21');
INSERT INTO `t_console_resource` VALUES (8, 'console_10302', '角色管理', 'roleManagement', 'setting/roleManagement', 'console_103', 3, 3, 2, '', NULL, 'Y', 'Y', '2018-04-14 20:06:21', '2018-04-14 20:06:21');
INSERT INTO `t_console_resource` VALUES (9, 'console_10303', '菜单管理', 'resourceManagement', 'setting/resourceManagement', 'console_103', 3, 3, 2, '', NULL, 'Y', 'Y', '2018-04-14 20:06:21', '2018-04-14 20:06:21');
INSERT INTO `t_console_resource` VALUES (10, ' console_10101', '部门管理', '', '', 'console_101', 3, 3, 1, '', '', 'Y', 'Y', '2018-05-05 15:17:15', '2018-05-05 15:17:15');

-- ----------------------------
-- Table structure for t_console_role
-- ----------------------------
DROP TABLE IF EXISTS `t_console_role`;
CREATE TABLE `t_console_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modify_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_console_role
-- ----------------------------
INSERT INTO `t_console_role` VALUES (1, 'admin', 'admin', NULL, 'Y', '2018-04-14 20:12:16', '2018-04-14 20:12:19');
INSERT INTO `t_console_role` VALUES (2, 'TEST', '测试123', '', 'N', '2018-04-30 21:34:36', '2018-04-30 21:36:17');
INSERT INTO `t_console_role` VALUES (3, 'test', '测试', '', 'Y', '2018-04-30 21:36:58', '2018-04-30 21:36:58');

-- ----------------------------
-- Table structure for t_console_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_console_role_permission`;
CREATE TABLE `t_console_role_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `permission_id` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_console_role_permission
-- ----------------------------
INSERT INTO `t_console_role_permission` VALUES (1, 1, 1, '2018-04-14 20:35:38');
INSERT INTO `t_console_role_permission` VALUES (2, 1, 2, '2018-04-14 20:35:38');
INSERT INTO `t_console_role_permission` VALUES (3, 1, 3, '2018-04-14 20:35:38');
INSERT INTO `t_console_role_permission` VALUES (4, 1, 4, '2018-04-14 20:35:38');
INSERT INTO `t_console_role_permission` VALUES (5, 1, 5, '2018-04-14 20:35:38');
INSERT INTO `t_console_role_permission` VALUES (6, 1, 6, '2018-04-14 20:35:38');
INSERT INTO `t_console_role_permission` VALUES (7, 1, 7, '2018-04-14 20:35:38');
INSERT INTO `t_console_role_permission` VALUES (8, 1, 8, '2018-05-05 16:43:14');

-- ----------------------------
-- Table structure for t_console_user
-- ----------------------------
DROP TABLE IF EXISTS `t_console_user`;
CREATE TABLE `t_console_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nick_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emp_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否可用Y:N',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modify_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_console_user
-- ----------------------------
INSERT INTO `t_console_user` VALUES (1, 'admin', '88212F91E2E9CF36981A91B6C518AF5C', 'longhairen', 'YWRtaW4=', 'lhr9563215@163.com', '18621526765', '275688', '000001', NULL, 'Y', '2018-04-14 12:39:10', '2018-04-14 12:39:10');

-- ----------------------------
-- Table structure for t_console_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_console_user_role`;
CREATE TABLE `t_console_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_console_user_role
-- ----------------------------
INSERT INTO `t_console_user_role` VALUES (1, 1, 1, '2018-04-14 20:12:08');

-- ----------------------------
-- Table structure for t_data_termscode
-- ----------------------------
DROP TABLE IF EXISTS `t_data_termscode`;
CREATE TABLE `t_data_termscode`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `terms_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条款编码',
  `terms_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条款名称',
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modify_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_terms_code`(`terms_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_data_termscode
-- ----------------------------
INSERT INTO `t_data_termscode` VALUES (1, 'GENDER', '性别', NULL, 'Y', '2018-03-09 15:54:19', NULL);
INSERT INTO `t_data_termscode` VALUES (2, 'SYSTEM_TYPE', '系统类型', NULL, 'Y', '2018-03-28 09:41:54', NULL);
INSERT INTO `t_data_termscode` VALUES (3, 'JURISDICTION_TYPE', '权限类型', NULL, 'Y', '2018-03-28 09:41:54', NULL);
INSERT INTO `t_data_termscode` VALUES (4, 'RESOURCES_LEVEL', '权限级别', NULL, 'Y', '2018-03-28 09:41:54', NULL);
INSERT INTO `t_data_termscode` VALUES (5, 'ACTIVE', '是否有效', '', 'Y', '2018-03-28 21:37:12', '2018-03-28 21:37:12');
INSERT INTO `t_data_termscode` VALUES (6, 'ROLETYPE', '角色类型', '', 'Y', '2018-03-28 23:25:08', '2018-03-28 23:25:08');
INSERT INTO `t_data_termscode` VALUES (7, 'DATA_STATUE', '数据状态', '', 'Y', '2018-03-28 23:27:56', '2018-05-01 17:31:03');
INSERT INTO `t_data_termscode` VALUES (8, 'DATACHECK', '数据检查', '', 'Y', '2018-03-28 23:29:34', '2018-03-28 23:29:34');
INSERT INTO `t_data_termscode` VALUES (9, 'ISEMP', '公司职员', '', 'Y', '2018-03-29 00:21:36', '2018-03-29 00:21:36');
INSERT INTO `t_data_termscode` VALUES (11, 'LEAF_FLAG', '叶子节点', '', 'Y', '2018-05-03 20:19:49', '2018-05-03 20:19:49');

-- ----------------------------
-- Table structure for t_data_termsvalue
-- ----------------------------
DROP TABLE IF EXISTS `t_data_termsvalue`;
CREATE TABLE `t_data_termsvalue`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '值编码',
  `value_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '值名称',
  `terms_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条款编码',
  `terms_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value_seq` tinyint(1) NULL DEFAULT NULL COMMENT '排序',
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modify_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_value_code`(`value_code`) USING BTREE,
  INDEX `idx_terms_code`(`terms_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_data_termsvalue
-- ----------------------------
INSERT INTO `t_data_termsvalue` VALUES (1, 'FEMALE', '女', 'GENDER', '性别', 1, NULL, 'Y', '2018-03-09 15:56:57', '2018-03-28 17:47:17');
INSERT INTO `t_data_termsvalue` VALUES (2, 'MALE', '男', 'GENDER', '性别', 2, NULL, 'Y', '2018-03-09 15:56:57', '2018-03-28 17:47:17');
INSERT INTO `t_data_termsvalue` VALUES (3, 'WEB', 'WEB', 'SYSTEM_TYPE', '系统类型', 1, NULL, 'Y', '2018-03-28 09:50:08', '2018-03-28 16:49:18');
INSERT INTO `t_data_termsvalue` VALUES (4, 'APP', 'APP', 'SYSTEM_TYPE', '系统类型', 2, NULL, 'Y', '2018-03-28 09:50:08', '2018-03-28 16:49:26');
INSERT INTO `t_data_termsvalue` VALUES (5, '1', '子系统', 'JURISDICTION_TYPE', '权限类型', 1, NULL, 'Y', '2018-03-28 09:50:08', '2018-03-28 16:49:26');
INSERT INTO `t_data_termsvalue` VALUES (6, '2', '模块', 'JURISDICTION_TYPE', '权限类型', 2, NULL, 'Y', '2018-03-28 09:50:08', '2018-03-28 16:49:27');
INSERT INTO `t_data_termsvalue` VALUES (7, '3', '菜单', 'JURISDICTION_TYPE', '权限类型', 3, NULL, 'Y', '2018-03-28 09:50:08', '2018-03-28 16:49:28');
INSERT INTO `t_data_termsvalue` VALUES (8, '4', '按钮', 'JURISDICTION_TYPE', '权限类型', 4, NULL, 'Y', '2018-03-28 09:50:08', '2018-03-28 16:49:33');
INSERT INTO `t_data_termsvalue` VALUES (9, '1', '1', 'RESOURCES_LEVEL', '权限级别', 1, NULL, 'Y', '2018-03-28 09:50:08', '2018-03-28 16:49:33');
INSERT INTO `t_data_termsvalue` VALUES (10, '2', '2', 'RESOURCES_LEVEL', '权限级别', 2, NULL, 'Y', '2018-03-28 09:50:08', '2018-03-28 16:49:34');
INSERT INTO `t_data_termsvalue` VALUES (11, '3', '3', 'RESOURCES_LEVEL', '权限级别', 3, NULL, 'Y', '2018-03-28 09:50:08', '2018-03-28 16:49:35');
INSERT INTO `t_data_termsvalue` VALUES (12, '4', '4', 'RESOURCES_LEVEL', '权限级别', 4, NULL, 'Y', '2018-03-28 09:50:08', '2018-03-28 16:49:38');
INSERT INTO `t_data_termsvalue` VALUES (13, 'Y', '是', 'ACTIVE', '是否有效', 1, '', 'Y', '2018-03-28 23:07:54', '2018-03-28 23:07:54');
INSERT INTO `t_data_termsvalue` VALUES (14, 'N', '否', 'ACTIVE', '是否有效', 2, '', 'Y', '2018-03-28 23:12:32', '2018-03-28 23:12:32');
INSERT INTO `t_data_termsvalue` VALUES (15, 'WEB', 'WEB', 'ROLETYPE', '角色类型', 1, '', 'Y', '2018-03-28 23:25:49', '2018-03-28 23:25:49');
INSERT INTO `t_data_termsvalue` VALUES (16, 'APP', 'APP', 'ROLETYPE', '角色类型', 2, '', 'Y', '2018-03-28 23:26:06', '2018-03-28 23:26:06');
INSERT INTO `t_data_termsvalue` VALUES (17, 'Y', '有效', 'DATA_STATUE', '数据状态', 1, '', 'Y', '2018-03-28 23:28:17', '2018-05-01 17:30:43');
INSERT INTO `t_data_termsvalue` VALUES (18, 'N', '无效', 'DATA_STATUE', '数据状态', 2, '', 'Y', '2018-03-28 23:28:35', '2018-05-01 17:30:40');
INSERT INTO `t_data_termsvalue` VALUES (19, '0', '是', 'DATACHECK', '数据检查', 1, '', 'Y', '2018-03-28 23:29:52', '2018-03-29 00:19:55');
INSERT INTO `t_data_termsvalue` VALUES (20, '1', '否', 'DATACHECK', '数据检查', 2, '', 'Y', '2018-03-28 23:30:08', '2018-03-29 00:20:02');
INSERT INTO `t_data_termsvalue` VALUES (21, 'Y', '是', 'ISEMP', '公司职员', 1, '', 'Y', '2018-03-29 00:21:53', '2018-03-29 00:21:53');
INSERT INTO `t_data_termsvalue` VALUES (22, 'N', '否', 'ISEMP', '公司职员', 2, '', 'Y', '2018-03-29 00:22:12', '2018-03-29 00:22:12');
INSERT INTO `t_data_termsvalue` VALUES (28, 'Y', '是', 'LEAF_FLAG', '叶子节点', 1, '', 'Y', '2018-05-03 20:21:07', '2018-05-03 20:21:07');
INSERT INTO `t_data_termsvalue` VALUES (29, 'N', '否', 'LEAF_FLAG', '叶子节点', 2, '', 'Y', '2018-05-03 20:21:22', '2018-05-03 20:23:54');

SET FOREIGN_KEY_CHECKS = 1;
