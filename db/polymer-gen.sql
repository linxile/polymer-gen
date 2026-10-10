/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50728 (5.7.28)
 Source Host           : localhost:3306
 Source Schema         : polymer-gen

 Target Server Type    : MySQL
 Target Server Version : 50728 (5.7.28)
 File Encoding         : 65001

 Date: 10/10/2026 15:16:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_base_class
-- ----------------------------
DROP TABLE IF EXISTS `gen_base_class`;
CREATE TABLE `gen_base_class`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `package_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基类包名',
  `code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基类编码',
  `fields` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基类字段，多个用英文逗号分隔',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基类管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_base_class
-- ----------------------------
INSERT INTO `gen_base_class` VALUES (1, 'com.polymer.framework.mybatis.core.entity', 'BaseEntity', 'id,creator,create_time,updater,update_time', '使用该基类，则需要表里有这些字段。', '2023-07-11 14:33:08');

-- ----------------------------
-- Table structure for gen_datasource
-- ----------------------------
DROP TABLE IF EXISTS `gen_datasource`;
CREATE TABLE `gen_datasource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `db_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库类型',
  `conn_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '连接名',
  `conn_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'URL',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据源管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_datasource
-- ----------------------------
INSERT INTO `gen_datasource` VALUES (1, 'MySQL', 'localhost', 'jdbc:mysql://localhost:3306/polymer?useUnicode=true&characterEncoding=UTF-8&serverTimezone=Asia/Shanghai&nullCatalogMeansCurrent=true', 'root', 'D+pIfdDhUQIy0wZtB8bY0Q==', '2023-07-11 15:37:57');

-- ----------------------------
-- Table structure for gen_field_type
-- ----------------------------
DROP TABLE IF EXISTS `gen_field_type`;
CREATE TABLE `gen_field_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `column_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `attr_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
  `package_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性包名',
  `ts_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ts类型',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `column_type`(`column_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字段类型管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_field_type
-- ----------------------------
INSERT INTO `gen_field_type` VALUES (1, 'datetime', 'LocalDateTime', 'java.time.LocalDateTime', 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (2, 'date', 'LocalDate', 'java.time.LocalDate', 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (3, 'tinyint', 'Integer', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (4, 'smallint', 'Integer', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (5, 'mediumint', 'Integer', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (6, 'int', 'Integer', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (7, 'integer', 'Integer', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (8, 'bigint', 'Long', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (9, 'float', 'Float', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (10, 'double', 'Double', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (11, 'decimal', 'BigDecimal', 'java.math.BigDecimal', 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (12, 'bit', 'Boolean', NULL, 'boolean', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (13, 'char', 'String', NULL, 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (14, 'varchar', 'String', NULL, 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (15, 'tinytext', 'String', NULL, 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (16, 'text', 'String', NULL, 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (17, 'mediumtext', 'String', NULL, 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (18, 'longtext', 'String', NULL, 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (19, 'timestamp', 'LocalDateTime', 'java.time.LocalDateTime', 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (20, 'NUMBER', 'Integer', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (21, 'BINARY_INTEGER', 'Integer', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (22, 'BINARY_FLOAT', 'Float', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (23, 'BINARY_DOUBLE', 'Double', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (24, 'VARCHAR2', 'String', NULL, 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (25, 'NVARCHAR', 'String', NULL, 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (26, 'NVARCHAR2', 'String', NULL, 'string', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (27, 'CLOB', 'String', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (28, 'int8', 'Long', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (29, 'int4', 'Integer', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (30, 'int2', 'Integer', NULL, 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (31, 'numeric', 'BigDecimal', 'java.math.BigDecimal', 'number', '2023-07-11 14:33:08');
INSERT INTO `gen_field_type` VALUES (32, 'time', 'LocalTime', 'java.time.LocalTime', 'string', '2024-06-17 16:46:49');
INSERT INTO `gen_field_type` VALUES (33, 'year', 'Year', 'java.time.Year', 'string', '2024-06-17 17:01:01');

-- ----------------------------
-- Table structure for gen_project_modify
-- ----------------------------
DROP TABLE IF EXISTS `gen_project_modify`;
CREATE TABLE `gen_project_modify`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `project_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目名',
  `project_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目标识',
  `project_package` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目包名',
  `project_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目路径',
  `modify_project_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '变更项目名',
  `modify_project_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '变更标识',
  `modify_project_package` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '变更包名',
  `exclusions` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '排除文件',
  `modify_suffix` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '变更文件',
  `modify_tmp_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '变更临时路径',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '项目名变更' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_project_modify
-- ----------------------------
INSERT INTO `gen_project_modify` VALUES (1, 'polymer', 'polymer', 'com.polymer', 'D:/polymer', 'zhangxf', 'zhangxf', 'com.zhangxf', '.git,.idea,target,logs', 'java,xml,yml,txt,md,sql,ftl,json', NULL, '2023-07-11 14:33:08');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名',
  `class_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名',
  `table_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `author` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `package_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目包名',
  `version` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目版本号',
  `generator_type` tinyint(4) NULL DEFAULT NULL COMMENT '生成方式  0：zip压缩包   1：自定义目录',
  `backend_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '后端生成路径',
  `frontend_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '前端生成路径',
  `module_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块名',
  `function_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能名',
  `form_layout` tinyint(4) NULL DEFAULT NULL COMMENT '表单布局  1：一列   2：两列',
  `datasource_id` bigint(20) NULL DEFAULT NULL COMMENT '数据源ID',
  `baseclass_id` bigint(20) NULL DEFAULT NULL COMMENT '基类ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `table_name`(`table_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 244 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (241, 'sys_sequence', 'SysSequence', '发号器表', 'polymer', 'polymer@126.com', 'com.polymer', '1.0.0', 0, 'D:\\generator\\polymer\\polymer-application', 'D:\\generator\\polymer-ui', '.polymer', 'sequence', 1, 1, NULL, '2026-06-17 17:23:00');
INSERT INTO `gen_table` VALUES (242, 'demo_multiple_files', 'DemoMultipleFiles', '多文件上传样例', 'polymer', 'polymer@126.com', 'com.polymer', '1.0.0', 0, 'D:\\ideaprojects\\polymer\\polymer-business\\polymer-business-demo', 'D:\\webstorm\\polymer-ui', 'demo', 'multipleFiles', 1, 1, 1, '2026-06-23 08:49:12');
INSERT INTO `gen_table` VALUES (243, 'sys_import_export_record', 'SysImportExportRecord', '导入导出记录表', 'polymer', 'polymer@126.com', 'com.polymer', '1.0.0', 0, 'D:\\generator\\polymer\\polymer-application', 'D:\\generator\\polymer-ui', 'system', 'importExportRecord', 1, 1, 1, '2026-06-29 09:44:50');

-- ----------------------------
-- Table structure for gen_table_field
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_field`;
CREATE TABLE `gen_table_field`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '表ID',
  `field_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段名称',
  `field_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `field_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段说明',
  `attr_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性名',
  `attr_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性类型',
  `package_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性包名',
  `ts_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ts类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `auto_fill` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '自动填充  DEFAULT、INSERT、UPDATE、INSERT_UPDATE',
  `primary_pk` tinyint(4) NULL DEFAULT NULL COMMENT '主键 0：否  1：是',
  `base_field` tinyint(4) NULL DEFAULT NULL COMMENT '基类字段 0：否  1：是',
  `form_item` tinyint(4) NULL DEFAULT NULL COMMENT '表单项 0：否  1：是',
  `form_required` tinyint(4) NULL DEFAULT NULL COMMENT '表单必填 0：否  1：是',
  `form_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单类型',
  `form_dict` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单字典类型',
  `form_validator` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单效验',
  `grid_item` tinyint(4) NULL DEFAULT NULL COMMENT '列表项 0：否  1：是',
  `grid_sort` tinyint(4) NULL DEFAULT NULL COMMENT '列表排序 0：否  1：是',
  `query_item` tinyint(4) NULL DEFAULT NULL COMMENT '查询项 0：否  1：是',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询方式',
  `query_form_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询表单类型',
  `extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主键策略',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3020 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_field
-- ----------------------------
INSERT INTO `gen_table_field` VALUES (2988, 241, 'id', 'bigint', '主键id', 'id', 'Long', NULL, NULL, 0, 'DEFAULT', 1, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', 'auto_increment');
INSERT INTO `gen_table_field` VALUES (2989, 241, 'value', 'bigint', '值', 'value', 'Long', NULL, NULL, 1, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (2990, 241, 'name', 'varchar', '名称', 'name', 'String', NULL, NULL, 2, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (2991, 241, 'gmt_create', 'datetime', '创建时间', 'gmtCreate', 'LocalDateTime', 'java.time.LocalDateTime', NULL, 3, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (2992, 241, 'gmt_modified', 'datetime', '更新时间', 'gmtModified', 'LocalDateTime', 'java.time.LocalDateTime', NULL, 4, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (2993, 242, 'id', 'bigint', 'id', 'id', 'Long', NULL, NULL, 0, 'DEFAULT', 1, 0, 0, 0, 'text', NULL, NULL, 0, 0, 0, '=', 'text', 'auto_increment');
INSERT INTO `gen_table_field` VALUES (2994, 242, 'name', 'varchar', '名称', 'name', 'String', NULL, NULL, 1, 'DEFAULT', 0, 0, 1, 1, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (2995, 242, 'dept_id', 'bigint', '部门ID', 'deptId', 'Long', NULL, NULL, 2, 'DEFAULT', 0, 0, 0, 0, 'text', NULL, NULL, 0, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (2996, 242, 'creator', 'bigint', '创建者', 'creator', 'Long', NULL, NULL, 3, 'DEFAULT', 0, 0, 0, 0, 'text', NULL, NULL, 0, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (2997, 242, 'create_time', 'datetime', '创建时间', 'createTime', 'LocalDateTime', 'java.time.LocalDateTime', NULL, 4, 'DEFAULT', 0, 0, 0, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (2998, 242, 'updater', 'bigint', '更新者', 'updater', 'Long', NULL, NULL, 5, 'DEFAULT', 0, 0, 0, 0, 'text', NULL, NULL, 0, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (2999, 242, 'update_time', 'datetime', '更新时间', 'updateTime', 'LocalDateTime', 'java.time.LocalDateTime', NULL, 6, 'DEFAULT', 0, 0, 0, 0, 'text', NULL, NULL, 0, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3000, 242, 'description', 'longtext', '描述', 'description', 'String', NULL, NULL, 7, 'DEFAULT', 0, 0, 1, 1, 'editor', NULL, NULL, 0, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3001, 243, 'id', 'bigint', '主键ID', 'id', 'Long', NULL, 'number', 0, 'DEFAULT', 1, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', 'auto_increment');
INSERT INTO `gen_table_field` VALUES (3002, 243, 'operator_name', 'varchar', '操作人姓名', 'operatorName', 'String', NULL, 'string', 1, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 1, 'like', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3003, 243, 'business_type', 'varchar', '业务对象类型：user-用户, dept-部门, role-角色等', 'businessType', 'String', NULL, 'string', 2, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 1, 'like', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3004, 243, 'operation_type', 'varchar', '操作类型：import-导入, export-导出', 'operationType', 'String', NULL, 'string', 3, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 1, '=', 'select', NULL);
INSERT INTO `gen_table_field` VALUES (3006, 243, 'total_count', 'int', '总数据量', 'totalCount', 'Integer', NULL, 'number', 5, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3007, 243, 'success_count', 'int', '成功量', 'successCount', 'Integer', NULL, 'number', 6, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3009, 243, 'conflict_handle_count', 'int', '冲突处理数量（根据import_strategy判断：skip-跳过数量，override-覆盖数量）', 'conflictHandleCount', 'Integer', NULL, 'number', 8, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3010, 243, 'import_strategy', 'varchar', '导入策略：update-更新, skip-跳过, override-覆盖', 'importStrategy', 'String', NULL, 'string', 9, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3011, 243, 'error_file_url', 'varchar', '错误数据文件地址（相对路径）', 'errorFileUrl', 'String', NULL, 'string', 10, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3012, 243, 'result_file_url', 'varchar', '结果文件地址（相对路径）', 'resultFileUrl', 'String', NULL, 'string', 11, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3013, 243, 'remark', 'varchar', '备注/错误摘要', 'remark', 'String', NULL, 'string', 12, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3014, 243, 'dept_id', 'bigint', '部门ID', 'deptId', 'Long', NULL, 'number', 13, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3015, 243, 'creator', 'bigint', '创建者', 'creator', 'Long', NULL, 'number', 14, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3016, 243, 'create_time', 'datetime', '创建时间', 'createTime', 'LocalDateTime', 'java.time.LocalDateTime', 'string', 15, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 1, 'between', 'datetime', NULL);
INSERT INTO `gen_table_field` VALUES (3017, 243, 'updater', 'bigint', '更新者', 'updater', 'Long', NULL, 'number', 16, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);
INSERT INTO `gen_table_field` VALUES (3018, 243, 'update_time', 'datetime', '更新时间', 'updateTime', 'LocalDateTime', 'java.time.LocalDateTime', 'string', 17, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', 'on update CURRENT_TIMESTAMP');
INSERT INTO `gen_table_field` VALUES (3019, 243, 'error_count', 'int', '失败量', 'errorCount', 'Integer', NULL, 'number', 6, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text', NULL);

SET FOREIGN_KEY_CHECKS = 1;
