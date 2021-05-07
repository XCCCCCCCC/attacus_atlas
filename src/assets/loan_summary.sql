/*
 Navicat MySQL Data Transfer

 Source Server         : 103.73.162.156
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 103.73.162.156:3306
 Source Schema         : loan

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 07/05/2021 17:42:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for loan_summary
-- ----------------------------
DROP TABLE IF EXISTS `loan_summary`;
CREATE TABLE `loan_summary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loan_type` varchar(30) NOT NULL COMMENT '贷款类型',
  `loan_name` varchar(30) NOT NULL COMMENT '贷款机构名称',
  `nation` varchar(100) NOT NULL COMMENT '国籍',
  `age` varchar(100) DEFAULT NULL COMMENT '年龄',
  `loan_limit` varchar(100) DEFAULT NULL COMMENT '贷款额度',
  `loan_interest` varchar(100) DEFAULT NULL COMMENT '贷款利息',
  `repayment_method` varchar(100) DEFAULT NULL COMMENT '还款方式',
  `query_times` varchar(100) DEFAULT NULL COMMENT '查询次数',
  `residence` varchar(100) DEFAULT NULL COMMENT '居住地',
  `repayment_term` varchar(100) DEFAULT NULL COMMENT '期限',
  `material` varchar(1000) DEFAULT NULL COMMENT '需要材料',
  `credit_requirements` varchar(1000) DEFAULT NULL COMMENT '征信要求',
  `prepayment` varchar(1000) DEFAULT NULL COMMENT '提前还款',
  `incoming_requirements` varchar(1000) DEFAULT NULL COMMENT '进件要求',
  `application_process` varchar(1000) DEFAULT NULL COMMENT '申请流程',
  `quota_algorithm` varchar(1000) DEFAULT NULL COMMENT '额度算法',
  `debt_algorithm` varchar(1000) DEFAULT NULL COMMENT '负债算法',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
