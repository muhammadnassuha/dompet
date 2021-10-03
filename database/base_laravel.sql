/*
 Navicat Premium Data Transfer

 Source Server         : Base  Laravel
 Source Server Type    : MySQL
 Source Server Version : 100323
 Source Host           : castercodes.com:3306
 Source Schema         : u9434760_base_laravel

 Target Server Type    : MySQL
 Target Server Version : 100323
 File Encoding         : 65001

 Date: 03/08/2020 15:44:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (8, '2020_07_21_080510_create_activity_log_table', 4);
COMMIT;

-- ----------------------------
-- Table structure for sec_accessrole
-- ----------------------------
DROP TABLE IF EXISTS `sec_accessrole`;
CREATE TABLE `sec_accessrole` (
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `action` varchar(10) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sec_accessrole
-- ----------------------------
BEGIN;
INSERT INTO `sec_accessrole` VALUES (1, 1, 'S', '2020-08-03 04:28:51', 6);
INSERT INTO `sec_accessrole` VALUES (1, 1, 'R', '2020-08-03 04:28:54', 6);
INSERT INTO `sec_accessrole` VALUES (1, 1, 'C', '2020-08-03 04:28:57', 6);
INSERT INTO `sec_accessrole` VALUES (1, 1, 'U', '2020-08-03 04:29:02', 6);
INSERT INTO `sec_accessrole` VALUES (1, 1, 'D', '2020-08-03 04:29:08', 6);
INSERT INTO `sec_accessrole` VALUES (1, 4, 'R', '2020-08-03 04:29:13', 6);
INSERT INTO `sec_accessrole` VALUES (1, 4, 'C', '2020-08-03 04:29:16', 6);
INSERT INTO `sec_accessrole` VALUES (1, 4, 'U', '2020-08-03 04:29:19', 6);
INSERT INTO `sec_accessrole` VALUES (1, 4, 'D', '2020-08-03 04:29:27', 6);
INSERT INTO `sec_accessrole` VALUES (1, 4, 'S', '2020-08-03 04:29:30', 6);
INSERT INTO `sec_accessrole` VALUES (1, 3, 'S', '2020-08-03 04:29:33', 6);
INSERT INTO `sec_accessrole` VALUES (1, 7, 'R', '2020-08-03 04:29:36', 6);
INSERT INTO `sec_accessrole` VALUES (1, 7, 'C', '2020-08-03 04:29:38', 6);
INSERT INTO `sec_accessrole` VALUES (1, 7, 'U', '2020-08-03 04:29:41', 6);
INSERT INTO `sec_accessrole` VALUES (1, 7, 'D', '2020-08-03 04:29:43', 6);
INSERT INTO `sec_accessrole` VALUES (1, 7, 'S', '2020-08-03 04:29:45', 6);
INSERT INTO `sec_accessrole` VALUES (1, 8, 'R', '2020-08-03 04:29:48', 6);
INSERT INTO `sec_accessrole` VALUES (1, 8, 'C', '2020-08-03 04:29:50', 6);
INSERT INTO `sec_accessrole` VALUES (1, 8, 'U', '2020-08-03 04:29:53', 6);
INSERT INTO `sec_accessrole` VALUES (1, 8, 'D', '2020-08-03 04:29:55', 6);
INSERT INTO `sec_accessrole` VALUES (1, 8, 'S', '2020-08-03 04:29:58', 6);
INSERT INTO `sec_accessrole` VALUES (1, 9, 'R', '2020-08-03 04:30:00', 6);
INSERT INTO `sec_accessrole` VALUES (1, 9, 'C', '2020-08-03 04:30:02', 6);
INSERT INTO `sec_accessrole` VALUES (1, 9, 'U', '2020-08-03 04:30:04', 6);
INSERT INTO `sec_accessrole` VALUES (1, 9, 'D', '2020-08-03 04:30:07', 6);
INSERT INTO `sec_accessrole` VALUES (1, 9, 'S', '2020-08-03 04:30:09', 6);
INSERT INTO `sec_accessrole` VALUES (2, 4, 'S', '2020-08-03 04:33:57', 1);
INSERT INTO `sec_accessrole` VALUES (2, 4, 'D', '2020-08-03 04:34:00', 1);
INSERT INTO `sec_accessrole` VALUES (2, 4, 'U', '2020-08-03 04:34:03', 1);
INSERT INTO `sec_accessrole` VALUES (2, 4, 'C', '2020-08-03 04:34:05', 1);
INSERT INTO `sec_accessrole` VALUES (2, 4, 'R', '2020-08-03 04:34:07', 1);
INSERT INTO `sec_accessrole` VALUES (1, 10, 'S', '2020-08-03 05:14:13', 1);
INSERT INTO `sec_accessrole` VALUES (1, 10, 'R', '2020-08-03 05:14:16', 1);
INSERT INTO `sec_accessrole` VALUES (1, 10, 'C', '2020-08-03 05:14:18', 1);
INSERT INTO `sec_accessrole` VALUES (1, 10, 'U', '2020-08-03 05:14:20', 1);
INSERT INTO `sec_accessrole` VALUES (1, 10, 'D', '2020-08-03 05:14:23', 1);
COMMIT;

-- ----------------------------
-- Table structure for sec_module
-- ----------------------------
DROP TABLE IF EXISTS `sec_module`;
CREATE TABLE `sec_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `active` char(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` char(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sec_module
-- ----------------------------
BEGIN;
INSERT INTO `sec_module` VALUES (1, 'Dashboard', '/', 'fa fa-dashboard', 1, 0, '1', 6, '2020-08-03 03:18:18', 6, '2020-08-03 04:26:48', NULL, '2020-08-03 10:18:18', '0');
INSERT INTO `sec_module` VALUES (2, 'Dashboard 2', NULL, 'fa fa-book', 1, 0, '1', 6, '2020-08-03 03:19:11', 6, '2020-08-03 03:21:32', 6, '2020-08-03 03:22:07', '1');
INSERT INTO `sec_module` VALUES (3, 'Settings', NULL, 'fa fa-cog', 3, 0, '1', 6, '2020-08-03 04:07:57', 6, '2020-08-03 04:20:29', NULL, '2020-08-03 11:07:57', '0');
INSERT INTO `sec_module` VALUES (4, 'User', '/master/sys-user', 'fa fa-users', 2, 0, '1', 6, '2020-08-03 04:08:33', 6, '2020-08-03 04:25:23', NULL, '2020-08-03 11:08:33', '0');
INSERT INTO `sec_module` VALUES (5, 'Sample', NULL, NULL, 1, 0, '1', 6, '2020-08-03 04:13:34', 6, '2020-08-03 04:13:34', 6, '2020-08-03 04:19:07', '1');
INSERT INTO `sec_module` VALUES (6, 'Sample 2', NULL, NULL, 2, 0, '1', 6, '2020-08-03 04:15:44', 6, '2020-08-03 04:15:44', 6, '2020-08-03 04:19:00', '1');
INSERT INTO `sec_module` VALUES (7, 'Module', '/setting/menu', NULL, 4, 3, '1', 6, '2020-08-03 04:19:52', 6, '2020-08-03 04:19:52', NULL, '2020-08-03 11:19:52', '0');
INSERT INTO `sec_module` VALUES (8, 'Role', '/setting/role', NULL, 5, 3, '1', 6, '2020-08-03 04:22:39', 6, '2020-08-03 04:22:39', NULL, '2020-08-03 11:22:39', '0');
INSERT INTO `sec_module` VALUES (9, 'Access Role', '/setting/access-role', NULL, 6, 3, '1', 6, '2020-08-03 04:23:59', 6, '2020-08-03 04:23:59', NULL, '2020-08-03 11:23:59', '0');
INSERT INTO `sec_module` VALUES (10, 'Log Activity', '/setting/log-activity', NULL, 7, 3, '1', 1, '2020-08-03 05:13:59', 1, '2020-08-03 05:13:59', NULL, '2020-08-03 12:13:59', '0');
INSERT INTO `sec_module` VALUES (11, 'Sample s', NULL, NULL, 12, 0, '1', 1, '2020-08-03 05:29:22', 1, '2020-08-03 05:29:22', NULL, '2020-08-03 12:29:22', '0');
COMMIT;

-- ----------------------------
-- Table structure for sec_role
-- ----------------------------
DROP TABLE IF EXISTS `sec_role`;
CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sec_role
-- ----------------------------
BEGIN;
INSERT INTO `sec_role` VALUES (1, 'R001', 'Administrator', 1, 1, '2020-08-01 15:09:34', 6, '2020-08-01 08:25:51', NULL, '2020-08-01 15:09:34', 0);
INSERT INTO `sec_role` VALUES (2, 'R002', 'Employee', 1, 6, '2020-08-01 08:22:44', 6, '2020-08-01 08:26:01', NULL, '2020-08-01 15:22:44', 0);
INSERT INTO `sec_role` VALUES (3, 'R003', 'Member', 1, 6, '2020-08-01 08:26:44', 6, '2020-08-01 08:26:44', 6, '2020-08-01 08:26:49', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_log_activity
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_log_activity`;
CREATE TABLE `sys_user_log_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `method` varchar(16) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `agent` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user_log_activity
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_log_activity` VALUES (1, 'Read Module Project Category Successfully', 'http://localhost:8000/master/category-project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 15:37:15', '2020-07-27 15:37:15');
INSERT INTO `sys_user_log_activity` VALUES (2, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 15:37:22', '2020-07-27 15:37:22');
INSERT INTO `sys_user_log_activity` VALUES (3, 'Create Module Project #ID 8 Successfully', 'http://localhost:8000/master/project', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 15:37:58', '2020-07-27 15:37:58');
INSERT INTO `sys_user_log_activity` VALUES (4, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 15:39:11', '2020-07-27 15:39:11');
INSERT INTO `sys_user_log_activity` VALUES (5, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 15:44:03', '2020-07-27 15:44:03');
INSERT INTO `sys_user_log_activity` VALUES (6, 'Read Module Project Category Successfully', 'http://localhost:8000/master/category-project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 15:44:07', '2020-07-27 15:44:07');
INSERT INTO `sys_user_log_activity` VALUES (7, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:12:42', '2020-07-27 16:12:42');
INSERT INTO `sys_user_log_activity` VALUES (8, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:16:34', '2020-07-27 16:16:34');
INSERT INTO `sys_user_log_activity` VALUES (9, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:16:40', '2020-07-27 16:16:40');
INSERT INTO `sys_user_log_activity` VALUES (10, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:17:01', '2020-07-27 16:17:01');
INSERT INTO `sys_user_log_activity` VALUES (11, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:18:19', '2020-07-27 16:18:19');
INSERT INTO `sys_user_log_activity` VALUES (12, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:22:15', '2020-07-27 16:22:15');
INSERT INTO `sys_user_log_activity` VALUES (13, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:22:26', '2020-07-27 16:22:26');
INSERT INTO `sys_user_log_activity` VALUES (14, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:22:29', '2020-07-27 16:22:29');
INSERT INTO `sys_user_log_activity` VALUES (15, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:23:38', '2020-07-27 16:23:38');
INSERT INTO `sys_user_log_activity` VALUES (16, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:23:54', '2020-07-27 16:23:54');
INSERT INTO `sys_user_log_activity` VALUES (17, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:24:07', '2020-07-27 16:24:07');
INSERT INTO `sys_user_log_activity` VALUES (18, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:24:11', '2020-07-27 16:24:11');
INSERT INTO `sys_user_log_activity` VALUES (19, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:25:13', '2020-07-27 16:25:13');
INSERT INTO `sys_user_log_activity` VALUES (20, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:25:18', '2020-07-27 16:25:18');
INSERT INTO `sys_user_log_activity` VALUES (21, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:26:36', '2020-07-27 16:26:36');
INSERT INTO `sys_user_log_activity` VALUES (22, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:27:17', '2020-07-27 16:27:17');
INSERT INTO `sys_user_log_activity` VALUES (23, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:27:49', '2020-07-27 16:27:49');
INSERT INTO `sys_user_log_activity` VALUES (24, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:28:26', '2020-07-27 16:28:26');
INSERT INTO `sys_user_log_activity` VALUES (25, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:28:58', '2020-07-27 16:28:58');
INSERT INTO `sys_user_log_activity` VALUES (26, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:29:26', '2020-07-27 16:29:26');
INSERT INTO `sys_user_log_activity` VALUES (27, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:32:18', '2020-07-27 16:32:18');
INSERT INTO `sys_user_log_activity` VALUES (28, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:33:03', '2020-07-27 16:33:03');
INSERT INTO `sys_user_log_activity` VALUES (29, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:33:08', '2020-07-27 16:33:08');
INSERT INTO `sys_user_log_activity` VALUES (30, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:33:44', '2020-07-27 16:33:44');
INSERT INTO `sys_user_log_activity` VALUES (31, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:34:41', '2020-07-27 16:34:41');
INSERT INTO `sys_user_log_activity` VALUES (32, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:35:08', '2020-07-27 16:35:08');
INSERT INTO `sys_user_log_activity` VALUES (33, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:35:52', '2020-07-27 16:35:52');
INSERT INTO `sys_user_log_activity` VALUES (34, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:36:03', '2020-07-27 16:36:03');
INSERT INTO `sys_user_log_activity` VALUES (35, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:37:22', '2020-07-27 16:37:22');
INSERT INTO `sys_user_log_activity` VALUES (36, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:37:36', '2020-07-27 16:37:36');
INSERT INTO `sys_user_log_activity` VALUES (37, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:37:55', '2020-07-27 16:37:55');
INSERT INTO `sys_user_log_activity` VALUES (38, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:38:16', '2020-07-27 16:38:16');
INSERT INTO `sys_user_log_activity` VALUES (39, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:38:28', '2020-07-27 16:38:28');
INSERT INTO `sys_user_log_activity` VALUES (40, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:38:35', '2020-07-27 16:38:35');
INSERT INTO `sys_user_log_activity` VALUES (41, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:38:47', '2020-07-27 16:38:47');
INSERT INTO `sys_user_log_activity` VALUES (42, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:41:56', '2020-07-27 16:41:56');
INSERT INTO `sys_user_log_activity` VALUES (43, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:44:25', '2020-07-27 16:44:25');
INSERT INTO `sys_user_log_activity` VALUES (44, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:45:28', '2020-07-27 16:45:28');
INSERT INTO `sys_user_log_activity` VALUES (45, 'Create Module User #ID 4 Successfully', 'http://localhost:8000/master/sys-user', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:46:35', '2020-07-27 16:46:35');
INSERT INTO `sys_user_log_activity` VALUES (46, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:46:40', '2020-07-27 16:46:40');
INSERT INTO `sys_user_log_activity` VALUES (47, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:47:24', '2020-07-27 16:47:24');
INSERT INTO `sys_user_log_activity` VALUES (48, 'Create Module User #ID 5 Successfully', 'http://localhost:8000/master/sys-user', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:47:49', '2020-07-27 16:47:49');
INSERT INTO `sys_user_log_activity` VALUES (49, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:50:02', '2020-07-27 16:50:02');
INSERT INTO `sys_user_log_activity` VALUES (50, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:52:01', '2020-07-27 16:52:01');
INSERT INTO `sys_user_log_activity` VALUES (51, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:52:19', '2020-07-27 16:52:19');
INSERT INTO `sys_user_log_activity` VALUES (52, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:52:49', '2020-07-27 16:52:49');
INSERT INTO `sys_user_log_activity` VALUES (53, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:53:06', '2020-07-27 16:53:06');
INSERT INTO `sys_user_log_activity` VALUES (54, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:53:30', '2020-07-27 16:53:30');
INSERT INTO `sys_user_log_activity` VALUES (55, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:54:03', '2020-07-27 16:54:03');
INSERT INTO `sys_user_log_activity` VALUES (56, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:55:25', '2020-07-27 16:55:25');
INSERT INTO `sys_user_log_activity` VALUES (57, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:56:12', '2020-07-27 16:56:12');
INSERT INTO `sys_user_log_activity` VALUES (58, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:56:19', '2020-07-27 16:56:19');
INSERT INTO `sys_user_log_activity` VALUES (59, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 16:56:48', '2020-07-27 16:56:48');
INSERT INTO `sys_user_log_activity` VALUES (60, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:05:02', '2020-07-27 17:05:02');
INSERT INTO `sys_user_log_activity` VALUES (61, 'Update Module User #ID 5 Successfully', 'http://localhost:8000/master/sys-user/5', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:05:13', '2020-07-27 17:05:13');
INSERT INTO `sys_user_log_activity` VALUES (62, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:05:48', '2020-07-27 17:05:48');
INSERT INTO `sys_user_log_activity` VALUES (63, 'Update Module User #ID 5 Successfully', 'http://localhost:8000/master/sys-user/5', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:06:05', '2020-07-27 17:06:05');
INSERT INTO `sys_user_log_activity` VALUES (64, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:06:53', '2020-07-27 17:06:53');
INSERT INTO `sys_user_log_activity` VALUES (65, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:07:51', '2020-07-27 17:07:51');
INSERT INTO `sys_user_log_activity` VALUES (66, 'Create Module User #ID 6 Successfully', 'http://localhost:8000/master/sys-user', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:08:30', '2020-07-27 17:08:30');
INSERT INTO `sys_user_log_activity` VALUES (67, 'Delete Module User #ID 6 Successfully', 'http://localhost:8000/master/sys-user/Ng==', 'DELETE', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:08:36', '2020-07-27 17:08:36');
INSERT INTO `sys_user_log_activity` VALUES (68, 'Update Module User #ID 5 Successfully', 'http://localhost:8000/master/sys-user/5', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:09:08', '2020-07-27 17:09:08');
INSERT INTO `sys_user_log_activity` VALUES (69, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:10:21', '2020-07-27 17:10:21');
INSERT INTO `sys_user_log_activity` VALUES (70, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:10:24', '2020-07-27 17:10:24');
INSERT INTO `sys_user_log_activity` VALUES (71, 'Read Module Project Category Successfully', 'http://localhost:8000/master/category-project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:10:26', '2020-07-27 17:10:26');
INSERT INTO `sys_user_log_activity` VALUES (72, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-27 17:10:30', '2020-07-27 17:10:30');
INSERT INTO `sys_user_log_activity` VALUES (73, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-28 04:11:40', '2020-07-28 04:11:40');
INSERT INTO `sys_user_log_activity` VALUES (74, 'Read Module Project Category Successfully', 'http://localhost:8000/master/category-project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-28 04:11:43', '2020-07-28 04:11:43');
INSERT INTO `sys_user_log_activity` VALUES (75, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-28 04:11:46', '2020-07-28 04:11:46');
INSERT INTO `sys_user_log_activity` VALUES (76, 'Read Module Project Successfully', 'http://localhost:8000/master/project', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 1, '2020-07-28 04:48:01', '2020-07-28 04:48:01');
INSERT INTO `sys_user_log_activity` VALUES (77, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 07:37:09', '2020-08-01 07:37:09');
INSERT INTO `sys_user_log_activity` VALUES (78, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 08:13:43', '2020-08-01 08:13:43');
INSERT INTO `sys_user_log_activity` VALUES (79, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 08:14:04', '2020-08-01 08:14:04');
INSERT INTO `sys_user_log_activity` VALUES (80, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 08:18:25', '2020-08-01 08:18:25');
INSERT INTO `sys_user_log_activity` VALUES (81, 'Create Role ID #2 Successfully', 'http://localhost:8000/master/role', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 08:22:44', '2020-08-01 08:22:44');
INSERT INTO `sys_user_log_activity` VALUES (82, 'Update Role ID #2 Successfully', 'http://localhost:8000/master/role/2', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 08:25:40', '2020-08-01 08:25:40');
INSERT INTO `sys_user_log_activity` VALUES (83, 'Update Role ID #1 Successfully', 'http://localhost:8000/master/role/1', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 08:25:51', '2020-08-01 08:25:51');
INSERT INTO `sys_user_log_activity` VALUES (84, 'Update Role ID #2 Successfully', 'http://localhost:8000/master/role/2', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 08:26:01', '2020-08-01 08:26:01');
INSERT INTO `sys_user_log_activity` VALUES (85, 'Create Role ID #3 Successfully', 'http://localhost:8000/master/role', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 08:26:44', '2020-08-01 08:26:44');
INSERT INTO `sys_user_log_activity` VALUES (86, 'Delete Role ID #3 Successfully', 'http://localhost:8000/master/role/3', 'DELETE', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 08:26:49', '2020-08-01 08:26:49');
INSERT INTO `sys_user_log_activity` VALUES (87, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 6, '2020-08-01 08:29:55', '2020-08-01 08:29:55');
INSERT INTO `sys_user_log_activity` VALUES (88, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:12:59', '2020-08-03 03:12:59');
INSERT INTO `sys_user_log_activity` VALUES (89, 'Create Menu ID #1 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:18:18', '2020-08-03 03:18:18');
INSERT INTO `sys_user_log_activity` VALUES (90, 'Create Menu ID #2 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:19:11', '2020-08-03 03:19:11');
INSERT INTO `sys_user_log_activity` VALUES (91, 'Update Menu ID #2 Successfully', 'http://localhost:8000/setting/menu/2', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:21:32', '2020-08-03 03:21:32');
INSERT INTO `sys_user_log_activity` VALUES (92, 'Delete Menu ID #2 Successfully', 'http://localhost:8000/setting/menu/2', 'DELETE', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:22:07', '2020-08-03 03:22:07');
INSERT INTO `sys_user_log_activity` VALUES (93, 'Add Role #2 Module #1 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:37:48', '2020-08-03 03:37:48');
INSERT INTO `sys_user_log_activity` VALUES (94, 'Remove Role #2 Module #1 Action R Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:39:01', '2020-08-03 03:39:01');
INSERT INTO `sys_user_log_activity` VALUES (95, 'Add Role #2 Module #1 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:39:13', '2020-08-03 03:39:13');
INSERT INTO `sys_user_log_activity` VALUES (96, 'Add Role #2 Module #1 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:39:57', '2020-08-03 03:39:57');
INSERT INTO `sys_user_log_activity` VALUES (97, 'Add Role #2 Module #1 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:39:59', '2020-08-03 03:39:59');
INSERT INTO `sys_user_log_activity` VALUES (98, 'Add Role #2 Module #1 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:40:02', '2020-08-03 03:40:02');
INSERT INTO `sys_user_log_activity` VALUES (99, 'Add Role #2 Module #1 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 03:40:04', '2020-08-03 03:40:04');
INSERT INTO `sys_user_log_activity` VALUES (100, 'Remove Role #2 Module #1 Action R Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:06:21', '2020-08-03 04:06:21');
INSERT INTO `sys_user_log_activity` VALUES (101, 'Remove Role #2 Module #1 Action C Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:06:25', '2020-08-03 04:06:25');
INSERT INTO `sys_user_log_activity` VALUES (102, 'Remove Role #2 Module #1 Action U Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:06:28', '2020-08-03 04:06:28');
INSERT INTO `sys_user_log_activity` VALUES (103, 'Remove Role #2 Module #1 Action D Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:06:31', '2020-08-03 04:06:31');
INSERT INTO `sys_user_log_activity` VALUES (104, 'Remove Role #2 Module #1 Action S Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:06:33', '2020-08-03 04:06:33');
INSERT INTO `sys_user_log_activity` VALUES (105, 'Add Role #2 Module #1 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:06:44', '2020-08-03 04:06:44');
INSERT INTO `sys_user_log_activity` VALUES (106, 'Remove Role #2 Module #1 Action R Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:06:51', '2020-08-03 04:06:51');
INSERT INTO `sys_user_log_activity` VALUES (107, 'Add Role #2 Module #1 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:06:55', '2020-08-03 04:06:55');
INSERT INTO `sys_user_log_activity` VALUES (108, 'Add Role #2 Module #1 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:07:01', '2020-08-03 04:07:01');
INSERT INTO `sys_user_log_activity` VALUES (109, 'Add Role #2 Module #1 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:07:03', '2020-08-03 04:07:03');
INSERT INTO `sys_user_log_activity` VALUES (110, 'Add Role #2 Module #1 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:07:06', '2020-08-03 04:07:06');
INSERT INTO `sys_user_log_activity` VALUES (111, 'Add Role #2 Module #1 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:07:08', '2020-08-03 04:07:08');
INSERT INTO `sys_user_log_activity` VALUES (112, 'Create Menu ID #3 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:07:57', '2020-08-03 04:07:57');
INSERT INTO `sys_user_log_activity` VALUES (113, 'Create Menu ID #4 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:08:33', '2020-08-03 04:08:33');
INSERT INTO `sys_user_log_activity` VALUES (114, 'Create Menu ID #5 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:13:34', '2020-08-03 04:13:34');
INSERT INTO `sys_user_log_activity` VALUES (115, 'Create Menu ID #6 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:15:44', '2020-08-03 04:15:44');
INSERT INTO `sys_user_log_activity` VALUES (116, 'Add Role #2 Module #4 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:16:04', '2020-08-03 04:16:04');
INSERT INTO `sys_user_log_activity` VALUES (117, 'Add Role #2 Module #3 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:16:52', '2020-08-03 04:16:52');
INSERT INTO `sys_user_log_activity` VALUES (118, 'Remove Role #2 Module #4 Action R Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:17:06', '2020-08-03 04:17:06');
INSERT INTO `sys_user_log_activity` VALUES (119, 'Add Role #2 Module #4 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:18:26', '2020-08-03 04:18:26');
INSERT INTO `sys_user_log_activity` VALUES (120, 'Add Role #2 Module #4 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:18:29', '2020-08-03 04:18:29');
INSERT INTO `sys_user_log_activity` VALUES (121, 'Add Role #2 Module #4 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:18:34', '2020-08-03 04:18:34');
INSERT INTO `sys_user_log_activity` VALUES (122, 'Add Role #2 Module #4 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:18:37', '2020-08-03 04:18:37');
INSERT INTO `sys_user_log_activity` VALUES (123, 'Add Role #2 Module #4 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:18:39', '2020-08-03 04:18:39');
INSERT INTO `sys_user_log_activity` VALUES (124, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:18:47', '2020-08-03 04:18:47');
INSERT INTO `sys_user_log_activity` VALUES (125, 'Delete Menu ID #6 Successfully', 'http://localhost:8000/setting/menu/6', 'DELETE', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:19:03', '2020-08-03 04:19:03');
INSERT INTO `sys_user_log_activity` VALUES (126, 'Delete Menu ID #5 Successfully', 'http://localhost:8000/setting/menu/5', 'DELETE', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:19:07', '2020-08-03 04:19:07');
INSERT INTO `sys_user_log_activity` VALUES (127, 'Create Menu ID #7 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:19:52', '2020-08-03 04:19:52');
INSERT INTO `sys_user_log_activity` VALUES (128, 'Add Role #2 Module #7 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:20:01', '2020-08-03 04:20:01');
INSERT INTO `sys_user_log_activity` VALUES (129, 'Add Role #2 Module #7 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:20:03', '2020-08-03 04:20:03');
INSERT INTO `sys_user_log_activity` VALUES (130, 'Add Role #2 Module #7 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:20:05', '2020-08-03 04:20:05');
INSERT INTO `sys_user_log_activity` VALUES (131, 'Add Role #2 Module #7 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:20:08', '2020-08-03 04:20:08');
INSERT INTO `sys_user_log_activity` VALUES (132, 'Add Role #2 Module #7 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:20:10', '2020-08-03 04:20:10');
INSERT INTO `sys_user_log_activity` VALUES (133, 'Update Menu ID #3 Successfully', 'http://localhost:8000/setting/menu/3', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:20:29', '2020-08-03 04:20:29');
INSERT INTO `sys_user_log_activity` VALUES (134, 'Create Menu ID #8 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:22:39', '2020-08-03 04:22:39');
INSERT INTO `sys_user_log_activity` VALUES (135, 'Add Role #2 Module #8 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:22:46', '2020-08-03 04:22:46');
INSERT INTO `sys_user_log_activity` VALUES (136, 'Add Role #2 Module #8 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:22:49', '2020-08-03 04:22:49');
INSERT INTO `sys_user_log_activity` VALUES (137, 'Add Role #2 Module #8 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:22:51', '2020-08-03 04:22:51');
INSERT INTO `sys_user_log_activity` VALUES (138, 'Add Role #2 Module #8 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:22:53', '2020-08-03 04:22:53');
INSERT INTO `sys_user_log_activity` VALUES (139, 'Add Role #2 Module #8 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:22:55', '2020-08-03 04:22:55');
INSERT INTO `sys_user_log_activity` VALUES (140, 'Create Menu ID #9 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:23:59', '2020-08-03 04:23:59');
INSERT INTO `sys_user_log_activity` VALUES (141, 'Add Role #2 Module #9 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:24:11', '2020-08-03 04:24:11');
INSERT INTO `sys_user_log_activity` VALUES (142, 'Add Role #2 Module #9 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:24:14', '2020-08-03 04:24:14');
INSERT INTO `sys_user_log_activity` VALUES (143, 'Add Role #2 Module #9 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:24:16', '2020-08-03 04:24:16');
INSERT INTO `sys_user_log_activity` VALUES (144, 'Add Role #2 Module #9 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:24:18', '2020-08-03 04:24:18');
INSERT INTO `sys_user_log_activity` VALUES (145, 'Add Role #2 Module #9 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:24:21', '2020-08-03 04:24:21');
INSERT INTO `sys_user_log_activity` VALUES (146, 'Update Menu ID #4 Successfully', 'http://localhost:8000/setting/menu/4', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:25:23', '2020-08-03 04:25:23');
INSERT INTO `sys_user_log_activity` VALUES (147, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:26:00', '2020-08-03 04:26:00');
INSERT INTO `sys_user_log_activity` VALUES (148, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:26:16', '2020-08-03 04:26:16');
INSERT INTO `sys_user_log_activity` VALUES (149, 'Update Menu ID #1 Successfully', 'http://localhost:8000/setting/menu/1', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:26:48', '2020-08-03 04:26:48');
INSERT INTO `sys_user_log_activity` VALUES (150, 'Add Role #1 Module #1 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:28:51', '2020-08-03 04:28:51');
INSERT INTO `sys_user_log_activity` VALUES (151, 'Add Role #1 Module #1 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:28:54', '2020-08-03 04:28:54');
INSERT INTO `sys_user_log_activity` VALUES (152, 'Add Role #1 Module #1 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:28:57', '2020-08-03 04:28:57');
INSERT INTO `sys_user_log_activity` VALUES (153, 'Add Role #1 Module #1 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:03', '2020-08-03 04:29:03');
INSERT INTO `sys_user_log_activity` VALUES (154, 'Add Role #1 Module #1 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:08', '2020-08-03 04:29:08');
INSERT INTO `sys_user_log_activity` VALUES (155, 'Add Role #1 Module #4 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:13', '2020-08-03 04:29:13');
INSERT INTO `sys_user_log_activity` VALUES (156, 'Add Role #1 Module #4 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:16', '2020-08-03 04:29:16');
INSERT INTO `sys_user_log_activity` VALUES (157, 'Add Role #1 Module #4 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:19', '2020-08-03 04:29:19');
INSERT INTO `sys_user_log_activity` VALUES (158, 'Add Role #1 Module #4 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:22', '2020-08-03 04:29:22');
INSERT INTO `sys_user_log_activity` VALUES (159, 'Remove Role #1 Module #4 Action D Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:27', '2020-08-03 04:29:27');
INSERT INTO `sys_user_log_activity` VALUES (160, 'Add Role #1 Module #4 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:27', '2020-08-03 04:29:27');
INSERT INTO `sys_user_log_activity` VALUES (161, 'Add Role #1 Module #4 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:30', '2020-08-03 04:29:30');
INSERT INTO `sys_user_log_activity` VALUES (162, 'Add Role #1 Module #3 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:33', '2020-08-03 04:29:33');
INSERT INTO `sys_user_log_activity` VALUES (163, 'Add Role #1 Module #7 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:36', '2020-08-03 04:29:36');
INSERT INTO `sys_user_log_activity` VALUES (164, 'Add Role #1 Module #7 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:38', '2020-08-03 04:29:38');
INSERT INTO `sys_user_log_activity` VALUES (165, 'Add Role #1 Module #7 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:41', '2020-08-03 04:29:41');
INSERT INTO `sys_user_log_activity` VALUES (166, 'Add Role #1 Module #7 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:43', '2020-08-03 04:29:43');
INSERT INTO `sys_user_log_activity` VALUES (167, 'Add Role #1 Module #7 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:46', '2020-08-03 04:29:46');
INSERT INTO `sys_user_log_activity` VALUES (168, 'Add Role #1 Module #8 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:48', '2020-08-03 04:29:48');
INSERT INTO `sys_user_log_activity` VALUES (169, 'Add Role #1 Module #8 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:50', '2020-08-03 04:29:50');
INSERT INTO `sys_user_log_activity` VALUES (170, 'Add Role #1 Module #8 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:53', '2020-08-03 04:29:53');
INSERT INTO `sys_user_log_activity` VALUES (171, 'Add Role #1 Module #8 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:55', '2020-08-03 04:29:55');
INSERT INTO `sys_user_log_activity` VALUES (172, 'Add Role #1 Module #8 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:29:58', '2020-08-03 04:29:58');
INSERT INTO `sys_user_log_activity` VALUES (173, 'Add Role #1 Module #9 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:30:00', '2020-08-03 04:30:00');
INSERT INTO `sys_user_log_activity` VALUES (174, 'Add Role #1 Module #9 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:30:02', '2020-08-03 04:30:02');
INSERT INTO `sys_user_log_activity` VALUES (175, 'Add Role #1 Module #9 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:30:05', '2020-08-03 04:30:05');
INSERT INTO `sys_user_log_activity` VALUES (176, 'Add Role #1 Module #9 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:30:07', '2020-08-03 04:30:07');
INSERT INTO `sys_user_log_activity` VALUES (177, 'Add Role #1 Module #9 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:30:09', '2020-08-03 04:30:09');
INSERT INTO `sys_user_log_activity` VALUES (178, 'Remove Role #2 Module #1 Action S Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:30:50', '2020-08-03 04:30:50');
INSERT INTO `sys_user_log_activity` VALUES (179, 'Remove Role #2 Module #4 Action S Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:30:54', '2020-08-03 04:30:54');
INSERT INTO `sys_user_log_activity` VALUES (180, 'Remove Role #2 Module #3 Action S Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:30:56', '2020-08-03 04:30:56');
INSERT INTO `sys_user_log_activity` VALUES (181, 'Remove Role #2 Module #7 Action S Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:30:59', '2020-08-03 04:30:59');
INSERT INTO `sys_user_log_activity` VALUES (182, 'Remove Role #2 Module #8 Action S Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:01', '2020-08-03 04:31:01');
INSERT INTO `sys_user_log_activity` VALUES (183, 'Remove Role #2 Module #9 Action S Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:05', '2020-08-03 04:31:05');
INSERT INTO `sys_user_log_activity` VALUES (184, 'Remove Role #2 Module #1 Action R Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:08', '2020-08-03 04:31:08');
INSERT INTO `sys_user_log_activity` VALUES (185, 'Remove Role #2 Module #4 Action R Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:10', '2020-08-03 04:31:10');
INSERT INTO `sys_user_log_activity` VALUES (186, 'Remove Role #2 Module #7 Action R Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:19', '2020-08-03 04:31:19');
INSERT INTO `sys_user_log_activity` VALUES (187, 'Remove Role #2 Module #8 Action R Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:22', '2020-08-03 04:31:22');
INSERT INTO `sys_user_log_activity` VALUES (188, 'Remove Role #2 Module #9 Action R Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:26', '2020-08-03 04:31:26');
INSERT INTO `sys_user_log_activity` VALUES (189, 'Remove Role #2 Module #1 Action C Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:28', '2020-08-03 04:31:28');
INSERT INTO `sys_user_log_activity` VALUES (190, 'Remove Role #2 Module #4 Action C Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:30', '2020-08-03 04:31:30');
INSERT INTO `sys_user_log_activity` VALUES (191, 'Remove Role #2 Module #7 Action C Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:37', '2020-08-03 04:31:37');
INSERT INTO `sys_user_log_activity` VALUES (192, 'Remove Role #2 Module #8 Action C Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:39', '2020-08-03 04:31:39');
INSERT INTO `sys_user_log_activity` VALUES (193, 'Remove Role #2 Module #9 Action C Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:42', '2020-08-03 04:31:42');
INSERT INTO `sys_user_log_activity` VALUES (194, 'Remove Role #2 Module #1 Action U Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:45', '2020-08-03 04:31:45');
INSERT INTO `sys_user_log_activity` VALUES (195, 'Remove Role #2 Module #4 Action U Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:47', '2020-08-03 04:31:47');
INSERT INTO `sys_user_log_activity` VALUES (196, 'Remove Role #2 Module #7 Action U Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:52', '2020-08-03 04:31:52');
INSERT INTO `sys_user_log_activity` VALUES (197, 'Remove Role #2 Module #8 Action U Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:54', '2020-08-03 04:31:54');
INSERT INTO `sys_user_log_activity` VALUES (198, 'Remove Role #2 Module #9 Action U Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:57', '2020-08-03 04:31:57');
INSERT INTO `sys_user_log_activity` VALUES (199, 'Remove Role #2 Module #1 Action D Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:31:59', '2020-08-03 04:31:59');
INSERT INTO `sys_user_log_activity` VALUES (200, 'Remove Role #2 Module #4 Action D Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:32:02', '2020-08-03 04:32:02');
INSERT INTO `sys_user_log_activity` VALUES (201, 'Remove Role #2 Module #7 Action D Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:32:04', '2020-08-03 04:32:04');
INSERT INTO `sys_user_log_activity` VALUES (202, 'Remove Role #2 Module #8 Action D Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:32:06', '2020-08-03 04:32:06');
INSERT INTO `sys_user_log_activity` VALUES (203, 'Remove Role #2 Module #9 Action D Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:32:08', '2020-08-03 04:32:08');
INSERT INTO `sys_user_log_activity` VALUES (204, 'Add Role #2 Module #4 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 04:33:58', '2020-08-03 04:33:58');
INSERT INTO `sys_user_log_activity` VALUES (205, 'Add Role #2 Module #4 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 04:34:00', '2020-08-03 04:34:00');
INSERT INTO `sys_user_log_activity` VALUES (206, 'Add Role #2 Module #4 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 04:34:03', '2020-08-03 04:34:03');
INSERT INTO `sys_user_log_activity` VALUES (207, 'Add Role #2 Module #4 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 04:34:05', '2020-08-03 04:34:05');
INSERT INTO `sys_user_log_activity` VALUES (208, 'Add Role #2 Module #4 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 04:34:08', '2020-08-03 04:34:08');
INSERT INTO `sys_user_log_activity` VALUES (209, 'Read Module User Successfully', 'http://localhost:8000/master/sys-user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 6, '2020-08-03 04:34:21', '2020-08-03 04:34:21');
INSERT INTO `sys_user_log_activity` VALUES (210, 'Create Module ID #10 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:13:59', '2020-08-03 05:13:59');
INSERT INTO `sys_user_log_activity` VALUES (211, 'Add Role #1 Module #10 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:14:13', '2020-08-03 05:14:13');
INSERT INTO `sys_user_log_activity` VALUES (212, 'Add Role #1 Module #10 Action R Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:14:16', '2020-08-03 05:14:16');
INSERT INTO `sys_user_log_activity` VALUES (213, 'Add Role #1 Module #10 Action C Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:14:18', '2020-08-03 05:14:18');
INSERT INTO `sys_user_log_activity` VALUES (214, 'Add Role #1 Module #10 Action U Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:14:20', '2020-08-03 05:14:20');
INSERT INTO `sys_user_log_activity` VALUES (215, 'Add Role #1 Module #10 Action D Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:14:23', '2020-08-03 05:14:23');
INSERT INTO `sys_user_log_activity` VALUES (216, 'Create Module ID #11 Successfully', 'http://localhost:8000/setting/menu', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:29:22', '2020-08-03 05:29:22');
INSERT INTO `sys_user_log_activity` VALUES (217, 'Add Role #1 Module #11 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:29:43', '2020-08-03 05:29:43');
INSERT INTO `sys_user_log_activity` VALUES (218, 'Remove Role #1 Module #11 Action S Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:30:43', '2020-08-03 05:30:43');
INSERT INTO `sys_user_log_activity` VALUES (219, 'Add Role #1 Module #11 Action S Successfully', 'http://localhost:8000/setting/access-role/add-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:34:50', '2020-08-03 05:34:50');
INSERT INTO `sys_user_log_activity` VALUES (220, 'Remove Role #1 Module #11 Action S Successfully', 'http://localhost:8000/setting/access-role/remove-act', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 1, '2020-08-03 05:35:27', '2020-08-03 05:35:27');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(1) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(1) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT 0,
  `current_sign_in_at` timestamp NULL DEFAULT NULL,
  `last_sign_in_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 1, 'Administrator', NULL, NULL, 'admin@example.com', NULL, '$2y$10$GLYgfy2BlDEXezpszK99suqoNnLtrLtz9m7JLYYKJ6ac44Nw18qXK', NULL, NULL, '2020-07-27 15:52:14', 1, '2020-08-03 05:03:24', NULL, NULL, NULL, 0, '2020-08-03 05:03:24', '2020-08-03 04:49:29');
INSERT INTO `users` VALUES (6, 2, 'Employee', 'aacwdawd', '093423424', 'employee@example.com', NULL, '$2y$10$GLYgfy2BlDEXezpszK99suqoNnLtrLtz9m7JLYYKJ6ac44Nw18qXK', NULL, NULL, '2020-07-27 17:08:30', 1, '2020-08-03 04:50:34', 1, '2020-07-27 17:08:36', 1, 1, '2020-08-03 04:50:34', '2020-08-03 04:34:18');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
