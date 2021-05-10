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

 Date: 10/05/2021 14:56:03
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
  `low_loan_limit` int(11) DEFAULT NULL COMMENT '最低贷款额度(万元)',
  `high_loan_limit` int(11) DEFAULT NULL COMMENT '最高贷款额度(万元)',
  `is_blank_roster` varchar(30) DEFAULT NULL COMMENT '是否白户(Y/N)',
  `is_know` varchar(30) DEFAULT NULL COMMENT '家人是否知道(Y/N)',
  `has_work` varchar(30) DEFAULT NULL COMMENT '是否上班(Y/N)',
  `work_accumulation_fund` double DEFAULT NULL COMMENT '上班公积金(元)',
  `work_social_security` double DEFAULT NULL COMMENT '上班社保(元)',
  `work_salary` double DEFAULT NULL COMMENT '上班打卡工资(元)',
  `work_payment_period` double DEFAULT NULL COMMENT '公积金缴纳时长(月)',
  `work_company_nature` varchar(100) DEFAULT 'q' COMMENT '上班公司性质',
  `has_business` varchar(30) DEFAULT NULL COMMENT '是否做生意(Y/N)',
  `business_license` varchar(100) DEFAULT NULL COMMENT '做生意营业执照',
  `business_position` varchar(100) DEFAULT NULL COMMENT '做生意职位',
  `business_hour` double DEFAULT NULL COMMENT '做生意经营时长(年)',
  `business_address` varchar(1000) DEFAULT NULL COMMENT '做生意经营地址',
  `business_industry` varchar(100) DEFAULT NULL COMMENT '做生意经营行业',
  `business_flow` double DEFAULT NULL COMMENT '做生意流水(万元)',
  `business_tax` double DEFAULT NULL COMMENT '做生意税(万元)',
  `has_house` varchar(30) DEFAULT NULL COMMENT '是否有房产(Y/N)',
  `house_local` varchar(10) DEFAULT NULL COMMENT '房屋是否本地(Y/N)',
  `house_region` varchar(100) DEFAULT NULL COMMENT '房屋区域',
  `house_buy_method` varchar(100) DEFAULT NULL COMMENT '房屋购买方式(全款/按揭)',
  `house_value` double DEFAULT NULL COMMENT '房屋市值(万元)',
  `house_monthly_payment` double DEFAULT NULL COMMENT '房屋月供(元)',
  `house_payment_period` int(11) DEFAULT NULL COMMENT '房屋还款期数(月)',
  `house_age` double DEFAULT NULL COMMENT '房龄(年)',
  `house_interest_num` int(11) DEFAULT NULL COMMENT '房屋权利人数',
  `house_interest_age` int(11) DEFAULT NULL COMMENT '房屋权利人年龄',
  `house_is_mortgage` varchar(10) DEFAULT NULL COMMENT '房屋是否抵押(Y/N)',
  `has_car` varchar(30) DEFAULT NULL COMMENT '是否有车(Y/N)',
  `car_local` varchar(10) DEFAULT NULL COMMENT '车是否本地(Y/N)',
  `car_license` varchar(10) DEFAULT NULL COMMENT '车牌照',
  `car_buy_method` varchar(30) DEFAULT NULL COMMENT '车购买方式(全款/按揭)',
  `car_value` double DEFAULT NULL COMMENT '车辆市值(万元)',
  `car_monthly_payment` varchar(10) DEFAULT NULL COMMENT '车月供(元)',
  `car_monthly_period` varchar(10) DEFAULT NULL COMMENT '车还款期数(月)',
  `car_age` int(11) DEFAULT NULL COMMENT '车龄(年)',
  `car_use_km` double DEFAULT NULL COMMENT '车使用路程(公里)',
  `has_policy` varchar(30) DEFAULT NULL COMMENT '是否有保单(Y/N)',
  `policy_holder` varchar(30) DEFAULT NULL COMMENT '保单投保人',
  `policy_insurance_company` varchar(50) DEFAULT NULL COMMENT '保单保险公司',
  `policy_payment_method` varchar(30) DEFAULT NULL COMMENT '保单缴费方式(年/月)',
  `policy_year_cost` double DEFAULT NULL COMMENT '保单年费(元)',
  `policy_payment_period` double DEFAULT NULL COMMENT '保单缴费时长(月)',
  `has_credit` varchar(30) DEFAULT NULL COMMENT '是否有征信(Y/N)',
  `credit_is_delay` varchar(10) DEFAULT NULL COMMENT '征信是否当前有逾期(Y/N)',
  `credit_three_month_delay_times` int(11) DEFAULT NULL COMMENT '征信近3月逾期次数',
  `credit_six_month_delay_times` int(11) DEFAULT NULL COMMENT '征信近6月逾期次数',
  `credit_year_delay_times` int(11) DEFAULT NULL COMMENT '征信近一年逾期次数',
  `credit_two_year_delay_times` int(11) DEFAULT NULL COMMENT '征信近两年逾期次数',
  `credit_series_three_month_delay_times` int(11) DEFAULT NULL COMMENT '征信近3月连续逾期次数',
  `credit_series_six_month_delay_times` int(11) DEFAULT NULL COMMENT '征信近6月连续逾期次数',
  `credit_series_year_delay_times` int(11) DEFAULT NULL COMMENT '征信近12月连续逾期次数',
  `credit_series_two_year_delay_times` int(11) DEFAULT NULL COMMENT '征信近24月连续逾期次数',
  `credit_three_month_query_times` int(11) DEFAULT NULL COMMENT '征信近3月查询次数',
  `credit_six_month_query_times` int(11) DEFAULT NULL COMMENT '征信近6月查询次数',
  `credit_year_query_times` int(11) DEFAULT NULL COMMENT '征信近一年查询次数',
  `credit_two_year_query_times` int(11) DEFAULT NULL COMMENT '征信近两年查询次数',
  `has_debt` varchar(30) DEFAULT NULL COMMENT '是否负债(Y/N)',
  `debt_credit_amount` double DEFAULT NULL COMMENT '负债信用卡总额(万)',
  `debt_credit_used_amount` double DEFAULT NULL COMMENT '负债已用额度(万)',
  `debt_loan_times` int(11) DEFAULT NULL COMMENT '负债贷款笔数',
  `debt_loan_amount` double DEFAULT NULL COMMENT '负债贷款总额(万)',
  `debt_online_loan_times` int(11) DEFAULT NULL COMMENT '负债网贷笔数',
  `debt_online_loan_amount` double DEFAULT NULL COMMENT '负债网贷总额(万)',
  `org_info` longtext COMMENT '贷款机构信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
