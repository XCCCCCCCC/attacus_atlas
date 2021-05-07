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

 Date: 07/05/2021 11:25:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for loan_detail
-- ----------------------------
DROP TABLE IF EXISTS `loan_detail`;
CREATE TABLE `loan_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loan_type` varchar(30) DEFAULT NULL COMMENT '贷款类型',
  `loan_name` varchar(30) DEFAULT NULL COMMENT '贷款机构名称',
  `low_age` int(11) DEFAULT NULL COMMENT '最小年龄',
  `high_age` int(11) DEFAULT NULL COMMENT '最大年龄',
  `low_loan_limit` int(11) DEFAULT NULL COMMENT '最低贷款额度',
  `high_loan_limit` int(11) DEFAULT NULL COMMENT '最高贷款额度',
  `work_accumulation_fund` double DEFAULT NULL COMMENT '上班公积金',
  `work_social_security` double DEFAULT NULL COMMENT '上班社保',
  `work_salary` double DEFAULT NULL COMMENT '上班打卡工资',
  `work_payment_period` double DEFAULT NULL COMMENT '公积金缴纳时长',
  `work_company_nature` varchar(100) DEFAULT NULL COMMENT '上班公司性质',
  `business_license` varchar(100) DEFAULT NULL COMMENT '做生意营业执照',
  `business_position` varchar(100) DEFAULT NULL COMMENT '做生意职位',
  `business_hour` double DEFAULT NULL COMMENT '做生意经营时长',
  `business_address` varchar(1000) DEFAULT NULL COMMENT '做生意经营地址',
  `business_industry` varchar(100) DEFAULT NULL COMMENT '做生意经营行业',
  `business_flow` double DEFAULT NULL COMMENT '做生意流水',
  `business_tax` double DEFAULT NULL COMMENT '做生意税',
  `house_local` varchar(10) DEFAULT NULL COMMENT '房屋是否本地',
  `house_region` varchar(100) DEFAULT NULL COMMENT '房屋区域',
  `house_buy_method` varchar(100) DEFAULT NULL COMMENT '房屋购买方式',
  `house_value` double DEFAULT NULL COMMENT '房屋市值(单位为万)',
  `house_monthly_payment` double DEFAULT NULL COMMENT '房屋月供(单位为元)',
  `house_payment_period` int(11) DEFAULT NULL COMMENT '房屋还款期数(单位为月)',
  `house_age` double DEFAULT NULL COMMENT '房龄(单位为年)',
  `house_interest_num` int(11) DEFAULT NULL COMMENT '房屋权利人数',
  `house_interest_age` int(11) DEFAULT NULL COMMENT '房屋权利人年龄',
  `house_is_mortgage` int(11) DEFAULT NULL COMMENT '房屋是否抵押(无/一押)',
  `car_local` varchar(10) DEFAULT NULL COMMENT '车是否本地',
  `car_license` varchar(10) DEFAULT NULL COMMENT '车牌照',
  `car_buy_method` varchar(10) DEFAULT NULL COMMENT '车购买方式',
  `car_value` double DEFAULT NULL COMMENT '车辆市值(单位为万)',
  `car_monthly_payment` varchar(10) DEFAULT NULL COMMENT '车月供(单位为元)',
  `car_payment_period` varchar(10) DEFAULT NULL COMMENT '车还款期数(单位为月)',
  `car_age` int(11) DEFAULT NULL COMMENT '车龄(单位为年)',
  `car_use_km` double DEFAULT NULL COMMENT '车龄(单位为公里)',
  `policy_holder` varchar(30) DEFAULT NULL COMMENT '保单投保人',
  `policy_insurance_company` varchar(50) DEFAULT NULL COMMENT '保单保险公司',
  `policy_payment_method` varchar(30) DEFAULT NULL COMMENT '保单缴费方式',
  `policy_year_cost` double DEFAULT NULL COMMENT '保单年费(单位为元)',
  `policy_payemnt_period` double DEFAULT NULL COMMENT '保单缴费时长(单位为月)',
  `credit_is_delay` varchar(10) DEFAULT NULL COMMENT '征信是否当前有逾期(是/否)',
  `credit_three_month_delay_times` int(11) DEFAULT NULL COMMENT '征信近3月逾期次',
  `credit_six_month_delay_times` int(11) DEFAULT NULL COMMENT '征信近6月逾期次',
  `credit_year_delay_times` int(11) DEFAULT NULL COMMENT '征信近12月逾期次',
  `credit_two_year_delay_times` int(11) DEFAULT NULL COMMENT '征信近24月逾期次',
  `credit_series_three_month_delay_times` int(11) DEFAULT NULL COMMENT '征信近3月连续逾期次',
  `credit_series_six_month_delay_times` int(11) DEFAULT NULL COMMENT '征信近6月连续逾期次',
  `credit_series_year_delay_times` int(11) DEFAULT NULL COMMENT '征信近12月连续逾期次',
  `credit_series_two_year_delay_times` int(11) DEFAULT NULL COMMENT '征信近24月连续逾期次',
  `debt_credit_amount` double DEFAULT NULL COMMENT '负债信用卡总额',
  `debt_credit_used_amount` double DEFAULT NULL COMMENT '负债已用额度',
  `debt_loan_times` int(11) DEFAULT NULL COMMENT '负债贷款笔数',
  `debt_loan_amount` double DEFAULT NULL COMMENT '负债贷款总额',
  `debt_online_loan_times` int(11) DEFAULT NULL COMMENT '负债网贷笔数',
  `debt_online_loan_amount` double DEFAULT NULL COMMENT '负债网贷总额',
  `debt_three_month_query_times` int(11) DEFAULT NULL COMMENT '负债近3月查询',
  `debt_six_month_query_times` int(11) DEFAULT NULL COMMENT '负债近6月查询',
  `is_work` varchar(30) DEFAULT NULL,
  `is_business` varchar(30) DEFAULT NULL,
  `is_house` varchar(30) DEFAULT NULL,
  `is_car` varchar(30) DEFAULT NULL,
  `is_policy` varchar(30) DEFAULT NULL,
  `is_credit` varchar(30) DEFAULT NULL,
  `is_debt` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
