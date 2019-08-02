/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100133
 Source Host           : localhost:3306
 Source Schema         : dichvu

 Target Server Type    : MySQL
 Target Server Version : 100133
 File Encoding         : 65001

 Date: 30/07/2019 17:44:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE INDEX `cache_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `idcategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `namecat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcattype` int(11) NULL DEFAULT NULL,
  `idparent` int(11) NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `guid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcategory`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, NULL, 'promotion-reg', 1, 0, NULL, NULL, '2019-04-17 08:49:08', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (2, NULL, 'localhost', 2, 0, NULL, NULL, '2019-04-17 08:50:18', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (3, NULL, 'thammyvienthienkhue.vn', 2, 0, NULL, NULL, '2019-04-17 10:35:14', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (4, NULL, 'Tương tác', 3, 0, NULL, NULL, '2019-04-17 11:43:13', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (5, NULL, 'cuocthigiambeo.thammyvienthienkhue.vn', 2, 0, NULL, NULL, '2019-05-15 16:11:49', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (6, NULL, 'Trị nám tàn nhang', 4, 29, NULL, NULL, '2019-05-23 17:08:10', '2019-07-14 21:59:22');
INSERT INTO `categories` VALUES (7, NULL, 'Trị thâm bằng công nghệ Pelling Layer', 4, 29, NULL, NULL, '2019-05-24 08:52:47', '2019-07-14 21:58:10');
INSERT INTO `categories` VALUES (8, NULL, 'Trị thâm bằng công nghệ Yag Layer', 4, 29, NULL, NULL, '2019-05-24 10:29:18', '2019-07-14 21:58:44');
INSERT INTO `categories` VALUES (9, NULL, 'Trẻ hóa', 4, 0, NULL, NULL, '2019-05-24 10:41:11', '2019-07-14 22:29:16');
INSERT INTO `categories` VALUES (10, NULL, 'Xóa nhăn', 4, 0, NULL, NULL, '2019-05-24 10:43:06', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (11, 'order', 'Đơn hàng', 5, 0, NULL, NULL, '2019-06-11 11:57:54', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (12, 'process', 'Xử lý', 5, 0, NULL, NULL, '2019-06-11 11:58:28', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (13, 'produce', 'Sản xuất', 5, 0, NULL, NULL, '2019-06-11 11:59:25', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (14, 'transfer', 'Vận chuyển', 5, 0, NULL, NULL, '2019-06-11 11:59:38', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (15, 'post', 'Giao hàng', 5, 0, NULL, NULL, '2019-06-11 12:01:00', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (16, 'topping', 'Trị mụn', 4, 0, NULL, NULL, '2019-06-18 14:40:39', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (17, NULL, 'Trị sẹo', 4, 0, NULL, NULL, '2019-07-08 17:25:44', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (18, NULL, 'Giảm béo body slim', 4, 28, NULL, NULL, '2019-07-08 17:26:25', '2019-07-14 21:51:21');
INSERT INTO `categories` VALUES (19, NULL, 'Giảm béo siêu âm cao tần calivipo slim', 4, 28, NULL, NULL, '2019-07-08 21:58:16', '2019-07-14 21:51:41');
INSERT INTO `categories` VALUES (20, NULL, 'Giảm béo siêu âm hội tụ line-hifu', 4, 28, NULL, NULL, '2019-07-08 21:58:58', '2019-07-14 21:52:08');
INSERT INTO `categories` VALUES (21, NULL, 'Giảm béo siêu âm hội tụ sline-hiulther', 4, 28, NULL, NULL, '2019-07-08 21:59:47', '2019-07-14 21:52:30');
INSERT INTO `categories` VALUES (22, NULL, 'Siêu hủy mỡ hiulther-lipase', 4, 28, NULL, NULL, '2019-07-08 22:01:41', '2019-07-14 21:52:54');
INSERT INTO `categories` VALUES (23, NULL, 'Cây trắng da', 4, 9, NULL, NULL, '2019-07-08 22:02:03', '2019-07-14 21:54:41');
INSERT INTO `categories` VALUES (24, NULL, 'Thẩm mỹ nội khoa', 4, 0, NULL, NULL, '2019-07-08 22:02:32', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (25, NULL, 'Cấy tinh chất HA làm đầy', 4, 9, NULL, NULL, '2019-07-08 22:03:13', '2019-07-14 21:54:22');
INSERT INTO `categories` VALUES (26, NULL, 'Cấy tinh chất collagen tươi xóa nhân', 4, 9, NULL, NULL, '2019-07-08 22:03:51', '2019-07-14 21:55:04');
INSERT INTO `categories` VALUES (27, NULL, 'Sản phẩm', 4, 0, NULL, NULL, '2019-07-09 11:41:38', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (28, NULL, 'Giảm béo', 4, 0, NULL, NULL, '2019-07-14 21:50:28', '2019-07-14 22:28:26');
INSERT INTO `categories` VALUES (29, NULL, 'Trị thâm', 4, 0, NULL, NULL, '2019-07-14 21:57:55', '2019-07-14 22:28:26');

-- ----------------------------
-- Table structure for category_types
-- ----------------------------
DROP TABLE IF EXISTS `category_types`;
CREATE TABLE `category_types`  (
  `idcattype` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catnametype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcattype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category_types
-- ----------------------------
INSERT INTO `category_types` VALUES (1, 'post', '2019-02-27 10:36:11', '2019-02-27 10:36:11');
INSERT INTO `category_types` VALUES (2, 'website', '2019-02-27 10:53:53', '2019-02-27 10:53:53');
INSERT INTO `category_types` VALUES (3, 'interact', '2019-04-13 08:40:17', '2019-04-13 08:40:17');
INSERT INTO `category_types` VALUES (4, 'product', '2019-05-23 16:06:55', '2019-05-23 16:06:55');
INSERT INTO `category_types` VALUES (5, 'store', '2019-06-11 10:15:05', '2019-06-11 10:15:05');
INSERT INTO `category_types` VALUES (6, 'Link', '2019-07-09 15:48:25', '2019-07-09 15:48:25');

-- ----------------------------
-- Table structure for catehasproduct
-- ----------------------------
DROP TABLE IF EXISTS `catehasproduct`;
CREATE TABLE `catehasproduct`  (
  `idcateproduct` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idproduct` bigint(20) NULL DEFAULT NULL,
  `idcategory` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcateproduct`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 243 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of catehasproduct
-- ----------------------------
INSERT INTO `catehasproduct` VALUES (194, 68, 0, '2019-06-07 15:58:34', '2019-06-07 16:02:39');
INSERT INTO `catehasproduct` VALUES (195, 68, 0, '2019-06-07 16:03:51', '2019-06-07 16:04:57');
INSERT INTO `catehasproduct` VALUES (196, 68, 0, '2019-06-07 16:04:24', '2019-06-07 16:06:25');
INSERT INTO `catehasproduct` VALUES (197, 68, 0, '2019-06-07 16:06:16', '2019-06-10 20:47:10');
INSERT INTO `catehasproduct` VALUES (198, 68, 6, '2019-06-07 16:07:56', '2019-06-07 16:07:56');
INSERT INTO `catehasproduct` VALUES (199, 68, 0, '2019-06-07 16:07:56', '2019-06-07 16:09:03');
INSERT INTO `catehasproduct` VALUES (200, 68, 0, '2019-06-07 21:40:28', '2019-06-08 14:16:24');
INSERT INTO `catehasproduct` VALUES (201, 69, 7, '2019-06-08 14:20:19', '2019-06-08 14:20:19');
INSERT INTO `catehasproduct` VALUES (202, 70, 0, '2019-06-08 14:23:37', '2019-06-10 20:49:23');
INSERT INTO `catehasproduct` VALUES (203, 70, 0, '2019-06-08 14:23:37', '2019-06-10 20:49:23');
INSERT INTO `catehasproduct` VALUES (204, 70, 6, '2019-06-10 20:49:23', '2019-06-10 20:49:23');
INSERT INTO `catehasproduct` VALUES (205, 71, 6, '2019-06-10 20:52:19', '2019-06-10 20:52:19');
INSERT INTO `catehasproduct` VALUES (206, 72, 8, '2019-06-10 20:58:31', '2019-06-10 20:58:31');
INSERT INTO `catehasproduct` VALUES (207, 73, 8, '2019-06-10 21:00:42', '2019-06-10 21:00:42');
INSERT INTO `catehasproduct` VALUES (208, 74, 10, '2019-06-10 21:02:49', '2019-06-10 21:02:49');
INSERT INTO `catehasproduct` VALUES (220, 91, 10, '2019-06-17 23:47:41', '2019-06-17 23:47:41');
INSERT INTO `catehasproduct` VALUES (221, 92, 6, '2019-06-17 23:49:20', '2019-06-17 23:49:20');
INSERT INTO `catehasproduct` VALUES (229, 94, 6, '2019-06-18 08:22:36', '2019-06-18 08:22:36');
INSERT INTO `catehasproduct` VALUES (230, 95, 6, '2019-06-18 08:52:14', '2019-06-18 08:52:14');
INSERT INTO `catehasproduct` VALUES (231, 96, 8, '2019-06-18 09:29:58', '2019-06-18 09:29:58');
INSERT INTO `catehasproduct` VALUES (232, 97, 9, '2019-06-18 09:32:14', '2019-06-18 09:32:14');
INSERT INTO `catehasproduct` VALUES (233, 98, 6, '2019-06-18 12:01:13', '2019-06-18 12:01:13');
INSERT INTO `catehasproduct` VALUES (234, 99, 16, '2019-06-19 09:19:23', '2019-06-19 09:19:23');
INSERT INTO `catehasproduct` VALUES (235, 100, 16, '2019-06-19 09:32:51', '2019-06-19 09:32:51');
INSERT INTO `catehasproduct` VALUES (236, 101, 16, '2019-06-19 09:59:08', '2019-06-19 09:59:08');
INSERT INTO `catehasproduct` VALUES (237, 102, 16, '2019-06-19 09:59:31', '2019-06-19 09:59:31');
INSERT INTO `catehasproduct` VALUES (238, 103, 8, '2019-07-02 11:19:44', '2019-07-02 11:19:44');
INSERT INTO `catehasproduct` VALUES (239, 104, 10, '2019-07-06 08:50:00', '2019-07-06 08:50:00');
INSERT INTO `catehasproduct` VALUES (240, 105, 10, '2019-07-06 08:54:02', '2019-07-06 08:54:02');
INSERT INTO `catehasproduct` VALUES (241, 106, 8, '2019-07-06 09:09:17', '2019-07-06 09:09:17');
INSERT INTO `catehasproduct` VALUES (242, 107, 7, '2019-07-06 09:44:15', '2019-07-06 09:44:15');

-- ----------------------------
-- Table structure for city_town
-- ----------------------------
DROP TABLE IF EXISTS `city_town`;
CREATE TABLE `city_town`  (
  `idcitytown` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namecitytown` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idprovince` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcitytown`) USING BTREE,
  UNIQUE INDEX `city_town_namecitytown_unique`(`namecitytown`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of city_town
-- ----------------------------
INSERT INTO `city_town` VALUES (1, 'TP Hồ Chí Minh', 1, '2019-06-27 09:21:40', '2019-06-27 09:29:51');

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color`  (
  `idcolor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcolor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES (1, 'Trắng', NULL, NULL);
INSERT INTO `color` VALUES (2, 'Vàng', NULL, NULL);

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `idcountry` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namecountry` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcontinent` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcountry`) USING BTREE,
  UNIQUE INDEX `country_namecountry_unique`(`namecountry`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES (1, 'Việt nam', NULL, '2019-06-27 09:19:27', '2019-06-27 09:19:48');

-- ----------------------------
-- Table structure for cross_product
-- ----------------------------
DROP TABLE IF EXISTS `cross_product`;
CREATE TABLE `cross_product`  (
  `idcrossproduct` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idproduct` int(11) NULL DEFAULT NULL,
  `crosstype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `idproduct_cross` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idcrossproduct`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cross_product
-- ----------------------------
INSERT INTO `cross_product` VALUES (12, 74, 'crosssize', 91, '2019-06-17 23:47:41', '2019-06-17 23:47:41');
INSERT INTO `cross_product` VALUES (13, 71, 'crosssize', 92, '2019-06-17 23:49:20', '2019-06-17 23:49:20');
INSERT INTO `cross_product` VALUES (14, 68, 'crosssize', 93, '2019-06-18 08:15:22', '2019-06-18 08:15:22');
INSERT INTO `cross_product` VALUES (15, 70, 'crosssize', 94, '2019-06-18 08:22:36', '2019-06-18 08:22:36');
INSERT INTO `cross_product` VALUES (16, 94, 'crosssize', 95, '2019-06-18 08:52:14', '2019-06-18 08:52:14');
INSERT INTO `cross_product` VALUES (17, 68, 'crosssize', 98, '2019-06-18 12:01:13', '2019-06-18 12:01:13');

-- ----------------------------
-- Table structure for depart_employees
-- ----------------------------
DROP TABLE IF EXISTS `depart_employees`;
CREATE TABLE `depart_employees`  (
  `iddepart_employee` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `iddepart` int(11) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`iddepart_employee`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of depart_employees
-- ----------------------------
INSERT INTO `depart_employees` VALUES (1, 2, 2, '2019-02-27 10:14:16', '2019-02-27 10:14:16');
INSERT INTO `depart_employees` VALUES (2, 3, 3, '2019-05-05 21:38:59', '2019-05-05 21:38:59');
INSERT INTO `depart_employees` VALUES (7, 12, 3, '2019-05-07 22:47:21', '2019-05-07 22:47:21');
INSERT INTO `depart_employees` VALUES (8, 13, 3, '2019-05-08 22:05:35', '2019-05-08 22:05:35');
INSERT INTO `depart_employees` VALUES (9, 14, 3, '2019-05-08 22:11:57', '2019-05-08 22:11:57');
INSERT INTO `depart_employees` VALUES (10, 15, 3, '2019-05-08 22:13:47', '2019-05-08 22:13:47');
INSERT INTO `depart_employees` VALUES (11, 16, 8, '2019-05-17 09:36:04', '2019-05-17 09:36:04');
INSERT INTO `depart_employees` VALUES (12, 17, 6, '2019-05-17 09:36:49', '2019-05-17 09:36:49');
INSERT INTO `depart_employees` VALUES (13, 18, 4, '2019-05-17 09:39:23', '2019-05-17 09:39:23');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `iddepart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namedepart` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idparent` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`iddepart`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, 'Marketing', NULL, '2019-02-27 09:15:12', '2019-02-27 09:15:12');
INSERT INTO `departments` VALUES (2, 'IT', 1, '2019-02-27 09:15:25', '2019-02-27 09:15:25');
INSERT INTO `departments` VALUES (3, 'CSKH', 1, '2019-05-05 21:37:58', '2019-05-05 21:37:58');
INSERT INTO `departments` VALUES (4, 'Digital', 1, '2019-05-17 09:31:35', '2019-05-17 09:31:35');
INSERT INTO `departments` VALUES (5, 'Bình Dương', NULL, '2019-05-17 09:32:54', '2019-05-17 09:33:04');
INSERT INTO `departments` VALUES (6, 'Lể Tân', 5, '2019-05-17 09:33:26', '2019-05-17 09:33:50');
INSERT INTO `departments` VALUES (7, 'Đồng Nai', NULL, '2019-05-17 09:34:04', '2019-05-17 09:34:04');
INSERT INTO `departments` VALUES (8, 'Lể Tân', 7, '2019-05-17 09:34:17', '2019-05-17 09:34:17');

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district`  (
  `iddistrict` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namedist` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcitytown` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`iddistrict`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of district
-- ----------------------------
INSERT INTO `district` VALUES (1, 'Quận 1', 1, '2019-06-27 09:23:16', '2019-06-27 09:23:16');
INSERT INTO `district` VALUES (2, 'Quận 2', 1, '2019-06-27 09:23:33', '2019-06-27 09:23:33');
INSERT INTO `district` VALUES (3, 'Quận 3', 1, '2019-06-27 09:23:42', '2019-06-27 09:23:42');
INSERT INTO `district` VALUES (4, 'Quận 4', 1, '2019-06-27 09:23:52', '2019-06-27 09:23:52');
INSERT INTO `district` VALUES (5, 'Quận 5', 1, '2019-06-27 09:24:03', '2019-06-27 09:24:03');
INSERT INTO `district` VALUES (6, 'Quận 6', 1, '2019-06-27 09:24:14', '2019-06-27 09:24:14');
INSERT INTO `district` VALUES (7, 'Quận 7', 1, '2019-06-27 09:24:22', '2019-06-27 09:24:22');
INSERT INTO `district` VALUES (8, 'Quận 8', 1, '2019-06-27 09:24:34', '2019-06-27 09:24:34');
INSERT INTO `district` VALUES (9, 'Quận 9', 1, '2019-06-27 09:24:44', '2019-06-27 09:24:44');
INSERT INTO `district` VALUES (10, 'Quận 10', 1, '2019-06-27 09:24:51', '2019-06-27 09:24:51');
INSERT INTO `district` VALUES (11, 'Quận 11', 1, '2019-06-27 09:24:59', '2019-06-27 09:24:59');
INSERT INTO `district` VALUES (12, 'Quận 12', 1, '2019-06-27 09:25:08', '2019-06-27 09:25:08');
INSERT INTO `district` VALUES (13, 'Tân Bình', 1, '2019-06-27 09:25:22', '2019-06-27 09:25:22');
INSERT INTO `district` VALUES (14, 'Gò Vấp', 1, '2019-06-27 09:25:48', '2019-06-27 09:25:48');
INSERT INTO `district` VALUES (15, 'Tân Phú', 1, '2019-06-27 09:26:16', '2019-06-27 09:26:27');
INSERT INTO `district` VALUES (16, 'Phú Nhuận', 1, '2019-06-27 09:26:25', '2019-06-27 09:26:40');
INSERT INTO `district` VALUES (17, 'Bình Thạnh', 1, '2019-06-27 09:26:51', '2019-06-27 09:26:51');
INSERT INTO `district` VALUES (18, 'Thủ Đức', 1, '2019-06-27 09:27:12', '2019-06-27 09:27:12');

-- ----------------------------
-- Table structure for exclude_category
-- ----------------------------
DROP TABLE IF EXISTS `exclude_category`;
CREATE TABLE `exclude_category`  (
  `idexcludecate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcategory` int(11) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idexcludecate`) USING BTREE,
  UNIQUE INDEX `idcategory`(`idcategory`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exclude_category
-- ----------------------------
INSERT INTO `exclude_category` VALUES (1, 16, '2019-06-19 10:51:19', '2019-06-19 10:51:19');

-- ----------------------------
-- Table structure for exp_products
-- ----------------------------
DROP TABLE IF EXISTS `exp_products`;
CREATE TABLE `exp_products`  (
  `idexp` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ordernumber` int(11) NULL DEFAULT NULL,
  `idproduct` bigint(20) NOT NULL,
  `parentidproduct` int(11) NULL DEFAULT NULL,
  `idcustomer` int(11) NULL DEFAULT NULL,
  `idrecipent` int(11) NULL DEFAULT NULL,
  `iduser` int(11) NULL DEFAULT NULL,
  `amount` double(20, 0) NULL DEFAULT NULL,
  `price` double(20, 0) NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `idstore` int(11) NULL DEFAULT NULL,
  `axis_x` int(11) NULL DEFAULT NULL,
  `axis_y` int(11) NULL DEFAULT NULL,
  `axis_z` int(11) NULL DEFAULT NULL,
  `id_status_type` int(10) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idexp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exp_products
-- ----------------------------
INSERT INTO `exp_products` VALUES (1, 1, 107, 0, 0, 0, 2, 1, 25000, NULL, 11, 0, 0, 0, 0, '2019-07-09 15:22:55', '2019-07-09 15:22:55');
INSERT INTO `exp_products` VALUES (2, 1, 100, 107, 0, 0, 2, 1, 3000, '', 11, 0, 0, 0, 0, '2019-07-09 15:22:55', '2019-07-09 15:22:55');
INSERT INTO `exp_products` VALUES (3, 1, 99, 107, 0, 0, 2, 1, 3000, '', 11, 0, 0, 0, 0, '2019-07-09 15:22:55', '2019-07-09 15:22:55');
INSERT INTO `exp_products` VALUES (4, 4, 106, 0, 0, 0, 2, 2, 38500, NULL, 11, 0, 0, 0, 0, '2019-07-09 16:21:20', '2019-07-09 16:21:20');
INSERT INTO `exp_products` VALUES (5, 4, 100, 106, 0, 0, 2, 2, 3000, '', 11, 0, 0, 0, 0, '2019-07-09 16:21:20', '2019-07-09 16:21:20');
INSERT INTO `exp_products` VALUES (6, 4, 99, 106, 0, 0, 2, 2, 3000, '', 11, 0, 0, 0, 0, '2019-07-09 16:21:20', '2019-07-09 16:21:20');
INSERT INTO `exp_products` VALUES (7, 4, 74, 0, 0, 0, 2, 1, 29000, NULL, 11, 0, 0, 0, 0, '2019-07-09 16:21:20', '2019-07-09 16:21:20');
INSERT INTO `exp_products` VALUES (8, 4, 100, 74, 0, 0, 2, 1, 3000, '', 11, 0, 0, 0, 0, '2019-07-09 16:21:20', '2019-07-09 16:21:20');
INSERT INTO `exp_products` VALUES (9, 4, 99, 74, 0, 0, 2, 1, 3000, '', 11, 0, 0, 0, 0, '2019-07-09 16:21:20', '2019-07-09 16:21:20');
INSERT INTO `exp_products` VALUES (10, 10, 106, 0, 0, 0, 2, 1, 38500, NULL, 11, 0, 0, 0, 0, '2019-07-16 16:41:05', '2019-07-16 16:41:05');
INSERT INTO `exp_products` VALUES (11, 10, 100, 106, 0, 0, 2, 1, 3000, '', 11, 0, 0, 0, 0, '2019-07-16 16:41:05', '2019-07-16 16:41:05');
INSERT INTO `exp_products` VALUES (12, 10, 99, 106, 0, 0, 2, 1, 3000, '', 11, 0, 0, 0, 0, '2019-07-16 16:41:05', '2019-07-16 16:41:05');

-- ----------------------------
-- Table structure for expposts
-- ----------------------------
DROP TABLE IF EXISTS `expposts`;
CREATE TABLE `expposts`  (
  `idexppost` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idpost` bigint(20) NULL DEFAULT NULL,
  `id_status_type` int(11) NULL DEFAULT NULL,
  `iduser_exp` int(11) NULL DEFAULT NULL,
  `idemployee` int(11) NULL DEFAULT NULL,
  `address_reg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `percent_process` decimal(8, 2) NULL DEFAULT NULL,
  `parent_idpost_exp` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idexppost`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of expposts
-- ----------------------------
INSERT INTO `expposts` VALUES (51, 146, NULL, NULL, 16, NULL, NULL, 145, '2019-05-18 15:14:09', '2019-05-18 15:14:09');
INSERT INTO `expposts` VALUES (52, 149, NULL, NULL, 2, NULL, NULL, 148, '2019-05-21 14:54:42', '2019-05-21 14:54:42');
INSERT INTO `expposts` VALUES (53, 150, NULL, NULL, 2, NULL, NULL, 145, '2019-05-21 15:03:44', '2019-05-21 15:03:44');

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `idfile` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `urlfile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_origin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namefile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `typefile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idfile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 469 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES (358, 'uploads/2019/06/03/20190603_1559574376_5cf537685f91a.jpeg', '', '20190603_1559574376_5cf537685f91a.jpeg', 'jpeg', '2019-06-03 22:06:16', '2019-06-03 22:06:16');
INSERT INTO `files` VALUES (359, 'uploads/2019/06/03/20190603_1559574456_5cf537b8aa4e0.jpeg', '', '20190603_1559574456_5cf537b8aa4e0.jpeg', 'jpeg', '2019-06-03 22:07:36', '2019-06-03 22:07:36');
INSERT INTO `files` VALUES (360, 'uploads/2019/06/03/20190603_1559574542_5cf5380ec6c36.png', '', '20190603_1559574542_5cf5380ec6c36.png', 'png', '2019-06-03 22:09:02', '2019-06-03 22:09:02');
INSERT INTO `files` VALUES (361, 'uploads/2019/06/03/20190603_1559574783_5cf538ff9b4c9.png', '', '20190603_1559574783_5cf538ff9b4c9.png', 'png', '2019-06-03 22:13:03', '2019-06-03 22:13:03');
INSERT INTO `files` VALUES (362, 'uploads/2019/06/03/20190603_1559574997_5cf539d51933c.png', '', '20190603_1559574997_5cf539d51933c.png', 'png', '2019-06-03 22:16:37', '2019-06-03 22:16:37');
INSERT INTO `files` VALUES (363, 'uploads/2019/06/03/20190603_1559575038_5cf539fe8dac3.png', '', '20190603_1559575038_5cf539fe8dac3.png', 'png', '2019-06-03 22:17:18', '2019-06-03 22:17:18');
INSERT INTO `files` VALUES (364, 'uploads/2019/06/03/20190603_1559576155_5cf53e5bf105c.png', '', '20190603_1559576155_5cf53e5bf105c.png', 'png', '2019-06-03 22:35:55', '2019-06-03 22:35:55');
INSERT INTO `files` VALUES (365, 'uploads/2019/06/03/20190603_1559576190_5cf53e7e3bf9a.png', '', '20190603_1559576190_5cf53e7e3bf9a.png', 'png', '2019-06-03 22:36:30', '2019-06-03 22:36:30');
INSERT INTO `files` VALUES (366, 'uploads/2019/06/03/20190603_1559576260_5cf53ec4538b6.png', '', '20190603_1559576260_5cf53ec4538b6.png', 'png', '2019-06-03 22:37:40', '2019-06-03 22:37:40');
INSERT INTO `files` VALUES (367, 'uploads/2019/06/03/20190603_1559576273_5cf53ed10f9f3.png', '', '20190603_1559576273_5cf53ed10f9f3.png', 'png', '2019-06-03 22:37:53', '2019-06-03 22:37:53');
INSERT INTO `files` VALUES (368, 'uploads/2019/06/03/20190603_1559576371_5cf53f33b5638.png', '', '20190603_1559576371_5cf53f33b5638.png', 'png', '2019-06-03 22:39:31', '2019-06-03 22:39:31');
INSERT INTO `files` VALUES (369, 'uploads/2019/06/03/20190603_1559576378_5cf53f3a568d5.png', '', '20190603_1559576378_5cf53f3a568d5.png', 'png', '2019-06-03 22:39:38', '2019-06-03 22:39:38');
INSERT INTO `files` VALUES (370, 'uploads/2019/06/03/20190603_1559576523_5cf53fcb00828.png', '', '20190603_1559576523_5cf53fcb00828.png', 'png', '2019-06-03 22:42:03', '2019-06-03 22:42:03');
INSERT INTO `files` VALUES (371, 'uploads/2019/06/03/20190603_1559576528_5cf53fd0c4c31.png', '', '20190603_1559576528_5cf53fd0c4c31.png', 'png', '2019-06-03 22:42:08', '2019-06-03 22:42:08');
INSERT INTO `files` VALUES (372, 'uploads/2019/06/03/20190603_1559576635_5cf5403b66330.png', '', '20190603_1559576635_5cf5403b66330.png', 'png', '2019-06-03 22:43:55', '2019-06-03 22:43:55');
INSERT INTO `files` VALUES (373, 'uploads/2019/06/03/20190603_1559576798_5cf540deb89e3.png', '', '20190603_1559576798_5cf540deb89e3.png', 'png', '2019-06-03 22:46:38', '2019-06-03 22:46:38');
INSERT INTO `files` VALUES (374, 'uploads/2019/06/03/20190603_1559576808_5cf540e8a3792.png', '', '20190603_1559576808_5cf540e8a3792.png', 'png', '2019-06-03 22:46:48', '2019-06-03 22:46:48');
INSERT INTO `files` VALUES (375, 'uploads/2019/06/03/20190603_1559576909_5cf5414de858a.png', '', '20190603_1559576909_5cf5414de858a.png', 'png', '2019-06-03 22:48:29', '2019-06-03 22:48:29');
INSERT INTO `files` VALUES (376, 'uploads/2019/06/03/20190603_1559577021_5cf541bd965e3.png', '', '20190603_1559577021_5cf541bd965e3.png', 'png', '2019-06-03 22:50:21', '2019-06-03 22:50:21');
INSERT INTO `files` VALUES (377, 'uploads/2019/06/03/20190603_1559577089_5cf54201eaae1.png', '', '20190603_1559577089_5cf54201eaae1.png', 'png', '2019-06-03 22:51:29', '2019-06-03 22:51:29');
INSERT INTO `files` VALUES (378, 'uploads/2019/06/03/20190603_1559577303_5cf542d7c1c95.jpg', 'hyundai_accent_600x426x1.jpg', '20190603_1559577303_5cf542d7c1c95.jpg', 'jpg', '2019-06-03 22:55:03', '2019-06-03 22:55:03');
INSERT INTO `files` VALUES (379, 'uploads/2019/06/04/20190604_1559611131_5cf5c6fb8821d.png', '', '20190604_1559611131_5cf5c6fb8821d.png', 'png', '2019-06-04 08:18:51', '2019-06-04 08:18:51');
INSERT INTO `files` VALUES (380, 'uploads/2019/06/04/20190604_1559611540_5cf5c89499bff.png', '', '20190604_1559611540_5cf5c89499bff.png', 'png', '2019-06-04 08:25:40', '2019-06-04 08:25:40');
INSERT INTO `files` VALUES (381, 'uploads/2019/06/04/20190604_1559611628_5cf5c8ec760dd.png', '', '20190604_1559611628_5cf5c8ec760dd.png', 'png', '2019-06-04 08:27:08', '2019-06-04 08:27:08');
INSERT INTO `files` VALUES (382, 'uploads/2019/06/04/20190604_1559611636_5cf5c8f4b746b.png', '', '20190604_1559611636_5cf5c8f4b746b.png', 'png', '2019-06-04 08:27:16', '2019-06-04 08:27:16');
INSERT INTO `files` VALUES (383, 'uploads/2019/06/04/20190604_1559611708_5cf5c93cd9e7a.png', '', '20190604_1559611708_5cf5c93cd9e7a.png', 'png', '2019-06-04 08:28:28', '2019-06-04 08:28:28');
INSERT INTO `files` VALUES (384, 'uploads/2019/06/04/20190604_1559611726_5cf5c94eb780b.png', '', '20190604_1559611726_5cf5c94eb780b.png', 'png', '2019-06-04 08:28:46', '2019-06-04 08:28:46');
INSERT INTO `files` VALUES (385, 'uploads/2019/06/04/20190604_1559611881_5cf5c9e96916f.jpg', '2018-6-27-10-15-56.jpg', '20190604_1559611881_5cf5c9e96916f.jpg', 'jpg', '2019-06-04 08:31:21', '2019-06-04 08:31:21');
INSERT INTO `files` VALUES (386, 'uploads/2019/06/05/20190605_1559702607_5cf72c4fe89de.png', '2018-6-30-11-28-46.png', '20190605_1559702607_5cf72c4fe89de.png', 'png', '2019-06-05 09:43:27', '2019-06-05 09:43:27');
INSERT INTO `files` VALUES (387, 'uploads/2019/06/05/20190605_1559702608_5cf72c5017515.png', '2018-6-30-11-28-46.png', '20190605_1559702608_5cf72c5017515.png', 'png', '2019-06-05 09:43:28', '2019-06-05 09:43:28');
INSERT INTO `files` VALUES (388, 'uploads/2019/06/05/20190605_1559702608_5cf72c5031b6d.jpg', '2018-6-24-16-29-15.jpg', '20190605_1559702608_5cf72c5031b6d.jpg', 'jpg', '2019-06-05 09:43:28', '2019-06-05 09:43:28');
INSERT INTO `files` VALUES (389, 'uploads/2019/06/05/20190605_1559705312_5cf736e003e62.png', '', '20190605_1559705312_5cf736e003e62.png', 'png', '2019-06-05 10:28:32', '2019-06-05 10:28:32');
INSERT INTO `files` VALUES (390, 'uploads/2019/06/05/20190605_1559705355_5cf7370bec0eb.png', '', '20190605_1559705355_5cf7370bec0eb.png', 'png', '2019-06-05 10:29:15', '2019-06-05 10:29:15');
INSERT INTO `files` VALUES (391, 'uploads/2019/06/05/20190605_1559708951_5cf74517d4a4b.png', '', '20190605_1559708951_5cf74517d4a4b.png', 'png', '2019-06-05 11:29:11', '2019-06-05 11:29:11');
INSERT INTO `files` VALUES (392, 'uploads/2019/06/06/20190606_1559791137_5cf88621f394c.png', 'chi-deo.png', '20190606_1559791137_5cf88621f394c.png', 'png', '2019-06-06 10:18:58', '2019-06-06 10:18:58');
INSERT INTO `files` VALUES (393, 'uploads/2019/06/06/20190606_1559791138_5cf8862222d3a.png', 'chi-deo.png', '20190606_1559791138_5cf8862222d3a.png', 'png', '2019-06-06 10:18:58', '2019-06-06 10:18:58');
INSERT INTO `files` VALUES (394, 'uploads/2019/06/07/20190607_1559894853_5cfa1b459b3b5.jpg', '45-report-writing.jpg', '20190607_1559894853_5cfa1b459b3b5.jpg', 'jpg', '2019-06-07 15:07:33', '2019-06-07 15:07:33');
INSERT INTO `files` VALUES (395, 'uploads/2019/06/07/20190607_1559894853_5cfa1b45c10d7.png', 'businessman_reading_report_header.png', '20190607_1559894853_5cfa1b45c10d7.png', 'png', '2019-06-07 15:07:33', '2019-06-07 15:07:33');
INSERT INTO `files` VALUES (396, 'uploads/2019/06/07/20190607_1559894853_5cfa1b45d56d8.jpg', 'dangky.jpg', '20190607_1559894853_5cfa1b45d56d8.jpg', 'jpg', '2019-06-07 15:07:33', '2019-06-07 15:07:33');
INSERT INTO `files` VALUES (397, 'uploads/2019/06/07/20190607_1559895720_5cfa1ea8b11fe.jpg', 'annual-report.jpg', '20190607_1559895720_5cfa1ea8b11fe.jpg', 'jpg', '2019-06-07 15:22:00', '2019-06-07 15:22:00');
INSERT INTO `files` VALUES (398, 'uploads/2019/06/07/20190607_1559895720_5cfa1ea8c2d65.jpg', '3ed4e9b52ca7c6f99fb6.jpg', '20190607_1559895720_5cfa1ea8c2d65.jpg', 'jpg', '2019-06-07 15:22:00', '2019-06-07 15:22:00');
INSERT INTO `files` VALUES (399, 'uploads/2019/06/07/20190607_1559895720_5cfa1ea8d73cd.jpg', '5bf01a6d4335a96bf024.jpg', '20190607_1559895720_5cfa1ea8d73cd.jpg', 'jpg', '2019-06-07 15:22:00', '2019-06-07 15:22:00');
INSERT INTO `files` VALUES (400, 'uploads/2019/06/07/20190607_1559896709_5cfa22851a3bf.jpg', '5bf01a6d4335a96bf024.jpg', '20190607_1559896709_5cfa22851a3bf.jpg', 'jpg', '2019-06-07 15:38:29', '2019-06-07 15:38:29');
INSERT INTO `files` VALUES (401, 'uploads/2019/06/07/20190607_1559896709_5cfa228563651.jpg', 'fe5b04259c9a77c42e8b.jpg', '20190607_1559896709_5cfa228563651.jpg', 'jpg', '2019-06-07 15:38:29', '2019-06-07 15:38:29');
INSERT INTO `files` VALUES (402, 'uploads/2019/06/07/20190607_1559897852_5cfa26fc9ea84.png', '', '20190607_1559897852_5cfa26fc9ea84.png', 'png', '2019-06-07 15:57:32', '2019-06-07 15:57:32');
INSERT INTO `files` VALUES (403, 'uploads/2019/06/07/20190607_1559897914_5cfa273aea5c0.jpg', '5bf01a6d4335a96bf024.jpg', '20190607_1559897914_5cfa273aea5c0.jpg', 'jpg', '2019-06-07 15:58:34', '2019-06-07 15:58:34');
INSERT INTO `files` VALUES (404, 'uploads/2019/06/07/20190607_1559897915_5cfa273b0574b.jpg', 'fe5b04259c9a77c42e8b.jpg', '20190607_1559897915_5cfa273b0574b.jpg', 'jpg', '2019-06-07 15:58:35', '2019-06-07 15:58:35');
INSERT INTO `files` VALUES (405, 'uploads/2019/06/07/20190607_1559897915_5cfa273b18488.jpg', '5bf01a6d4335a96bf024.jpg', '20190607_1559897915_5cfa273b18488.jpg', 'jpg', '2019-06-07 15:58:35', '2019-06-07 15:58:35');
INSERT INTO `files` VALUES (406, 'uploads/2019/06/07/20190607_1559901803_5cfa366b4e300.jpg', 'fe5b04259c9a77c42e8b.jpg', '20190607_1559901803_5cfa366b4e300.jpg', 'jpg', '2019-06-07 17:03:23', '2019-06-07 17:03:23');
INSERT INTO `files` VALUES (407, 'uploads/2019/06/07/20190607_1559908538_5cfa50bae8747.png', '', '20190607_1559908538_5cfa50bae8747.png', 'png', '2019-06-07 18:55:38', '2019-06-07 18:55:38');
INSERT INTO `files` VALUES (408, 'uploads/2019/06/08/20190608_1559968877_5cfb3c6d63b40.jpg', 'fe5b04259c9a77c42e8b.jpg', '20190608_1559968877_5cfb3c6d63b40.jpg', 'jpg', '2019-06-08 11:41:17', '2019-06-08 11:41:17');
INSERT INTO `files` VALUES (409, 'uploads/2019/06/08/20190608_1559968889_5cfb3c794dc98.jpg', 'fe5b04259c9a77c42e8b.jpg', '20190608_1559968889_5cfb3c794dc98.jpg', 'jpg', '2019-06-08 11:41:29', '2019-06-08 11:41:29');
INSERT INTO `files` VALUES (410, 'uploads/2019/06/08/20190608_1559969170_5cfb3d926b815.jpg', 'tanhau.jpg', '20190608_1559969170_5cfb3d926b815.jpg', 'jpg', '2019-06-08 11:46:10', '2019-06-08 11:46:10');
INSERT INTO `files` VALUES (411, 'uploads/2019/06/08/20190608_1559969243_5cfb3ddb08df1.jpg', 'tanhau.jpg', '20190608_1559969243_5cfb3ddb08df1.jpg', 'jpg', '2019-06-08 11:47:23', '2019-06-08 11:47:23');
INSERT INTO `files` VALUES (412, 'uploads/2019/06/08/20190608_1559969548_5cfb3f0c4f814.jpg', 'tanhau.jpg', '20190608_1559969548_5cfb3f0c4f814.jpg', 'jpg', '2019-06-08 11:52:28', '2019-06-08 11:52:28');
INSERT INTO `files` VALUES (413, 'uploads/2019/06/08/20190608_1559970202_5cfb419ad73d6.jpg', 'mr_an1.jpg', '20190608_1559970202_5cfb419ad73d6.jpg', 'jpg', '2019-06-08 12:03:22', '2019-06-08 12:03:22');
INSERT INTO `files` VALUES (414, 'uploads/2019/06/08/20190608_1559970202_5cfb419af0157.jpg', 'update_avatar.jpg', '20190608_1559970202_5cfb419af0157.jpg', 'jpg', '2019-06-08 12:03:22', '2019-06-08 12:03:22');
INSERT INTO `files` VALUES (415, 'uploads/2019/06/08/20190608_1559975638_5cfb56d600ec4.jpg', 'fe5b04259c9a77c42e8b.jpg', '20190608_1559975638_5cfb56d600ec4.jpg', 'jpg', '2019-06-08 13:33:58', '2019-06-08 13:33:58');
INSERT INTO `files` VALUES (416, 'uploads/2019/06/08/20190608_1559977172_5cfb5cd4f03f7.jpg', '199k-chuyengia.jpg', '20190608_1559977172_5cfb5cd4f03f7.jpg', 'jpg', '2019-06-08 13:59:32', '2019-06-08 13:59:32');
INSERT INTO `files` VALUES (417, 'uploads/2019/06/08/20190608_1559978121_5cfb60899d8e0.jpg', '199k-chuyengia.jpg', '20190608_1559978121_5cfb60899d8e0.jpg', 'jpg', '2019-06-08 14:15:21', '2019-06-08 14:15:21');
INSERT INTO `files` VALUES (418, 'uploads/2019/06/08/20190608_1559978419_5cfb61b365b84.jpg', '199k-chuyengia.jpg', '20190608_1559978419_5cfb61b365b84.jpg', 'jpg', '2019-06-08 14:20:19', '2019-06-08 14:20:19');
INSERT INTO `files` VALUES (419, 'uploads/2019/06/08/20190608_1559978419_5cfb61b381ae3.jpg', '199k-chuyengia.jpg', '20190608_1559978419_5cfb61b381ae3.jpg', 'jpg', '2019-06-08 14:20:19', '2019-06-08 14:20:19');
INSERT INTO `files` VALUES (420, 'uploads/2019/06/08/20190608_1559978617_5cfb6279598e9.jpg', '199k-chuyengia.jpg', '20190608_1559978617_5cfb6279598e9.jpg', 'jpg', '2019-06-08 14:23:37', '2019-06-08 14:23:37');
INSERT INTO `files` VALUES (421, 'uploads/2019/06/08/20190608_1559978741_5cfb62f56a2b0.jpg', 'hinh2.jpg', '20190608_1559978741_5cfb62f56a2b0.jpg', 'jpg', '2019-06-08 14:25:41', '2019-06-08 14:25:41');
INSERT INTO `files` VALUES (422, 'uploads/2019/06/10/20190610_1560174430_5cfe5f5e6653f.png', 'tra-matcha.png', '20190610_1560174430_5cfe5f5e6653f.png', 'png', '2019-06-10 20:47:10', '2019-06-10 20:47:10');
INSERT INTO `files` VALUES (423, 'uploads/2019/06/10/20190610_1560174430_5cfe5f5e817a8.png', 'Layer-2.png-3.png', '20190610_1560174430_5cfe5f5e817a8.png', 'png', '2019-06-10 20:47:10', '2019-06-10 20:47:10');
INSERT INTO `files` VALUES (424, 'uploads/2019/06/10/20190610_1560174563_5cfe5fe3d4aa9.png', 'Layer-2.png', '20190610_1560174563_5cfe5fe3d4aa9.png', 'png', '2019-06-10 20:49:23', '2019-06-10 20:49:23');
INSERT INTO `files` VALUES (425, 'uploads/2019/06/10/20190610_1560174563_5cfe5fe3ec7e0.png', 'chanh-quat-han-thien.png', '20190610_1560174563_5cfe5fe3ec7e0.png', 'png', '2019-06-10 20:49:23', '2019-06-10 20:49:23');
INSERT INTO `files` VALUES (426, 'uploads/2019/06/10/20190610_1560174739_5cfe60931d9f4.png', 'Layer-1.png', '20190610_1560174739_5cfe60931d9f4.png', 'png', '2019-06-10 20:52:19', '2019-06-10 20:52:19');
INSERT INTO `files` VALUES (427, 'uploads/2019/06/10/20190610_1560175111_5cfe620720a04.png', 'TRA-BUOI-HOANG-KIM.png', '20190610_1560175111_5cfe620720a04.png', 'png', '2019-06-10 20:58:31', '2019-06-10 20:58:31');
INSERT INTO `files` VALUES (428, 'uploads/2019/06/10/20190610_1560175242_5cfe628a82533.png', 'chanh-quat-han-thien.png', '20190610_1560175242_5cfe628a82533.png', 'png', '2019-06-10 21:00:42', '2019-06-10 21:00:42');
INSERT INTO `files` VALUES (429, 'uploads/2019/06/10/20190610_1560175369_5cfe63096e958.png', 'Layer-2.png', '20190610_1560175369_5cfe63096e958.png', 'png', '2019-06-10 21:02:49', '2019-06-10 21:02:49');
INSERT INTO `files` VALUES (430, 'uploads/2019/06/10/20190610_1560175448_5cfe6358bd611.png', 'chanh-quat-han-thien.png', '20190610_1560175448_5cfe6358bd611.png', 'png', '2019-06-10 21:04:08', '2019-06-10 21:04:08');
INSERT INTO `files` VALUES (431, 'uploads/2019/06/10/20190610_1560175650_5cfe64228999a.png', 'KEM-TUYET-XOAI.png', '20190610_1560175650_5cfe64228999a.png', 'png', '2019-06-10 21:07:30', '2019-06-10 21:07:30');
INSERT INTO `files` VALUES (432, 'uploads/2019/06/10/20190610_1560175741_5cfe647dd12a2.png', 'sua-tuoi-tran-chau-duong-den.png', '20190610_1560175741_5cfe647dd12a2.png', 'png', '2019-06-10 21:09:01', '2019-06-10 21:09:01');
INSERT INTO `files` VALUES (433, 'uploads/2019/06/10/20190610_1560175773_5cfe649dd4ce1.png', 'Layer-21.png', '20190610_1560175773_5cfe649dd4ce1.png', 'png', '2019-06-10 21:09:33', '2019-06-10 21:09:33');
INSERT INTO `files` VALUES (434, 'uploads/2019/06/12/20190612_1560323827_5d00a6f3708da.png', 'chanh-quat-han-thien.png', '20190612_1560323827_5d00a6f3708da.png', 'png', '2019-06-12 14:17:07', '2019-06-12 14:17:07');
INSERT INTO `files` VALUES (435, 'uploads/2019/06/12/20190612_1560323827_5d00a6f385ac3.png', 'KEM-TUYET-XOAI.png', '20190612_1560323827_5d00a6f385ac3.png', 'png', '2019-06-12 14:17:07', '2019-06-12 14:17:07');
INSERT INTO `files` VALUES (436, 'uploads/2019/06/12/20190612_1560323827_5d00a6f393f2d.png', 'Layer-2.png', '20190612_1560323827_5d00a6f393f2d.png', 'png', '2019-06-12 14:17:07', '2019-06-12 14:17:07');
INSERT INTO `files` VALUES (437, 'uploads/2019/06/12/20190612_1560329214_5d00bbfeb0ff8.jpg', '_MG_9364.jpg', '20190612_1560329214_5d00bbfeb0ff8.jpg', 'jpg', '2019-06-12 15:46:54', '2019-06-12 15:46:54');
INSERT INTO `files` VALUES (438, 'uploads/2019/06/12/20190612_1560329567_5d00bd5f64b29.jpg', '_MG_9049.jpg', '20190612_1560329567_5d00bd5f64b29.jpg', 'jpg', '2019-06-12 15:52:47', '2019-06-12 15:52:47');
INSERT INTO `files` VALUES (439, 'uploads/2019/06/12/20190612_1560329864_5d00be8843134.jpg', '_MG_9281.jpg', '20190612_1560329864_5d00be8843134.jpg', 'jpg', '2019-06-12 15:57:44', '2019-06-12 15:57:44');
INSERT INTO `files` VALUES (440, 'uploads/2019/06/12/20190612_1560329864_5d00be8857029.jpg', '_MG_9212.jpg', '20190612_1560329864_5d00be8857029.jpg', 'jpg', '2019-06-12 15:57:44', '2019-06-12 15:57:44');
INSERT INTO `files` VALUES (441, 'uploads/2019/06/12/20190612_1560329864_5d00be887830f.jpg', '_MG_9331.jpg', '20190612_1560329864_5d00be887830f.jpg', 'jpg', '2019-06-12 15:57:44', '2019-06-12 15:57:44');
INSERT INTO `files` VALUES (442, 'uploads/2019/06/12/20190612_1560329916_5d00bebcc0124.jpg', '_MG_9281.jpg', '20190612_1560329916_5d00bebcc0124.jpg', 'jpg', '2019-06-12 15:58:36', '2019-06-12 15:58:36');
INSERT INTO `files` VALUES (443, 'uploads/2019/06/12/20190612_1560329952_5d00bee025501.jpg', '_MG_9331.jpg', '20190612_1560329952_5d00bee025501.jpg', 'jpg', '2019-06-12 15:59:12', '2019-06-12 15:59:12');
INSERT INTO `files` VALUES (444, 'uploads/2019/06/12/20190612_1560329968_5d00bef0085e7.jpg', '_MG_9281.jpg', '20190612_1560329968_5d00bef0085e7.jpg', 'jpg', '2019-06-12 15:59:28', '2019-06-12 15:59:28');
INSERT INTO `files` VALUES (445, 'uploads/2019/06/12/20190612_1560329988_5d00bf0412b17.jpg', '_MG_9049.jpg', '20190612_1560329988_5d00bf0412b17.jpg', 'jpg', '2019-06-12 15:59:48', '2019-06-12 15:59:48');
INSERT INTO `files` VALUES (446, 'uploads/2019/06/12/20190612_1560330016_5d00bf20e75d3.jpg', '_MG_9212.jpg', '20190612_1560330016_5d00bf20e75d3.jpg', 'jpg', '2019-06-12 16:00:16', '2019-06-12 16:00:16');
INSERT INTO `files` VALUES (447, 'uploads/2019/06/12/20190612_1560330099_5d00bf73acd3d.jpg', '_MG_9410.jpg', '20190612_1560330099_5d00bf73acd3d.jpg', 'jpg', '2019-06-12 16:01:39', '2019-06-12 16:01:39');
INSERT INTO `files` VALUES (448, 'uploads/2019/06/12/20190612_1560330179_5d00bfc3620ff.jpg', '_MG_9074.jpg', '20190612_1560330179_5d00bfc3620ff.jpg', 'jpg', '2019-06-12 16:02:59', '2019-06-12 16:02:59');
INSERT INTO `files` VALUES (449, 'uploads/2019/06/12/20190612_1560330252_5d00c00c02f7e.jpg', '_MG_9432.jpg', '20190612_1560330252_5d00c00c02f7e.jpg', 'jpg', '2019-06-12 16:04:12', '2019-06-12 16:04:12');
INSERT INTO `files` VALUES (450, 'uploads/2019/06/12/20190612_1560330326_5d00c0565dee7.jpg', '_MG_9357.jpg', '20190612_1560330326_5d00c0565dee7.jpg', 'jpg', '2019-06-12 16:05:26', '2019-06-12 16:05:26');
INSERT INTO `files` VALUES (451, 'uploads/2019/06/12/20190612_1560330412_5d00c0ac713b4.jpg', '_MG_9398.jpg', '20190612_1560330412_5d00c0ac713b4.jpg', 'jpg', '2019-06-12 16:06:52', '2019-06-12 16:06:52');
INSERT INTO `files` VALUES (452, 'uploads/2019/06/17/20190617_1560764960_5d076220da65d.jpg', '_MG_9364.jpg', '20190617_1560764960_5d076220da65d.jpg', 'jpg', '2019-06-17 16:49:20', '2019-06-17 16:49:20');
INSERT INTO `files` VALUES (453, 'uploads/2019/06/17/20190617_1560765233_5d07633172cc9.jpg', '_MG_904912.jpg', '20190617_1560765233_5d07633172cc9.jpg', 'jpg', '2019-06-17 16:53:53', '2019-06-17 16:53:53');
INSERT INTO `files` VALUES (454, 'uploads/2019/06/17/20190617_1560765259_5d07634b0a911.jpg', '_MG_9398.jpg', '20190617_1560765259_5d07634b0a911.jpg', 'jpg', '2019-06-17 16:54:19', '2019-06-17 16:54:19');
INSERT INTO `files` VALUES (455, 'uploads/2019/06/18/20190618_1560824998_5d084ca6db820.jpg', '_MG_9410.jpg', '20190618_1560824998_5d084ca6db820.jpg', 'jpg', '2019-06-18 09:29:58', '2019-06-18 09:29:58');
INSERT INTO `files` VALUES (456, 'uploads/2019/06/18/20190618_1560825134_5d084d2e5f2eb.jpg', '_MG_9357.jpg', '20190618_1560825134_5d084d2e5f2eb.jpg', 'jpg', '2019-06-18 09:32:14', '2019-06-18 09:32:14');
INSERT INTO `files` VALUES (457, 'uploads/2019/06/18/20190618_1560834049_5d0870010cccc.jpg', '_MG_904912.jpg', '20190618_1560834049_5d0870010cccc.jpg', 'jpg', '2019-06-18 12:00:49', '2019-06-18 12:00:49');
INSERT INTO `files` VALUES (458, 'uploads/2019/06/18/20190618_1560834093_5d08702d26293.jpg', '_MG_9410.jpg', '20190618_1560834093_5d08702d26293.jpg', 'jpg', '2019-06-18 12:01:33', '2019-06-18 12:01:33');
INSERT INTO `files` VALUES (459, 'uploads/2019/06/18/20190618_1560841073_5d088b71a6a02.jpg', '_MG_9432.jpg', '20190618_1560841073_5d088b71a6a02.jpg', 'jpg', '2019-06-18 13:57:53', '2019-06-18 13:57:53');
INSERT INTO `files` VALUES (460, 'uploads/2019/06/19/20190619_1560911571_5d099ed31863d.jpg', '_MG_9432.jpg', '20190619_1560911571_5d099ed31863d.jpg', 'jpg', '2019-06-19 09:32:51', '2019-06-19 09:32:51');
INSERT INTO `files` VALUES (461, 'uploads/2019/06/19/20190619_1560911609_5d099ef94131b.jpg', '_MG_9432.jpg', '20190619_1560911609_5d099ef94131b.jpg', 'jpg', '2019-06-19 09:33:29', '2019-06-19 09:33:29');
INSERT INTO `files` VALUES (462, 'uploads/2019/06/27/20190627_1561628546_5d148f829034c.png', '', '20190627_1561628546_5d148f829034c.png', 'png', '2019-06-27 16:42:26', '2019-06-27 16:42:26');
INSERT INTO `files` VALUES (463, 'uploads/2019/06/27/20190627_1561628641_5d148fe1d0be9.png', '', '20190627_1561628641_5d148fe1d0be9.png', 'png', '2019-06-27 16:44:01', '2019-06-27 16:44:01');
INSERT INTO `files` VALUES (464, 'uploads/2019/07/02/20190702_1562041184_5d1adb6046308.jpg', 'tra-xoai-x-quên.jpg', '20190702_1562041184_5d1adb6046308.jpg', 'jpg', '2019-07-02 11:19:44', '2019-07-02 11:19:44');
INSERT INTO `files` VALUES (465, 'uploads/2019/07/06/20190706_1562377800_5d1ffe4845ca8.jpg', 'kemtuyetxoai.jpg', '20190706_1562377800_5d1ffe4845ca8.jpg', 'jpg', '2019-07-06 08:50:00', '2019-07-06 08:50:00');
INSERT INTO `files` VALUES (466, 'uploads/2019/07/06/20190706_1562378042_5d1fff3a38890.jpg', 'yakulkchanh.jpg', '20190706_1562378042_5d1fff3a38890.jpg', 'jpg', '2019-07-06 08:54:02', '2019-07-06 08:54:02');
INSERT INTO `files` VALUES (467, 'uploads/2019/07/06/20190706_1562378957_5d2002cdc458f.jpg', 'tradaohoanhai.jpg', '20190706_1562378957_5d2002cdc458f.jpg', 'jpg', '2019-07-06 09:09:17', '2019-07-06 09:09:17');
INSERT INTO `files` VALUES (468, 'uploads/2019/07/06/20190706_1562381055_5d200aff53cda.jpg', 'kem-tuyet-matcha-dau-do.jpg', '20190706_1562381055_5d200aff53cda.jpg', 'jpg', '2019-07-06 09:44:15', '2019-07-06 09:44:15');

-- ----------------------------
-- Table structure for grants
-- ----------------------------
DROP TABLE IF EXISTS `grants`;
CREATE TABLE `grants`  (
  `idgrant` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idrole` int(11) NOT NULL,
  `to_iduser` int(11) NOT NULL,
  `by_iduser` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idgrant`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of grants
-- ----------------------------
INSERT INTO `grants` VALUES (1, 1, 2, 2, '2019-04-13 08:30:20', '2019-04-13 08:30:20');

-- ----------------------------
-- Table structure for imp_perms
-- ----------------------------
DROP TABLE IF EXISTS `imp_perms`;
CREATE TABLE `imp_perms`  (
  `idimp_perm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idperm` int(11) NOT NULL,
  `idrole` int(11) NOT NULL,
  `iduserimp` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idimp_perm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of imp_perms
-- ----------------------------
INSERT INTO `imp_perms` VALUES (1, 1, 1, 2, '2019-04-13 08:30:03', '2019-04-13 08:30:03');

-- ----------------------------
-- Table structure for imp_products
-- ----------------------------
DROP TABLE IF EXISTS `imp_products`;
CREATE TABLE `imp_products`  (
  `idimp` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idproduct` bigint(20) NOT NULL,
  `idcustomer` int(11) NULL DEFAULT NULL,
  `iduser` int(11) NULL DEFAULT NULL,
  `amount` double(20, 0) NULL DEFAULT 0,
  `price_import` double(20, 0) NULL DEFAULT NULL,
  `price` double(20, 0) NULL DEFAULT 0,
  `price_sale_origin` double(20, 0) NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `idstore` int(11) NULL DEFAULT NULL,
  `axis_x` int(11) NULL DEFAULT NULL,
  `axis_y` int(11) NULL DEFAULT NULL,
  `axis_z` int(11) NULL DEFAULT NULL,
  `id_status_type` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idimp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of imp_products
-- ----------------------------
INSERT INTO `imp_products` VALUES (62, 68, 0, 2, 0, 21000, 29000, 38000, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-02 11:35:36');
INSERT INTO `imp_products` VALUES (63, 70, 0, 2, 1, NULL, 29000, NULL, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (64, 71, 0, 2, 0, 19500, 29000, 37000, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-02 11:35:01');
INSERT INTO `imp_products` VALUES (65, 72, 0, 2, 0, 15000, 29000, 45000, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-02 11:34:32');
INSERT INTO `imp_products` VALUES (66, 73, 0, 2, 0, 18000, 29000, 37000, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-02 12:04:41');
INSERT INTO `imp_products` VALUES (67, 74, 0, 2, 0, 13000, 29000, 37000, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-02 11:33:54');
INSERT INTO `imp_products` VALUES (68, 75, 0, 2, 0, NULL, 29000, NULL, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (74, 91, 0, 2, 0, NULL, 66000, NULL, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (75, 92, 0, 2, 0, NULL, 2015, NULL, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (77, 94, 0, 2, 0, NULL, 40000, NULL, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (78, 95, 0, 2, 0, NULL, 50000, NULL, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (79, 96, 0, 2, 0, 25000, 50000, 65000, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-02 11:32:45');
INSERT INTO `imp_products` VALUES (80, 97, 0, 2, 0, 20000, 49000, 55000, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-02 11:32:09');
INSERT INTO `imp_products` VALUES (81, 98, 0, 2, 0, NULL, 50000, NULL, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (82, 99, 0, 2, 0, NULL, 3000, NULL, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (83, 100, 0, 2, 0, NULL, 3000, NULL, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (84, 102, 0, 2, 0, NULL, 3000, NULL, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (85, 103, 0, 2, 0, 19000, 45000, 50000, '', 0, 0, 0, 0, 3, '2019-07-05 09:59:59', '2019-07-05 10:00:16');
INSERT INTO `imp_products` VALUES (86, 104, 0, 2, 0, NULL, 28500, 37000, '', 0, 0, 0, 0, 3, '2019-07-06 08:50:00', '2019-07-06 08:50:26');
INSERT INTO `imp_products` VALUES (87, 105, 0, 2, 0, NULL, 20000, 37000, '', 0, 0, 0, 0, 3, '2019-07-06 08:54:02', '2019-07-06 08:54:02');
INSERT INTO `imp_products` VALUES (88, 106, 0, 2, 0, NULL, 38500, 50000, '', 0, 0, 0, 0, 3, '2019-07-06 09:09:17', '2019-07-06 09:09:17');
INSERT INTO `imp_products` VALUES (89, 107, 0, 2, 0, NULL, 25000, 35000, '', 0, 0, 0, 0, 3, '2019-07-06 09:44:15', '2019-07-06 09:44:15');

-- ----------------------------
-- Table structure for impposts
-- ----------------------------
DROP TABLE IF EXISTS `impposts`;
CREATE TABLE `impposts`  (
  `idimppost` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idpost` bigint(20) NULL DEFAULT NULL,
  `id_status_type` int(11) NULL DEFAULT NULL,
  `percent_process` decimal(8, 2) NULL DEFAULT NULL,
  `iduser_imp` int(11) NULL DEFAULT NULL,
  `idemployee` int(11) NULL DEFAULT NULL,
  `address_reg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_idpost_imp` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idimppost`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for menu_has_cate
-- ----------------------------
DROP TABLE IF EXISTS `menu_has_cate`;
CREATE TABLE `menu_has_cate`  (
  `idmenuhascate` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idmenu` int(11) NOT NULL,
  `idcategory` int(11) NOT NULL,
  `idparent` int(11) NULL DEFAULT NULL,
  `depth` int(10) NULL DEFAULT NULL,
  `reorder` int(11) NULL DEFAULT NULL,
  `trash` int(5) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idmenuhascate`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu_has_cate
-- ----------------------------
INSERT INTO `menu_has_cate` VALUES (129, 1, 9, 0, 0, 0, 0, '2019-07-29 08:55:25', '2019-07-29 08:55:25');
INSERT INTO `menu_has_cate` VALUES (130, 1, 23, 129, 1, 1, 0, '2019-07-29 08:55:25', '2019-07-29 08:55:37');
INSERT INTO `menu_has_cate` VALUES (131, 1, 25, 129, 1, 2, 0, '2019-07-29 08:55:25', '2019-07-29 08:55:37');
INSERT INTO `menu_has_cate` VALUES (132, 1, 26, 129, 1, 3, 0, '2019-07-29 08:55:25', '2019-07-29 08:55:37');
INSERT INTO `menu_has_cate` VALUES (133, 1, 28, 0, 0, 4, 0, '2019-07-29 08:55:44', '2019-07-29 08:55:44');
INSERT INTO `menu_has_cate` VALUES (134, 1, 18, 133, 1, 5, 0, '2019-07-29 08:55:44', '2019-07-30 08:21:35');
INSERT INTO `menu_has_cate` VALUES (135, 1, 19, 133, 1, 6, 0, '2019-07-29 08:55:44', '2019-07-30 08:21:35');
INSERT INTO `menu_has_cate` VALUES (136, 1, 20, 28, 0, 7, 0, '2019-07-29 08:55:44', '2019-07-29 08:55:44');
INSERT INTO `menu_has_cate` VALUES (137, 1, 11, 0, 0, 8, 0, '2019-07-30 08:21:52', '2019-07-30 08:21:52');
INSERT INTO `menu_has_cate` VALUES (138, 1, 12, 137, 1, 11, 0, '2019-07-30 08:21:52', '2019-07-30 08:52:05');
INSERT INTO `menu_has_cate` VALUES (139, 1, 13, 137, 1, 10, 0, '2019-07-30 08:21:52', '2019-07-30 08:52:05');
INSERT INTO `menu_has_cate` VALUES (140, 1, 14, 137, 1, 12, 0, '2019-07-30 08:21:52', '2019-07-30 08:22:15');
INSERT INTO `menu_has_cate` VALUES (141, 1, 15, 137, 1, 9, 0, '2019-07-30 08:21:52', '2019-07-30 08:22:15');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `idmenu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namemenu` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idmenu`) USING BTREE,
  UNIQUE INDEX `menu_namemenu_unique`(`namemenu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'menu-primary', '2019-07-09 17:43:25', '2019-07-09 17:43:25');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (8, '2018_09_28_071047_create_sv_customers_table', 1);
INSERT INTO `migrations` VALUES (9, '2018_09_28_071406_create_sv_sends_table', 1);
INSERT INTO `migrations` VALUES (10, '2018_09_28_071547_create_sv_receives_table', 1);
INSERT INTO `migrations` VALUES (11, '2018_09_28_071605_create_sv_campaigns_table', 1);
INSERT INTO `migrations` VALUES (12, '2018_09_28_092221_create_sv_post_types_table', 1);
INSERT INTO `migrations` VALUES (13, '2018_10_01_070557_create_sv_posts_table', 1);
INSERT INTO `migrations` VALUES (14, '2018_10_28_070541_create_products_table', 1);
INSERT INTO `migrations` VALUES (15, '2018_10_28_070821_create_imp_products_table', 1);
INSERT INTO `migrations` VALUES (16, '2018_10_28_070834_create_exp_products_table', 1);
INSERT INTO `migrations` VALUES (17, '2018_11_29_134641_create_permissions_table', 1);
INSERT INTO `migrations` VALUES (18, '2018_11_29_135338_create_roles_table', 1);
INSERT INTO `migrations` VALUES (19, '2018_11_29_135505_create_imp_perms_table', 1);
INSERT INTO `migrations` VALUES (20, '2018_11_29_135523_create_grants_table', 1);
INSERT INTO `migrations` VALUES (21, '2018_12_14_132905_listgrantbyid_procedure', 1);
INSERT INTO `migrations` VALUES (22, '2018_12_15_032820_listpost_procedure', 1);
INSERT INTO `migrations` VALUES (23, '2018_12_16_102228_create_post_types_table', 1);
INSERT INTO `migrations` VALUES (24, '2018_12_16_125347_create_category_types_table', 1);
INSERT INTO `migrations` VALUES (25, '2018_12_18_081612_listcatparent_procedure', 1);
INSERT INTO `migrations` VALUES (26, '2018_12_18_094626_sellistcategorybyid_procedure', 1);
INSERT INTO `migrations` VALUES (27, '2018_12_20_042704_create_status_types_table', 1);
INSERT INTO `migrations` VALUES (28, '2018_12_23_092920_update_imppost_by_id_procedure', 1);
INSERT INTO `migrations` VALUES (29, '2019_01_03_084802_creat_files_table', 1);
INSERT INTO `migrations` VALUES (30, '2019_01_03_085744_insert_files_procedure', 1);
INSERT INTO `migrations` VALUES (31, '2019_01_06_144658_sel_department_by_id_procedure', 1);
INSERT INTO `migrations` VALUES (32, '2019_01_06_174759_create_depart_employees_table', 1);
INSERT INTO `migrations` VALUES (33, '2019_01_06_175900_create_profiles_table', 1);
INSERT INTO `migrations` VALUES (34, '2019_01_06_204904_list_depart_parent_procedure', 1);
INSERT INTO `migrations` VALUES (35, '2019_01_06_212731_sel_list_department_by_id_procedure', 1);
INSERT INTO `migrations` VALUES (36, '2019_01_06_223105_list_department_procedure', 1);
INSERT INTO `migrations` VALUES (37, '2019_01_06_225258_create_departments_table', 1);
INSERT INTO `migrations` VALUES (38, '2019_01_08_233801_list_sel_emp_depart_procedure', 1);
INSERT INTO `migrations` VALUES (39, '2019_02_11_091036_create_post_has_files_table', 1);
INSERT INTO `migrations` VALUES (40, '2019_02_11_095450_create_posts_table', 1);
INSERT INTO `migrations` VALUES (41, '2019_02_11_100541_post_has_file_procedure', 1);
INSERT INTO `migrations` VALUES (42, '2019_02_11_114745_list_type_selected_procedure', 1);
INSERT INTO `migrations` VALUES (43, '2019_02_11_154503_getparentidprocedure', 1);
INSERT INTO `migrations` VALUES (44, '2019_02_11_172247_post_by_id_procedure', 1);
INSERT INTO `migrations` VALUES (45, '2019_02_11_231226_create_impposts_table', 1);
INSERT INTO `migrations` VALUES (46, '2019_02_11_231546_create_expposts_table', 1);
INSERT INTO `migrations` VALUES (47, '2019_02_12_042124_create_categories_table', 1);
INSERT INTO `migrations` VALUES (48, '2019_02_12_044223_list_category_procedure', 1);
INSERT INTO `migrations` VALUES (49, '2019_02_12_234640_sel_categoryby_id_procedure', 1);
INSERT INTO `migrations` VALUES (50, '2019_02_13_000954_insert_post_procedure', 1);
INSERT INTO `migrations` VALUES (51, '2019_02_17_142125_list_impperm_procedure', 1);
INSERT INTO `migrations` VALUES (52, '2019_02_17_142536_imppermbyid_procedure', 1);
INSERT INTO `migrations` VALUES (53, '2019_02_17_142814_listgrant_procedure', 1);
INSERT INTO `migrations` VALUES (57, '2019_02_26_222724_list_role_idperm_procedure', 2);
INSERT INTO `migrations` VALUES (58, '2019_02_28_153458_create_post_has_file_table', 2);
INSERT INTO `migrations` VALUES (59, '2019_02_28_171709_creat_post_api_procedure', 3);
INSERT INTO `migrations` VALUES (60, '2019_03_01_234312_creat_api_post_procedure', 4);
INSERT INTO `migrations` VALUES (61, '2019_04_09_173504_filter_user_reg', 5);
INSERT INTO `migrations` VALUES (62, '2019_04_11_085120_customer_reg_procedure', 6);
INSERT INTO `migrations` VALUES (63, '2019_04_14_151243_list_all_category_procedure', 7);
INSERT INTO `migrations` VALUES (64, '2019_04_14_152226_create_post_types_table', 8);
INSERT INTO `migrations` VALUES (65, '2019_04_14_202707_creat_post_api_procedure', 9);
INSERT INTO `migrations` VALUES (66, '2019_04_14_205408_create_impposts_table', 10);
INSERT INTO `migrations` VALUES (67, '2019_04_14_220123_list_customer_register_procedure', 11);
INSERT INTO `migrations` VALUES (68, '2019_04_15_215628_create_categories_table', 12);
INSERT INTO `migrations` VALUES (69, '2019_04_16_113436_list_all_cat_by_type', 12);
INSERT INTO `migrations` VALUES (70, '2019_04_16_221907_list_post_type_procedure', 12);
INSERT INTO `migrations` VALUES (71, '2019_04_18_135716_list_status_type_procedure', 13);
INSERT INTO `migrations` VALUES (72, '2019_04_18_171344_create_expposts_table', 14);
INSERT INTO `migrations` VALUES (73, '2019_05_01_221732_create_table_profile', 15);
INSERT INTO `migrations` VALUES (74, '2019_05_07_195350_creat_profile_procedure', 16);
INSERT INTO `migrations` VALUES (75, '2019_05_08_211922_create_cache_table', 17);
INSERT INTO `migrations` VALUES (76, '2019_05_08_214108_delete_user_procedure', 17);
INSERT INTO `migrations` VALUES (77, '2019_05_08_215614_create_profile_procedure', 18);
INSERT INTO `migrations` VALUES (78, '2019_05_08_222732_select_profile_procedure', 19);
INSERT INTO `migrations` VALUES (79, '2019_05_09_163643_update_profile_procedure', 20);
INSERT INTO `migrations` VALUES (80, '2019_05_10_164806_upload_avatar_procedure', 20);
INSERT INTO `migrations` VALUES (81, '2019_05_27_104911_catehasproduct', 21);
INSERT INTO `migrations` VALUES (82, '2019_05_27_152435_insert_product_procedure', 22);
INSERT INTO `migrations` VALUES (83, '2019_05_28_114143_sel_row_category_by_id_procedure', 23);
INSERT INTO `migrations` VALUES (84, '2019_05_28_134126_create_table_producthas_file', 24);
INSERT INTO `migrations` VALUES (85, '2019_05_28_170738_string_split_procedure', 25);
INSERT INTO `migrations` VALUES (86, '2019_05_29_102104_producthas_file', 26);
INSERT INTO `migrations` VALUES (87, '2019_05_29_110136_insert_file_path', 27);
INSERT INTO `migrations` VALUES (88, '2019_05_29_153414_category_has_product', 28);
INSERT INTO `migrations` VALUES (89, '2019_05_30_140614_list_product_procedure', 29);
INSERT INTO `migrations` VALUES (90, '2019_06_01_144224_product_belong_category_procedure', 30);
INSERT INTO `migrations` VALUES (91, '2019_06_02_210958_import_product_procedure', 31);
INSERT INTO `migrations` VALUES (92, '2019_06_03_093621_producthas_file_procedure', 32);
INSERT INTO `migrations` VALUES (93, '2019_06_04_134808_sel_product_by_id_procedure', 33);
INSERT INTO `migrations` VALUES (94, '2019_06_04_172642_sel_cate_selected_procedure', 34);
INSERT INTO `migrations` VALUES (95, '2019_06_05_104747_sel_gallery_procedure', 35);
INSERT INTO `migrations` VALUES (96, '2019_06_07_095122_update_catehaspro_procedure', 36);
INSERT INTO `migrations` VALUES (97, '2019_06_07_164035_update_import_product_procedure', 37);
INSERT INTO `migrations` VALUES (98, '2019_06_08_092425_delete_producthas_file_procedure', 38);
INSERT INTO `migrations` VALUES (99, '2019_06_08_112052_trash_gellery_procedure', 39);
INSERT INTO `migrations` VALUES (100, '2019_06_09_202259_list_product_by_idcate_procedure', 40);
INSERT INTO `migrations` VALUES (101, '2019_06_10_082603_create_option_table', 41);
INSERT INTO `migrations` VALUES (102, '2019_06_11_165955_add_product_procedure', 42);
INSERT INTO `migrations` VALUES (103, '2019_06_12_162710_relate_product_procedure', 43);
INSERT INTO `migrations` VALUES (104, '2019_06_12_170254_most_popular_procedure', 44);
INSERT INTO `migrations` VALUES (105, '2019_06_13_095459_create_size_table', 44);
INSERT INTO `migrations` VALUES (106, '2019_06_13_095534_create_color_table', 44);
INSERT INTO `migrations` VALUES (107, '2019_06_13_103656_sel_all_size_procedure', 45);
INSERT INTO `migrations` VALUES (108, '2019_06_13_104318_sel_all_color_procedure', 46);
INSERT INTO `migrations` VALUES (109, '2019_06_13_110756_create_cross_product_table', 47);
INSERT INTO `migrations` VALUES (110, '2019_06_13_151846_sel_cross_product_procedure', 48);
INSERT INTO `migrations` VALUES (111, '2019_06_17_143326_cross_product_has_file_procedure', 49);
INSERT INTO `migrations` VALUES (112, '2019_06_18_100206_sel_cross_product_by_id_procedure', 50);
INSERT INTO `migrations` VALUES (113, '2019_06_18_141119_sel_parent_cross_product_procedure', 51);
INSERT INTO `migrations` VALUES (114, '2019_06_18_212706_detail_by_id_product_procedure', 52);
INSERT INTO `migrations` VALUES (115, '2019_06_19_103953_create_exclude_category_table', 53);
INSERT INTO `migrations` VALUES (116, '2019_06_19_112758_sel_topping_procedure', 54);
INSERT INTO `migrations` VALUES (117, '2019_06_24_112322_order_product_procedure', 55);
INSERT INTO `migrations` VALUES (118, '2019_06_27_082956_create_district_table', 56);
INSERT INTO `migrations` VALUES (119, '2019_06_27_083752_create_city_town_table', 56);
INSERT INTO `migrations` VALUES (120, '2019_06_27_083811_create_ward_table', 56);
INSERT INTO `migrations` VALUES (121, '2019_06_27_083919_create_province_table', 56);
INSERT INTO `migrations` VALUES (122, '2019_06_27_091046_create_country_tablec', 57);
INSERT INTO `migrations` VALUES (123, '2019_06_27_091607_create_country_table', 58);
INSERT INTO `migrations` VALUES (124, '2019_06_27_093255_sel_dicstrict_procedure', 59);
INSERT INTO `migrations` VALUES (125, '2019_06_27_095338_create_sex_table', 60);
INSERT INTO `migrations` VALUES (126, '2019_06_27_114710_sel_city_town_procedure', 60);
INSERT INTO `migrations` VALUES (127, '2019_06_27_120047_sel_sex_procedure', 61);
INSERT INTO `migrations` VALUES (128, '2019_06_29_103605_update_order_number_procedure', 62);
INSERT INTO `migrations` VALUES (129, '2019_06_29_112040_complete_list_order_procedure', 63);
INSERT INTO `migrations` VALUES (130, '2019_06_30_195404_detail_customer_procedure', 64);
INSERT INTO `migrations` VALUES (131, '2019_07_01_085148_short_total_procedure', 65);
INSERT INTO `migrations` VALUES (132, '2019_07_01_160129_info_order_product_procedure', 65);
INSERT INTO `migrations` VALUES (133, '2019_07_01_204528_info_order_product_procedure', 66);
INSERT INTO `migrations` VALUES (134, '2019_07_02_150311_list_order_product_procedure', 67);
INSERT INTO `migrations` VALUES (135, '2019_07_09_142546_category_by_idcatetype', 68);
INSERT INTO `migrations` VALUES (136, '2019_07_09_161441_create_menu_table', 69);
INSERT INTO `migrations` VALUES (137, '2019_07_09_163201_create_menu_has_cate_table', 70);
INSERT INTO `migrations` VALUES (138, '2019_07_09_170403_list_menu_procedure', 71);
INSERT INTO `migrations` VALUES (139, '2019_07_09_221448_menu_has_idcate_procedure', 72);
INSERT INTO `migrations` VALUES (140, '2019_07_15_110803_list_all_cate_by_idcatetype', 72);
INSERT INTO `migrations` VALUES (141, '2019_07_25_165403_create_menu_has_id_cate_procedure', 73);
INSERT INTO `migrations` VALUES (142, '2019_07_26_133757_add_menu_item_procedure', 74);
INSERT INTO `migrations` VALUES (143, '2019_07_27_150609_list_item_cate_by_id_menu_procedure', 75);
INSERT INTO `migrations` VALUES (144, '2019_07_27_211645_update_menu_item_by_idhas_procedure', 75);
INSERT INTO `migrations` VALUES (145, '2019_07_28_182139_update_menu_has_cate_procedure', 75);
INSERT INTO `migrations` VALUES (146, '2019_07_30_084741_list_cate_by_idmenu_procedure', 76);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('003723079dbfc44ccefb659f10ce82088af4a85acfa796120115edd55ed28aeaf3e1be9d8acf2951', 16, 1, 'MyApp', '[]', 0, '2019-05-21 09:45:33', '2019-05-21 09:45:33', '2020-05-21 09:45:33');
INSERT INTO `oauth_access_tokens` VALUES ('00f813966a46c4c2eab2bb1ad8a9beb34242627ebd07167cc0f8c26d35bfb4f430ebba94f527cfb2', 2, 1, 'MyApp', '[]', 0, '2019-07-14 11:28:07', '2019-07-14 11:28:07', '2020-07-14 11:28:07');
INSERT INTO `oauth_access_tokens` VALUES ('017151f6e3594e400be8f361d5561be19d1b646c45cb23edc42050f1fcfeaacdad30f26332e7bf3c', 2, 1, 'MyApp', '[]', 0, '2019-07-22 14:05:39', '2019-07-22 14:05:39', '2020-07-22 14:05:39');
INSERT INTO `oauth_access_tokens` VALUES ('01cfd3163ee5705287574a0cf78d7959a7190bbc214871e84bf528f7a856073916a9d4ba90660e02', 21, 1, 'MyApp', '[]', 0, '2019-06-24 10:43:23', '2019-06-24 10:43:23', '2020-06-24 10:43:23');
INSERT INTO `oauth_access_tokens` VALUES ('0255d773a919658141315d3d111e177b15a17d57a8d5b04ecbaf09be6789c7a22c64e6e2a9c99a6b', 2, 1, 'MyApp', '[]', 0, '2019-06-28 08:23:12', '2019-06-28 08:23:12', '2020-06-28 08:23:12');
INSERT INTO `oauth_access_tokens` VALUES ('02c5eb6246239dc8c502a00f04cd968d914088f56382271351eaa125d81d96bc05cef22fa727ac2e', 2, 1, 'MyApp', '[]', 0, '2019-02-27 15:50:47', '2019-02-27 15:50:47', '2020-02-27 15:50:47');
INSERT INTO `oauth_access_tokens` VALUES ('04efc9ed5af1655c64c2590bc9f572b32eb7eca07e429129cb9efd1baca6c0ec2e5ff66746fee23f', 2, 1, 'MyApp', '[]', 0, '2019-05-10 10:38:18', '2019-05-10 10:38:18', '2020-05-10 10:38:18');
INSERT INTO `oauth_access_tokens` VALUES ('04f344456a751f13528e8617784360e9bb2ce58dc9268a91707aa468aba479b212f12573574c3d1b', 2, 1, 'MyApp', '[]', 0, '2019-07-15 11:02:02', '2019-07-15 11:02:02', '2020-07-15 11:02:02');
INSERT INTO `oauth_access_tokens` VALUES ('058b761ebb5c44442216c31bde2d03760794215a28345c0944207b7a001d52aefaed7d7b36ab7d78', 2, 1, 'MyApp', '[]', 0, '2019-05-16 14:40:12', '2019-05-16 14:40:12', '2020-05-16 14:40:12');
INSERT INTO `oauth_access_tokens` VALUES ('067dac3746bfb9865589ab25f53533f9f3eed249169d635653c218b448f75bf1cac28cbb8eca3250', 2, 1, 'MyApp', '[]', 0, '2019-05-01 17:33:54', '2019-05-01 17:33:54', '2020-05-01 17:33:54');
INSERT INTO `oauth_access_tokens` VALUES ('0932576f7ac4ca702fd83f9c0d1181b2bb4ca461c52af492bcde5e1cf5fdbe3ac2170f23c2364a6f', 3, 1, 'MyApp', '[]', 0, '2019-05-05 21:38:59', '2019-05-05 21:38:59', '2020-05-05 21:38:59');
INSERT INTO `oauth_access_tokens` VALUES ('096218f4c8508b93d23381d4d757b6a898a5f7f57d775802d3c7781cb095559f9c710fcbaa7f88f2', 2, 1, 'MyApp', '[]', 0, '2019-04-26 09:06:09', '2019-04-26 09:06:09', '2020-04-26 09:06:09');
INSERT INTO `oauth_access_tokens` VALUES ('0a4c7a79b0a3f46cd45270bb3473c86f1c8f55fdf1ca06a038722871509ec00d9a6c5ddd7db3c097', 2, 1, 'MyApp', '[]', 0, '2019-06-24 16:23:04', '2019-06-24 16:23:04', '2020-06-24 16:23:04');
INSERT INTO `oauth_access_tokens` VALUES ('0b60a19cd4c3ba274cb06a8ae770000add99ba97d47448883fd4c44f84e7f588ea40eb7fa3ec1795', 2, 1, 'MyApp', '[]', 0, '2019-05-16 21:38:22', '2019-05-16 21:38:22', '2020-05-16 21:38:22');
INSERT INTO `oauth_access_tokens` VALUES ('0f756d73a4677ca66d5ac5ccf63c56c39f2a0fc36a40b78bebe93604cf4bf291f7afbfcfdf9cda0f', 18, 1, 'MyApp', '[]', 0, '2019-05-17 09:39:23', '2019-05-17 09:39:23', '2020-05-17 09:39:23');
INSERT INTO `oauth_access_tokens` VALUES ('10efb86325f09f6027e678077a974b501933c092c6a33c6c22e1f00865f85ac350f9228e25a6a1ff', 17, 1, 'MyApp', '[]', 0, '2019-05-20 08:56:22', '2019-05-20 08:56:22', '2020-05-20 08:56:22');
INSERT INTO `oauth_access_tokens` VALUES ('114792509f5c33ac5ae710663876d91eeea6885676508e9e22b0c6b41f1d287451383592a789d6e7', 2, 1, 'MyApp', '[]', 0, '2019-05-13 15:16:00', '2019-05-13 15:16:00', '2020-05-13 15:16:00');
INSERT INTO `oauth_access_tokens` VALUES ('117a3ac930a04e89fbcd898cadbc6520751ce821af16fd5e3db6002f0cc5f475d6d68ed9037fc17b', 2, 1, 'MyApp', '[]', 0, '2019-06-24 17:01:40', '2019-06-24 17:01:40', '2020-06-24 17:01:40');
INSERT INTO `oauth_access_tokens` VALUES ('1184348ed15b1be44e047f7fc4601940afd89b47522feb2214e52bbfc416fee3dd1ce24d3bb31fa3', 2, 1, 'MyApp', '[]', 0, '2019-07-05 13:38:25', '2019-07-05 13:38:25', '2020-07-05 13:38:25');
INSERT INTO `oauth_access_tokens` VALUES ('119c6356e35dad14eecb5673189c6c23f267980e190608a2cb7e9d620e78a91731a54de034ab2167', 2, 1, 'MyApp', '[]', 0, '2019-07-17 08:10:12', '2019-07-17 08:10:12', '2020-07-17 08:10:12');
INSERT INTO `oauth_access_tokens` VALUES ('11fd90efa8b1ffc1780c3899af04cc6ef25df8b30a97508a9e7aca7ee6e37dab12c2e62fe532c6a8', 2, 1, 'MyApp', '[]', 0, '2019-04-23 08:09:32', '2019-04-23 08:09:32', '2020-04-23 08:09:32');
INSERT INTO `oauth_access_tokens` VALUES ('129d09689dc82206833403e3855a89b985d6f90463516b28b3aa496509dad671adf2f9c8da040218', 2, 1, 'MyApp', '[]', 0, '2019-05-01 21:45:08', '2019-05-01 21:45:08', '2020-05-01 21:45:08');
INSERT INTO `oauth_access_tokens` VALUES ('12c7eb54fd88206c647ec1a9018e4f870c367356d040270d7c68ebd7f6f236543747b3a591b0954f', 2, 1, 'MyApp', '[]', 0, '2019-07-19 08:24:33', '2019-07-19 08:24:33', '2020-07-19 08:24:33');
INSERT INTO `oauth_access_tokens` VALUES ('132273c7c1c6c977a2f62bf0ee7d1d9dd8cac7bf07808d3efbe0000e01e3a2f1c1739f6ce7e2ab90', 2, 1, 'MyApp', '[]', 0, '2019-07-04 12:00:01', '2019-07-04 12:00:01', '2020-07-04 12:00:01');
INSERT INTO `oauth_access_tokens` VALUES ('14fadc8eb48e6f841b30759cd1619ff57deb7ffb0367940679e96a3c6b0a204ed138576e294b04d1', 2, 1, 'MyApp', '[]', 0, '2019-04-25 11:28:06', '2019-04-25 11:28:06', '2020-04-25 11:28:06');
INSERT INTO `oauth_access_tokens` VALUES ('15bdcc909e0762864865a6b43e54606a85174db18475ad51a94f3ad6a51131dba8bbd7a2726f11ec', 17, 1, 'MyApp', '[]', 0, '2019-05-18 10:00:03', '2019-05-18 10:00:03', '2020-05-18 10:00:03');
INSERT INTO `oauth_access_tokens` VALUES ('1794dcd211c487d12089c4edde48cb58c0aec2fcfb794f1efefdd6005c1867c6bd964d8872b8d635', 2, 1, 'MyApp', '[]', 0, '2019-06-22 13:36:52', '2019-06-22 13:36:52', '2020-06-22 13:36:52');
INSERT INTO `oauth_access_tokens` VALUES ('17b21775cf6079c603283918bb55014cb927a5d2a6b997667f583498cb6301635ace8c2f39f15360', 2, 1, 'MyApp', '[]', 0, '2019-04-27 08:36:55', '2019-04-27 08:36:55', '2020-04-27 08:36:55');
INSERT INTO `oauth_access_tokens` VALUES ('1965204fe3ef4e6e544b64b1ecb76d6e15f8a9a48139d910616d35f7107a44f12057969a6b7aa4a1', 2, 1, 'MyApp', '[]', 0, '2019-07-06 08:36:46', '2019-07-06 08:36:46', '2020-07-06 08:36:46');
INSERT INTO `oauth_access_tokens` VALUES ('1a0d2c5b55c8eae6c89a0768a6042d6f3edbed863d9c28852b0b76566134a1970a6f90fe678befb9', 2, 1, 'MyApp', '[]', 0, '2019-05-30 09:21:00', '2019-05-30 09:21:00', '2020-05-30 09:21:00');
INSERT INTO `oauth_access_tokens` VALUES ('1c924153c83792025006713f21e037468db18b2c724ff404b83420811845eabf57a1d256c5f630c6', 2, 1, 'MyApp', '[]', 0, '2019-05-17 14:04:51', '2019-05-17 14:04:51', '2020-05-17 14:04:51');
INSERT INTO `oauth_access_tokens` VALUES ('1e5c53b47c5a38423ae1c7fe3ff4f004bcd25d8f2a10b1170f445a89baa598efb0252afd18b940ae', 2, 1, 'MyApp', '[]', 0, '2019-07-09 13:36:07', '2019-07-09 13:36:07', '2020-07-09 13:36:07');
INSERT INTO `oauth_access_tokens` VALUES ('1f736237bd5b2795b3fe4d67c70c259a800187d1262f7a682e12dc709b1255b8876529cce09fc6c4', 2, 1, 'MyApp', '[]', 0, '2019-04-25 15:15:20', '2019-04-25 15:15:20', '2020-04-25 15:15:20');
INSERT INTO `oauth_access_tokens` VALUES ('209cb88bfa7ffebf236395e2a39de20ffe42c65d0524b7df9e45ddf9002ffe9a1c1c3c31a0312fbb', 2, 1, 'MyApp', '[]', 0, '2019-06-22 08:20:30', '2019-06-22 08:20:30', '2020-06-22 08:20:30');
INSERT INTO `oauth_access_tokens` VALUES ('232b3cb564badeb91709bedac2c338dad144890e9d51a39055ac0d497a4f47fb11eed976da0f7907', 2, 1, 'MyApp', '[]', 0, '2019-07-26 08:13:34', '2019-07-26 08:13:34', '2020-07-26 08:13:34');
INSERT INTO `oauth_access_tokens` VALUES ('241b17895075f84cc18f380d036d7e5840e61f826db14c36d1397a096fc7b4782655a4b5d9f8da90', 2, 1, 'MyApp', '[]', 0, '2019-03-26 13:54:32', '2019-03-26 13:54:32', '2020-03-26 13:54:32');
INSERT INTO `oauth_access_tokens` VALUES ('256d309a276e1b2156417da67697796a42945156e38384fbb6ae0acf7215dd7d0a22fc8d7027f913', 2, 1, 'MyApp', '[]', 0, '2019-07-05 08:30:46', '2019-07-05 08:30:46', '2020-07-05 08:30:46');
INSERT INTO `oauth_access_tokens` VALUES ('25e20610a63c42679ee3d08e368b7ce5c6740ca4d24ced15330cacf90e7ab1f51690d40c2918f15e', 2, 1, 'MyApp', '[]', 0, '2019-07-14 16:14:19', '2019-07-14 16:14:19', '2020-07-14 16:14:19');
INSERT INTO `oauth_access_tokens` VALUES ('28a0fcfa1ade07d20ac6da7747bbf31d7435d18a48a2110bd201ac5d337dd9b83e4d47f2b2f21a91', 2, 1, 'MyApp', '[]', 0, '2019-05-05 20:59:14', '2019-05-05 20:59:14', '2020-05-05 20:59:14');
INSERT INTO `oauth_access_tokens` VALUES ('29f32cd7e62afccec2f43fb5df42b2a7f48a38a4e0c8ea56a728d2fdaba864deea206834784167fe', 2, 1, 'MyApp', '[]', 0, '2019-02-27 10:15:01', '2019-02-27 10:15:01', '2020-02-27 10:15:01');
INSERT INTO `oauth_access_tokens` VALUES ('2a1c77e9b2f2ab04ab04abbb8e33587a187d9b8a2bd2364b86791e8e7bc0346463ab29770a6bdcaa', 2, 1, 'MyApp', '[]', 0, '2019-07-03 08:50:54', '2019-07-03 08:50:54', '2020-07-03 08:50:54');
INSERT INTO `oauth_access_tokens` VALUES ('2d437e02c4ffd98fd86eae21d0e9f0ea1f6556db5dd7290001f02575ccc773766d855857bb2182a8', 2, 1, 'MyApp', '[]', 0, '2019-07-25 22:22:26', '2019-07-25 22:22:26', '2020-07-25 22:22:26');
INSERT INTO `oauth_access_tokens` VALUES ('2d48e6079962345f9fb322fbafd7e55a933c0384b2c281786f8f92e8e98af187d60e2f9c229d61c8', 2, 1, 'MyApp', '[]', 0, '2019-07-27 08:17:11', '2019-07-27 08:17:11', '2020-07-27 08:17:11');
INSERT INTO `oauth_access_tokens` VALUES ('2d4e4f6c487aeb65d97a4c1ca61110c68d53de18a7b459c9c7b9f3ccbfa13ed883a35eb07ca4cbc9', 2, 1, 'MyApp', '[]', 0, '2019-05-14 08:05:49', '2019-05-14 08:05:49', '2020-05-14 08:05:49');
INSERT INTO `oauth_access_tokens` VALUES ('2de3bc5849bd7d366c6998ea24c4a3e1fbd9cbdb0252d7c07f5e1e1cabd6dda51a3fe8af55745dbf', 2, 1, 'MyApp', '[]', 0, '2019-05-21 13:35:38', '2019-05-21 13:35:38', '2020-05-21 13:35:38');
INSERT INTO `oauth_access_tokens` VALUES ('2e8a8d2f07b4942ef9c795e50d2bef662fda0e7d4e096dc0d8e2290dbc1eefa310374a0e8456ac52', 2, 1, 'MyApp', '[]', 0, '2019-06-08 16:33:16', '2019-06-08 16:33:16', '2020-06-08 16:33:16');
INSERT INTO `oauth_access_tokens` VALUES ('3089e07e48e983d117508033bdb4638a080f6ffa9a5ff51efb5933a2973ee32ff4196fa1c6673a73', 2, 1, 'MyApp', '[]', 0, '2019-05-10 10:02:47', '2019-05-10 10:02:47', '2020-05-10 10:02:47');
INSERT INTO `oauth_access_tokens` VALUES ('325cdc3ca68af589fe22ec144c335c3b95e833cf51dd38e8aa830a9d0f4abfe80cde9458953d9af6', 2, 1, 'MyApp', '[]', 0, '2019-05-11 08:10:02', '2019-05-11 08:10:02', '2020-05-11 08:10:02');
INSERT INTO `oauth_access_tokens` VALUES ('327b2c1e59dd29fb99ab2e3481d0d172cc2977c4b6b5fd55b0934b04344caa470ca0a5bce949e673', 2, 1, 'MyApp', '[]', 0, '2019-07-08 19:33:10', '2019-07-08 19:33:10', '2020-07-08 19:33:10');
INSERT INTO `oauth_access_tokens` VALUES ('32b0f24fbab58f05d16edd12d80d4f010e88cb28fd104fcbc1b56e6dd7c55d7d8f396bf205f53162', 2, 1, 'MyApp', '[]', 0, '2019-04-22 08:10:07', '2019-04-22 08:10:07', '2020-04-22 08:10:07');
INSERT INTO `oauth_access_tokens` VALUES ('340f7abe85cc72a813f1b8cfdde06734c551a5013fe4ea3ff91c8af4760e1625968c3594619296f9', 2, 1, 'MyApp', '[]', 0, '2019-06-10 20:19:57', '2019-06-10 20:19:57', '2020-06-10 20:19:57');
INSERT INTO `oauth_access_tokens` VALUES ('34264f67b892acd309407bf9f54fff37cc9dd0469168db9afa520e758657a693defc6539eae5f2b3', 2, 1, 'MyApp', '[]', 0, '2019-05-21 08:10:13', '2019-05-21 08:10:13', '2020-05-21 08:10:13');
INSERT INTO `oauth_access_tokens` VALUES ('34a74ab1625693d9e64d772dddc35a6aad295a47c079d1b4d963726ce816393e95f3437efdc3d152', 2, 1, 'MyApp', '[]', 0, '2019-05-01 21:05:29', '2019-05-01 21:05:29', '2020-05-01 21:05:29');
INSERT INTO `oauth_access_tokens` VALUES ('36e48d91998df9621f6e9833f5ba424dcbdfeb69c193813c4ff947797920ea3c0794015a4490c9f5', 2, 1, 'MyApp', '[]', 0, '2019-06-04 08:17:17', '2019-06-04 08:17:17', '2020-06-04 08:17:17');
INSERT INTO `oauth_access_tokens` VALUES ('3853eedd8cdad69da0d2604dd6ac6704067111d15cf4460beccd98ac39d98c40f3b24d8f8ba1fd2b', 10, 1, 'MyApp', '[]', 0, '2019-05-07 20:27:10', '2019-05-07 20:27:10', '2020-05-07 20:27:10');
INSERT INTO `oauth_access_tokens` VALUES ('38ec2a406a32277bb6e0076a6676027854606083ee8f7c341144664bf5d4ca455eb95480c8e09e72', 17, 1, 'MyApp', '[]', 0, '2019-05-17 09:48:00', '2019-05-17 09:48:00', '2020-05-17 09:48:00');
INSERT INTO `oauth_access_tokens` VALUES ('3cdb41f9872fdb5710cf0868782fce853b4407eefb29b07fc556dab6ee401b6801f23aeff8aacf02', 2, 1, 'MyApp', '[]', 0, '2019-05-23 08:14:00', '2019-05-23 08:14:00', '2020-05-23 08:14:00');
INSERT INTO `oauth_access_tokens` VALUES ('3d191b70ea87fa97ceeb18df926d48ce8f5b0c1e9b6b7310d76b5112f5a50b40062e1d8066a1ab7c', 2, 1, 'MyApp', '[]', 0, '2019-05-18 15:14:36', '2019-05-18 15:14:36', '2020-05-18 15:14:36');
INSERT INTO `oauth_access_tokens` VALUES ('3f16c297a4305998873ead59276f56653df2ad9ecf17e0c238d3fc7f726d0cfd4a5a0897fc652557', 2, 1, 'MyApp', '[]', 0, '2019-02-28 13:33:42', '2019-02-28 13:33:42', '2020-02-28 13:33:42');
INSERT INTO `oauth_access_tokens` VALUES ('40b67f3d0f979692b672b5c94557e81f8a9995e7bad153b842f273f7be7fd637f61558da2f9e1071', 2, 1, 'MyApp', '[]', 0, '2019-05-15 11:35:50', '2019-05-15 11:35:50', '2020-05-15 11:35:50');
INSERT INTO `oauth_access_tokens` VALUES ('40f1c0c6f10bad82cffed7d95de01c3fab09d34cdd57e4583c649c3cc449f11bc27d19978c649595', 2, 1, 'MyApp', '[]', 0, '2019-07-14 20:21:59', '2019-07-14 20:21:59', '2020-07-14 20:21:59');
INSERT INTO `oauth_access_tokens` VALUES ('41db00424c7394500406d3e66a780faeff697ee15b2edee5fee1c513c5cdcd171b94689efbd789b3', 2, 1, 'MyApp', '[]', 0, '2019-07-20 08:10:36', '2019-07-20 08:10:36', '2020-07-20 08:10:36');
INSERT INTO `oauth_access_tokens` VALUES ('434881af631f2459939d5f9685fe752f8c226d47bfec2d0a3910b9c37527760e0255230781934e3d', 2, 1, 'MyApp', '[]', 0, '2019-07-12 21:59:32', '2019-07-12 21:59:32', '2020-07-12 21:59:32');
INSERT INTO `oauth_access_tokens` VALUES ('43b9ed78e7c9778bfc62b2241119bd7e966de4b148a481282325daf5b666da51994c56e10a5563cc', 2, 1, 'MyApp', '[]', 0, '2019-05-03 20:00:48', '2019-05-03 20:00:48', '2020-05-03 20:00:48');
INSERT INTO `oauth_access_tokens` VALUES ('43d805f5102cbb4fceed27e90da0391cc3c71749643b6f09bbaef304a24fa01992c52979f2daee3d', 2, 1, 'MyApp', '[]', 0, '2019-05-28 08:16:19', '2019-05-28 08:16:19', '2020-05-28 08:16:19');
INSERT INTO `oauth_access_tokens` VALUES ('44ec7b99efd12d73fa64e6fff946edc47a34262246fcbe95baa9eee84e924cfc71e90e1f954516dc', 2, 1, 'MyApp', '[]', 0, '2019-07-05 17:32:54', '2019-07-05 17:32:54', '2020-07-05 17:32:54');
INSERT INTO `oauth_access_tokens` VALUES ('45a885012978aaf183fd066168f2c6f23a197bbe222bbfe6f83ad34b033f614c1a357f7fb5c0d04e', 2, 1, 'MyApp', '[]', 0, '2019-05-04 22:54:03', '2019-05-04 22:54:03', '2020-05-04 22:54:03');
INSERT INTO `oauth_access_tokens` VALUES ('473786458558c1d7c54f830b15808d3d8b56aecfbf81bb0beacad8ce730bfbdc05ce5c409a8d5e39', 2, 1, 'MyApp', '[]', 0, '2019-07-09 11:41:08', '2019-07-09 11:41:08', '2020-07-09 11:41:08');
INSERT INTO `oauth_access_tokens` VALUES ('49d6ad9b80eaaf693979d23bf4273779225ce6f6fa9bee6af07a3119f8b9a94a283f666cf6fa421b', 2, 1, 'MyApp', '[]', 0, '2019-05-27 08:32:34', '2019-05-27 08:32:34', '2020-05-27 08:32:34');
INSERT INTO `oauth_access_tokens` VALUES ('4d2751acf180655de73b09f0350704f25a85967e58fd9a98a39d1822ecd8bd78b6ba8cc2ccf78e67', 2, 1, 'MyApp', '[]', 0, '2019-06-24 10:05:09', '2019-06-24 10:05:09', '2020-06-24 10:05:09');
INSERT INTO `oauth_access_tokens` VALUES ('4d4caf5f40e26b4a72f0297d52614c3e7eaccad48968f92f2b70213cafe88292f27c7a7c45d6e0ed', 2, 1, 'MyApp', '[]', 0, '2019-04-19 15:14:57', '2019-04-19 15:14:57', '2020-04-19 15:14:57');
INSERT INTO `oauth_access_tokens` VALUES ('4deb216e03e4291942c85ee92fc219914125b5855a8919b97c39ed3d426b1b94e4722c73cd50fc52', 22, 1, 'MyApp', '[]', 0, '2019-06-24 10:46:31', '2019-06-24 10:46:31', '2020-06-24 10:46:31');
INSERT INTO `oauth_access_tokens` VALUES ('4e45c1047743a7b6dc94130846bbaee0fd9ca8458e2d771fe9fdc411b698479789053ed901e53b28', 2, 1, 'MyApp', '[]', 0, '2019-07-18 10:21:58', '2019-07-18 10:21:58', '2020-07-18 10:21:58');
INSERT INTO `oauth_access_tokens` VALUES ('4f056d2e9cd72c9ad50e8aea6433897ee11c07cd759a9774543bb897c527ccf17b62ad0ac96f69f7', 12, 1, 'MyApp', '[]', 0, '2019-05-07 22:47:20', '2019-05-07 22:47:20', '2020-05-07 22:47:20');
INSERT INTO `oauth_access_tokens` VALUES ('4fbd8497ab1161001d1233a3cb1ffc6d49e2da41460f608b476b2888d66efab58e761b8c9a19f75c', 2, 1, 'MyApp', '[]', 0, '2019-04-30 22:32:09', '2019-04-30 22:32:09', '2020-04-30 22:32:09');
INSERT INTO `oauth_access_tokens` VALUES ('4fc48a84bd46657b32ef030f4e9db4e469279a9ec80e3e329bdc2521ac248e835fd71cc587b19486', 2, 1, 'MyApp', '[]', 0, '2019-06-30 16:06:38', '2019-06-30 16:06:38', '2020-06-30 16:06:38');
INSERT INTO `oauth_access_tokens` VALUES ('534218dcfefb2bfed9eccaf5a3fa1065f7a3a465193b06d6bb8f24d2cc2cc5656dc3335969a66f20', 2, 1, 'MyApp', '[]', 0, '2019-06-03 21:28:59', '2019-06-03 21:28:59', '2020-06-03 21:28:59');
INSERT INTO `oauth_access_tokens` VALUES ('54e6e5cfbd0547753525f23e7923a5e2d115f4c5fa87753ec185a22a93178a4d1f8a4c17d2c0f92a', 15, 1, 'MyApp', '[]', 0, '2019-05-11 09:27:34', '2019-05-11 09:27:34', '2020-05-11 09:27:34');
INSERT INTO `oauth_access_tokens` VALUES ('553abd13018c51106fb3245db77b36274db4b95eddb1c61a73b1722a3dd9a312cca093c7702c8e66', 2, 1, 'MyApp', '[]', 0, '2019-05-07 18:59:18', '2019-05-07 18:59:18', '2020-05-07 18:59:18');
INSERT INTO `oauth_access_tokens` VALUES ('5639c1e5da120bafe52a049a60419412e477a1608c1e9fa6682d40bb903d5d252697fdb7635d0f9b', 2, 1, 'MyApp', '[]', 0, '2019-04-25 08:23:43', '2019-04-25 08:23:43', '2020-04-25 08:23:43');
INSERT INTO `oauth_access_tokens` VALUES ('583a27a7b3b79ad1ead6e24564de574903441a703a1208587bfa4fa968b8be20a738082377b78add', 2, 1, 'MyApp', '[]', 0, '2019-05-29 17:13:17', '2019-05-29 17:13:17', '2020-05-29 17:13:17');
INSERT INTO `oauth_access_tokens` VALUES ('587fb93867dfa81b135fe374883068761a46d74293461a0f7fbe30e5077753a3e87c48dfa6be90db', 2, 1, 'MyApp', '[]', 0, '2019-04-12 11:12:38', '2019-04-12 11:12:38', '2020-04-12 11:12:38');
INSERT INTO `oauth_access_tokens` VALUES ('5db6b13492643a9a462c0dce4ce04a3d96df00ed18edbf0d26a1dac7d74271f69a084235734392ed', 2, 1, 'MyApp', '[]', 0, '2019-04-26 13:34:58', '2019-04-26 13:34:58', '2020-04-26 13:34:58');
INSERT INTO `oauth_access_tokens` VALUES ('603880efe258e0f330f18c1c3c7191736e04202a77e7639a02ab078889ff25becb9a30f0c77f4990', 15, 1, 'MyApp', '[]', 0, '2019-05-10 13:57:54', '2019-05-10 13:57:54', '2020-05-10 13:57:54');
INSERT INTO `oauth_access_tokens` VALUES ('6124e86b611137ff840c94d75140df3b9a9b5cb78b14eb54e216edf860ccc2f2b1a87c7a56068a6f', 16, 1, 'MyApp', '[]', 0, '2019-05-18 15:13:23', '2019-05-18 15:13:23', '2020-05-18 15:13:23');
INSERT INTO `oauth_access_tokens` VALUES ('612e0eccbd4da857db0825ff3aab22f4dd86c6a6d184c460341fd716ae2b5b7990cbc326d9effcfa', 2, 1, 'MyApp', '[]', 0, '2019-06-07 08:24:19', '2019-06-07 08:24:19', '2020-06-07 08:24:19');
INSERT INTO `oauth_access_tokens` VALUES ('62466961de48886a17f532889b3dc96ab4fcce3e13b524cd69acc6170eb867a69d3a3cde5e8b2c33', 2, 1, 'MyApp', '[]', 0, '2019-03-18 11:44:22', '2019-03-18 11:44:22', '2020-03-18 11:44:22');
INSERT INTO `oauth_access_tokens` VALUES ('637979837d6b444ddb73d3167055561ba2e8dd00d00c4c4825a5534a8d6e652388f6e612f41c886b', 2, 1, 'MyApp', '[]', 0, '2019-04-29 11:01:47', '2019-04-29 11:01:47', '2020-04-29 11:01:47');
INSERT INTO `oauth_access_tokens` VALUES ('63dfa383a47cfa371afc20909d422671e19543c81e9d40854f0c51d889e76040a670f38f773f2ebe', 2, 1, 'MyApp', '[]', 0, '2019-04-09 08:08:54', '2019-04-09 08:08:54', '2020-04-09 08:08:54');
INSERT INTO `oauth_access_tokens` VALUES ('64388e16751f491255693a2c8dc3138269820ee1b1e764abd125ca1fb2d808a738f92153c76931b5', 2, 1, 'MyApp', '[]', 0, '2019-03-22 14:11:53', '2019-03-22 14:11:53', '2020-03-22 14:11:53');
INSERT INTO `oauth_access_tokens` VALUES ('67306fcdc22aa5b8443942722784fc32d985baf4151f4bcada00a8969c0a6c4ea9bc6b9a801f1b45', 2, 1, 'MyApp', '[]', 0, '2019-04-18 15:18:25', '2019-04-18 15:18:25', '2020-04-18 15:18:25');
INSERT INTO `oauth_access_tokens` VALUES ('676d86f257186c95b4e61ef514c27bf1733b2d350dc1e0c6d404e38278c6373e085dd2a8aeeb2100', 2, 1, 'MyApp', '[]', 0, '2019-04-24 11:58:28', '2019-04-24 11:58:28', '2020-04-24 11:58:28');
INSERT INTO `oauth_access_tokens` VALUES ('67f937dc145cbf594bd03cf24db669a8420c13a360875c64f16f62aa9f07c71b1ff2d9d14851d30c', 2, 1, 'MyApp', '[]', 0, '2019-06-09 13:55:30', '2019-06-09 13:55:30', '2020-06-09 13:55:30');
INSERT INTO `oauth_access_tokens` VALUES ('69fb3f0f3d90f7f0c5fc8af0756a85974185ea7b721383b42532f440e3ef2dd9ae3ea7e4b3123c88', 2, 1, 'MyApp', '[]', 0, '2019-05-14 14:37:07', '2019-05-14 14:37:07', '2020-05-14 14:37:07');
INSERT INTO `oauth_access_tokens` VALUES ('6a5a881e83886e5de150d404f9837b5ecd784e385ae3c9ddfc20b93f0204e227f59ded804375d79c', 2, 1, 'MyApp', '[]', 0, '2019-06-10 11:21:47', '2019-06-10 11:21:47', '2020-06-10 11:21:47');
INSERT INTO `oauth_access_tokens` VALUES ('6a8cf12646ba3a01aec38b23a3d8e898b3caa2ebc4585da90150eb9642964c77be8dccdc6d1c745f', 2, 1, 'MyApp', '[]', 0, '2019-05-29 14:54:40', '2019-05-29 14:54:40', '2020-05-29 14:54:40');
INSERT INTO `oauth_access_tokens` VALUES ('6a8e04a0c74f204ed1225d7c19b13b15b7bee1afd94db125397ea001ebd7ae96d3643558695617a6', 2, 1, 'MyApp', '[]', 0, '2019-04-30 15:10:04', '2019-04-30 15:10:04', '2020-04-30 15:10:04');
INSERT INTO `oauth_access_tokens` VALUES ('6e98729a0c4e1e54fce7a96777dc287817a54f87519e047c0cc13b5aabe8f0df857446b0a9496fc0', 2, 1, 'MyApp', '[]', 0, '2019-04-12 15:45:29', '2019-04-12 15:45:29', '2020-04-12 15:45:29');
INSERT INTO `oauth_access_tokens` VALUES ('6ed887714edb952c96143b8c9d33e5c545e960e24be63dcc78be6b34ed18636033e0cd11c88deda5', 2, 1, 'MyApp', '[]', 0, '2019-06-17 22:40:16', '2019-06-17 22:40:16', '2020-06-17 22:40:16');
INSERT INTO `oauth_access_tokens` VALUES ('6f83e3687c1daaa2049f6832e39f265f2b2e59789cd56b93826e9acdcaee2e0fa9bb8b384e681c9b', 2, 1, 'MyApp', '[]', 0, '2019-07-14 19:26:08', '2019-07-14 19:26:08', '2020-07-14 19:26:08');
INSERT INTO `oauth_access_tokens` VALUES ('724a3a57298275991328f300077a559155fa445f52fe0b6b018131702870446c3034d8ae86e1aedc', 2, 1, 'MyApp', '[]', 0, '2019-06-04 14:18:40', '2019-06-04 14:18:40', '2020-06-04 14:18:40');
INSERT INTO `oauth_access_tokens` VALUES ('731868eada1e734c46875d5f8cd9aa7dc9ce09d010a319c3120d8e0db5b8574c7e6c199ae4b28c1c', 2, 1, 'MyApp', '[]', 0, '2019-06-06 08:19:55', '2019-06-06 08:19:55', '2020-06-06 08:19:55');
INSERT INTO `oauth_access_tokens` VALUES ('737a7e77bd8fd489f65d343a4fdf6e0f274b709c2f543196fef2bce4bd3daf54dfa581e7dfbbe6f8', 15, 1, 'MyApp', '[]', 0, '2019-05-08 22:13:47', '2019-05-08 22:13:47', '2020-05-08 22:13:47');
INSERT INTO `oauth_access_tokens` VALUES ('77155dd2d0ecd79c4847de3822b861f1773255e1067f8fdce0ccc60ee6588cfd67069813e74d309b', 2, 1, 'MyApp', '[]', 0, '2019-05-01 08:55:11', '2019-05-01 08:55:11', '2020-05-01 08:55:11');
INSERT INTO `oauth_access_tokens` VALUES ('796cf6d7b08cfd5dd3573bd9ca4357982b396a3a167831a97c51c5623d78b761cb29188f06a6ef29', 2, 1, 'MyApp', '[]', 0, '2019-06-17 14:20:04', '2019-06-17 14:20:04', '2020-06-17 14:20:04');
INSERT INTO `oauth_access_tokens` VALUES ('79ff6ff67b3805dcc8e95f5e802b20a5137884f7ae51ad058b0f8480f071c6c72a6e8c1e5f08ab49', 2, 1, 'MyApp', '[]', 0, '2019-06-19 08:18:32', '2019-06-19 08:18:32', '2020-06-19 08:18:32');
INSERT INTO `oauth_access_tokens` VALUES ('7b9982592a0313da930390fcad1015b7351edf510915e3cad09dcc41e73bde7b4d19f4b59ca78bdb', 2, 1, 'MyApp', '[]', 0, '2019-06-25 16:14:09', '2019-06-25 16:14:09', '2020-06-25 16:14:09');
INSERT INTO `oauth_access_tokens` VALUES ('7d88adeac7bcb9c2af82229d4c4763b4e3859fb434f7a7d30851fe751ab917a2987229b085325550', 2, 1, 'MyApp', '[]', 0, '2019-07-08 14:41:34', '2019-07-08 14:41:34', '2020-07-08 14:41:34');
INSERT INTO `oauth_access_tokens` VALUES ('7f0d3e0dde161325a88968a0e6ac03fb4c212d9af85e7592ffc34e969882c07f2b03b478aaacb368', 15, 1, 'MyApp', '[]', 0, '2019-05-10 13:58:35', '2019-05-10 13:58:35', '2020-05-10 13:58:35');
INSERT INTO `oauth_access_tokens` VALUES ('8082575ad3affa2f8fd574a6b89ea9c780beb27597c595792f95d569d6b948024f6c236892887fdb', 2, 1, 'MyApp', '[]', 0, '2019-05-08 21:07:41', '2019-05-08 21:07:41', '2020-05-08 21:07:41');
INSERT INTO `oauth_access_tokens` VALUES ('809d8aa479d04d48e514eb5374d4f74f447ebc0e8fef2096706f879bddde25029300ba89038aea0e', 2, 1, 'MyApp', '[]', 0, '2019-06-17 08:22:18', '2019-06-17 08:22:18', '2020-06-17 08:22:18');
INSERT INTO `oauth_access_tokens` VALUES ('826e068d775d21d4a42be19cfa3b7442952e2dc15c6d9348c1ac5aa2e3167f9ac2939ed404043d5d', 2, 1, 'MyApp', '[]', 0, '2019-05-11 14:49:54', '2019-05-11 14:49:54', '2020-05-11 14:49:54');
INSERT INTO `oauth_access_tokens` VALUES ('830b9b811bde283b7424f529c43531f008d032684d49c41990ef9d124c9a241184d28781b9590517', 2, 1, 'MyApp', '[]', 0, '2019-06-26 13:51:23', '2019-06-26 13:51:23', '2020-06-26 13:51:23');
INSERT INTO `oauth_access_tokens` VALUES ('83870b82718ef447c79c7e9db8790703bdf0329fb1e613c304f0f99b2bf4593bad36d2a782eab02e', 2, 1, 'MyApp', '[]', 0, '2019-06-05 08:11:10', '2019-06-05 08:11:10', '2020-06-05 08:11:10');
INSERT INTO `oauth_access_tokens` VALUES ('8582a0c2d267710eb00d2d4bd3e8cc64bea8bec6ec487da07d17ab417461f2167c6a06c0e77b7584', 2, 1, 'MyApp', '[]', 0, '2019-06-12 13:58:18', '2019-06-12 13:58:18', '2020-06-12 13:58:18');
INSERT INTO `oauth_access_tokens` VALUES ('876e654cceb60a716206813893c111a0b7672ff9964d11cea3354474b82fc0b602bcf7c6e3952d82', 2, 1, 'MyApp', '[]', 0, '2019-06-25 16:19:17', '2019-06-25 16:19:17', '2020-06-25 16:19:17');
INSERT INTO `oauth_access_tokens` VALUES ('87ebdd53ca407b004d09e3f2d1ffff6303130d3021ab06fe76604be837445cb72319de1ab339dab9', 2, 1, 'MyApp', '[]', 0, '2019-07-16 11:24:33', '2019-07-16 11:24:33', '2020-07-16 11:24:33');
INSERT INTO `oauth_access_tokens` VALUES ('893cde9fc94d443660ba6b1d87a11fb01d34df8e8e9c593b3edc565cb55a80ab33b26823f49fc2fa', 16, 1, 'MyApp', '[]', 0, '2019-05-18 08:56:34', '2019-05-18 08:56:34', '2020-05-18 08:56:34');
INSERT INTO `oauth_access_tokens` VALUES ('8b5f83c4e18dee6cb0f4233f1416c202cda6d7b9a8d175c7bbdc1126a3493d15e25d18faf96ea047', 2, 1, 'MyApp', '[]', 0, '2019-05-15 15:08:05', '2019-05-15 15:08:05', '2020-05-15 15:08:05');
INSERT INTO `oauth_access_tokens` VALUES ('8bf073bfb40c8f26daf32885f13fb64bad31f87d630b4cba4ad99cdcd242c7a3393946ccbc96961c', 2, 1, 'MyApp', '[]', 0, '2019-07-14 19:14:55', '2019-07-14 19:14:55', '2020-07-14 19:14:55');
INSERT INTO `oauth_access_tokens` VALUES ('8d34e83c73e0dd3f8fb699b696a90ef7b292d24cba6394d48affc01774b6654b483bf904c6e620b8', 17, 1, 'MyApp', '[]', 0, '2019-05-17 09:42:32', '2019-05-17 09:42:32', '2020-05-17 09:42:32');
INSERT INTO `oauth_access_tokens` VALUES ('8d50b826dacc986631f6304d16bde3a67224475800f3fe352915ce7c9e1208c90c53d7fb40d85446', 2, 1, 'MyApp', '[]', 0, '2019-06-11 20:27:25', '2019-06-11 20:27:25', '2020-06-11 20:27:25');
INSERT INTO `oauth_access_tokens` VALUES ('8d8ec8fb690211ecf871b5357e0614a0c8dcd59d7b7b6feb02a67073f002f206a806c994c864cb93', 2, 1, 'MyApp', '[]', 0, '2019-06-08 22:40:03', '2019-06-08 22:40:03', '2020-06-08 22:40:03');
INSERT INTO `oauth_access_tokens` VALUES ('8d8f42f3196d79e6d7a5f3df2dc3b1fe23965b534fda8f24e34aee9636e2c417658c0efd6eef68da', 2, 1, 'MyApp', '[]', 0, '2019-07-08 16:49:58', '2019-07-08 16:49:58', '2020-07-08 16:49:58');
INSERT INTO `oauth_access_tokens` VALUES ('9046bc10022bc3fe333c454a67c0ad3f25ea3a6994d4cdb4b8dadcb37063eb027fa9e2493ba8bb55', 2, 1, 'MyApp', '[]', 0, '2019-06-27 13:36:37', '2019-06-27 13:36:37', '2020-06-27 13:36:37');
INSERT INTO `oauth_access_tokens` VALUES ('991932e8988494f0559e93420d89944b3eb7ad7ad9046048915b19268abab6bb5cc1c62ee4cefca8', 2, 1, 'MyApp', '[]', 0, '2019-05-04 18:03:10', '2019-05-04 18:03:10', '2020-05-04 18:03:10');
INSERT INTO `oauth_access_tokens` VALUES ('9b96e18443e36eb25a504938349045ab1a01ece7337b890779e6a61ae34ec4540a9a360c7811d30f', 2, 1, 'MyApp', '[]', 0, '2019-07-24 13:32:05', '2019-07-24 13:32:05', '2020-07-24 13:32:05');
INSERT INTO `oauth_access_tokens` VALUES ('9bba88e9d87e0ec78a35d5257ca44a10e77506eb4cfb606041ce3d3db9520067a5767ec9f150fb1c', 2, 1, 'MyApp', '[]', 0, '2019-04-17 08:46:50', '2019-04-17 08:46:50', '2020-04-17 08:46:50');
INSERT INTO `oauth_access_tokens` VALUES ('9da2db5f94161b541c8d644a7bbb0d3e24a9071e4af6254819690614d4e6eb720bdb87f7ea4ae47b', 2, 1, 'MyApp', '[]', 0, '2019-06-05 10:24:05', '2019-06-05 10:24:05', '2020-06-05 10:24:05');
INSERT INTO `oauth_access_tokens` VALUES ('a06ad6bc9ebe165b2b4302af7e716d0296b00b418511335d92fd92169581a1c75fb5858810dbc021', 2, 1, 'MyApp', '[]', 0, '2019-07-22 08:44:59', '2019-07-22 08:44:59', '2020-07-22 08:44:59');
INSERT INTO `oauth_access_tokens` VALUES ('a079e3f003ea2847b1f53a00528b009d982dde864f8d3e4fea0c3aafa967f0694084d956aac112ba', 2, 1, 'MyApp', '[]', 0, '2019-05-13 08:08:57', '2019-05-13 08:08:57', '2020-05-13 08:08:57');
INSERT INTO `oauth_access_tokens` VALUES ('a0fbfb03a0d8eb10f3baa098b6cae6e8df9c1b03095cba56d9c8393360d7231c8838bbda4e63ecc7', 16, 1, 'MyApp', '[]', 0, '2019-05-20 09:27:16', '2019-05-20 09:27:16', '2020-05-20 09:27:16');
INSERT INTO `oauth_access_tokens` VALUES ('a28a87583b0af205b6171128af5616c51edef53433f61162f145258a7951f081a160022914f60304', 2, 1, 'MyApp', '[]', 0, '2019-06-05 14:30:32', '2019-06-05 14:30:32', '2020-06-05 14:30:32');
INSERT INTO `oauth_access_tokens` VALUES ('a3298a5df2ee219b30885500eb88dde4c825f8e90809c79dcc074eb13568ee39899fcd27f4c997c6', 2, 1, 'MyApp', '[]', 0, '2019-03-05 14:43:40', '2019-03-05 14:43:40', '2020-03-05 14:43:40');
INSERT INTO `oauth_access_tokens` VALUES ('a3ca726af4a336a81e728b7a9700a2813ba0eab9879cda175d0d2cbfa4c963f1afb12c136781a4bb', 2, 1, 'MyApp', '[]', 0, '2019-06-18 20:27:24', '2019-06-18 20:27:24', '2020-06-18 20:27:24');
INSERT INTO `oauth_access_tokens` VALUES ('a4098adffd428a36ea6900bafba5da43b526d5c40ac7c35038321191e5688b2a6a7ea39de7bf23bf', 2, 1, 'MyApp', '[]', 0, '2019-07-04 21:12:12', '2019-07-04 21:12:12', '2020-07-04 21:12:12');
INSERT INTO `oauth_access_tokens` VALUES ('a467a9d63cd99dd6e4c2de12e6730d10454fc36a5239c38d7e6663aec773db73a16b8b6c4681c6ac', 2, 1, 'MyApp', '[]', 0, '2019-07-30 08:21:13', '2019-07-30 08:21:13', '2020-07-30 08:21:13');
INSERT INTO `oauth_access_tokens` VALUES ('a4a0d89cfacd2e4fa4ff8247f7a30acd12fb5adac78acb13f00cb1f66b2440f3dfd1616a8143abf4', 2, 1, 'MyApp', '[]', 0, '2019-03-06 08:23:41', '2019-03-06 08:23:41', '2020-03-06 08:23:41');
INSERT INTO `oauth_access_tokens` VALUES ('a7a8eae946a69943cd354815a800cd8823a8a3289b1b9b3f75bb1c7cf432546e0f9b065666e75da9', 2, 1, 'MyApp', '[]', 0, '2019-05-07 20:36:13', '2019-05-07 20:36:13', '2020-05-07 20:36:13');
INSERT INTO `oauth_access_tokens` VALUES ('aaa4922e63eaef2d316628fa41754a6ea34bde6c4998dc25c77d17fcdf9c4878d3d971b24dabf735', 2, 1, 'MyApp', '[]', 0, '2019-04-17 15:11:02', '2019-04-17 15:11:02', '2020-04-17 15:11:02');
INSERT INTO `oauth_access_tokens` VALUES ('aaad744270954488bca3097f31100a6db3e515a992982e33a868915cbe68bfe46437e8763b3ee497', 16, 1, 'MyApp', '[]', 0, '2019-05-17 16:04:59', '2019-05-17 16:04:59', '2020-05-17 16:04:59');
INSERT INTO `oauth_access_tokens` VALUES ('ab868f37953c95ff2fe4eba6f02138cda88889d957d0e0d1fbcb6e3f7035ba4cfce82f5de6e6e275', 2, 1, 'MyApp', '[]', 0, '2019-04-08 15:11:24', '2019-04-08 15:11:24', '2020-04-08 15:11:24');
INSERT INTO `oauth_access_tokens` VALUES ('b34a24a2b8c978632ec7c8cd362f41f0cd5037b8750e49401aa431751290bf418f54fd0539ff24cb', 16, 1, 'MyApp', '[]', 0, '2019-05-17 17:27:34', '2019-05-17 17:27:34', '2020-05-17 17:27:34');
INSERT INTO `oauth_access_tokens` VALUES ('b45aaed65e12443d8460c6a8edb9a3da27db514ca07aecd2cc8057a47ed8d6f52460d50624ddedad', 2, 1, 'MyApp', '[]', 0, '2019-06-26 15:00:44', '2019-06-26 15:00:44', '2020-06-26 15:00:44');
INSERT INTO `oauth_access_tokens` VALUES ('b45ae5222c4aa29bebf06a47f1f8451cad862cbededcebc663caa2dbb270ba58a9e6443faf4e81f3', 2, 1, 'MyApp', '[]', 0, '2019-06-01 08:07:35', '2019-06-01 08:07:35', '2020-06-01 08:07:35');
INSERT INTO `oauth_access_tokens` VALUES ('b572c6a2b427344728bfa8150882dd9a74feceee56846ca16d9e2218517628afbb153887fc8350c7', 2, 1, 'MyApp', '[]', 0, '2019-06-13 08:10:12', '2019-06-13 08:10:12', '2020-06-13 08:10:12');
INSERT INTO `oauth_access_tokens` VALUES ('b65902c224481a8cc80e985d8a19a8d355e027c60d7d248cd06788fca8a94d27e0bee5ffa01d9548', 2, 1, 'MyApp', '[]', 0, '2019-06-20 08:18:24', '2019-06-20 08:18:24', '2020-06-20 08:18:24');
INSERT INTO `oauth_access_tokens` VALUES ('b68fc76b4cf8ab066dc1f93f6339f07ccb349b3735a2e2c4838e086d9ca9873f35349347fbbc6ab6', 2, 1, 'MyApp', '[]', 0, '2019-05-31 08:12:06', '2019-05-31 08:12:06', '2020-05-31 08:12:06');
INSERT INTO `oauth_access_tokens` VALUES ('b72a19b2ca359e6b1f19e385c9fc7788193520b1e8ee36ae6043416f0cc9df206189ad189f8a72ff', 2, 1, 'MyApp', '[]', 0, '2019-06-05 14:59:33', '2019-06-05 14:59:33', '2020-06-05 14:59:33');
INSERT INTO `oauth_access_tokens` VALUES ('b78dc4d321e2c1918e4c9f0ab6342742369464c3e6a83c8cdae4e6ff6588a3d8b6c80b21a536eba0', 2, 1, 'MyApp', '[]', 0, '2019-05-16 19:00:23', '2019-05-16 19:00:23', '2020-05-16 19:00:23');
INSERT INTO `oauth_access_tokens` VALUES ('b832fe9b7abbe886c3d5b9d2bb96d31b9f4c9b189fddf206b0472eebec1672a01b28711f2724c700', 2, 1, 'MyApp', '[]', 0, '2019-06-27 08:21:03', '2019-06-27 08:21:03', '2020-06-27 08:21:03');
INSERT INTO `oauth_access_tokens` VALUES ('b8501e0320a46169a7dc8903e396f9301006a380db27d6af94129aac90c3f52a6e899de9fb558366', 2, 1, 'MyApp', '[]', 0, '2019-06-24 16:58:32', '2019-06-24 16:58:32', '2020-06-24 16:58:32');
INSERT INTO `oauth_access_tokens` VALUES ('b8df5d41e814fe0747f1e4055f7a3616ea8b53c28c3f1ad51cfb66146666a1e451573b2838f287cd', 2, 1, 'MyApp', '[]', 0, '2019-07-25 08:12:34', '2019-07-25 08:12:34', '2020-07-25 08:12:34');
INSERT INTO `oauth_access_tokens` VALUES ('b9d2f38ce6f67e2fc94907bd3382f20b84e79fa3050a4e9614aa329ea6d6599fa39a7811ab942bca', 18, 1, 'MyApp', '[]', 0, '2019-05-20 10:10:42', '2019-05-20 10:10:42', '2020-05-20 10:10:42');
INSERT INTO `oauth_access_tokens` VALUES ('bb4f29906f22c4a681daa5ab02ac0dd7169f7c2478fa29ee3055b3c7849e361d3372d26ee01fa851', 15, 1, 'MyApp', '[]', 0, '2019-05-10 13:59:50', '2019-05-10 13:59:50', '2020-05-10 13:59:50');
INSERT INTO `oauth_access_tokens` VALUES ('bc770cf7927b373b75211a1c39489e6147cc4d9dabf35e708ff7c5a0bc8382e322992a739a4c3b67', 2, 1, 'MyApp', '[]', 0, '2019-04-24 14:44:39', '2019-04-24 14:44:39', '2020-04-24 14:44:39');
INSERT INTO `oauth_access_tokens` VALUES ('bcbed5ab3f6e097d6ad36bf6703f098f4954617ea8ca4946f4e9092267041d24430038e4f2bcc131', 2, 1, 'MyApp', '[]', 0, '2019-02-27 10:14:16', '2019-02-27 10:14:16', '2020-02-27 10:14:16');
INSERT INTO `oauth_access_tokens` VALUES ('bd478e91b3fedca43b66d583ad09c3e1613763c3e344f55c66c4a0a4ccfec7e0ce38b4a0f9942c3a', 17, 1, 'MyApp', '[]', 0, '2019-05-17 09:36:49', '2019-05-17 09:36:49', '2020-05-17 09:36:49');
INSERT INTO `oauth_access_tokens` VALUES ('be295188193163a7864d4368da2e87b8448b4933495a5d6d5b4e5f93a978081f8f9aae9cb5c860fb', 2, 1, 'MyApp', '[]', 0, '2019-04-24 08:08:03', '2019-04-24 08:08:03', '2020-04-24 08:08:03');
INSERT INTO `oauth_access_tokens` VALUES ('c04addffdc549131b92bdf5f2c8d1276c68e5ba0f9601eedfb5462f676b6a5693431ff4b4267da36', 2, 1, 'MyApp', '[]', 0, '2019-05-15 08:15:03', '2019-05-15 08:15:03', '2020-05-15 08:15:03');
INSERT INTO `oauth_access_tokens` VALUES ('c0ebcd2a5cdc1c24eb78c811a8e31a3a1bff8023390e89292cc29a3f74e12c83d78b6e48fe5b64e2', 2, 1, 'MyApp', '[]', 0, '2019-06-07 18:53:50', '2019-06-07 18:53:50', '2020-06-07 18:53:50');
INSERT INTO `oauth_access_tokens` VALUES ('c17e88138ef64e461aef135263cb60766aae95f140bcc78272426656926c269486dec96fa9548e79', 2, 1, 'MyApp', '[]', 0, '2019-07-29 08:22:05', '2019-07-29 08:22:05', '2020-07-29 08:22:05');
INSERT INTO `oauth_access_tokens` VALUES ('c336413a1a7b614f9c3b1cc542fc26ba33568881af0ca5a238696c6c4186005a7b8889096dbbe5dd', 2, 1, 'MyApp', '[]', 0, '2019-05-24 08:12:32', '2019-05-24 08:12:32', '2020-05-24 08:12:32');
INSERT INTO `oauth_access_tokens` VALUES ('c37225ef1539303153ec7e3625f3c4c5c47f7c5183b2b32c208452a4d559dd66dfdc72580782022a', 2, 1, 'MyApp', '[]', 0, '2019-04-09 11:01:23', '2019-04-09 11:01:23', '2020-04-09 11:01:23');
INSERT INTO `oauth_access_tokens` VALUES ('c66bf89ed3c15e4b92ab86d63b707d7b5d3b2d0e8d73b77b3d9c2e176ea0e7f35675d1ad56ff60a4', 2, 1, 'MyApp', '[]', 0, '2019-05-17 08:45:50', '2019-05-17 08:45:50', '2020-05-17 08:45:50');
INSERT INTO `oauth_access_tokens` VALUES ('c71c50272f464e51f02d0bfe55b937675318351fa2f0bc367d2acd201e27b983becd59f4dd518abe', 14, 1, 'MyApp', '[]', 0, '2019-05-08 22:11:56', '2019-05-08 22:11:56', '2020-05-08 22:11:56');
INSERT INTO `oauth_access_tokens` VALUES ('ca0830b60fdd6ff23e8068066fe3592922922871622dd9e3bdaded4e6d0af13de5215963242e453b', 2, 1, 'MyApp', '[]', 0, '2019-06-27 11:42:44', '2019-06-27 11:42:44', '2020-06-27 11:42:44');
INSERT INTO `oauth_access_tokens` VALUES ('ca9087419ae0358f575af4a602fcecc0f2f54ebff8294f5c99e72d0b3d48e307e17f581b1eb80a15', 2, 1, 'MyApp', '[]', 0, '2019-04-18 08:32:48', '2019-04-18 08:32:48', '2020-04-18 08:32:48');
INSERT INTO `oauth_access_tokens` VALUES ('caa5829e589e32b969468fae1ad69e03ecdd69b997018399dd9fd21910838e943e0d0658f6f033e0', 11, 1, 'MyApp', '[]', 0, '2019-05-07 20:30:27', '2019-05-07 20:30:27', '2020-05-07 20:30:27');
INSERT INTO `oauth_access_tokens` VALUES ('caf233061a79e92ec8f62209dc61fee142f30200459f63c6101d56f83bdbf3a7aaaba99b39cf38fb', 2, 1, 'MyApp', '[]', 0, '2019-07-15 21:38:05', '2019-07-15 21:38:05', '2020-07-15 21:38:05');
INSERT INTO `oauth_access_tokens` VALUES ('cb0ffa7026ddc4a9259a29276d4d1b57e197070cefe238148fa7d0132a2057392ef71aecd3af6f61', 2, 1, 'MyApp', '[]', 0, '2019-07-02 10:40:45', '2019-07-02 10:40:45', '2020-07-02 10:40:45');
INSERT INTO `oauth_access_tokens` VALUES ('cb694bfb52d361c2bef04d22bd8eca368f6889fbda88e1237b31841eab18ffae7f3c894d7d527fcf', 2, 1, 'MyApp', '[]', 0, '2019-04-20 08:22:12', '2019-04-20 08:22:12', '2020-04-20 08:22:12');
INSERT INTO `oauth_access_tokens` VALUES ('ccdd05d158c5d97cd5658b2a653465e7a7562d4ab6e9e8dfb5485a61461b22e4f7da556ef81af426', 2, 1, 'MyApp', '[]', 0, '2019-06-18 08:14:28', '2019-06-18 08:14:28', '2020-06-18 08:14:28');
INSERT INTO `oauth_access_tokens` VALUES ('cea0de1545baa2a5ea628ac3b342551f11148de095c54674f73b0c4495d96362c149485e48d18e8c', 2, 1, 'MyApp', '[]', 0, '2019-07-17 11:48:02', '2019-07-17 11:48:02', '2020-07-17 11:48:02');
INSERT INTO `oauth_access_tokens` VALUES ('cf918b59b9a43555ab4f6e5b84e875962d123c549652d28071e013ea6c48681fe30d54221f43ddae', 2, 1, 'MyApp', '[]', 0, '2019-06-19 13:32:12', '2019-06-19 13:32:12', '2020-06-19 13:32:12');
INSERT INTO `oauth_access_tokens` VALUES ('d09fe90b308eda2daac310b0eb9cdbc739b91fd9ffe51244f405fed15e77d197aba610704b72ec16', 2, 1, 'MyApp', '[]', 0, '2019-07-26 19:04:12', '2019-07-26 19:04:12', '2020-07-26 19:04:12');
INSERT INTO `oauth_access_tokens` VALUES ('d13f0c2e4c697c9d7b266da46569f284d4b6dc87ae1a512b0afa005205e85a1ce2a2cc966684a4f4', 2, 1, 'MyApp', '[]', 0, '2019-04-13 08:19:03', '2019-04-13 08:19:03', '2020-04-13 08:19:03');
INSERT INTO `oauth_access_tokens` VALUES ('d2c8ca5403cc73031fc6f7fa1790164a9ebd28ec2603e4c5b24aa88c05cf3b043fbc7d953ea2066b', 2, 1, 'MyApp', '[]', 0, '2019-07-04 14:34:53', '2019-07-04 14:34:53', '2020-07-04 14:34:53');
INSERT INTO `oauth_access_tokens` VALUES ('d5a2198f95ff44e5489155d375ff56a2b76a8ad74dc269ffa14eaa7f6e9298f5492a0b21da638837', 9, 1, 'MyApp', '[]', 0, '2019-05-07 19:17:11', '2019-05-07 19:17:11', '2020-05-07 19:17:11');
INSERT INTO `oauth_access_tokens` VALUES ('d6a04bb62fee99a1c1caf96009a1e00a376a48fc772a1e7cf6c708bf3425f072b5cd16f0e84c6af9', 2, 1, 'MyApp', '[]', 0, '2019-05-05 16:24:06', '2019-05-05 16:24:06', '2020-05-05 16:24:06');
INSERT INTO `oauth_access_tokens` VALUES ('d836e80f293b2fd237cab37db22dd7f18c9686084094ccffb02c22dc88c1f391d33ddd34bb90e14a', 16, 1, 'MyApp', '[]', 0, '2019-05-17 09:36:04', '2019-05-17 09:36:04', '2020-05-17 09:36:04');
INSERT INTO `oauth_access_tokens` VALUES ('d8a7b0ea0070cc35b5a07d42d6df6e2926eda9100cc5ef6a467762daeae19adf69f3df298802ab6a', 2, 1, 'MyApp', '[]', 0, '2019-05-13 15:28:54', '2019-05-13 15:28:54', '2020-05-13 15:28:54');
INSERT INTO `oauth_access_tokens` VALUES ('d932de0315dd2f36c812034d2205b4049a0057b245cc342b4eb57c12b821ed4ca42681ac12cc3ee2', 2, 1, 'MyApp', '[]', 0, '2019-03-06 15:07:14', '2019-03-06 15:07:14', '2020-03-06 15:07:14');
INSERT INTO `oauth_access_tokens` VALUES ('da27db48423af44a0c53bfda9c76dff9f2395c1a176c9ecc821108b5b66a9c9a729f43864af50056', 2, 1, 'MyApp', '[]', 0, '2019-07-24 08:59:45', '2019-07-24 08:59:45', '2020-07-24 08:59:45');
INSERT INTO `oauth_access_tokens` VALUES ('daa11ebf2597b97605e25aacb3e8c02d97d87c38c0d0b8f67897f86cdd4c22c50affc007038031a5', 17, 1, 'MyApp', '[]', 0, '2019-05-21 09:36:24', '2019-05-21 09:36:24', '2020-05-21 09:36:24');
INSERT INTO `oauth_access_tokens` VALUES ('dc6d13628502f05582be719561fd6ca4d11b3df28370afece4fd9fedbae2c2c07548941b7a7c2efa', 2, 1, 'MyApp', '[]', 0, '2019-05-25 11:59:20', '2019-05-25 11:59:20', '2020-05-25 11:59:20');
INSERT INTO `oauth_access_tokens` VALUES ('de33d617088f439eff8047790a638319db10e5480f541fe15e1214998ab469ecc3e45da83855d4a6', 13, 1, 'MyApp', '[]', 0, '2019-05-08 22:05:35', '2019-05-08 22:05:35', '2020-05-08 22:05:35');
INSERT INTO `oauth_access_tokens` VALUES ('df45fc915774d70657e7aafd768e88407f0f7286146b0b802b0646a0a3bffc5ddb01d64d63615465', 2, 1, 'MyApp', '[]', 0, '2019-06-13 13:36:07', '2019-06-13 13:36:07', '2020-06-13 13:36:07');
INSERT INTO `oauth_access_tokens` VALUES ('df99239b883b868d17e70c88a2de5a2efadd07e9cd5bee7702562d0fd736a4ff6055694e11f916d0', 2, 1, 'MyApp', '[]', 0, '2019-06-27 15:32:16', '2019-06-27 15:32:16', '2020-06-27 15:32:16');
INSERT INTO `oauth_access_tokens` VALUES ('e4b9c34997f907f1d754dc13e2b2df744ba7e298a94eec05e2e14cce6e08532efd41b84a911d0421', 2, 1, 'MyApp', '[]', 0, '2019-07-12 08:36:29', '2019-07-12 08:36:29', '2020-07-12 08:36:29');
INSERT INTO `oauth_access_tokens` VALUES ('e4fcd3c507c33197236ee600fbfae1890b5a381fc33d975f25d75637e37d17d743365529d69553bf', 2, 1, 'MyApp', '[]', 0, '2019-05-16 08:13:16', '2019-05-16 08:13:16', '2020-05-16 08:13:16');
INSERT INTO `oauth_access_tokens` VALUES ('ea941ba89a58f6f69ffbfb65dbe8102486e5aee43526e3cc9ecc54db4dcfe71fb8db3d52882594de', 2, 1, 'MyApp', '[]', 0, '2019-02-28 08:53:52', '2019-02-28 08:53:52', '2020-02-28 08:53:52');
INSERT INTO `oauth_access_tokens` VALUES ('ec900d3d79ea229f630aec2aed91b68d07adedb5696c67b9be3312ec21c57b4d2952723e7dd7aafa', 2, 1, 'MyApp', '[]', 0, '2019-06-25 16:24:42', '2019-06-25 16:24:42', '2020-06-25 16:24:42');
INSERT INTO `oauth_access_tokens` VALUES ('edd8592520c0805f08f3f4cb50be68a5dc7341d4061acdaada73e547da129b06e5553c1211d2051f', 2, 1, 'MyApp', '[]', 0, '2019-03-02 08:09:02', '2019-03-02 08:09:02', '2020-03-02 08:09:02');
INSERT INTO `oauth_access_tokens` VALUES ('ee9116e8e468f48e97d04ab45d5af40e24cbcb8ac12964c3a2db78f280a30aee8435aca20621761a', 2, 1, 'MyApp', '[]', 0, '2019-07-15 08:30:54', '2019-07-15 08:30:54', '2020-07-15 08:30:54');
INSERT INTO `oauth_access_tokens` VALUES ('eebcb8b6c0881d51285f1b3175057a4d91c17aa90281daee2bf4b3fb622847bb7f493f11e12e601c', 2, 1, 'MyApp', '[]', 0, '2019-03-21 17:01:19', '2019-03-21 17:01:19', '2020-03-21 17:01:19');
INSERT INTO `oauth_access_tokens` VALUES ('ef38df2fbf3c6ca485ce4e4b9f495d5653f0acedb9688d773dddf91572f84889879eecdd99f1b9c5', 2, 1, 'MyApp', '[]', 0, '2019-06-07 14:03:20', '2019-06-07 14:03:20', '2020-06-07 14:03:20');
INSERT INTO `oauth_access_tokens` VALUES ('f440d733d86874bd55e90f565f8122efa04c3cb5f89a3cab2dda3c626a2ac803a1c7cfabe4e86592', 2, 1, 'MyApp', '[]', 0, '2019-05-10 14:00:20', '2019-05-10 14:00:20', '2020-05-10 14:00:20');
INSERT INTO `oauth_access_tokens` VALUES ('f4cf186493094c0baa9ea5b4d3f149de3de2961b7963272064e540537dfe7d98db76601e6345af07', 2, 1, 'MyApp', '[]', 0, '2019-07-14 20:28:06', '2019-07-14 20:28:06', '2020-07-14 20:28:06');
INSERT INTO `oauth_access_tokens` VALUES ('f5e2b2f0195eb9946ada086c63c04d82b8e94d3015d4594f0b19659ef043f8966699c000faab1bd0', 2, 1, 'MyApp', '[]', 0, '2019-05-10 08:23:58', '2019-05-10 08:23:58', '2020-05-10 08:23:58');
INSERT INTO `oauth_access_tokens` VALUES ('f66ca15e94fd11f4fa3b5e497355be704e3ba4a7b7bed055d0d543fea64fbcd3e16f51bf90090567', 2, 1, 'MyApp', '[]', 0, '2019-04-23 13:36:16', '2019-04-23 13:36:16', '2020-04-23 13:36:16');
INSERT INTO `oauth_access_tokens` VALUES ('f867dd75382d40379874b24a53ecf5272cb6696d47fa8331452cf0a43cd5bdb24e0339908f3f3aab', 2, 1, 'MyApp', '[]', 0, '2019-04-22 17:26:22', '2019-04-22 17:26:22', '2020-04-22 17:26:22');
INSERT INTO `oauth_access_tokens` VALUES ('f8d5092db08fe0e67fc640afab3eac8626ac3fb579fd8a04d8ecd707c064db967658b14d848c6bf2', 2, 1, 'MyApp', '[]', 0, '2019-06-29 10:45:12', '2019-06-29 10:45:12', '2020-06-29 10:45:12');
INSERT INTO `oauth_access_tokens` VALUES ('f9de553db938cbc7df3a7da7c509510a66d507f5f7cb3b3ac39ab50445aeb42f5de1a7afff0b74ca', 2, 1, 'MyApp', '[]', 0, '2019-07-22 08:12:38', '2019-07-22 08:12:38', '2020-07-22 08:12:38');
INSERT INTO `oauth_access_tokens` VALUES ('fb1085609dd53df7a1b0bc7ffddc0a27552da0681ca83dccdc3856f03b478022f666d8a5e79d331d', 17, 1, 'MyApp', '[]', 0, '2019-05-17 09:41:27', '2019-05-17 09:41:27', '2020-05-17 09:41:27');
INSERT INTO `oauth_access_tokens` VALUES ('fb452856dc1b66b6002da8863caef9b17730072341ad6c5fbd0b716f61abf8792b4b9b0dcc6e44ee', 5, 1, 'MyApp', '[]', 0, '2019-05-05 21:54:13', '2019-05-05 21:54:13', '2020-05-05 21:54:13');
INSERT INTO `oauth_access_tokens` VALUES ('fbaa68275cea65ecfd5a751325b78ac0bb015655f6c35e33e2b84b05301fad770a178811924eada1', 2, 1, 'MyApp', '[]', 0, '2019-06-11 09:06:22', '2019-06-11 09:06:22', '2020-06-11 09:06:22');
INSERT INTO `oauth_access_tokens` VALUES ('fc06b29579a37f34c51a2b6923e2ed73bcb8b6e61ceba59714131a142cc0dc3f03d30deddce7ba8a', 2, 1, 'MyApp', '[]', 0, '2019-05-17 16:59:24', '2019-05-17 16:59:24', '2020-05-17 16:59:24');
INSERT INTO `oauth_access_tokens` VALUES ('fd183820538e61fce86c656fa1d51e83b6d0138c80c4408e6c656447ca363529840f0fdc7d4af0e7', 2, 1, 'MyApp', '[]', 0, '2019-07-27 14:08:34', '2019-07-27 14:08:34', '2020-07-27 14:08:34');
INSERT INTO `oauth_access_tokens` VALUES ('fdda24a96ad12020fd4fc444397dd86c7a7997a639922aa5989b173a22b767ece966e9db886043eb', 2, 1, 'MyApp', '[]', 0, '2019-07-26 16:20:09', '2019-07-26 16:20:09', '2020-07-26 16:20:09');
INSERT INTO `oauth_access_tokens` VALUES ('fdeba7fd61f711165e9eb468e7951e8f8acffae5795c6fee7e37c83b26fde606a58acff245e9fff2', 2, 1, 'MyApp', '[]', 0, '2019-06-19 22:14:22', '2019-06-19 22:14:22', '2020-06-19 22:14:22');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'pKAxvNpKupq4MXxptmzvuT38ByuPIWyKv87fuiQt', 'http://localhost', 1, 0, 0, '2019-02-27 09:46:34', '2019-02-27 09:46:34');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', '4Djvc7dyJChiOr3UGmcYTjI0OrpCFenogIdusJDM', 'http://localhost', 0, 1, 0, '2019-02-27 09:46:34', '2019-02-27 09:46:34');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2019-02-27 09:46:34', '2019-02-27 09:46:34');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for option
-- ----------------------------
DROP TABLE IF EXISTS `option`;
CREATE TABLE `option`  (
  `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`option_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `idperm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idperm`) USING BTREE,
  UNIQUE INDEX `permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'root', 'Quản trị hệ thống', '2019-04-13 08:30:03', '2019-04-13 08:30:03');

-- ----------------------------
-- Table structure for post_has_files
-- ----------------------------
DROP TABLE IF EXISTS `post_has_files`;
CREATE TABLE `post_has_files`  (
  `idhasfile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idpost` bigint(20) NULL DEFAULT NULL,
  `hastype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `idfile` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idhasfile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for post_types
-- ----------------------------
DROP TABLE IF EXISTS `post_types`;
CREATE TABLE `post_types`  (
  `idposttype` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nametype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `idparent` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idposttype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of post_types
-- ----------------------------
INSERT INTO `post_types` VALUES (1, 'consultant', NULL, 1, '2019-04-17 08:49:25', '2019-04-17 08:49:25');
INSERT INTO `post_types` VALUES (2, 'promotion', NULL, 1, '2019-04-17 08:49:41', '2019-04-17 08:49:41');
INSERT INTO `post_types` VALUES (3, 'post', NULL, NULL, '2019-04-17 10:06:34', '2019-04-17 10:06:34');
INSERT INTO `post_types` VALUES (4, 'phone', '<i class=\"fa fa-phone-square\"></i>', 4, '2019-04-17 11:44:28', '2019-04-17 11:44:28');
INSERT INTO `post_types` VALUES (5, 'sms', '<i class=\"fa fa-send-o\"></i>', 4, '2019-04-17 11:44:44', '2019-04-17 11:44:44');
INSERT INTO `post_types` VALUES (6, 'email', '<i class=\"fa fa-envelope-square\"></i>', 4, '2019-04-17 15:37:20', '2019-04-17 15:37:20');
INSERT INTO `post_types` VALUES (7, 'booking', '<i class=\"fa fa-calendar-o\"></i>', 4, '2019-04-25 11:36:00', '2019-04-25 11:36:00');
INSERT INTO `post_types` VALUES (8, 'note', '<i class=\"fa fa-sticky-note-o\"></i>', 4, '2019-05-13 15:17:17', '2019-05-13 15:17:17');
INSERT INTO `post_types` VALUES (9, 'game', NULL, 1, '2019-05-16 08:15:16', '2019-05-16 08:15:16');
INSERT INTO `post_types` VALUES (10, 'product', NULL, NULL, '2019-05-23 16:07:07', '2019-05-23 16:07:07');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `idpost` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_post_type` int(11) NULL DEFAULT NULL,
  `idcategory` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idpost`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for producthasfile
-- ----------------------------
DROP TABLE IF EXISTS `producthasfile`;
CREATE TABLE `producthasfile`  (
  `idproducthasfile` bigint(20) NOT NULL AUTO_INCREMENT,
  `idproduct` bigint(20) NULL DEFAULT NULL,
  `hastype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `idfile` bigint(20) NULL DEFAULT NULL,
  `status_file` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idproducthasfile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of producthasfile
-- ----------------------------
INSERT INTO `producthasfile` VALUES (72, 68, 'thumbnail', 403, 1, '2019-06-07 15:58:34', '2019-06-07 17:27:35');
INSERT INTO `producthasfile` VALUES (73, 68, 'gallery', 404, 0, '2019-06-07 15:58:35', '2019-06-08 10:30:51');
INSERT INTO `producthasfile` VALUES (74, 68, 'gallery', 405, 0, '2019-06-07 15:58:35', '2019-06-08 14:15:21');
INSERT INTO `producthasfile` VALUES (75, 68, 'thumbnail', 406, 1, '2019-06-07 17:03:23', '2019-06-07 17:27:45');
INSERT INTO `producthasfile` VALUES (76, 68, 'thumbnail', 412, 1, '2019-06-08 11:52:28', '2019-06-08 11:52:28');
INSERT INTO `producthasfile` VALUES (77, 68, 'gallery', 413, 0, '2019-06-08 12:03:22', '2019-06-08 12:04:18');
INSERT INTO `producthasfile` VALUES (78, 68, 'gallery', 414, 0, '2019-06-08 12:03:23', '2019-06-08 13:32:32');
INSERT INTO `producthasfile` VALUES (79, 68, 'thumbnail', 415, 1, '2019-06-08 13:33:58', '2019-06-08 13:33:58');
INSERT INTO `producthasfile` VALUES (80, 68, 'gallery', 416, 0, '2019-06-08 13:59:33', '2019-06-08 14:14:52');
INSERT INTO `producthasfile` VALUES (81, 68, 'gallery', 417, 0, '2019-06-08 14:15:21', '2019-06-10 20:47:10');
INSERT INTO `producthasfile` VALUES (82, 69, 'thumbnail', 418, 1, '2019-06-08 14:20:19', '2019-06-08 14:20:19');
INSERT INTO `producthasfile` VALUES (83, 69, 'gallery', 419, 1, '2019-06-08 14:20:19', '2019-06-08 14:20:19');
INSERT INTO `producthasfile` VALUES (84, 70, 'thumbnail', 420, 1, '2019-06-08 14:23:37', '2019-06-08 14:23:37');
INSERT INTO `producthasfile` VALUES (85, 70, 'gallery', 421, 0, '2019-06-08 14:25:41', '2019-06-10 20:49:23');
INSERT INTO `producthasfile` VALUES (86, 68, 'thumbnail', 422, 1, '2019-06-10 20:47:10', '2019-06-10 20:47:10');
INSERT INTO `producthasfile` VALUES (87, 68, 'gallery', 423, 0, '2019-06-10 20:47:10', '2019-06-12 15:46:54');
INSERT INTO `producthasfile` VALUES (88, 70, 'thumbnail', 424, 1, '2019-06-10 20:49:23', '2019-06-10 20:49:23');
INSERT INTO `producthasfile` VALUES (89, 70, 'gallery', 425, 0, '2019-06-10 20:49:23', '2019-06-12 14:42:41');
INSERT INTO `producthasfile` VALUES (90, 71, 'thumbnail', 426, 1, '2019-06-10 20:52:19', '2019-06-10 20:52:19');
INSERT INTO `producthasfile` VALUES (91, 72, 'thumbnail', 427, 1, '2019-06-10 20:58:31', '2019-06-10 20:58:31');
INSERT INTO `producthasfile` VALUES (92, 73, 'thumbnail', 428, 1, '2019-06-10 21:00:42', '2019-06-10 21:00:42');
INSERT INTO `producthasfile` VALUES (93, 74, 'thumbnail', 429, 1, '2019-06-10 21:02:49', '2019-06-10 21:02:49');
INSERT INTO `producthasfile` VALUES (94, 75, 'thumbnail', 430, 1, '2019-06-10 21:04:08', '2019-06-10 21:04:08');
INSERT INTO `producthasfile` VALUES (98, 68, 'gallery', 434, 0, '2019-06-12 14:17:07', '2019-06-12 15:55:16');
INSERT INTO `producthasfile` VALUES (99, 68, 'gallery', 435, 0, '2019-06-12 14:17:07', '2019-06-12 15:57:44');
INSERT INTO `producthasfile` VALUES (100, 68, 'gallery', 436, 0, '2019-06-12 14:17:07', '2019-06-12 14:52:24');
INSERT INTO `producthasfile` VALUES (101, 68, 'gallery', 437, 0, '2019-06-12 15:46:54', '2019-06-12 15:55:26');
INSERT INTO `producthasfile` VALUES (102, 68, 'thumbnail', 438, 1, '2019-06-12 15:52:47', '2019-06-12 15:52:47');
INSERT INTO `producthasfile` VALUES (103, 68, 'gallery', 439, 1, '2019-06-12 15:57:44', '2019-06-12 15:57:44');
INSERT INTO `producthasfile` VALUES (104, 68, 'gallery', 440, 1, '2019-06-12 15:57:44', '2019-06-12 15:57:44');
INSERT INTO `producthasfile` VALUES (106, 70, 'thumbnail', 442, 1, '2019-06-12 15:58:36', '2019-06-12 15:58:36');
INSERT INTO `producthasfile` VALUES (107, 71, 'thumbnail', 443, 1, '2019-06-12 15:59:12', '2019-06-12 15:59:12');
INSERT INTO `producthasfile` VALUES (108, 71, 'thumbnail', 444, 1, '2019-06-12 15:59:28', '2019-06-12 15:59:28');
INSERT INTO `producthasfile` VALUES (109, 71, 'thumbnail', 445, 1, '2019-06-12 15:59:48', '2019-06-12 15:59:48');
INSERT INTO `producthasfile` VALUES (110, 72, 'thumbnail', 446, 1, '2019-06-12 16:00:16', '2019-06-12 16:00:16');
INSERT INTO `producthasfile` VALUES (111, 73, 'thumbnail', 447, 1, '2019-06-12 16:01:39', '2019-06-12 16:01:39');
INSERT INTO `producthasfile` VALUES (112, 74, 'thumbnail', 448, 1, '2019-06-12 16:02:59', '2019-06-12 16:02:59');
INSERT INTO `producthasfile` VALUES (117, 75, 'thumbnail', 452, 1, '2019-06-17 16:49:20', '2019-06-17 16:49:20');
INSERT INTO `producthasfile` VALUES (118, 75, 'thumbnail', 453, 1, '2019-06-17 16:53:53', '2019-06-17 16:53:53');
INSERT INTO `producthasfile` VALUES (129, 91, 'thumbnail', 448, 1, '2019-06-17 23:47:41', '2019-06-17 23:47:41');
INSERT INTO `producthasfile` VALUES (130, 92, 'thumbnail', 445, 1, '2019-06-17 23:49:20', '2019-06-17 23:49:20');
INSERT INTO `producthasfile` VALUES (132, 94, 'thumbnail', 442, 1, '2019-06-18 08:22:36', '2019-06-18 08:22:36');
INSERT INTO `producthasfile` VALUES (133, 95, 'thumbnail', 442, 1, '2019-06-18 08:52:14', '2019-06-18 08:52:14');
INSERT INTO `producthasfile` VALUES (134, 96, 'thumbnail', 455, 1, '2019-06-18 09:29:58', '2019-06-18 09:29:58');
INSERT INTO `producthasfile` VALUES (135, 97, 'thumbnail', 456, 1, '2019-06-18 09:32:14', '2019-06-18 09:32:14');
INSERT INTO `producthasfile` VALUES (136, 92, 'thumbnail', 457, 1, '2019-06-18 12:00:49', '2019-06-18 12:00:49');
INSERT INTO `producthasfile` VALUES (137, 98, 'thumbnail', 438, 1, '2019-06-18 12:01:13', '2019-06-18 12:01:13');
INSERT INTO `producthasfile` VALUES (138, 98, 'thumbnail', 458, 1, '2019-06-18 12:01:33', '2019-06-18 12:01:33');
INSERT INTO `producthasfile` VALUES (139, 91, 'thumbnail', 459, 1, '2019-06-18 13:57:53', '2019-06-18 13:57:53');
INSERT INTO `producthasfile` VALUES (140, 100, 'thumbnail', 460, 1, '2019-06-19 09:32:51', '2019-06-19 09:32:51');
INSERT INTO `producthasfile` VALUES (141, 99, 'thumbnail', 461, 1, '2019-06-19 09:33:29', '2019-06-19 09:33:29');
INSERT INTO `producthasfile` VALUES (142, 103, 'thumbnail', 464, 1, '2019-07-02 11:19:44', '2019-07-02 11:19:44');
INSERT INTO `producthasfile` VALUES (143, 104, 'thumbnail', 465, 1, '2019-07-06 08:50:00', '2019-07-06 08:50:00');
INSERT INTO `producthasfile` VALUES (144, 105, 'thumbnail', 466, 1, '2019-07-06 08:54:02', '2019-07-06 08:54:02');
INSERT INTO `producthasfile` VALUES (145, 106, 'thumbnail', 467, 1, '2019-07-06 09:09:17', '2019-07-06 09:09:17');
INSERT INTO `producthasfile` VALUES (146, 107, 'thumbnail', 468, 1, '2019-07-06 09:44:15', '2019-07-06 09:44:15');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `idproduct` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namepro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_post_type` int(11) NOT NULL,
  `idsize` tinyint(3) NULL DEFAULT NULL,
  `idcolor` tinyint(3) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idproduct`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (68, 'Trà assam sữa', 'tra-assam-sua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '&nbsp;is used to remove element from the array. The unset function is used to destroy any other variable and same way use to delete any element of an array. This unset command takes the array key as input and removed that element from the array. After removal the associated key and value does not change.', 10, 1, 1, '2019-06-07 15:58:34', '2019-06-13 17:22:41');
INSERT INTO `products` VALUES (70, 'Trà hoa nhài sữa', 'tra-hoa-nhai-sua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<font size=\"3\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</font><br>', 10, 1, 1, '2019-06-08 14:23:37', '2019-06-18 08:22:21');
INSERT INTO `products` VALUES (71, 'Trà assam sữa trân châu', 'tra-assam-sua-tran-chau', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<span style=\"font-size: medium;\">Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;</span>', 10, 1, 1, '2019-06-10 20:52:19', '2019-06-17 23:49:07');
INSERT INTO `products` VALUES (72, 'Bưởi hoàng kim', 'buoi-hoang-kim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', 'Bưởi hoàng kim Bưởi hoàng kim Bưởi hoàng kim Bưởi hoàng kim Bưởi hoàng kim Bưởi hoàng kim Bưởi hoàng kim Bưởi hoàng kim Bưởi hoàng kim Bưởi hoàng kim Bưởi hoàng kim', 10, 1, 0, '2019-06-10 20:58:31', '2019-06-19 08:26:17');
INSERT INTO `products` VALUES (73, 'Trà hoa quả tứ quý xuân', 'tra-hoa-qua-tu-quy-xuan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<span style=\"font-size: medium;\">Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;</span>', 10, 1, 0, '2019-06-10 21:00:42', '2019-06-19 08:18:52');
INSERT INTO `products` VALUES (74, 'Bưởi bá vương legend', 'buoi-ba-vuong-legend', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', 'Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend', 10, 1, 0, '2019-06-10 21:02:49', '2019-06-18 20:37:24');
INSERT INTO `products` VALUES (75, 'Chanh quất hàn thiên', 'chanh-quat-han-thien', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', 'Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên Chanh quất hàn thiên&nbsp;Chanh quất hàn thiên&nbsp;', 10, 1, 1, '2019-06-10 21:04:08', '2019-06-17 09:33:51');
INSERT INTO `products` VALUES (91, 'Bưởi bá vương legend', 'buoi-ba-vuong-legend', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', 'Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend&nbsp;Bưởi bá vương legend', 10, 2, 0, '2019-06-17 23:47:41', '2019-06-18 20:38:04');
INSERT INTO `products` VALUES (92, 'Trà assam sữa trân châu', 'tra-assam-sua-tran-chau', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<span style=\"font-size: medium;\">Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;Trà assam sữa trân châu&nbsp;</span>', 10, 2, 2, '2019-06-17 23:49:20', '2019-06-17 23:49:20');
INSERT INTO `products` VALUES (94, 'Trà hoa nhài sữa', 'tra-hoa-nhai-sua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<font size=\"3\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</font><br>', 10, 2, 1, '2019-06-18 08:22:36', '2019-06-18 08:22:36');
INSERT INTO `products` VALUES (95, 'Trà hoa nhài sữa', 'tra-hoa-nhai-sua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<font size=\"3\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</font><br>', 10, 1, 2, '2019-06-18 08:52:14', '2019-06-18 08:52:14');
INSERT INTO `products` VALUES (96, 'Trà hoa quả tứ quý xuân', 'tra-hoa-qua-tu-quy-xuan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', 'Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân&nbsp;Trà hoa quả tứ quý xuân', 10, 1, 0, '2019-06-18 09:29:58', '2019-06-19 11:17:29');
INSERT INTO `products` VALUES (97, 'Sữa tươi trân châu đường đen', 'sua-tuoi-tran-chau-duong-den', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.<br>', 10, 1, 0, '2019-06-18 09:32:14', '2019-06-19 08:27:07');
INSERT INTO `products` VALUES (98, 'Trà assam sữa', 'tra-assam-sua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '&nbsp;is used to remove element from the array. The unset function is used to destroy any other variable and same way use to delete any element of an array. This unset command takes the array key as input and removed that element from the array. After removal the associated key and value does not change.', 10, 2, 2, '2019-06-18 12:01:13', '2019-06-18 16:13:56');
INSERT INTO `products` VALUES (99, 'Thạch QQ sữa tươi', 'thach-qq-sua-tuoi', 'Thạch QQ sữa tươi Thạch QQ sữa tươi Thạch QQ sữa tươi', 'Thạch QQ sữa tươi&nbsp;Thạch QQ sữa tươi&nbsp;Thạch QQ sữa tươi', 10, 0, 0, '2019-06-19 09:19:23', '2019-06-19 09:33:29');
INSERT INTO `products` VALUES (100, 'Thạch QQ cà phê', 'thach-qq-ca-phe', 'Thạch QQ cà phê, Thạch QQ cà phê Thạch QQ cà phê Thạch QQ cà phê, Thạch QQ cà phê Thạch QQ cà phê', 'Thạch QQ cà phê,&nbsp;Thạch QQ cà phê Thạch QQ cà phê Thạch QQ cà phê,&nbsp;Thạch QQ cà phê Thạch QQ cà phê', 10, NULL, NULL, '2019-06-19 09:32:51', '2019-06-19 09:32:51');
INSERT INTO `products` VALUES (101, 'QQ sương sáo', 'qq-suong-sao', 'QQ sương sáo QQ sương sáo QQ sương sáo QQ sương sáo QQ sương sáo QQ sương sáo', 'QQ sương sáo&nbsp;QQ sương sáo QQ sương sáo&nbsp;QQ sương sáo QQ sương sáo&nbsp;QQ sương sáo&nbsp;', 10, NULL, NULL, '2019-06-19 09:59:08', '2019-06-19 09:59:08');
INSERT INTO `products` VALUES (102, 'QQ sương sáo', 'qq-suong-sao', 'QQ sương sáo QQ sương sáo QQ sương sáo QQ sương sáo QQ sương sáo QQ sương sáo', 'QQ sương sáo QQ sương sáo QQ sương sáo QQ sương sáo QQ sương sáo QQ sương sáo&nbsp;', 10, NULL, NULL, '2019-06-19 09:59:31', '2019-06-19 09:59:31');
INSERT INTO `products` VALUES (103, 'Trà xoài', 'tra-xoai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span>', 10, 1, 0, '2019-07-02 11:19:44', '2019-07-02 11:30:24');
INSERT INTO `products` VALUES (104, 'Kem xoài tuyết', 'kem-xoai-tuyet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span>', 10, 1, 0, '2019-07-06 08:50:00', '2019-07-06 08:50:26');
INSERT INTO `products` VALUES (105, 'Yakulk chanh', 'yakulk-chanh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span>', 10, 1, 0, '2019-07-06 08:54:02', '2019-07-06 08:54:13');
INSERT INTO `products` VALUES (106, 'Trà đào hoa nhài', 'tra-dao-hoa-nhai', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span>', 10, 1, 0, '2019-07-06 09:09:17', '2019-07-06 09:10:17');
INSERT INTO `products` VALUES (107, 'Kem tuyết matcha đậu đỏ', 'kem-tuyet-matcha-dau-do', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.', '<span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.&nbsp;</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span><span style=\"color: rgb(92, 104, 115); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum nibh pharetra ligula rhoncus, nec iaculis nulla semper.</span>', 10, 1, 0, '2019-07-06 09:44:15', '2019-07-06 09:44:26');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `idprofile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `iduser` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `middlename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `birthday` datetime(0) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `idcountry` int(10) NULL DEFAULT NULL,
  `idprovince` int(10) NULL DEFAULT NULL,
  `idcitytown` int(10) NULL DEFAULT NULL,
  `iddistrict` int(10) NULL DEFAULT NULL,
  `idward` int(10) NULL DEFAULT NULL,
  `idsex` int(2) NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `zalo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idprofile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES (1, '2', 'Hậu', 'Tấn', 'Dương', '1980-01-01 00:00:00', 'Số 7, Trần Quang Diệu, P14', 1, 1, 1, 3, 1, 1, '0967655819', 'about', 'facebook', 'zalo', 'uploads/2019/06/27/20190627_1561628641_5d148fe1d0be9.png', '2019-05-05 21:02:41', '2019-06-27 17:13:21');
INSERT INTO `profile` VALUES (6, '15', 'hatazu', 'juong', 'zu', '1988-02-02 00:00:00', 'ninh thuan', 1, 1, 1, 4, 1, 0, '0125656556', '', '', '', 'uploads/2019/05/11/20190511_1557541962_5cd6344a2c218.png', '2019-05-08 22:13:47', '2019-06-27 11:27:35');
INSERT INTO `profile` VALUES (7, '16', 'Dung', 'Thanh', 'Nguyễn', '1980-09-25 00:00:00', 'Đồng Nai', 1, 1, 1, 13, 1, 0, '0967655810', '', '', '', 'uploads/2019/05/17/20190517_1558084001_5cde79a1e2f65.png', '2019-05-17 09:36:04', '2019-06-27 11:27:47');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `idprovince` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nameprovince` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcountry` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idprovince`) USING BTREE,
  UNIQUE INDEX `province_nameprovince_unique`(`nameprovince`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, 'TP Hồ Chí Minh', 1, '2019-06-27 09:29:26', '2019-06-27 09:29:26');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `idrole` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idrole`) USING BTREE,
  UNIQUE INDEX `roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'administrator', 'Quản trị', '2019-04-13 08:29:22', '2019-04-13 08:30:50');

-- ----------------------------
-- Table structure for sex
-- ----------------------------
DROP TABLE IF EXISTS `sex`;
CREATE TABLE `sex`  (
  `idsex` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `namesex` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idsex`) USING BTREE,
  UNIQUE INDEX `sex_namesex_unique`(`namesex`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sex
-- ----------------------------
INSERT INTO `sex` VALUES (1, 'Nam', '2019-06-27 12:02:32', '2019-06-27 12:03:49');
INSERT INTO `sex` VALUES (2, 'Nữ', '2019-06-27 12:02:40', '2019-06-27 12:02:40');
INSERT INTO `sex` VALUES (3, 'Riêng tư', '2019-06-27 12:03:38', '2019-06-27 12:03:38');

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size`  (
  `idsize` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idsize`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES (1, 'M', NULL, '2019-06-18 09:29:29');
INSERT INTO `size` VALUES (2, 'L', NULL, NULL);

-- ----------------------------
-- Table structure for status_types
-- ----------------------------
DROP TABLE IF EXISTS `status_types`;
CREATE TABLE `status_types`  (
  `id_status_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_status_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idparent` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_status_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of status_types
-- ----------------------------
INSERT INTO `status_types` VALUES (1, 'request', NULL, '2019-03-02 09:22:20', '2019-03-02 09:22:20');
INSERT INTO `status_types` VALUES (2, 'finish', NULL, '2019-04-17 11:41:57', '2019-04-17 11:41:57');
INSERT INTO `status_types` VALUES (3, 'draft', NULL, '2019-05-30 11:03:34', '2019-05-30 11:03:34');
INSERT INTO `status_types` VALUES (4, 'publish', NULL, '2019-05-30 11:03:50', '2019-05-30 11:03:50');

-- ----------------------------
-- Table structure for sv_campaigns
-- ----------------------------
DROP TABLE IF EXISTS `sv_campaigns`;
CREATE TABLE `sv_campaigns`  (
  `idcampaign` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin_at` datetime(0) NOT NULL,
  `end_at` datetime(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idcampaign`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sv_customers
-- ----------------------------
DROP TABLE IF EXISTS `sv_customers`;
CREATE TABLE `sv_customers`  (
  `idcustomer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `middlename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `birthday` datetime(0) NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `iddistrict` int(10) NULL DEFAULT NULL,
  `idcitytown` int(10) NULL DEFAULT NULL,
  `job` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`idcustomer`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sv_post_types
-- ----------------------------
DROP TABLE IF EXISTS `sv_post_types`;
CREATE TABLE `sv_post_types`  (
  `id_post_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_post_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sv_posts
-- ----------------------------
DROP TABLE IF EXISTS `sv_posts`;
CREATE TABLE `sv_posts`  (
  `id_svpost` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcategory` int(11) NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_post_type` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_svpost`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sv_receives
-- ----------------------------
DROP TABLE IF EXISTS `sv_receives`;
CREATE TABLE `sv_receives`  (
  `idsv_receive` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcustomer` bigint(20) NOT NULL,
  `idsv_post` bigint(20) NOT NULL,
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcampaign` int(11) NOT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mac_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idsv_receive`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sv_sends
-- ----------------------------
DROP TABLE IF EXISTS `sv_sends`;
CREATE TABLE `sv_sends`  (
  `idsv_send` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcustomer` bigint(20) NOT NULL,
  `idsv_post` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `idcampaign` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idsv_send`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'admin', 'admin@mgkgroup.vn', NULL, '$2y$10$3Ds/XEHqtDG4jZpGUBdIPOQYy/9SgRsXb4pKD2B5eiU5SkeZBYWDG', '1wEdg9PWO5sJz7u2sJdeJJu0Z7U2LKwcIHgZM85DFHCeG2biHOgwtDEZ491c', '2019-02-27 10:14:15', '2019-06-27 15:31:50');
INSERT INTO `users` VALUES (15, 'cskh1@mgkgroup.vn', 'cskh1@mgkgroup.vn', NULL, '$2y$10$tLkkIvZrXHlhgKxUCc0DoObdsdJ.Hglai8Sc1HaPi/hb/DPRzY2zS', 'hjPhKivYKcHQEFUanaB6jr5vePYDgjvrFBUGTbKX9KzEFOcIKYcr9iob4dAP', '2019-05-08 22:13:47', '2019-05-10 13:59:20');
INSERT INTO `users` VALUES (16, 'letan01dn', 'letan01dn@mgkgroup.vn', NULL, '$2y$10$GPgP6YIMxSp5S0pUj8MDmu97gE0Co4UIWKjNH3eLaYG7KBtdc7wV6', 'eOcQTpyMQvUYbC894ZGvSxivsDCMYr7xF35mqagEGtuommze8DZHJncb5wNQ', '2019-05-17 09:36:04', '2019-05-17 09:36:04');
INSERT INTO `users` VALUES (17, 'letan01bd', 'letan01bd@mgkgroup.vn', NULL, '$2y$10$KH39/RhVD6ai0St8ZW0b6O9PGz5C0E1.l2F1lzfJVqNf5nO/dyCz6', NULL, '2019-05-17 09:36:49', '2019-05-17 09:36:49');
INSERT INTO `users` VALUES (18, 'digital1', 'digital1@mgkgroup.vn', NULL, '$2y$10$h2zeZyxVFQbky62Kbz.q2OympEwRlfNecRc/cm7TDVwQGE3PmJ6Lu', NULL, '2019-05-17 09:39:23', '2019-05-17 09:39:23');
INSERT INTO `users` VALUES (22, 'Tấn Hậu', 'admin2@mgkgroup.vn', NULL, '$2y$10$UHeFjyjCItmyIS9ZqIdX7uWMpCPI88ioZZQrVSdZF/pwkaBDqccDa', NULL, '2019-06-24 10:46:31', '2019-06-24 10:46:31');

-- ----------------------------
-- Table structure for ward
-- ----------------------------
DROP TABLE IF EXISTS `ward`;
CREATE TABLE `ward`  (
  `idward` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nameward` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddistrict` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`idward`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ward
-- ----------------------------
INSERT INTO `ward` VALUES (1, 'Phường 14', 3, '2019-06-27 09:51:22', '2019-06-27 09:51:22');

-- ----------------------------
-- Procedure structure for activity_interactive
-- ----------------------------
DROP PROCEDURE IF EXISTS `activity_interactive`;
delimiter ;;
CREATE PROCEDURE `activity_interactive`(IN `_idimport` INT(11))
BEGIN
  DECLARE _parent_idpost_exp int;
  set _parent_idpost_exp = (select idpost from impposts where idimppost = _idimport);
	select p.body, ( select icon from post_types where idposttype = p.id_post_type) as icon , expp.id_status_type, expp.url_avatar, expp.firstname, expp.middlename, expp.lastname, expp.created_at from (select exp.*, pr.firstname, pr.lastname, pr.middlename, pr.url_avatar from (select * from expposts where parent_idpost_exp = _parent_idpost_exp) as exp join profile as pr on pr.iduser = exp.idemployee) as expp join posts as p on expp.idpost = p.idpost;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AddMenuItemProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `AddMenuItemProcedure`;
delimiter ;;
CREATE PROCEDURE `AddMenuItemProcedure`(IN _idmenu int(11), IN _idcategory int(11), IN _idparent int(11), IN _depth int(11), IN _reorder int(11), IN _trash int(6))
BEGIN
               insert into menu_has_cate( idmenu, idcategory, idparent, depth, reorder, trash ) values ( _idmenu, _idcategory, _idparent, _depth, _reorder, _trash);
							 select LAST_INSERT_ID() as idmenuhascate;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AddProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `AddProductProcedure`;
delimiter ;;
CREATE PROCEDURE `AddProductProcedure`(IN `_idproduct` INT(11), IN `_namestore` VARCHAR(255))
BEGIN
                declare _idstore int;
                set _idstore = (select idcategory from categories where shortname = _namestore);
                insert into exp_products(idproduct,iduser,amount,price,idstore,size,ice_water,sugar,topping) values(_idproduct,_iduser,_amount,_price,_idstore,_size,_ice_water,_sugar,_topping); 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CategoryByIdcatetype
-- ----------------------------
DROP PROCEDURE IF EXISTS `CategoryByIdcatetype`;
delimiter ;;
CREATE PROCEDURE `CategoryByIdcatetype`(IN _idcatetype INT(11))
BEGIN
                select * from categories where idcattype = _idcatetype; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CategoryHasProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `CategoryHasProduct`;
delimiter ;;
CREATE PROCEDURE `CategoryHasProduct`(IN `_list_idcat` VARCHAR(255), IN `_idproduct` INT(11))
BEGIN
                declare list_idcat varchar(255);
                set @_sign = ",";
                call split_string(_list_idcat, _idproduct, @_sign, list_idcat); 
                SET @s = CONCAT("INSERT INTO catehasproduct (idproduct,idcategory) VALUES ", list_idcat); 
                PREPARE stmt1 FROM @s; 
                EXECUTE stmt1; 
                DEALLOCATE PREPARE stmt1;
								
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CompleteListOrderProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `CompleteListOrderProcedure`;
delimiter ;;
CREATE PROCEDURE `CompleteListOrderProcedure`(IN `_ordernumber` INT(11))
BEGIN 
select  ordpro.*,(select urlfile from files where idfile = ordpro.idfile) as urlfile from (select p.namepro,p.short_desc,(select idfile from producthasfile where idproduct = p.idproduct and hastype="thumbnail" ORDER BY idproducthasfile desc limit 1) as idfile, ex.* from (select * from exp_products where ordernumber = _ordernumber) as ex join products as p on ex.idproduct = p.idproduct) as ordpro;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CreateMenuHasIdCateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `CreateMenuHasIdCateProcedure`;
delimiter ;;
CREATE PROCEDURE `CreateMenuHasIdCateProcedure`(IN _str_query varchar(255))
BEGIN
                SET @sqlv=_str_query;
                PREPARE stmt FROM @sqlv;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CreateProfileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `CreateProfileProcedure`;
delimiter ;;
CREATE PROCEDURE `CreateProfileProcedure`(IN `_iduser` INT, IN `_firstname` VARCHAR(255), IN `_middlename` VARCHAR(255), IN `_lastname` VARCHAR(255), IN `_address` VARCHAR(255), IN `_idcitytown` INT, IN `_iddistrict` INT, IN `_mobile` VARCHAR(255), IN `_about` VARCHAR(255), IN `_facebook` VARCHAR(255), IN `_zalo` VARCHAR(255), IN `_url_avatar` VARCHAR(255))
BEGIN
                insert into profile(iduser, firstname, middlename, lastname, address, idcitytown, iddistrict, mobile, about, facebook , zalo, url_avatar) values (_iduser, _firstname, _middlename, _lastname, _address, _idcitytown, _iddistrict, _mobile, _about, _facebook , _zalo, _url_avatar);
            SELECT LAST_INSERT_ID() as idprofile;
						END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CreatPostApiProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `CreatPostApiProcedure`;
delimiter ;;
CREATE PROCEDURE `CreatPostApiProcedure`(IN `_firstname` VARCHAR(255) CHARSET utf8mb4, IN `_body` TEXT CHARSET utf8mb4, IN `_nametype` VARCHAR(255), IN `_idfile` INT(11), IN `_namecat` VARCHAR(255), IN `_mobile` VARCHAR(255), IN `_email` VARCHAR(255), IN `_address` VARCHAR(255) CHARSET utf8mb4, IN `_name_status_type` VARCHAR(250), IN `_birthday` VARCHAR(255), IN `_job` VARCHAR(255) CHARSET utf8mb4, IN `_facebook` VARCHAR(255) CHARSET utf8mb4)
BEGIN
            DECLARE _idcategory INT;
            DECLARE _idposttype INT;
            DECLARE _idpost INT;
            DECLARE _idcattype INT;
            DECLARE _catnametype VARCHAR(255);
            DECLARE _hastype VARCHAR(255);
            DECLARE _idcustomer INT;
            DECLARE _percent_process INT;
            DECLARE _id_status_type INT;
            DECLARE _id_imppost INT;
            SET _percent_process = 0;
            SET _id_status_type = (SELECT id_status_type FROM status_types WHERE name_status_type = _name_status_type);
            SET _catnametype = "website";
            SET _idcattype = (SELECT idcattype FROM category_types WHERE catnametype=_catnametype); 
            SET _idposttype = (SELECT idposttype FROM post_types WHERE nametype = _nametype);
            SET _hastype = "image";
            IF EXISTS(SELECT _idcustomer FROM sv_customers WHERE mobile = _mobile LIMIT 1) THEN
                BEGIN
                SET _idcustomer = (SELECT idcustomer FROM sv_customers WHERE mobile = _mobile LIMIT 1);
                END;
            ELSE
                BEGIN
                INSERT INTO sv_customers(firstname, email, mobile, address, birthday, job, facebook) VALUES(_firstname,_email,_mobile,_address, _birthday, _job, _facebook);
                SET _idcustomer = LAST_INSERT_ID();
                END;
            END IF;
            IF EXISTS(SELECT idcategory FROM categories WHERE namecat = _namecat LIMIT 1) THEN
                BEGIN
                SET _idcategory = (SELECT idcategory FROM categories WHERE namecat = _namecat LIMIT 1);
                END;
            ELSE
                BEGIN
                INSERT INTO categories(namecat,idcattype,idparent) VALUES(_namecat,_idcattype,NULL); 
                SET _idcategory = LAST_INSERT_ID();
                END;
            END IF;
            INSERT INTO posts(body,id_post_type,idcategory) VALUES(_body,_idposttype,_idcategory);
            SET _idpost = LAST_INSERT_ID();
            INSERT INTO post_has_files (idpost,hastype,idfile) VALUES(_idpost,_hastype,_idfile);
            INSERT INTO impposts(idpost,id_status_type,percent_process,iduser_imp,address_reg) VALUES(_idpost,_id_status_type,_percent_process,_idcustomer,_address);
            SET _id_imppost = LAST_INSERT_ID();
            SELECT _id_imppost;
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CrossProductHasFileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `CrossProductHasFileProcedure`;
delimiter ;;
CREATE PROCEDURE `CrossProductHasFileProcedure`(IN `_idproduct` INT(11), IN `_cross_idproduct` INT(11), IN `_idfile` INT(11), IN `_crosstype` VARCHAR(255))
BEGIN
                insert into cross_product(idproduct,crosstype,idproduct_cross) values(_idproduct,_crosstype,_cross_idproduct);
                insert into producthasfile(idproduct,hastype,idfile,status_file) values(_cross_idproduct,"thumbnail",_idfile,1);
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for customer_interactive
-- ----------------------------
DROP PROCEDURE IF EXISTS `customer_interactive`;
delimiter ;;
CREATE PROCEDURE `customer_interactive`(IN `_parent_idpost_exp` INT, IN `_body` TEXT CHARSET utf8mb4, IN `_id_post_type` INT, IN `_id_status_type` INT, IN `_idemployee` INT)
BEGIN
	DECLARE	_idpost INT;
	INSERT INTO posts(body,id_post_type) VALUES(_body,_id_post_type);
        SET _idpost = LAST_INSERT_ID();
        INSERT INTO expposts(idpost,id_status_type,idemployee,parent_idpost_exp) VALUES(_idpost,_id_status_type,_idemployee,_parent_idpost_exp);
	select LAST_INSERT_ID() as id_exppost;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DeleteProducthasFileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DeleteProducthasFileProcedure`;
delimiter ;;
CREATE PROCEDURE `DeleteProducthasFileProcedure`(IN `_idproducthasfile` INT(11))
BEGIN
                UPDATE producthasfile set status_file = 0 where idproducthasfile = _idproducthasfile;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DeleteUserProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DeleteUserProcedure`;
delimiter ;;
CREATE PROCEDURE `DeleteUserProcedure`(IN `_iduser` INT)
BEGIN
                delete from users where id=_iduser;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DetailByIdProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DetailByIdProductProcedure`;
delimiter ;;
CREATE PROCEDURE `DetailByIdProductProcedure`(IN `_idproduct` INT(11))
BEGIN
                 DECLARE id_thumbnail int;
                                declare url_thumbnail varchar(255);
                                set id_thumbnail =  (SELECT idfile from producthasfile WHERE idproduct=_idproduct and hastype="thumbnail" ORDER BY idproducthasfile DESC LIMIT 1);
                                set url_thumbnail = (SELECT urlfile FROM files where idfile = id_thumbnail);
                                select p.idproduct,p.namepro,p.slug,p.short_desc,p.description,p.idsize,(select `value` from size where idsize=p.idsize) as _size, p.idcolor,p.id_post_type,p.created_at as created_pro,p.updated_at as updated_pro,imp.*,id_thumbnail, url_thumbnail from (select * FROM products WHERE idproduct=_idproduct) as p join (SELECT * from imp_products where idproduct=_idproduct ORDER BY idimp DESC LIMIT 1) as imp on p.idproduct = imp.idproduct;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DetailCustomerProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `DetailCustomerProcedure`;
delimiter ;;
CREATE PROCEDURE `DetailCustomerProcedure`(IN `_iduser` INT(11))
BEGIN
    select cus.firstname,cus.middlename, cus.lastname,cus.mobile,cus.email, (CONCAT_WS(', ',address,(select namedist from district where iddistrict = cus.iddistrict),(select namecitytown from city_town where idcitytown = cus.idcitytown))) as address from sv_customers as cus where idcustomer = _iduser;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DetailInteractive
-- ----------------------------
DROP PROCEDURE IF EXISTS `DetailInteractive`;
delimiter ;;
CREATE PROCEDURE `DetailInteractive`(IN `_idimport` INT)
BEGIN
	select post_imp.*, cus.* from (select p.idpost, p.body, imp.iduser_imp from (select * from impposts where idimppost = _idimport) as imp left join posts as p on imp.idpost=p.idpost) as post_imp join
	 sv_customers as cus on cus.idcustomer = post_imp.iduser_imp;
    END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Getparentidprocedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `Getparentidprocedure`;
delimiter ;;
CREATE PROCEDURE `Getparentidprocedure`(IN `id_post` INT(11))
BEGIN
                  DECLARE A INT;
                  DECLARE XYZ Varchar(50);
                  SET A = 1;
                  SET XYZ = "";
                  WHILE A <=10 DO
                  SET XYZ = CONCAT(XYZ,A,",");
                  SET A = A + 1;
                  END WHILE;
                  SELECT XYZ;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ImportProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ImportProductProcedure`;
delimiter ;;
CREATE PROCEDURE `ImportProductProcedure`(IN `_idproduct` INT(11), IN `_idcustomer` INT(11), IN `_iduser` INT(11), IN `_amount` DOUBLE(20,0), IN `_price_import` DOUBLE(20,0), IN `_price` DOUBLE(20,0), IN `_price_sale_origin` DOUBLE(20,0), IN `_note` TEXT, IN `_idstore` INT(11), IN `_axis_x` INT(11), IN `_axis_y` INT(11), IN `_axis_z` INT(11), IN `_id_status_type` INT(11))
BEGIN
                INSERT INTO imp_products(idproduct, idcustomer, iduser, amount, price_import, price, price_sale_origin,  note, idstore, axis_x, axis_y, axis_z,id_status_type) VALUES ( _idproduct, _idcustomer, _iduser, _amount, _price_import, _price, _price_sale_origin, _note, _idstore, _axis_x, _axis_y, _axis_z,_id_status_type);             
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ImppermbyidProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ImppermbyidProcedure`;
delimiter ;;
CREATE PROCEDURE `ImppermbyidProcedure`(IN `idimpperm` INT(11))
BEGIN
                SELECT imp.idimp_perm, imp.idperm, p.name as nameperm,p.description as desperm, imp.idrole, r.name as namerole,r.description as desrole,u.name as nameuser FROM (select * from imp_perms where idimp_perm = idimpperm) as imp left join permissions as p ON imp.idperm = p.idperm LEFT join roles as r on imp.idrole = r.idrole LEFT join users as u ON imp.iduserimp = u.id;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InfoOrderProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InfoOrderProductProcedure`;
delimiter ;;
CREATE PROCEDURE `InfoOrderProductProcedure`(IN `_ordernumber` INT(11))
BEGIN
                select inf.*, (inf.price_top+inf.price_parent) as unit_price, ((inf.price_top+inf.price_parent)*inf.amount_panent) as mountxprice from (select GROUP_CONCAT(info_order.l_topping SEPARATOR " ") as ltopping, sum(info_order.price) as price_top, info_order.parentidproduct, info_order.namepro, info_order.amount_panent,info_order.price_parent, info_order.urlparent, info_order.created_at from (select CONCAT("<li><lable>",info.topping,"</label> <span class=\"currency\">",info.price,"</span><span class=\"vnd\"></span></li>") as l_topping,info.idproduct, info.parentidproduct, info.price, info.namepro, price_parent, info.amount_panent,info.urlparent, info.created_at from (select cte1.namepro as topping, cte1.idproduct,cte1.parentidproduct, cte1.amount, cte1.price, cte1.urlfile ,cte2.namepro,cte2.price as price_parent,cte2.amount as amount_panent,cte2.urlfile as urlparent, cte2.created_at from (select  ordpro.namepro,ordpro.idproduct,parentidproduct,ordpro.amount,ordpro.price,(select urlfile from files where idfile = ordpro.idfile) as urlfile from (select p.namepro,(select idfile from producthasfile where idproduct = p.idproduct and hastype="thumbnail" ORDER BY idproducthasfile desc limit 1) as idfile, ex.* from (select * from exp_products where ordernumber =  _ordernumber) as ex join products as p on ex.idproduct = p.idproduct) as ordpro) as cte1 LEFT JOIN (select  ordpro.namepro,ordpro.idproduct,parentidproduct,ordpro.amount,ordpro.price,(select urlfile from files where idfile = ordpro.idfile) as urlfile, ordpro.created_at from (select p.namepro,(select idfile from producthasfile where idproduct = p.idproduct and hastype="thumbnail" ORDER BY idproducthasfile desc limit 1) as idfile, ex.* from (select * from exp_products where ordernumber =  _ordernumber and parentidproduct = 0) as ex join products as p on ex.idproduct = p.idproduct) as ordpro) as cte2 on cte1.parentidproduct = cte2.idproduct) as info) as info_order GROUP BY info_order.parentidproduct) as inf;    
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertFilePath
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertFilePath`;
delimiter ;;
CREATE PROCEDURE `InsertFilePath`(IN `_str_list_file` VARCHAR(255), OUT `_idfile` INT(11))
BEGIN
                
                SET @s = CONCAT('INSERT INTO files(urlfile,name_origin,namefile, typefile) VALUES ', _str_list_file); 
                PREPARE stmt1 FROM @s; 
                EXECUTE stmt1; 
                DEALLOCATE PREPARE stmt1;
                set _idfile = LAST_INSERT_ID();
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertFilesProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertFilesProcedure`;
delimiter ;;
CREATE PROCEDURE `InsertFilesProcedure`(IN `_urlfile` VARCHAR(255), IN `_name_origin` VARCHAR(255), IN `_namefile` VARCHAR(255), IN `_typefile` VARCHAR(255))
BEGIN
                INSERT INTO files(urlfile,name_origin,namefile, typefile) VALUES (_urlfile,_name_origin, _namefile, _typefile);
                SELECT LAST_INSERT_ID() as idfile;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertPostProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertPostProcedure`;
delimiter ;;
CREATE PROCEDURE `InsertPostProcedure`(IN `_title` VARCHAR(255), IN `_body` TEXT, IN `_slug` VARCHAR(255), IN `_id_post_type` INT(11), IN `_idcategory` INT(11), IN `_id_status_type` INT(11), IN `_processing` DECIMAL(6,2), IN `_iduser_imp` INT(11))
BEGIN
                INSERT INTO posts(title, body, slug, id_post_type, idcategory) VALUES ( _title, _body, _slug, _id_post_type, _idcategory);
                    SET @_idpost = LAST_INSERT_ID();
                    INSERT INTO impposts(idpost, id_status_type, processing, iduser_imp) VALUES ( @_idpost, _id_status_type, _processing, _iduser_imp);
                    select @_idpost as outidpost;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertProductProcedure`;
delimiter ;;
CREATE PROCEDURE `InsertProductProcedure`(IN `_namepro` VARCHAR(255) CHARSET utf8mb4, IN `_description` TEXT CHARSET utf8mb4, IN `_short_desc` TEXT CHARSET utf8mb4, IN `_slug` VARCHAR(255) CHARSET utf8mb4, IN `_id_post_type` INT(11), IN `_idcustomer` INT(11), IN `_idemployee` INT(11), IN `_amount` FLOAT(10), IN `_price` FLOAT(10), IN `_note` TEXT CHARSET utf8mb4, IN `_idstore` INT(11), IN `_axis_x` INT(11), IN `_axis_y` INT(11), IN `_axis_z` INT(11), IN `_size` VARCHAR(10) CHARSET utf8mb4, IN `_ice_water` FLOAT(10), IN `_sugar` FLOAT(10), IN `_topping` VARCHAR(255) CHARSET utf8mb4, IN `_status_type` INT(11), IN `_list_idcat` VARCHAR(255) CHARSET utf8mb4, IN `_list_file` TEXT CHARSET utf8mb4, IN `_thumbnail` TEXT CHARSET utf8mb4)
BEGIN
                DECLARE _idproduct INT;
								DECLARE _idfile INT;
								DECLARE list_file VARCHAR(255);
								DECLARE list_idcat VARCHAR(255);
								DECLARE str_query VARCHAR(255);
								set _idproduct = 0;
								INSERT INTO products(namepro, description, short_desc, slug, id_post_type) VALUES ( _namepro, _description, _short_desc , _slug, _id_post_type );
                SET _idproduct = LAST_INSERT_ID();								
                INSERT INTO imp_products(idproduct, idcustomer, idemployee, amount, price, note, idstore, axis_x, axis_y, axis_z, size, ice_water, sugar, topping, status_type) VALUES ( _idproduct, _idcustomer, _idemployee, _amount, _price, _note, _idstore, _axis_x, _axis_y, _axis_z, _size, _ice_water, _sugar, _topping, _status_type);							
							  call CategoryHasProduct(_list_idcat, _idproduct);
								#call ProducthasFile(_thumbnail, ";","thumbnail", _idproduct);
								call ProducthasFile(_list_file, ";","gallery", _idproduct);				
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListAllCatByTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListAllCatByTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListAllCatByTypeProcedure`(IN `_namecattype` VARCHAR(255))
BEGIN
        DECLARE _idcattype INT;
        SET _idcattype = (SELECT idcattype FROM category_types WHERE catnametype = _namecattype);
        IF _idcattype > 0 THEN
        BEGIN
           SELECT c.idcategory, c.shortname, c.namecat, _namecattype as catnametype, c.idparent, (select namecat from categories WHERE idcategory = c.idparent) as parent FROM categories as c WHERE idcattype = _idcattype;
        END; 
        ELSE
        BEGIN
           SELECT c.* FROM categories as c;    
        END;
        END IF;
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListAllCateByIdcatetype
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListAllCateByIdcatetype`;
delimiter ;;
CREATE PROCEDURE `ListAllCateByIdcatetype`(IN _idcatetype int(11))
BEGIN
               IF _idcatetype > 0 THEN
                    BEGIN
                       SELECT c.idcategory, c.shortname, c.namecat, c.idparent, (select namecat from categories WHERE idcategory = c.idparent) as parent FROM categories as c WHERE idcattype = _idcatetype;
                    END; 
                ELSE
                    BEGIN
                       SELECT c.* FROM categories as c;    
                    END;
                END IF;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListAllCategoryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListAllCategoryProcedure`;
delimiter ;;
CREATE PROCEDURE `ListAllCategoryProcedure`()
BEGIN
            SELECT idcategory,namecat,idparent FROM categories;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListCateByIdmenuProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListCateByIdmenuProcedure`;
delimiter ;;
CREATE PROCEDURE `ListCateByIdmenuProcedure`(IN _idmenu int(11))
BEGIN
               SELECT * FROM menu_has_cate WHERE idmenu=_idmenu;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListCategoryByTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListCategoryByTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListCategoryByTypeProcedure`()
BEGIN
	SELECT idcategory, namecat from categories;
    END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListCategoryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListCategoryProcedure`;
delimiter ;;
CREATE PROCEDURE `ListCategoryProcedure`()
BEGIN
                SELECT c1.idcategory, c1.namecat, c1.idcattype, (select catnametype from category_types where idcattype=c1.idcattype) as catnametype, c2.namecat as parent from categories as c1 left Join categories as c2 on c1.idparent = c2.idcategory;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListcatparentProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListcatparentProcedure`;
delimiter ;;
CREATE PROCEDURE `ListcatparentProcedure`()
BEGIN
                SELECT c1.idcategory, c1.namecat from categories as c1 where c1.idparent = 0;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListCustomerRegister
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListCustomerRegister`;
delimiter ;;
CREATE PROCEDURE `ListCustomerRegister`(IN `_start_date` VARCHAR(255), IN `_end_date` VARCHAR(255), IN `_idcategory` INT(11), IN `_id_post_type` INT(11), IN `_id_status_type` INT(11), IN `_sel_receive` INT(11))
BEGIN
        DECLARE _now VARCHAR(255);
        DECLARE _str_start VARCHAR(255);
        DECLARE _now_time VARCHAR(255);
        SET _now_time = NOW();
        IF ( _start_date IS NULL OR _start_date ="") THEN
        BEGIN
            SET _now = DATE(_now_time);
            SET _str_start = CONCAT(_now," 00:00:00");
            SET _start_date = STR_TO_DATE(_str_start,"%Y-%m-%d %H:%i:%s");          
        END;
        END IF;
        IF ( _end_date IS NULL OR _end_date = "") THEN SET _end_date = _now_time;       
        END IF;
        if ( _sel_receive = 0 AND _id_post_type = 0) then
		begin
		    SELECT user_reg.idimppost,user_reg.idpost,(select ROW_COUNT() from expposts where parent_idpost_exp = user_reg.idpost) as count_interactive,user_reg.created_at,cus.mobile,cus.firstname,cus.email,user_reg.body,user_reg.address_reg FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type = _id_status_type) AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = '1' OR pt.id_post_type = '2') AS po ON imp.idpost=po.idpost) AS user_reg JOIN
		    sv_customers AS cus ON user_reg.iduser_imp = cus.idcustomer;
		end;
	elseif ( _sel_receive = 1 AND _id_post_type = 0) then
		BEGIN
		    select user_join.idimppost,user_join.idpost,(select count(*) from expposts where parent_idpost_exp = user_join.idpost) as count_interactive,user_join.created_at,cus.mobile,cus.firstname,cus.email,user_join.body,user_join.address_reg  from (SELECT user_reg.idimppost,user_reg.idpost,user_reg.iduser_imp,user_reg.created_at,user_reg.body,user_reg.address_reg FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type='1') AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = '1' OR pt.id_post_type = '2') AS po ON imp.idpost = po.idpost) AS user_reg LEFT JOIN expposts AS expp ON user_reg.idpost = expp.parent_idpost_exp WHERE expp.parent_idpost_exp IS NULL) as user_join join sv_customers as cus on cus.idcustomer = user_join.iduser_imp;
		end;
	ELSEIF ( _sel_receive = 2 AND _id_post_type = 0 ) then
		BEGIN
		    SELECT user_join.idimppost,user_join.idpost,(select count(*) from expposts where parent_idpost_exp = user_join.idpost) as count_interactive,user_join.created_at,cus.mobile,cus.firstname,cus.email,user_join.body,user_join.address_reg  FROM (SELECT user_reg.idimppost,user_reg.idpost,user_reg.iduser_imp,user_reg.created_at,user_reg.body,user_reg.address_reg FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type='1') AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = '1' OR pt.id_post_type = '2') AS po ON imp.idpost = po.idpost) AS user_reg right JOIN ( select * from expposts GROUP BY parent_idpost_exp ) AS expp ON user_reg.idpost = expp.parent_idpost_exp) AS user_join JOIN sv_customers AS cus ON cus.idcustomer = user_join.iduser_imp;
		END;
	elseIF ( _sel_receive = 0 AND _id_post_type > 0) THEN
		BEGIN
		    SELECT user_reg.idimppost,user_reg.idpost,(select count(*) from expposts where parent_idpost_exp = user_reg.idpost) as count_interactive,user_reg.created_at,cus.mobile,cus.firstname,cus.email,user_reg.body,user_reg.address_reg FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type = _id_status_type) AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = _id_post_type) AS po ON imp.idpost=po.idpost) AS user_reg JOIN
		    sv_customers AS cus ON user_reg.iduser_imp = cus.idcustomer;
		END;
	ELSEIF ( _sel_receive = 1 AND _id_post_type > 0) THEN
		BEGIN
		    SELECT user_join.idimppost,user_join.idpost,(select count(*) from expposts where parent_idpost_exp = user_join.idpost) as count_interactive,user_join.created_at,cus.mobile,cus.firstname,cus.email,user_join.body,user_join.address_reg  FROM (SELECT user_reg.idimppost,user_reg.idpost,user_reg.iduser_imp,user_reg.created_at,user_reg.body,user_reg.address_reg FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type='1') AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = _id_post_type) AS po ON imp.idpost = po.idpost) AS user_reg LEFT JOIN expposts AS expp ON user_reg.idpost = expp.parent_idpost_exp WHERE expp.parent_idpost_exp IS NULL) AS user_join JOIN sv_customers AS cus ON cus.idcustomer = user_join.iduser_imp;
		END;
	ELSEIF ( _sel_receive = 2 AND _id_post_type > 0 ) THEN
		BEGIN
		    SELECT user_join.idimppost,user_join.idpost,(select count(*) from expposts where parent_idpost_exp = user_join.idpost) as count_interactive,user_join.created_at,cus.mobile,cus.firstname,cus.email,user_join.body,user_join.address_reg  FROM (SELECT user_reg.idimppost,user_reg.idpost,user_reg.iduser_imp,user_reg.created_at,user_reg.body,user_reg.address_reg FROM (SELECT imp.created_at,imp.idpost,imp.idimppost,imp.iduser_imp,po.body,imp.address_reg FROM (SELECT im.* FROM (SELECT * FROM impposts WHERE created_at >= _start_date AND  created_at < _end_date) AS im WHERE im.id_status_type='1') AS imp JOIN
		    (SELECT pt.* FROM (SELECT p.* FROM (SELECT idpost,body,id_post_type,idcategory FROM posts WHERE created_at >= _start_date AND created_at < _end_date) AS p WHERE p.idcategory=_idcategory) AS pt WHERE pt.id_post_type = _id_post_type) AS po ON imp.idpost = po.idpost) AS user_reg RIGHT JOIN expposts AS expp ON user_reg.idpost = expp.parent_idpost_exp) AS user_join JOIN sv_customers AS cus ON cus.idcustomer = user_join.iduser_imp;
		END;
        end if;  
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListDepartmentProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListDepartmentProcedure`;
delimiter ;;
CREATE PROCEDURE `ListDepartmentProcedure`()
BEGIN
                SELECT c1.iddepart, c1.namedepart, c2.namedepart as parent from departments as c1 left Join departments as c2 on c1.idparent = c2.iddepart;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListDepartParentProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListDepartParentProcedure`;
delimiter ;;
CREATE PROCEDURE `ListDepartParentProcedure`()
BEGIN
                SELECT c1.iddepart, c1.namedepart from departments as c1 where c1.idparent is null;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListgrantbyidProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListgrantbyidProcedure`;
delimiter ;;
CREATE PROCEDURE `ListgrantbyidProcedure`(IN `id_grant` INT(11))
BEGIN
                SELECT r.idrole, r.name as namerole, g.to_iduser,(select name from users where id = g.to_iduser) as touser, g.by_iduser,(select name from users where id = g.by_iduser) as byuser FROM (select * from grants where idgrant = id_grant) as g LEFT join roles as r on g.idrole = r.idrole;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListgrantProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListgrantProcedure`;
delimiter ;;
CREATE PROCEDURE `ListgrantProcedure`()
BEGIN
                SELECT g.idgrant, r.idrole, r.name as namerole, (select name from users where id = g.to_iduser) as touser, (select name from users where id=g.by_iduser) as byuser from grants as g LEFT join roles as r on g.idrole = r.idrole;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListImppermProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListImppermProcedure`;
delimiter ;;
CREATE PROCEDURE `ListImppermProcedure`()
BEGIN
                SELECT imp.idimp_perm, p.name as nameperm, r.name as namerole, u.name as nameuser FROM imp_perms as imp left join permissions as p ON imp.idperm = p.idperm LEFT join roles as r on imp.idrole = r.idrole LEFT join users as u ON imp.iduserimp = u.id;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListItemCateByIdMenuProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListItemCateByIdMenuProcedure`;
delimiter ;;
CREATE PROCEDURE `ListItemCateByIdMenuProcedure`(IN _idmenu int(11))
BEGIN
               SELECT mnhas.idmenuhascate, mnhas.idmenu,mnhas.idcategory,(select namecat from categories where idcategory = mnhas.idcategory) as namemenu, mnhas.idparent, mnhas.reorder, mnhas.depth, mnhas.trash FROM menu_has_cate as mnhas WHERE idmenu=_idmenu ORDER BY reorder ASC;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListMenuProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListMenuProcedure`;
delimiter ;;
CREATE PROCEDURE `ListMenuProcedure`()
BEGIN
               select * from menus;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListOrderProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListOrderProductProcedure`;
delimiter ;;
CREATE PROCEDURE `ListOrderProductProcedure`(IN `_start_date` VARCHAR(255), IN `_end_date` VARCHAR(255), IN `_idstore` INT(11), IN `_id_post_type` INT(11), IN `_id_status_type` INT(11), IN `_sel_receive` INT(11))
BEGIN
		    DECLARE _now VARCHAR(255);
        DECLARE _str_start VARCHAR(255);
        DECLARE _now_time VARCHAR(255);
        SET _now_time = NOW();
        IF ( _start_date IS NULL OR _start_date ="") THEN
        BEGIN
            SET _now = DATE(_now_time);
            SET _str_start = CONCAT(_now," 00:00:00");
            SET _start_date = STR_TO_DATE(_str_start,"%Y-%m-%d %H:%i:%s");          
        END;
        END IF;
        IF ( _end_date IS NULL OR _end_date = "") THEN SET _end_date = _now_time;       
        END IF;  
               select exp.ordernumber, exp.created_at, case when (exp.iduser > 0) THEN (select CONCAT_WS('</p> ',CONCAT_WS(' ',p.lastname, p.middlename, p.firstname),CONCAT_WS(' ',p.address, (select namedist from district where iddistrict = p.iddistrict), (select namecitytown from city_town where idcitytown = p.idcitytown)),p.mobile) from `profile` as p where iduser = exp.iduser) when (exp.idcustomer > 0) THEN  (select CONCAT_WS('</p>',CONCAT_WS(' ',cus.lastname,cus.middlename,cus.firstname),CONCAT_WS(', ',cus.address, (select namedist from district where iddistrict = cus.iddistrict), (select namecitytown from city_town where idcitytown = cus.idcitytown)),cus.mobile) from sv_customers as cus WHERE idcustomer = exp.idcustomer) END as customer, case when (exp.idrecipent > 0) THEN  (select CONCAT_WS('</p>',CONCAT_WS(' ',cus.lastname,cus.middlename,cus.firstname),CONCAT_WS(', ',cus.address, (select namedist from district where iddistrict = cus.iddistrict), (select namecitytown from city_town where idcitytown = cus.idcitytown)),cus.mobile) from sv_customers as cus WHERE idcustomer = exp.idrecipent)
                    when (exp.idcustomer > 0) THEN  (select CONCAT_WS('</p>',CONCAT_WS(' ',cus.lastname,cus.middlename,cus.firstname),CONCAT_WS(', ',cus.address, (select namedist from district where iddistrict = cus.iddistrict), (select namecitytown from city_town where idcitytown = cus.idcitytown)),cus.mobile) from sv_customers as cus WHERE idcustomer = exp.idcustomer) 
                    ELSE (select CONCAT_WS('</p> ',CONCAT_WS(' ',p.lastname, p.middlename, p.firstname),CONCAT_WS(' ',p.address, (select namedist from district where iddistrict = p.iddistrict), (select namecitytown from city_town where idcitytown = p.idcitytown)),p.mobile) from `profile` as p where iduser = exp.iduser) END as recipent, 
                    exp.iduser, exp.idcustomer, exp.idrecipent,exp.itemtotal from (select ex.ordernumber, sum((ex.amount*ex.price)) as itemtotal, ex.created_at, ex.idrecipent, ex.idcustomer, ex.iduser 
                    from (select * from exp_products where created_at >=_start_date and created_at <= _end_date AND idstore=_idstore) as ex GROUP BY ordernumber) as exp;  
                                END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListParentCatByTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListParentCatByTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListParentCatByTypeProcedure`(IN `_namecattype` VARCHAR(255))
BEGIN
	DECLARE _idcattype INT;
        SET _idcattype = (SELECT idcattype FROM category_types WHERE catnametype = _namecattype);
        IF _idcattype > 0 THEN
        BEGIN
           SELECT c.idcategory, c.namecat FROM categories as c WHERE c.idcattype = _idcattype and c.idparent is null;
        END; 
        ELSE
        BEGIN
           SELECT c.* FROM categories as c;    
        END;
        END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListpostProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListpostProcedure`;
delimiter ;;
CREATE PROCEDURE `ListpostProcedure`()
BEGIN
                SELECT * from posts;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListPostTypeByIdcatProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListPostTypeByIdcatProcedure`;
delimiter ;;
CREATE PROCEDURE `ListPostTypeByIdcatProcedure`(IN `_idcat` INT)
BEGIN
        IF _idcat > 0 THEN
        BEGIN
           SELECT * FROM post_types WHERE idparent = _idcat;
        END; 
        ELSE
        BEGIN
           SELECT * FROM post_types;    
        END;
        END IF;
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListProductByIdcateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListProductByIdcateProcedure`;
delimiter ;;
CREATE PROCEDURE `ListProductByIdcateProcedure`(IN `_start_date` VARCHAR(255), IN `_end_date` VARCHAR(255), IN `_idcategory` INT(11), IN `_id_post_type` INT(11), IN `_id_status_type` INT(11), IN `_limit` INT(11))
BEGIN
        DECLARE _now VARCHAR(255);
        DECLARE _str_start VARCHAR(255);
        DECLARE _now_time VARCHAR(255);
        SET _now_time = NOW();
        IF ( _start_date IS NULL OR _start_date ="") THEN
        BEGIN
            SET _now = DATE(_now_time);
            SET _str_start = CONCAT(_now," 00:00:00");
            SET _start_date = STR_TO_DATE(_str_start,"%Y-%m-%d %H:%i:%s");          
        END;
        END IF;
        IF ( _end_date IS NULL OR _end_date = "") THEN SET _end_date = _now_time;       
        END IF;  
            select info.created_at,info.idproduct,info.namepro,info.short_desc, info.price_import, info.price, info.price_sale_origin,info.amount,(select urlfile from files where idfile = info.idfile) as urlfile from (select dtail.created_at,dtail.idproduct,dtail.namepro,dtail.short_desc, dtail.price_import, dtail.price, dtail.price_sale_origin, dtail.amount, dtail.idfile,dtail.author, (select namecat from categories WHERE idcategory = prohas.idcategory) as namecat from ( select detail.created_at,detail.idproduct,detail.namepro,detail.short_desc, detail.price_import, detail.price, detail.price_sale_origin,detail.amount,detail.idfile,(select `name` from users WHERE id = detail.iduser) as author from (select p.created_at,p.idproduct,p.namepro,p.short_desc, imp.price_import, imp.price, imp.price_sale_origin, imp.amount,imp.iduser,(select idfile from producthasfile WHERE idproduct = p.idproduct ORDER BY idproducthasfile DESC LIMIT 1) as idfile  FROM (select pr.* from products as pr left join cross_product as c on pr.idproduct = c.idproduct_cross where c.idcrossproduct is NULL) as p JOIN imp_products as imp on p.idproduct = imp.idproduct) as detail) as dtail JOIN (select cate.* from (select * from catehasproduct where idcategory > 0) as cate left join exclude_category as excat on cate.idcategory = excat.idcategory where excat.idcategory is null ) as prohas on prohas.idproduct = dtail.idproduct) as info GROUP BY info.idproduct DESC LIMIT _limit;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListProductProcedure`;
delimiter ;;
CREATE PROCEDURE `ListProductProcedure`(IN `_start_date` VARCHAR(255), IN `_end_date` VARCHAR(255), IN `_idcategory` INT(11), IN `_id_post_type` INT(11), IN `_id_status_type` INT(11))
BEGIN
        DECLARE _now VARCHAR(255);
        DECLARE _str_start VARCHAR(255);
        DECLARE _now_time VARCHAR(255);
        SET _now_time = NOW();
        IF ( _start_date IS NULL OR _start_date ="") THEN
        BEGIN
            SET _now = DATE(_now_time);
            SET _str_start = CONCAT(_now," 00:00:00");
            SET _start_date = STR_TO_DATE(_str_start,"%Y-%m-%d %H:%i:%s");          
        END;
        END IF;
        IF ( _end_date IS NULL OR _end_date = "") THEN SET _end_date = _now_time;       
        END IF;  
            select info.created_at,info.idproduct,info.namepro,info.price,info.amount,(select urlfile from files where idfile = info.idfile) as urlfile,info.author,GROUP_CONCAT(info.namecat SEPARATOR ', ') as listcat from (select dtail.created_at,dtail.idproduct,dtail.namepro,dtail.price,dtail.amount,dtail.idfile,dtail.author, (select namecat from categories WHERE idcategory = prohas.idcategory AND prohas.idcategory is not null) as namecat from ( select detail.created_at,detail.idproduct,detail.namepro,detail.price,detail.amount,detail.idfile,(select `name` from users WHERE id = detail.iduser) as author from (select p.*,imp.price,imp.amount,imp.iduser,(select idfile from producthasfile WHERE idproduct = p.idproduct ORDER BY idproducthasfile DESC LIMIT 1) as idfile FROM (select pr.* from products as pr left join cross_product as c on pr.idproduct = c.idproduct_cross where c.idcrossproduct is NULL) as p JOIN imp_products as imp on p.idproduct = imp.idproduct) as detail) as dtail JOIN (select cate.* from (select * from catehasproduct where idcategory > 0) as cate left join exclude_category as excat on cate.idcategory = excat.idcategory where excat.idcategory is null ) as prohas on prohas.idproduct = dtail.idproduct) as info GROUP BY info.idproduct DESC LIMIT 100;
       END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListRoleIdpermProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListRoleIdpermProcedure`;
delimiter ;;
CREATE PROCEDURE `ListRoleIdpermProcedure`(IN `id_perm` INT(11))
BEGIN
                select r.idrole, r.name, p.idimp_perm, p.idrole as id_role from roles as r LEFT join (select * from imp_perms where idperm=id_perm) as p on r.idrole=p.idrole;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListSelEmpDepartProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListSelEmpDepartProcedure`;
delimiter ;;
CREATE PROCEDURE `ListSelEmpDepartProcedure`(IN `_iduser` INT(11))
BEGIN
                SELECT iddepart_employee, iddepart from depart_employees where iduser=_iduser;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListStatusTypeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListStatusTypeProcedure`;
delimiter ;;
CREATE PROCEDURE `ListStatusTypeProcedure`(IN `_idparent` INT)
BEGIN
        IF _idparent > 0 THEN
        BEGIN
           SELECT * FROM status_types WHERE idparent = _idparent;
        END; 
        ELSE
        BEGIN
           SELECT * FROM status_types;    
        END;
        END IF;
        END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ListTypeSelectedProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ListTypeSelectedProcedure`;
delimiter ;;
CREATE PROCEDURE `ListTypeSelectedProcedure`(IN `id_post` INT(11))
BEGIN
                SELECT p.id_post_type as idposttype,(select nametype from post_types WHERE idposttype = p.id_post_type) as nameposttype,p.idcategory,(SELECT name FROM categories WHERE idcategory = p.idcategory) as namecate FROM posts as p WHERE p.idpost=id_post;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MenuHasIdcateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `MenuHasIdcateProcedure`;
delimiter ;;
CREATE PROCEDURE `MenuHasIdcateProcedure`(IN _idmenu int(11),IN _idcategory int(11),IN _idparentmenu int(11))
BEGIN
               insert into menu_has_cate(idmenu,idcategory,idparentmenu) values (_idmenu,_idcategory,_idparentmenu);  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MostPopularProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `MostPopularProcedure`;
delimiter ;;
CREATE PROCEDURE `MostPopularProcedure`()
BEGIN 
                select info.created_at,info.idproduct,info.namepro,info.short_desc, info.price,info.amount,info.urlfile from (select dtail.created_at,dtail.idproduct,dtail.namepro,dtail.short_desc, dtail.price,dtail.amount,dtail.urlfile,dtail.author, (select namecat from categories WHERE idcategory = prohas.idcategory) as namecat from ( select detail.created_at,detail.idproduct,detail.namepro,detail.short_desc, detail.price,detail.amount,f.urlfile,(select `name` from users WHERE id = detail.iduser) as author from (select p.created_at,p.idproduct,p.namepro,p.short_desc, imp.price,imp.amount,imp.iduser,(select idfile from producthasfile WHERE idproduct = p.idproduct ORDER BY idproducthasfile DESC LIMIT 1) as idfile  FROM products as p JOIN imp_products as imp on p.idproduct = imp.idproduct) as detail join files as f on detail.idfile = f.idfile) as dtail JOIN (select * from catehasproduct where idcategory > 0) as prohas on prohas.idproduct = dtail.idproduct) as info limit 8; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for OrderProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `OrderProductProcedure`;
delimiter ;;
CREATE PROCEDURE `OrderProductProcedure`(IN `_ordernumber` INT(11), IN `_idproduct` INT(11), IN `_parentidproduct` INT(11), IN `_idcustomer` INT(11), IN `_idrecipent` INT(11), IN `_iduser` INT(11), IN `_amount` DOUBLE(20,0), IN `_price` DOUBLE(20,0), IN `_note` TEXT CHARSET utf8mb4, IN `_namestore` VARCHAR(255), IN `_axis_x` INT(11), IN `_axis_y` INT(11), IN `_axis_z` INT(11), IN `_id_status_type` INT(11))
BEGIN
								 Declare _idcattype int;
								 DECLARE _idstore int;
								 set _idstore = 0;
                 set _idcattype = (select idcattype from category_types where catnametype="store");
								 set _idstore = (select cat.idcategory from (select idcategory,shortname from categories WHERE idcattype = _idcattype) as cat WHERE cat.shortname=_namestore);
								 INSERT into exp_products(ordernumber, idproduct, parentidproduct, idcustomer, idrecipent, iduser, amount, price, note, idstore, axis_x, axis_y, axis_z, id_status_type) VALUES( _ordernumber, _idproduct, _parentidproduct,_idcustomer, _idrecipent, _iduser, _amount, _price, _note, _idstore, _axis_x, _axis_y, _axis_z, _id_status_type);
								 select LAST_INSERT_ID() as ordernumber;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PostByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `PostByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `PostByIdProcedure`(IN `id_post` INT(11))
BEGIN
                SELECT p.title,p.body,p.slug,p.id_post_type as idposttype,(select nametype from post_types WHERE idposttype = p.id_post_type) as nameposttype,p.idcategory,(SELECT namecat FROM categories WHERE idcategory = p.idcategory) as namecate FROM posts as p WHERE p.idpost=id_post;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PostHasFileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `PostHasFileProcedure`;
delimiter ;;
CREATE PROCEDURE `PostHasFileProcedure`(IN `_idpost` INT(11), IN `_idfile` INT(11))
BEGIN
                INSERT INTO post_has_files(idpost,idfile) VALUES (_idpost,_idfile);
                SELECT LAST_INSERT_ID() as idposthasfile;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ProductBelongCategoryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ProductBelongCategoryProcedure`;
delimiter ;;
CREATE PROCEDURE `ProductBelongCategoryProcedure`(IN `_list_idcat` TEXT CHARSET utf8mb4)
BEGIN
                SET @s = CONCAT("INSERT INTO catehasproduct (idproduct,idcategory) VALUES ", _list_idcat); 
                PREPARE stmt1 FROM @s; 
                EXECUTE stmt1; 
                DEALLOCATE PREPARE stmt1;             
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ProducthasFile
-- ----------------------------
DROP PROCEDURE IF EXISTS `ProducthasFile`;
delimiter ;;
CREATE PROCEDURE `ProducthasFile`(IN `_list_file` TEXT, IN `_sign` VARCHAR(10), IN `_hastype` VARCHAR(255), IN `_idproduct` INT(11))
BEGIN
                DECLARE x INT;
								DECLARE _idfile INT;
                DECLARE str_item VARCHAR(255);
                DECLARE item VARCHAR(255);
                DECLARE result VARCHAR(255);
                DECLARE rs_split VARCHAR(255); 
                SET x = LENGTH(_list_file);
                set result = "";
                set str_item ="";
                SET item = "";
								set _idfile = 0;
                set rs_split = _list_file;
                WHILE x  > 0 DO
                set item = SUBSTRING_INDEX(rs_split, _sign, -1);
                set rs_split = SUBSTRING(_list_file, 1, (LENGTH(rs_split)-LENGTH(item)-1));
                set str_item = CONCAT("(",item,")");
                call InsertFilePath(str_item, _idfile);
								INSERT into producthasfile(idproduct,hastype,idfile) VALUES (_idproduct,_hastype,_idfile);
                set x = LENGTH(rs_split);
                END WHILE;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ProducthasFileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ProducthasFileProcedure`;
delimiter ;;
CREATE PROCEDURE `ProducthasFileProcedure`(IN `_urlfile` VARCHAR(255), IN `_name_origin` VARCHAR(255), IN `_namefile` VARCHAR(255), IN `_typefile` VARCHAR(255), IN `_idproduct` INT(11), IN `_hastype` VARCHAR(255))
BEGIN
               DECLARE _idfile INT(11);
               INSERT INTO files(urlfile,name_origin,namefile, typefile) VALUES (_urlfile,_name_origin, _namefile, _typefile);
               set _idfile = LAST_INSERT_ID();
               INSERT INTO producthasfile(idproduct,hastype,idfile) VALUES (_idproduct,_hastype,_idfile);
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for RelateProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `RelateProductProcedure`;
delimiter ;;
CREATE PROCEDURE `RelateProductProcedure`()
BEGIN
                select info.created_at,info.idproduct,info.namepro,info.short_desc, info.price_import, info.price, info.price_sale_origin, info.amount,info.urlfile from (select dtail.created_at,dtail.idproduct,dtail.namepro,dtail.short_desc, dtail.price_import, dtail.price, dtail.price_sale_origin, dtail.amount,dtail.urlfile,dtail.author, (select namecat from categories WHERE idcategory = prohas.idcategory) as namecat from ( select detail.created_at,detail.idproduct,detail.namepro,detail.short_desc, detail.price_import, detail.price, detail.price_sale_origin, detail.amount,f.urlfile,(select `name` from users WHERE id = detail.iduser) as author from (select p.created_at,p.idproduct,p.namepro,p.short_desc, imp.price_import, imp.price, imp.price_sale_origin, imp.amount,imp.iduser,(select idfile from producthasfile WHERE idproduct = p.idproduct and hastype='thumbnail' ORDER BY idproducthasfile DESC LIMIT 1) as idfile  FROM (select pr.* from products as pr left join cross_product as c on pr.idproduct = c.idproduct_cross where c.idcrossproduct is NULL) as p JOIN imp_products as imp on p.idproduct = imp.idproduct) as detail join files as f on detail.idfile = f.idfile) as dtail JOIN (select * from catehasproduct where idcategory > 0) as prohas on prohas.idproduct = dtail.idproduct) as info limit 8; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelAllColorProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelAllColorProcedure`;
delimiter ;;
CREATE PROCEDURE `SelAllColorProcedure`()
BEGIN
                select idcolor,value from color; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelAllSizeProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelAllSizeProcedure`;
delimiter ;;
CREATE PROCEDURE `SelAllSizeProcedure`()
BEGIN
                select idsize,value from size; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelCategorybyIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelCategorybyIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelCategorybyIdProcedure`(IN `idcat` INT(11))
BEGIN
                SELECT c1.idcategory, c1.namecat, c1.idcattype, (select catnametype from category_types where idcattype=c1.idcattype) as catnametype, c1.idparent, c2.namecat as parent from (select * from categories where idcategory=idcat) as c1 left Join categories as c2 on c1.idparent = c2.idcategory;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelCateSelectedProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelCateSelectedProcedure`;
delimiter ;;
CREATE PROCEDURE `SelCateSelectedProcedure`(IN `_idproduct` INT(11))
BEGIN
                SELECT c.idcateproduct,c.idcategory from catehasproduct as c where c.idproduct = _idproduct;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelCityTownProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelCityTownProcedure`;
delimiter ;;
CREATE PROCEDURE `SelCityTownProcedure`()
BEGIN
                 select idcitytown, namecitytown from city_town; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelCrossProductByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelCrossProductByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelCrossProductByIdProcedure`(IN `_idproduct` INT(11))
BEGIN
                select pd.*,f.urlfile from (select pro.idproduct,pro.namepro,(select idfile from producthasfile WHERE hastype="thumbnail" and idproduct = pro.idproduct ORDER BY idproducthasfile desc LIMIT 1) as idfile, pro.idsize,(select `value` from size where idsize = pro.idsize) as size,pro.idcolor,(select `value` from color where idcolor = pro.idcolor) as color,imp.price,imp.amount from (select p.* from (SELECT idproduct_cross FROM cross_product WHERE idproduct=_idproduct) as crp left join products as p on p.idproduct = crp.idproduct_cross) as pro join imp_products as imp on pro.idproduct = imp.idproduct) as pd join files f on pd.idfile = f.idfile;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelDepartmentByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelDepartmentByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelDepartmentByIdProcedure`(IN `_iddepart` INT(11))
BEGIN
                SELECT c1.iddepart, c1.namedepart, c1.idparent, c2.namedepart as parent from (select * from departments where iddepart=_iddepart) as c1 left Join departments as c2 on c1.idparent = c2.iddepart;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelDicstrictProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelDicstrictProcedure`;
delimiter ;;
CREATE PROCEDURE `SelDicstrictProcedure`(IN `_idcitytown` INT(11))
BEGIN
                 select iddistrict,namedist from district where idcitytown =_idcitytown; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelectProfileByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelectProfileByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelectProfileByIdProcedure`(IN `_idprofile` INT)
BEGIN
	select * from `profile` WHERE idprofile=_idprofile;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelectProfileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelectProfileProcedure`;
delimiter ;;
CREATE PROCEDURE `SelectProfileProcedure`(IN `_iduser` INT(11))
BEGIN
                select u.*,p.* from (select id,email from users where id = _iduser) as u JOIN profile as p on u.id = p.iduser;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelGalleryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelGalleryProcedure`;
delimiter ;;
CREATE PROCEDURE `SelGalleryProcedure`(IN `_idproduct` INT(11), IN `_hastype` VARCHAR(255))
BEGIN
                select pf.idproducthasfile,f.idfile,f.urlfile from (SELECT idproducthasfile,idfile from producthasfile  where idproduct = _idproduct and hastype = _hastype and status_file='1') as pf join files as f on pf.idfile = f.idfile;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SellistcategorybyidProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SellistcategorybyidProcedure`;
delimiter ;;
CREATE PROCEDURE `SellistcategorybyidProcedure`(IN `_idcat` INT(11))
BEGIN
     SELECT idcategory, namecat from categories where idparent = _idcat;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelListDepartmentByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelListDepartmentByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelListDepartmentByIdProcedure`(IN `_iddepart` INT(11))
BEGIN
                SELECT c1.iddepart, c1.namedepart from departments as c1 where c1.idparent = _iddepart;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelParentCrossProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelParentCrossProductProcedure`;
delimiter ;;
CREATE PROCEDURE `SelParentCrossProductProcedure`(IN `_idproduct` INT(11))
BEGIN
                 select idproduct from cross_product where idproduct_cross = _idproduct;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelProductByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelProductByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelProductByIdProcedure`(IN `_idproduct` INT(11))
BEGIN
                DECLARE id_thumbnail int;
								declare url_thumbnail varchar(255);
								set id_thumbnail =  (SELECT idfile from producthasfile WHERE idproduct=_idproduct and hastype='thumbnail' ORDER BY idproducthasfile DESC LIMIT 1);
								set url_thumbnail = (SELECT urlfile FROM files where idfile = id_thumbnail);
								select p.namepro,p.slug,p.short_desc,p.description,p.idsize,p.idcolor,p.id_post_type,p.created_at as created_pro,p.updated_at as updated_pro,imp.*,id_thumbnail, url_thumbnail from (select * FROM products WHERE idproduct=_idproduct) as p join (SELECT * from imp_products where idproduct=_idproduct ORDER BY idimp DESC LIMIT 1) as imp on p.idproduct = imp.idproduct;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelRowCategoryByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelRowCategoryByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `SelRowCategoryByIdProcedure`(IN `_idcategory` INT(11))
BEGIN
                SELECT idcategory, namecat from categories where idcategory = _idcategory;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelSexProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelSexProcedure`;
delimiter ;;
CREATE PROCEDURE `SelSexProcedure`()
BEGIN
                 select idsex, namesex from sex; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for SelToppingProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `SelToppingProcedure`;
delimiter ;;
CREATE PROCEDURE `SelToppingProcedure`(IN `_topping` VARCHAR(255))
BEGIN
                 declare _idcategory varchar(255);
                 set _idcategory = (select idcategory FROM categories WHERE shortname=_topping limit 1);
								 IF (_idcategory > 0) THEN
											BEGIN
												select protop.idproduct,protop.namepro,protop.price,protop.amount,(SELECT urlfile from files where idfile = protop.idfile) as url_thumbnail from (select pr.idproduct,(select idfile from producthasfile WHERE idproduct = pr.idproduct and hastype="thumbnail" ORDER BY idproducthasfile DESC LIMIT 1) as idfile,pr.namepro,imp.price,imp.amount from (select p.* from (select idproduct from catehasproduct where idcategory = _idcategory) as catep JOIN products as p on catep.idproduct = p.idproduct) as pr JOIN imp_products as imp on pr.idproduct = imp.idproduct) as protop;
											END;
									END IF;          
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ShortTotalProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `ShortTotalProcedure`;
delimiter ;;
CREATE PROCEDURE `ShortTotalProcedure`(IN `_ordernumber` INT(11))
BEGIN
               select sum(p.amount * p.price) as total from exp_products as p where ordernumber = _ordernumber;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for split_string
-- ----------------------------
DROP PROCEDURE IF EXISTS `split_string`;
delimiter ;;
CREATE PROCEDURE `split_string`(IN `string_split` VARCHAR(255), IN `_idextend` VARCHAR(255), IN `_sign` VARCHAR(10), OUT `outresult` VARCHAR(255))
BEGIN
		DECLARE x INT;
		DECLARE str_item VARCHAR(255);
		DECLARE item VARCHAR(255);
		DECLARE result VARCHAR(255);
		DECLARE rs_split VARCHAR(255); 
		SET x = LENGTH(string_split);
		set result = "";
		set str_item ="";
		SET item = "";
		set rs_split = string_split;
		WHILE x  > 0 DO
		set item = SUBSTRING_INDEX(rs_split,_sign, -1);
		set rs_split = SUBSTRING(string_split, 1, (LENGTH(rs_split)-LENGTH(item)-1));
		set str_item = CONCAT("(",_idextend,",", item,")");
		set result = CONCAT(result,",", str_item);
		set x = LENGTH(rs_split);
		END WHILE;
		set outresult = SUBSTRING(result,2); 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for TrashGelleryProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `TrashGelleryProcedure`;
delimiter ;;
CREATE PROCEDURE `TrashGelleryProcedure`(IN `_idproducthasfile` INT(11))
BEGIN
                update producthasfile set status_file = 0 where idproducthasfile = _idproducthasfile; 
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateCatehasproProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateCatehasproProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateCatehasproProcedure`(IN `_idcateproduct` INT(11))
BEGIN
                update catehasproduct set idcategory = 0 where idcateproduct = _idcateproduct;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateImportProductProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateImportProductProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateImportProductProcedure`(IN `_idimp` INT(11), IN `_idcustomer` INT(11), IN `_iduser` INT(11), IN `_amount` DOUBLE(11,2), IN `_price_import` DOUBLE(20,0), IN `_price` DOUBLE(20,0), IN `_price_sale_origin` DOUBLE(20,0), IN `_note` TEXT, IN `_idstore` INT(11), IN `_axis_x` INT(11), IN `_axis_y` INT(11), IN `_axis_z` INT(11), IN `_id_status_type` INT(11))
BEGIN
                update imp_products set idcustomer=_idcustomer, iduser = _iduser, amount = _amount, price_import = _price_import,price = _price, price_sale_origin = _price_sale_origin,note = _note, idstore = _idstore, axis_x = _axis_x, axis_y = _axis_y, axis_z = _axis_z, id_status_type = _id_status_type where idimp = _idimp;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateImppostByIdProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateImppostByIdProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateImppostByIdProcedure`(IN `id_imp_post` INT(11), IN `id_post` INT(11), IN `id_category` INT(11), IN `id_posttype` INT(11), IN `id_statustype` INT(11), IN `id_user_imp` INT(11))
if (id_imp_post > 0 )  then
                    update impposts set idpost=id_post,idcategory=id_category,id_post_type=id_posttype,id_status_type = id_statustype,iduser_imp = id_user_imp
                    where idimppost = id_imp_post;
                else
                    insert into impposts(idpost,idcategory,id_post_type,id_status_type,iduser_imp) values(id_post,id_category,id_posttype,id_statustype,id_user_imp);
                end if
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateMenuHasCateProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateMenuHasCateProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateMenuHasCateProcedure`(IN _idmenuhascate int(11), IN _idmenu int(11),IN _idcategory int(11), IN _idparent int(11), IN _depth int(11), IN _reorder int(11), IN _trash int(11))
BEGIN
               update menu_has_cate set idmenu=_idmenu, idcategory = _idcategory, idparent = _idparent, depth = _depth, reorder = _reorder, trash = _trash where idmenuhascate=_idmenuhascate;
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateMenuItemByIdhasProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateMenuItemByIdhasProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateMenuItemByIdhasProcedure`(IN _str_query varchar(255))
BEGIN
                SET @sqlv=_str_query;
                PREPARE stmt FROM @sqlv;
                EXECUTE stmt;
                DEALLOCATE PREPARE stmt;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateOrderNumberProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateOrderNumberProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateOrderNumberProcedure`(IN `_ordernumber` INT(11))
BEGIN
                 update exp_products set ordernumber = _ordernumber where idexp = _ordernumber;  
            END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateProfileProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateProfileProcedure`;
delimiter ;;
CREATE PROCEDURE `UpdateProfileProcedure`(IN `_idprofile` INT, IN `_firstname` VARCHAR(255) CHARSET utf8mb4, IN `_lastname` VARCHAR(255) CHARSET utf8mb4, IN `_middlename` VARCHAR(255) CHARSET utf8mb4, IN `_idsex` INT, IN `_birthday` DATETIME, IN `_address` VARCHAR(255) CHARSET utf8mb4, IN `_mobile` VARCHAR(255) CHARSET utf8mb4, IN `_idcitytown` INT, IN `_iddistrict` INT)
BEGIN
	update `profile` set firstname = _firstname, lastname=_lastname, middlename=_middlename, idsex=_idsex, birthday = _birthday, address=_address, mobile=_mobile, idcitytown=_idcitytown, iddistrict=_iddistrict where idprofile = _idprofile;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UploadAvatarProcedure
-- ----------------------------
DROP PROCEDURE IF EXISTS `UploadAvatarProcedure`;
delimiter ;;
CREATE PROCEDURE `UploadAvatarProcedure`(IN `_idprofile` INT, IN `_url_avatar` VARCHAR(255))
BEGIN
                update `profile` set url_avatar = _url_avatar where idprofile=_idprofile;
            END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
