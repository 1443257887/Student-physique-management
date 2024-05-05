/*
 Navicat Premium Data Transfer

 Source Server         : @localhost
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : stusys

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 04/05/2024 02:18:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for stu
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu`  (
  `id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `height(cm)` double NOT NULL,
  `weight(kg)` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu
-- ----------------------------
INSERT INTO `stu` VALUES ('2210121252', '曹缙', 180, 72);
INSERT INTO `stu` VALUES ('2210121253', '陈慈', 180, 74);
INSERT INTO `stu` VALUES ('2210121255', '郭帅', 169, 60);
INSERT INTO `stu` VALUES ('2210121257', '赵贝贝', 160, 45);
INSERT INTO `stu` VALUES ('2210121260', '曹缙', 160, 45);
INSERT INTO `stu` VALUES ('2210121261', '赵贝贝', 160, 45);
INSERT INTO `stu` VALUES ('2210121285', '冀鹏铭', 180, 72);

SET FOREIGN_KEY_CHECKS = 1;
