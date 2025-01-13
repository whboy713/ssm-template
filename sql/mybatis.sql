/*
 Navicat Premium Dump SQL

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : localhost:3306
 Source Schema         : mybatis

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 14/01/2025 00:02:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` char(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
BEGIN;
INSERT INTO `t_customer` (`customer_id`, `customer_name`) VALUES (1, 'c01');
COMMIT;

-- ----------------------------
-- Table structure for t_emp
-- ----------------------------
DROP TABLE IF EXISTS `t_emp`;
CREATE TABLE `t_emp` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_name` char(100) DEFAULT NULL,
  `emp_salary` double(10,5) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_emp
-- ----------------------------
BEGIN;
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (1, 'tom', 200.33000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (2, '2', 111.00000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (3, '33', 333.00000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (4, '44', 44444.00000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (5, '44', 555.00000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (216, 'tomA', 2000.33000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (217, 'tomB', 400.33000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (218, 'tomC', 500.33000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (219, 'tomD', 600.33000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (220, 'tomE', 700.33000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (221, 'tomF', 800.33000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (222, 'tomG', 900.33000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (223, 'tomH', 9000.33000);
INSERT INTO `t_emp` (`emp_id`, `emp_name`, `emp_salary`) VALUES (224, 'tomI', 4070.33000);
COMMIT;

-- ----------------------------
-- Table structure for t_inner
-- ----------------------------
DROP TABLE IF EXISTS `t_inner`;
CREATE TABLE `t_inner` (
  `t_id` int NOT NULL,
  `s_id` int NOT NULL,
  PRIMARY KEY (`t_id`,`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_inner
-- ----------------------------
BEGIN;
INSERT INTO `t_inner` (`t_id`, `s_id`) VALUES (1, 1);
INSERT INTO `t_inner` (`t_id`, `s_id`) VALUES (1, 3);
INSERT INTO `t_inner` (`t_id`, `s_id`) VALUES (2, 2);
INSERT INTO `t_inner` (`t_id`, `s_id`) VALUES (3, 1);
INSERT INTO `t_inner` (`t_id`, `s_id`) VALUES (3, 3);
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_name` char(100) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order
-- ----------------------------
BEGIN;
INSERT INTO `t_order` (`order_id`, `order_name`, `customer_id`) VALUES (1, 'o1', 1);
INSERT INTO `t_order` (`order_id`, `order_name`, `customer_id`) VALUES (2, 'o2', 1);
INSERT INTO `t_order` (`order_id`, `order_name`, `customer_id`) VALUES (3, 'o3', 1);
COMMIT;

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `s_id` int NOT NULL,
  `s_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_student
-- ----------------------------
BEGIN;
INSERT INTO `t_student` (`s_id`, `s_name`) VALUES (1, '小明');
INSERT INTO `t_student` (`s_id`, `s_name`) VALUES (2, '小红');
INSERT INTO `t_student` (`s_id`, `s_name`) VALUES (3, '小刚');
COMMIT;

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `t_id` int NOT NULL,
  `t_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
BEGIN;
INSERT INTO `t_teacher` (`t_id`, `t_name`) VALUES (1, '张三');
INSERT INTO `t_teacher` (`t_id`, `t_name`) VALUES (2, '李四');
INSERT INTO `t_teacher` (`t_id`, `t_name`) VALUES (3, '王五');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
