/*
Navicat MySQL Data Transfer

Source Server         : 172.28.5.92-t100
Source Server Version : 50639
Source Host           : 172.28.5.92:3306
Source Database       : org_crm

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-10-17 14:35:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer_base`
-- ----------------------------
DROP TABLE IF EXISTS `customer_base`;
CREATE TABLE `customer_base` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `org_id` bigint(20) NOT NULL COMMENT '组织Id',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '客户名称',
  `cus_type` smallint(6) DEFAULT NULL COMMENT '客户类别 政府|企业',
  `industry_id` int(11) DEFAULT NULL COMMENT '行业Id',
  `industry_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '行业名称',
  `category_id` int(11) DEFAULT NULL COMMENT '类别Id',
  `category_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '类别名称',
  `province_id` int(11) DEFAULT NULL COMMENT '客户所属省Id',
  `province_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '客户所属省名称',
  `city_id` int(11) DEFAULT NULL COMMENT '客户所属市Id',
  `city_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商机所属市名称',
  `area_id` int(11) DEFAULT NULL COMMENT '客户所属区域Id',
  `area_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '客户所属区域名称',
  `address` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `website` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '公司网址',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '客户信息描述',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='客户基本信息表';

-- ----------------------------
-- Records of customer_base
-- ----------------------------

-- ----------------------------
-- Table structure for `enum_customer_category`
-- ----------------------------
DROP TABLE IF EXISTS `enum_customer_category`;
CREATE TABLE `enum_customer_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '类别名称',
  `lft` int(11) DEFAULT NULL COMMENT '类别树左值',
  `rgt` int(11) DEFAULT NULL COMMENT '类别树右值',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机类别枚举';

-- ----------------------------
-- Records of enum_customer_category
-- ----------------------------

-- ----------------------------
-- Table structure for `enum_customer_industry`
-- ----------------------------
DROP TABLE IF EXISTS `enum_customer_industry`;
CREATE TABLE `enum_customer_industry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '行业名称',
  `lft` int(11) DEFAULT NULL COMMENT '行业树左值',
  `rgt` int(11) DEFAULT NULL COMMENT '行业树左值',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机行业枚举表';

-- ----------------------------
-- Records of enum_customer_industry
-- ----------------------------

-- ----------------------------
-- Table structure for `enum_opp_contact_tag`
-- ----------------------------
DROP TABLE IF EXISTS `enum_opp_contact_tag`;
CREATE TABLE `enum_opp_contact_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '标签名称',
  `order` int(11) DEFAULT NULL COMMENT '排序值',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机联系人标签枚举表';

-- ----------------------------
-- Records of enum_opp_contact_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `enum_opp_grade`
-- ----------------------------
DROP TABLE IF EXISTS `enum_opp_grade`;
CREATE TABLE `enum_opp_grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `grade_name` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '等级名称',
  `grade_value` int(11) DEFAULT NULL COMMENT '等级值',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机等级枚举表';

-- ----------------------------
-- Records of enum_opp_grade
-- ----------------------------

-- ----------------------------
-- Table structure for `enum_opp_manager_tag`
-- ----------------------------
DROP TABLE IF EXISTS `enum_opp_manager_tag`;
CREATE TABLE `enum_opp_manager_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '标签名称',
  `order` int(11) DEFAULT NULL COMMENT '排序值',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机负责人标签信息表';

-- ----------------------------
-- Records of enum_opp_manager_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `enum_opp_stage`
-- ----------------------------
DROP TABLE IF EXISTS `enum_opp_stage`;
CREATE TABLE `enum_opp_stage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '阶段名称',
  `need_review` bit(1) DEFAULT NULL COMMENT '进入该阶段是否需要走审核流程',
  `reviewer_rule` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '审核人设置规则',
  `lft` int(11) DEFAULT NULL COMMENT '商机阶段树左值',
  `rgt` int(11) DEFAULT NULL COMMENT '商机阶段树右值',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机阶段枚举表';

-- ----------------------------
-- Records of enum_opp_stage
-- ----------------------------

-- ----------------------------
-- Table structure for `enum_problem_grade`
-- ----------------------------
DROP TABLE IF EXISTS `enum_problem_grade`;
CREATE TABLE `enum_problem_grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `grade_name` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '等级名称',
  `grade_value` int(11) DEFAULT NULL COMMENT '等级值',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机问题等级枚举表';

-- ----------------------------
-- Records of enum_problem_grade
-- ----------------------------

-- ----------------------------
-- Table structure for `opp_base`
-- ----------------------------
DROP TABLE IF EXISTS `opp_base`;
CREATE TABLE `opp_base` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `org_id` bigint(20) NOT NULL COMMENT '组织Id',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '商机名称',
  `customer_id` bigint(20) DEFAULT NULL COMMENT '关联客户',
  `province_id` int(11) DEFAULT NULL COMMENT '商机所属省Id',
  `province_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商机所属省名称',
  `city_id` int(11) DEFAULT NULL COMMENT '商机所属市Id',
  `city_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商机所属市名称',
  `area_id` int(11) DEFAULT NULL COMMENT '商机所属区域Id',
  `area_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商机所属区域名称',
  `address` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `longitude` decimal(20,5) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(20,5) DEFAULT NULL COMMENT '纬度',
  `grade_id` int(11) DEFAULT NULL COMMENT '商机等级枚举 id',
  `grade_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商机等级枚举 名称',
  `owner_id` bigint(20) DEFAULT NULL COMMENT '商机所属人Id',
  `owner_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商机所属人名称',
  `owner_dept_id` bigint(20) DEFAULT NULL COMMENT '商机所属人所在部门',
  `lib_type` int(11) DEFAULT NULL COMMENT '商机所在库类型（1：公海 2：私有库）',
  `stage_id` int(11) DEFAULT NULL COMMENT '所处阶段Id',
  `stage_status` int(11) DEFAULT NULL COMMENT '阶段状态 （1：待审核 50：审核中 100：审核完成）',
  `estimated_account` decimal(20,6) DEFAULT NULL COMMENT '预估签单金额',
  `estimated_date` date DEFAULT NULL COMMENT '预估签单时间',
  `real_account` decimal(20,6) DEFAULT NULL COMMENT '实际签单金额',
  `real_date` date DEFAULT NULL COMMENT '实际签单时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机基本信息表';

-- ----------------------------
-- Table structure for `opp_base_history`
-- ----------------------------
DROP TABLE IF EXISTS `opp_base_history`;
CREATE TABLE `opp_base_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `change_content` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '变更后内容',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机基本信息历史表';

-- ----------------------------
-- Records of opp_base_history
-- ----------------------------

-- ----------------------------
-- Table structure for `opp_contact`
-- ----------------------------
DROP TABLE IF EXISTS `opp_contact`;
CREATE TABLE `opp_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` smallint(4) DEFAULT NULL COMMENT '0:女 1：男 2：未知',
  `mobile` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '移动电话',
  `phone` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '固定电话',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `temail` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'Tmail地址',
  `wechat` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '微信账号',
  `qq` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'qq号码',
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人地址',
  `default_flag` bit(1) DEFAULT NULL COMMENT '是否默认联系人 0：否 1：是',
  `deptment` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人所在部门',
  `duty` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人职务',
  `card_url` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名片地址',
  `tag_id` int(11) DEFAULT NULL COMMENT '商机联系人标签Id',
  `tag_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商机联系人标签名称',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机联系人';

-- ----------------------------
-- Records of opp_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `opp_contact_history`
-- ----------------------------
DROP TABLE IF EXISTS `opp_contact_history`;
CREATE TABLE `opp_contact_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `contact_id` bigint(20) DEFAULT NULL COMMENT '联系人ID',
  `changed_contact` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '变更后联系人信息',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '变更人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机联系人历史记录表';

-- ----------------------------
-- Records of opp_contact_history
-- ----------------------------

-- ----------------------------
-- Table structure for `opp_file`
-- ----------------------------
DROP TABLE IF EXISTS `opp_file`;
CREATE TABLE `opp_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `opp_stage_id` int(11) DEFAULT NULL COMMENT '商机阶段Id',
  `uploader_id` bigint(20) DEFAULT NULL COMMENT '上传者Id',
  `uploader_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '上传者名称',
  `uploader_dept_id` bigint(20) DEFAULT NULL COMMENT '上传者所在部门',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `file_Type` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '文件类型',
  `file_extension` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '文件后缀名',
  `file_url` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '文件保存路径',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机相关文档记录表';


-- ----------------------------
-- Table structure for `opp_follow`
-- ----------------------------
DROP TABLE IF EXISTS `opp_follow`;
CREATE TABLE `opp_follow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `follower_id` bigint(20) DEFAULT NULL COMMENT '跟进人Id',
  `follower_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '跟进人名称',
  `follower_dept_id` bigint(20) DEFAULT NULL COMMENT '跟进人部门Id',
  `follower_time` datetime DEFAULT NULL COMMENT '跟进人时间',
  `Follow_Type` smallint(6) DEFAULT NULL COMMENT '跟进类型 1：电话跟进 2：拜访跟进',
  `Content` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '跟进内容',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机跟进记录表';

-- ----------------------------
-- Records of opp_follow
-- ----------------------------

-- ----------------------------
-- Table structure for `opp_follow_reply`
-- ----------------------------
DROP TABLE IF EXISTS `opp_follow_reply`;
CREATE TABLE `opp_follow_reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `follow_id` bigint(20) NOT NULL COMMENT '商机跟进记录Id',
  `replier_id` bigint(20) DEFAULT NULL COMMENT '批复人Id',
  `replier_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '批复人名称',
  `replier_dept_id` bigint(20) DEFAULT NULL COMMENT '批复人部门Id',
  `replier_time` datetime DEFAULT NULL COMMENT '批复时间',
  `content` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '批复内容',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机跟进批复表';

-- ----------------------------
-- Records of opp_follow_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `opp_manager`
-- ----------------------------
DROP TABLE IF EXISTS `opp_manager`;
CREATE TABLE `opp_manager` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `member_id` bigint(20) DEFAULT NULL COMMENT '负责人Id',
  `member_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '负责人名称',
  `member_dept_id` bigint(20) DEFAULT NULL COMMENT '负责人所在部门Id',
  `member_tag_id` int(11) DEFAULT NULL COMMENT '负责人标签id',
  `member_tag_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '负责人标签名称',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机负责人信息表';

-- ----------------------------
-- Records of opp_manager
-- ----------------------------

-- ----------------------------
-- Table structure for `opp_problem`
-- ----------------------------
DROP TABLE IF EXISTS `opp_problem`;
CREATE TABLE `opp_problem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `reportor_id` bigint(20) DEFAULT NULL COMMENT '汇报人Id',
  `reportor_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '汇报人名称',
  `reportor_dept_id` bigint(20) DEFAULT NULL COMMENT '汇报部门Id',
  `reportor_time` datetime DEFAULT NULL COMMENT '汇报人时间',
  `grade_id` smallint(6) DEFAULT NULL COMMENT '问题等级id',
  `grade_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '问题等级名称',
  `Content` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '问题汇报内容',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机问题汇报表';

-- ----------------------------
-- Records of opp_problem
-- ----------------------------

-- ----------------------------
-- Table structure for `opp_problem_reply`
-- ----------------------------
DROP TABLE IF EXISTS `opp_problem_reply`;
CREATE TABLE `opp_problem_reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `problem_id` bigint(20) NOT NULL COMMENT '商机问题记录Id',
  `replier_id` bigint(20) DEFAULT NULL COMMENT '批复人Id',
  `replier_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '批复人名称',
  `replier_dept_id` bigint(20) DEFAULT NULL COMMENT '批复人部门Id',
  `replier_time` datetime DEFAULT NULL COMMENT '批复时间',
  `content` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '批复内容',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机问题批复表';

-- ----------------------------
-- Records of opp_problem_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `opp_review`
-- ----------------------------
DROP TABLE IF EXISTS `opp_review`;
CREATE TABLE `opp_review` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `stage_id` int(11) DEFAULT NULL COMMENT '所处阶段id',
  `reviewer_id` bigint(20) DEFAULT NULL COMMENT '审核人Id',
  `reviewer_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '审核人名称',
  `reviewer_dept_id` bigint(20) DEFAULT NULL COMMENT '审核人所在部门Id',
  `review_time` datetime DEFAULT NULL COMMENT '审核时间',
  `review_result` bit(1) DEFAULT NULL COMMENT '0:拒绝 1：通过',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `review_comment` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '审核意见',
  `delete_flag` bit(1) DEFAULT NULL COMMENT '0:未删除 1：已删除',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `creator_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名称',
  `creator_dept_id` bigint(20) DEFAULT NULL COMMENT '创建人部门Id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '最后一次更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机审核记录表';

-- ----------------------------
-- Records of opp_review
-- ----------------------------

-- ----------------------------
-- Table structure for `opp_stage_history`
-- ----------------------------
DROP TABLE IF EXISTS `opp_stage_history`;
CREATE TABLE `opp_stage_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opp_id` bigint(20) NOT NULL COMMENT '商机Id',
  `stage_id` int(11) DEFAULT NULL COMMENT '变更后所处阶段Id',
  `stage_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '变更后所处阶段名称',
  `change_type` smallint(6) DEFAULT NULL COMMENT '变更类型 0：人为变更 1：系统变更',
  `change_reason` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '变更原因',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '变更人Id',
  `updater_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '更新人名称',
  `updater_dept_id` bigint(20) DEFAULT NULL COMMENT '更新人所在部门',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商机阶段变更历史表';

-- ----------------------------
-- Records of opp_stage_history
-- ----------------------------
