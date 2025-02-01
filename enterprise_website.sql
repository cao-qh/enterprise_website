/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 80041
 Source Host           : localhost:3306
 Source Schema         : enterprise_website

 Target Server Type    : MySQL
 Target Server Version : 80041
 File Encoding         : 65001

 Date: 01/02/2025 22:19:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 幻灯片管理', 7, 'add_slide');
INSERT INTO `auth_permission` VALUES (26, 'Can change 幻灯片管理', 7, 'change_slide');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 幻灯片管理', 7, 'delete_slide');
INSERT INTO `auth_permission` VALUES (28, 'Can view 幻灯片管理', 7, 'view_slide');
INSERT INTO `auth_permission` VALUES (29, 'Can add 团队管理', 8, 'add_team');
INSERT INTO `auth_permission` VALUES (30, 'Can change 团队管理', 8, 'change_team');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 团队管理', 8, 'delete_team');
INSERT INTO `auth_permission` VALUES (32, 'Can view 团队管理', 8, 'view_team');
INSERT INTO `auth_permission` VALUES (33, 'Can add 分类管理', 9, 'add_categrory');
INSERT INTO `auth_permission` VALUES (34, 'Can change 分类管理', 9, 'change_categrory');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 分类管理', 9, 'delete_categrory');
INSERT INTO `auth_permission` VALUES (36, 'Can view 分类管理', 9, 'view_categrory');
INSERT INTO `auth_permission` VALUES (37, 'Can add 新闻管理', 10, 'add_news');
INSERT INTO `auth_permission` VALUES (38, 'Can change 新闻管理', 10, 'change_news');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 新闻管理', 10, 'delete_news');
INSERT INTO `auth_permission` VALUES (40, 'Can view 新闻管理', 10, 'view_news');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$390000$3CisOa7UeHPt18S91hluRK$wkBUxCPVA3E6au2yKdfPzurmx+OvZyaiRL04UjiDTBc=', '2025-01-29 12:17:21.213525', 1, 'admin', '', '', 'admin@qq.com', 1, 1, '2025-01-29 12:14:50.938212');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '新闻');
INSERT INTO `category` VALUES (2, '企业集团');
INSERT INTO `category` VALUES (3, '移动金融');
INSERT INTO `category` VALUES (4, '设计建筑');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2025-01-30 14:05:59.877143', '1', 'Slide object (1)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2025-01-30 14:11:09.068279', '1', 'Slide object (1)', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2025-01-30 14:16:54.529048', '2', 'Slide object (2)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2025-01-30 14:17:29.682343', '2', 'Slide object (2)', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (5, '2025-01-30 14:17:48.103317', '3', 'Slide object (3)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (6, '2025-01-30 14:18:00.326047', '3', 'Slide object (3)', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (7, '2025-01-30 14:20:54.780724', '4', 'Slide object (4)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (8, '2025-01-30 14:26:10.021552', '5', 'Slide object (5)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (9, '2025-01-30 14:26:55.038250', '6', 'Slide object (6)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (10, '2025-01-31 12:44:29.322062', '1', 'andy', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (11, '2025-01-31 12:53:16.629156', '2', '张三', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (12, '2025-01-31 12:54:46.692537', '1', 'andy', 2, '[{\"changed\": {\"fields\": [\"\\u804c\\u52a1\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (13, '2025-01-31 12:56:08.483279', '3', '马老师', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (14, '2025-01-31 12:57:26.724388', '4', '赵四', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (15, '2025-01-31 13:19:15.758306', '1', 'andy', 2, '[{\"changed\": {\"fields\": [\"\\u6392\\u5e8f\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (16, '2025-01-31 14:18:55.508190', '3', '马老师', 2, '[{\"changed\": {\"fields\": [\"\\u6392\\u5e8f\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (17, '2025-01-31 14:21:09.270088', '5', 'kobe', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (18, '2025-01-31 15:00:15.734857', '1', '新闻', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (19, '2025-01-31 15:39:44.044564', '2', '企业集团', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (20, '2025-01-31 15:39:55.060822', '3', '移动金融', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (21, '2025-01-31 15:40:05.022901', '4', '设计建筑', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (22, '2025-01-31 15:41:40.469588', '1', '什么是Django', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (23, '2025-01-31 15:42:27.248107', '2', '网站建设中常见的五大问题', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (24, '2025-01-31 15:43:05.302046', '3', '人物设计的方法', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (25, '2025-01-31 15:44:30.849028', '4', '一栈科技', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (26, '2025-02-01 12:41:16.477978', '5', 'SEO常用专业术语', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (27, '2025-02-01 13:04:48.395342', '5', 'SEO常用专业术语', 2, '[{\"changed\": {\"fields\": [\"\\u5c01\\u9762\"]}}]', 10, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'news', 'categrory');
INSERT INTO `django_content_type` VALUES (10, 'news', 'news');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'slide', 'slide');
INSERT INTO `django_content_type` VALUES (8, 'team', 'team');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2025-01-29 12:12:55.042037');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2025-01-29 12:12:55.715168');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2025-01-29 12:12:55.934696');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2025-01-29 12:12:55.951209');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2025-01-29 12:12:55.968124');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2025-01-29 12:12:56.107858');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2025-01-29 12:12:56.177730');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2025-01-29 12:12:56.209025');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2025-01-29 12:12:56.218998');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2025-01-29 12:12:56.291306');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2025-01-29 12:12:56.297071');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2025-01-29 12:12:56.309284');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2025-01-29 12:12:56.390600');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2025-01-29 12:12:56.469714');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2025-01-29 12:12:56.495642');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2025-01-29 12:12:56.510569');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2025-01-29 12:12:56.597339');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2025-01-29 12:12:56.650325');
INSERT INTO `django_migrations` VALUES (19, 'slide', '0001_initial', '2025-01-30 13:52:27.389516');
INSERT INTO `django_migrations` VALUES (20, 'slide', '0002_alter_slide_table', '2025-01-30 13:56:25.844990');
INSERT INTO `django_migrations` VALUES (21, 'team', '0001_initial', '2025-01-31 09:27:17.230211');
INSERT INTO `django_migrations` VALUES (22, 'news', '0001_initial', '2025-01-31 14:45:03.258255');
INSERT INTO `django_migrations` VALUES (23, 'team', '0002_alter_team_avatar', '2025-01-31 14:45:03.264238');
INSERT INTO `django_migrations` VALUES (24, 'news', '0002_alter_news_content', '2025-02-01 12:28:20.735154');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('s09xvwzn7voml4nz1x4l8zv0jwztr1u5', '.eJxVjEEOwiAURO_C2hCgAurSvWcg_3-mUjU0Ke3KeHfbpAvdzntv3irRMpe0NExpyOqirDr8bkzyRN1AflC9j1rGOk8D603RO236Nma8rrv7d1ColbXuOwMECj66GIxh7yJE8okYbL1HL2FlIPJHGGsgHbxEZ2EQzkykPl_2iDiv:1td70T:5onlht-cjDY50Oy1yICikE6y7aLs6F6e514sG-Rut6w', '2025-02-12 12:17:21.220498');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cover` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `news_category_id_798ee23f_fk_category_id`(`category_id`) USING BTREE,
  CONSTRAINT `news_category_id_798ee23f_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '什么是Django', 'Django是一个开源的Web框架，使用Python语言编写...', 'news/21.png', '2025-01-31 15:41:40.468588', '2025-01-31 15:41:40.468588', 1);
INSERT INTO `news` VALUES (2, '网站建设中常见的五大问题', '网站建设过程中会遇到许多问题...', 'news/23.png', '2025-01-31 15:42:27.248107', '2025-01-31 15:42:27.248107', 1);
INSERT INTO `news` VALUES (3, '人物设计的方法', '人物设计的方法...', 'news/19.png', '2025-01-31 15:43:05.302046', '2025-01-31 15:43:05.302046', 1);
INSERT INTO `news` VALUES (4, '一栈科技', '焦作市软件开发公司，全站开发，AIGC', 'news/建筑设计3.png', '2025-01-31 15:44:30.848030', '2025-01-31 15:44:30.848030', 2);
INSERT INTO `news` VALUES (5, 'SEO常用专业术语', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>SEOSEO</td>\r\n			<td>搜索引擎优化</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>常用的SEO专业术语有很多，今天我为大家收集整理了100个关于SEO的相关专业术语，希望大家能快速入门SEO：</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2025/02/01/4.jpg\" style=\"height:940px; width:940px\" /></p>', 'news/1657192458114.png', '2025-02-01 12:41:16.476980', '2025-02-01 13:04:48.393343', 1);

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES (4, 'slide/bg1.jpg', '十五年卓越科技服务，用智慧引领未来，让技术成就梦想。', '智能科技新纪元，未来生活的驱动引擎。依靠技术突破实现经济腾飞。用智慧引领未来，让技术成就梦想。');
INSERT INTO `slide` VALUES (5, 'slide/bg.jpg', '二十年专注科技创新，用专业铸就辉煌，让梦想触手可及。', '科技引领新潮流，智能生活的开创者。凭借技术革新推动社会进步。用专业铸就辉煌，让梦想触手可及。');
INSERT INTO `slide` VALUES (6, 'slide/15.jpg', '技术引领未来', '坚持科学发展，注重自主创新。加速技术进步，为全球经济和社会发展提供强大支持。汇聚科技创意，实现创新愿景。');

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rank` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES (1, 'team/ceo.png', 'andy', 'CEO', 50);
INSERT INTO `team` VALUES (2, 'team/hr.png', '张三', 'HR', 2);
INSERT INTO `team` VALUES (3, 'team/董事长.png', '马老师', '董事长', 100);
INSERT INTO `team` VALUES (4, 'team/文艺部长.png', '赵四', '文艺部长', 4);
INSERT INTO `team` VALUES (5, 'team/体育部长.png', 'kobe', '体育部长', 10);

SET FOREIGN_KEY_CHECKS = 1;
