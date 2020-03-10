/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1-thbl123
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : 127.0.0.1:3306
 Source Schema         : echart

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 29/03/2019 09:30:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for viz_tlb_daily_by_branch
-- ----------------------------
DROP TABLE IF EXISTS `viz_tlb_daily_by_branch`;
CREATE TABLE `viz_tlb_daily_by_branch`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `data_dt` date NULL DEFAULT NULL COMMENT '统计日期',
  `prod_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `branch_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分公司',
  `in_hushu` int(11) NULL DEFAULT NULL COMMENT '进件户数',
  `credit_hushu` int(11) NULL DEFAULT NULL COMMENT '授信户数',
  `credit_amount` decimal(15, 2) NULL DEFAULT NULL COMMENT '授信金额',
  `use_success_amount` decimal(15, 2) NULL DEFAULT NULL COMMENT '成功支用金额',
  `create_date` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 310 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通联宝统计日报-按分公司' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of viz_tlb_daily_by_branch
-- ----------------------------
INSERT INTO `viz_tlb_daily_by_branch` VALUES (1, '2019-03-13', '富宝贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (2, '2019-03-13', '富宝贷', '云南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (3, '2019-03-13', '富宝贷', '内蒙古分公司', 4, 2, 160000.00, 80000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (4, '2019-03-13', '富宝贷', '四川分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (5, '2019-03-13', '富宝贷', '安徽分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (6, '2019-03-13', '富宝贷', '山东分公司', 1, 1, 80000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (7, '2019-03-13', '富宝贷', '广东分公司', 1, 1, 80000.00, 80000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (8, '2019-03-13', '富宝贷', '广西分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (9, '2019-03-13', '富宝贷', '新疆分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (10, '2019-03-13', '富宝贷', '河北分公司', 2, 1, 120000.00, 120000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (11, '2019-03-13', '富宝贷', '河南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (12, '2019-03-13', '富宝贷', '深圳分公司', 1, 1, 80000.00, 80000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (13, '2019-03-13', '富宝贷', '湖北分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (14, '2019-03-13', '富宝贷', '湖南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (15, '2019-03-13', '富宝贷', '福建分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (16, '2019-03-13', '富宝贷', '贵州分公司', 3, 1, 66000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (17, '2019-03-13', '富宝贷', '青岛分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (18, '2019-03-13', '张家口POS贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (19, '2019-03-13', '张家口POS贷', '内蒙古分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (20, '2019-03-13', '张家口POS贷', '安徽分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (21, '2019-03-13', '张家口POS贷', '广东分公司', 1, 0, 0.00, 50000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (22, '2019-03-13', '张家口POS贷', '广西分公司', 2, 0, 0.00, 245700.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (23, '2019-03-13', '张家口POS贷', '新疆分公司', 1, 0, 81200.00, 81900.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (24, '2019-03-13', '张家口POS贷', '河南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (25, '2019-03-13', '张家口POS贷', '陕西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (26, '2019-03-13', '张家口POS贷', '黑龙江分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (27, '2019-03-19', '好享贷', '山西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (28, '2019-03-19', '好享贷', '江西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (29, '2019-03-19', '好享贷', '河北分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (30, '2019-03-19', '好享贷', '重庆分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (31, '2019-03-19', '富宝贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (32, '2019-03-19', '富宝贷', '内蒙古分公司', 9, 2, 91000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (33, '2019-03-19', '富宝贷', '厦门分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (34, '2019-03-19', '富宝贷', '四川分公司', 2, 1, 26000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (35, '2019-03-19', '富宝贷', '宁波分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (36, '2019-03-19', '富宝贷', '安徽分公司', 5, 1, 120000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (37, '2019-03-19', '富宝贷', '山东分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (38, '2019-03-19', '富宝贷', '山西分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (39, '2019-03-19', '富宝贷', '广东分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (40, '2019-03-19', '富宝贷', '广西分公司', 8, 2, 91000.00, 91000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (41, '2019-03-19', '富宝贷', '江西分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (42, '2019-03-19', '富宝贷', '河北分公司', 6, 2, 240000.00, 70000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (43, '2019-03-19', '富宝贷', '河南分公司', 5, 2, 106000.00, 80000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (44, '2019-03-19', '富宝贷', '湖北分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (45, '2019-03-19', '富宝贷', '湖南分公司', 1, 1, 36000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (46, '2019-03-19', '富宝贷', '甘肃分公司', 5, 1, 80000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (47, '2019-03-19', '富宝贷', '福建分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (48, '2019-03-19', '富宝贷', '贵州分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (49, '2019-03-19', '富宝贷', '青岛分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (50, '2019-03-19', '富宝贷', '黑龙江分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (51, '2019-03-19', '张家口POS贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (52, '2019-03-19', '张家口POS贷', '内蒙古分公司', 3, 0, 0.00, 17000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (53, '2019-03-19', '张家口POS贷', '四川分公司', 0, 0, 0.00, 28800.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (54, '2019-03-19', '张家口POS贷', '安徽分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (55, '2019-03-19', '张家口POS贷', '山东分公司', 0, 0, 0.00, 72300.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (56, '2019-03-19', '张家口POS贷', '山西分公司', 0, 0, 0.00, 25000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (57, '2019-03-19', '张家口POS贷', '广西分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (58, '2019-03-19', '张家口POS贷', '江西分公司', 0, 0, 0.00, 6600.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (59, '2019-03-19', '张家口POS贷', '河北分公司', 0, 0, 0.00, 309000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (60, '2019-03-19', '张家口POS贷', '河南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (61, '2019-03-19', '张家口POS贷', '湖南分公司', 0, 0, 0.00, 65000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (62, '2019-03-19', '张家口POS贷', '甘肃分公司', 0, 0, 0.00, 6000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (63, '2019-03-19', '张家口POS贷', '陕西分公司', 1, 0, 0.00, 95100.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (64, '2019-03-19', '我来贷', '\\N', 0, 0, 0.00, 112400.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (65, '2019-03-19', '我来贷', '云南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (66, '2019-03-19', '我来贷', '内蒙古分公司', 3, 1, 22000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (67, '2019-03-19', '我来贷', '厦门分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (68, '2019-03-19', '我来贷', '吉林分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (69, '2019-03-19', '我来贷', '山东分公司', 1, 0, 0.00, 21000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (70, '2019-03-19', '我来贷', '山西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (71, '2019-03-19', '我来贷', '广东分公司', 1, 1, 21000.00, 21000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (72, '2019-03-19', '我来贷', '广西分公司', 2, 1, 24000.00, 35300.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (73, '2019-03-19', '我来贷', '江西分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (74, '2019-03-19', '我来贷', '河北分公司', 2, 0, 0.00, 14500.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (75, '2019-03-19', '我来贷', '河南分公司', 2, 1, 50000.00, 50000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (76, '2019-03-19', '我来贷', '湖南分公司', 1, 0, 0.00, 7800.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (77, '2019-03-19', '我来贷', '甘肃分公司', 5, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (78, '2019-03-21', '张家口POS贷', '青岛分公司', 0, 0, 0.00, 40000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (79, '2019-03-21', '我来贷', '\\N', 0, 0, 0.00, 59600.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (80, '2019-03-21', '我来贷', '云南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (81, '2019-03-21', '我来贷', '四川分公司', 1, 1, 36000.00, 36000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (82, '2019-03-21', '我来贷', '广西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (83, '2019-03-21', '我来贷', '江苏分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (84, '2019-03-21', '我来贷', '河南分公司', 2, 2, 137000.00, 135000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (85, '2019-03-21', '我来贷', '甘肃分公司', 2, 0, 0.00, 37400.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (86, '2019-03-21', '我来贷', '贵州分公司', 2, 0, 0.00, 43000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (87, '2019-03-21', '我来贷', '陕西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (88, '2019-03-21', '甘肃银行-通联宝商贷e', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (89, '2019-03-24', '富宝贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (90, '2019-03-24', '富宝贷', '内蒙古分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (91, '2019-03-24', '富宝贷', '四川分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (92, '2019-03-24', '富宝贷', '安徽分公司', 3, 1, 140000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (93, '2019-03-24', '富宝贷', '山西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (94, '2019-03-24', '富宝贷', '广东分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (95, '2019-03-24', '富宝贷', '广西分公司', 1, 1, 13000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (96, '2019-03-24', '富宝贷', '河北分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (97, '2019-03-24', '富宝贷', '河南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (98, '2019-03-24', '张家口POS贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (99, '2019-03-24', '张家口POS贷', '内蒙古分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (100, '2019-03-24', '张家口POS贷', '山西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (101, '2019-03-24', '张家口POS贷', '海南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (102, '2019-03-24', '我来贷', '\\N', 0, 0, 0.00, 26000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (103, '2019-03-24', '我来贷', '内蒙古分公司', 1, 0, 0.00, 21300.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (104, '2019-03-24', '我来贷', '山西分公司', 0, 0, 0.00, 18400.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (105, '2019-03-24', '我来贷', '广西分公司', 1, 0, 0.00, 19200.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (106, '2019-03-24', '我来贷', '河北分公司', 0, 0, 0.00, 6800.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (107, '2019-03-24', '我来贷', '湖南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (108, '2019-03-24', '我来贷', '甘肃分公司', 0, 0, 0.00, 5800.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (109, '2019-03-24', '甘肃银行-通联宝商贷e', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (110, '2019-03-18', '好享贷', '广西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (111, '2019-03-18', '好享贷', '河南分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (112, '2019-03-18', '富宝贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (113, '2019-03-18', '富宝贷', '内蒙古分公司', 5, 2, 117000.00, 37000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (114, '2019-03-18', '富宝贷', '四川分公司', 2, 1, 119000.00, 40000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (115, '2019-03-18', '富宝贷', '安徽分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (116, '2019-03-18', '富宝贷', '山西分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (117, '2019-03-18', '富宝贷', '广东分公司', 1, 1, 80000.00, 80000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (118, '2019-03-18', '富宝贷', '广西分公司', 4, 1, 41000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (119, '2019-03-18', '富宝贷', '江西分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (120, '2019-03-18', '富宝贷', '河北分公司', 4, 1, 51000.00, 51000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (121, '2019-03-18', '富宝贷', '河南分公司', 3, 1, 180000.00, 180000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (122, '2019-03-18', '富宝贷', '浙江分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (123, '2019-03-18', '富宝贷', '福建分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (124, '2019-03-18', '富宝贷', '重庆分公司', 1, 1, 28000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (125, '2019-03-18', '富宝贷', '陕西分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (126, '2019-03-18', '张家口POS贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (127, '2019-03-18', '张家口POS贷', '云南分公司', 1, 0, 0.00, 12000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (128, '2019-03-18', '张家口POS贷', '内蒙古分公司', 0, 0, 0.00, 300000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (129, '2019-03-18', '张家口POS贷', '厦门分公司', 0, 0, 0.00, 200000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (130, '2019-03-18', '张家口POS贷', '四川分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (131, '2019-03-18', '张家口POS贷', '广东分公司', 1, 0, 0.00, 10000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (132, '2019-03-18', '张家口POS贷', '广西分公司', 4, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (133, '2019-03-18', '张家口POS贷', '河南分公司', 5, 1, 158000.00, 158000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (134, '2019-03-18', '张家口POS贷', '浙江分公司', 0, 0, 0.00, 100000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (135, '2019-03-18', '张家口POS贷', '湖北分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (136, '2019-03-18', '张家口POS贷', '湖南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (137, '2019-03-18', '张家口POS贷', '甘肃分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (138, '2019-03-18', '张家口POS贷', '通华资产', 0, 0, 0.00, 30000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (139, '2019-03-18', '张家口POS贷', '陕西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (140, '2019-03-18', '我来贷', '\\N', 0, 0, 0.00, 193300.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (141, '2019-03-18', '我来贷', '云南分公司', 0, 0, 0.00, 3000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (142, '2019-03-18', '我来贷', '内蒙古分公司', 1, 0, 0.00, 30000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (143, '2019-03-18', '我来贷', '山东分公司', 0, 0, 0.00, 50000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (144, '2019-03-18', '我来贷', '广西分公司', 3, 2, 61000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (145, '2019-03-18', '我来贷', '浙江分公司', 0, 0, 0.00, 4600.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (146, '2019-03-18', '我来贷', '甘肃分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (147, '2019-03-18', '我来贷', '福建分公司', 1, 1, 80000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (148, '2019-03-18', '我来贷', '辽宁分公司', 0, 0, 0.00, 20000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (149, '2019-03-18', '我来贷', '陕西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (150, '2019-03-18', '甘肃银行-通联宝商贷e', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (151, '2019-03-25', '好享贷', '山西分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (152, '2019-03-25', '好享贷', '广西分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (153, '2019-03-25', '好享贷', '河南分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (154, '2019-03-25', '好享贷', '湖南分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (155, '2019-03-25', '好享贷', '甘肃分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (156, '2019-03-25', '富宝贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (157, '2019-03-25', '富宝贷', '内蒙古分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (158, '2019-03-25', '富宝贷', '吉林分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (159, '2019-03-25', '富宝贷', '四川分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (160, '2019-03-25', '富宝贷', '安徽分公司', 1, 1, 80000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (161, '2019-03-25', '富宝贷', '山东分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (162, '2019-03-25', '富宝贷', '山西分公司', 2, 1, 23000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (163, '2019-03-25', '富宝贷', '广东分公司', 1, 1, 59000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (164, '2019-03-25', '富宝贷', '广西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (165, '2019-03-25', '富宝贷', '江苏分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (166, '2019-03-25', '富宝贷', '河北分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (167, '2019-03-25', '富宝贷', '河南分公司', 5, 1, 25000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (168, '2019-03-25', '富宝贷', '湖北分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (169, '2019-03-25', '富宝贷', '甘肃分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (170, '2019-03-25', '张家口POS贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (171, '2019-03-25', '张家口POS贷', '四川分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (172, '2019-03-25', '张家口POS贷', '天津分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (173, '2019-03-25', '张家口POS贷', '宁波分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (174, '2019-03-25', '张家口POS贷', '安徽分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (175, '2019-03-25', '张家口POS贷', '广东分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (176, '2019-03-25', '张家口POS贷', '广西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (177, '2019-03-25', '张家口POS贷', '河南分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (178, '2019-03-25', '张家口POS贷', '甘肃分公司', 1, 1, 183000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (179, '2019-03-25', '张家口POS贷', '陕西分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (180, '2019-03-25', '我来贷', '\\N', 0, 0, 0.00, 106500.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (181, '2019-03-25', '我来贷', '内蒙古分公司', 5, 1, 40000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (182, '2019-03-25', '我来贷', '吉林分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (183, '2019-03-25', '我来贷', '宁夏分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (184, '2019-03-25', '我来贷', '山东分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (185, '2019-03-25', '我来贷', '山西分公司', 0, 0, 0.00, 16500.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (186, '2019-03-25', '我来贷', '广东分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (187, '2019-03-25', '我来贷', '广西分公司', 0, 0, 0.00, 25000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (188, '2019-03-25', '我来贷', '湖北分公司', 0, 0, 0.00, 13700.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (189, '2019-03-25', '我来贷', '湖南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (190, '2019-03-25', '我来贷', '甘肃分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (191, '2019-03-25', '我来贷', '贵州分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (192, '2019-03-25', '我来贷', '青岛分公司', 1, 1, 27000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (193, '2019-03-25', '我来贷', '黑龙江分公司', 0, 0, 0.00, 17700.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (194, '2019-03-25', '甘肃银行-通联宝商贷e', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (195, '2019-03-23', '好享贷', '山西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (196, '2019-03-23', '好享贷', '甘肃分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (197, '2019-03-23', '富宝贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (198, '2019-03-23', '富宝贷', '内蒙古分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (199, '2019-03-23', '富宝贷', '安徽分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (200, '2019-03-23', '富宝贷', '山东分公司', 1, 1, 14000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (201, '2019-03-23', '富宝贷', '江西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (202, '2019-03-23', '富宝贷', '河南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (203, '2019-03-23', '富宝贷', '湖北分公司', 1, 1, 62000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (204, '2019-03-23', '富宝贷', '甘肃分公司', 1, 1, 38000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (205, '2019-03-23', '张家口POS贷', '内蒙古分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (206, '2019-03-23', '张家口POS贷', '四川分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (207, '2019-03-23', '张家口POS贷', '广东分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (208, '2019-03-23', '张家口POS贷', '河南分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (209, '2019-03-23', '张家口POS贷', '甘肃分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (210, '2019-03-23', '我来贷', '\\N', 0, 0, 0.00, 30600.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (211, '2019-03-23', '我来贷', '内蒙古分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (212, '2019-03-23', '我来贷', '安徽分公司', 2, 2, 55000.00, 35000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (213, '2019-03-23', '我来贷', '广西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (214, '2019-03-23', '我来贷', '海南分公司', 0, 0, 0.00, 1900.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (215, '2019-03-26', '好享贷', '广东分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (216, '2019-03-26', '好享贷', '湖南分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (217, '2019-03-26', '好享贷', '甘肃分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (218, '2019-03-26', '富宝贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (219, '2019-03-26', '富宝贷', '广西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (220, '2019-03-26', '富宝贷', '河北分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (221, '2019-03-26', '富宝贷', '湖北分公司', 1, 1, 62000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (222, '2019-03-26', '富宝贷', '湖南分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (223, '2019-03-26', '张家口POS贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (224, '2019-03-26', '张家口POS贷', '广西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (225, '2019-03-26', '张家口POS贷', '河南分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (226, '2019-03-26', '我来贷', '\\N', 0, 0, 0.00, 28400.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (227, '2019-03-26', '我来贷', '广东分公司', 0, 0, 0.00, 31000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (228, '2019-03-26', '我来贷', '甘肃分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (229, '2019-03-26', '我来贷', '陕西分公司', 0, 0, 0.00, 8400.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (230, '2019-03-26', '甘肃银行-通联宝商贷e', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (231, '2019-03-22', '张家口POS贷', '四川分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (232, '2019-03-22', '张家口POS贷', '河北分公司', 0, 0, 0.00, 28800.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (233, '2019-03-19', '我来贷', '福建分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (234, '2019-03-19', '我来贷', '贵州分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (235, '2019-03-19', '我来贷', '青岛分公司', 2, 1, 30000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (236, '2019-03-19', '我来贷', '黑龙江分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (237, '2019-03-19', '甘肃银行-通联宝商贷e', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (238, '2019-03-20', '好享贷', '广西分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (239, '2019-03-20', '好享贷', '甘肃分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (240, '2019-03-20', '富宝贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (241, '2019-03-20', '富宝贷', '内蒙古分公司', 6, 2, 121000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (242, '2019-03-20', '富宝贷', '吉林分公司', 2, 1, 20000.00, 127000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (243, '2019-03-20', '富宝贷', '四川分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (244, '2019-03-20', '富宝贷', '宁夏分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (245, '2019-03-20', '富宝贷', '安徽分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (246, '2019-03-20', '富宝贷', '山东分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (247, '2019-03-20', '富宝贷', '山西分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (248, '2019-03-20', '富宝贷', '广东分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (249, '2019-03-20', '富宝贷', '广西分公司', 5, 1, 140000.00, 140000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (250, '2019-03-20', '富宝贷', '新疆分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (251, '2019-03-20', '富宝贷', '江苏分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (252, '2019-03-20', '富宝贷', '江西分公司', 1, 1, 80000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (253, '2019-03-20', '富宝贷', '河北分公司', 4, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (254, '2019-03-20', '富宝贷', '河南分公司', 1, 1, 80000.00, 80000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (255, '2019-03-20', '富宝贷', '湖南分公司', 4, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (256, '2019-03-20', '富宝贷', '甘肃分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (257, '2019-03-20', '富宝贷', '福建分公司', 1, 1, 110000.00, 30000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (258, '2019-03-20', '富宝贷', '陕西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (259, '2019-03-20', '富宝贷', '黑龙江分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (260, '2019-03-20', '张家口POS贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (261, '2019-03-20', '张家口POS贷', '内蒙古分公司', 0, 0, 0.00, 90000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (262, '2019-03-20', '张家口POS贷', '安徽分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (263, '2019-03-20', '张家口POS贷', '山东分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (264, '2019-03-20', '张家口POS贷', '江苏分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (265, '2019-03-20', '张家口POS贷', '河北分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (266, '2019-03-20', '张家口POS贷', '河南分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (267, '2019-03-20', '张家口POS贷', '浙江分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (268, '2019-03-20', '张家口POS贷', '湖南分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (269, '2019-03-20', '张家口POS贷', '通华资产', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (270, '2019-03-20', '我来贷', '\\N', 0, 0, 0.00, 330000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (271, '2019-03-20', '我来贷', '内蒙古分公司', 1, 0, 0.00, 66000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (272, '2019-03-20', '我来贷', '山东分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (273, '2019-03-20', '我来贷', '广西分公司', 0, 0, 0.00, 204000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (274, '2019-03-20', '我来贷', '海南分公司', 0, 0, 0.00, 8700.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (275, '2019-03-20', '我来贷', '甘肃分公司', 0, 0, 0.00, 63000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (276, '2019-03-20', '我来贷', '贵州分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (277, '2019-03-20', '我来贷', '辽宁分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (278, '2019-03-20', '我来贷', '重庆分公司', 0, 0, 0.00, 42000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (279, '2019-03-20', '甘肃银行-通联宝商贷e', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (280, '2019-03-21', '好享贷', '广西分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (281, '2019-03-21', '好享贷', '甘肃分公司', 2, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (282, '2019-03-21', '富宝贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (283, '2019-03-21', '富宝贷', '内蒙古分公司', 4, 2, 240000.00, 240000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (284, '2019-03-21', '富宝贷', '安徽分公司', 4, 1, 25000.00, 25000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (285, '2019-03-21', '富宝贷', '山东分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (286, '2019-03-21', '富宝贷', '广西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (287, '2019-03-21', '富宝贷', '新疆分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (288, '2019-03-21', '富宝贷', '江西分公司', 4, 2, 220000.00, 220000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (289, '2019-03-21', '富宝贷', '河北分公司', 5, 1, 80000.00, 80000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (290, '2019-03-21', '富宝贷', '河南分公司', 4, 2, 214000.00, 214000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (291, '2019-03-21', '富宝贷', '湖北分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (292, '2019-03-21', '富宝贷', '湖南分公司', 2, 1, 110000.00, 110000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (293, '2019-03-21', '富宝贷', '甘肃分公司', 2, 1, 38000.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (294, '2019-03-21', '富宝贷', '贵州分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (295, '2019-03-21', '富宝贷', '辽宁分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (296, '2019-03-21', '富宝贷', '陕西分公司', 3, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (297, '2019-03-21', '富宝贷', '青岛分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (298, '2019-03-21', '张家口POS贷', '\\N', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (299, '2019-03-21', '张家口POS贷', '云南分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (300, '2019-03-21', '张家口POS贷', '内蒙古分公司', 0, 0, 0.00, 4600.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (301, '2019-03-21', '张家口POS贷', '四川分公司', 1, 0, 0.00, 134300.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (302, '2019-03-21', '张家口POS贷', '安徽分公司', 0, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (303, '2019-03-21', '张家口POS贷', '山东分公司', 0, 0, 0.00, 250000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (304, '2019-03-21', '张家口POS贷', '江西分公司', 1, 0, 0.00, 0.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (305, '2019-03-21', '张家口POS贷', '河北分公司', 0, 0, 0.00, 299900.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (306, '2019-03-21', '张家口POS贷', '河南分公司', 1, 0, 0.00, 17200.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (307, '2019-03-21', '张家口POS贷', '湖南分公司', 1, 0, 0.00, 100000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (308, '2019-03-21', '张家口POS贷', '甘肃分公司', 0, 0, 0.00, 100000.00, '2019-03-27');
INSERT INTO `viz_tlb_daily_by_branch` VALUES (309, '2019-03-21', '张家口POS贷', '陕西分公司', 2, 0, 0.00, 0.00, '2019-03-27');

SET FOREIGN_KEY_CHECKS = 1;
