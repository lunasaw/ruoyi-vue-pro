/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1 MySQL
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : ruoyi-vue-pro

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 04/02/2023 15:21:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product_brand
-- ----------------------------
DROP TABLE IF EXISTS `product_brand`;
CREATE TABLE `product_brand`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '品牌编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '品牌名称',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '品牌图片',
  `sort` int NULL DEFAULT 0 COMMENT '品牌排序',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '品牌描述',
  `status` tinyint NOT NULL COMMENT '状态',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品品牌';

-- ----------------------------
-- Records of product_brand
-- ----------------------------
BEGIN;
INSERT INTO `product_brand` (`id`, `name`, `pic_url`, `sort`, `description`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (1, '苹果', 'http://test.yudao.iocoder.cn/e3726713fa56db5717c78c011762fcc7a251db12735c3581470638b8e1fa17e2.jpeg', 0, '是上市', 0, '1', '2022-07-30 22:12:18', '1', '2022-07-30 22:13:55', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `parent_id` bigint NOT NULL COMMENT '父分类编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类名称',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类图片',
  `sort` int NULL DEFAULT 0 COMMENT '分类排序',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类描述',
  `status` tinyint NOT NULL COMMENT '开启状态',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类';

-- ----------------------------
-- Records of product_category
-- ----------------------------
BEGIN;
INSERT INTO `product_category` (`id`, `parent_id`, `name`, `pic_url`, `sort`, `description`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (1, 0, '数码周边', 'http://test.yudao.iocoder.cn/122d548e1b3cd5dec72fe8075c6977a70f9cc13541a684ab3685f1b5df42f6bd.jpeg', 0, '1234', 0, '1', '2022-07-30 16:36:35', '1', '2022-12-14 12:44:52', b'0', 1), (2, 1, '数码产品', 'http://test.yudao.iocoder.cn/72713ac7b947600a019a18786ed0e6562e8692e253dbd35110a0a85c2469bbec.jpg', 1, '<p>测试一下</p>', 0, '1', '2022-07-30 16:38:09', '1', '2022-12-14 12:37:28', b'0', 1), (3, 1, '游戏本', 'http://test.yudao.iocoder.cn/287c50dd9f5f575f57329a0c57b2095be6d1aeba83867b905fe549f54a296feb.jpg', 2, '<p>测试一下</p>', 0, '1', '2022-07-30 16:39:09', '1', '2022-12-14 12:31:13', b'1', 1), (4, 0, '运动户外', 'http://test.yudao.iocoder.cn/4a7315b68f895e71e621dd8dd0f62d0e68d3d469ea227f8fd132a67f739d439d.jpeg', 1, '<p>123</p>', 0, '1', '2022-07-30 16:40:00', '1', '2022-12-14 12:44:44', b'0', 1), (5, 4, '运动', 'http://test.yudao.iocoder.cn/3af6557ac7def6423f046f5b2e920b644793420b466959aaa996a2e19068bbde.jpeg', 1, '<p><br></p>', 0, '1', '2022-07-30 16:43:00', '1', '2022-12-14 12:45:01', b'0', 1), (6, 4, '居家运动', 'http://test.yudao.iocoder.cn/964fe9ccd1710d64ede261dc36d231918a017641986c15293c367f9f66d94d05.jpeg', 2, '居家运动', 0, '1', '2022-07-30 16:43:44', '1', '2022-12-14 12:46:38', b'0', 1), (7, 5, '健身器材', 'http://test.yudao.iocoder.cn/388f41d2422c6727a65eed1d86a98b952ef9120b4ff53165f5f35aeb9e356a0e.jpeg', 0, '123', 0, '1', '2022-07-30 20:38:09', '1', '2022-12-14 12:45:37', b'0', 1), (8, 2, '办公设备', 'http://test.yudao.iocoder.cn/239b0adfb5061c2e4f7f16ca2e7d768dc5c7e9bcf9bd3337b3b7b7d237b2fef1.jpeg', 0, NULL, 0, '1', '2022-12-14 12:40:53', '1', '2022-12-14 12:40:53', b'0', 1), (9, 2, '相机', 'http://test.yudao.iocoder.cn/d7da7b353545ea513c6335d64f3f56c5f41f812e3a131b1c630f20889ec6f5e7.jpeg', 1, NULL, 0, '1', '2022-12-14 12:41:38', '1', '2022-12-14 12:41:49', b'0', 1), (10, 2, '数码配件', 'http://test.yudao.iocoder.cn/decf7db901f17f5aeb3730d2a8d879833c228ddf977333da5a1e3df6b4a27ce3.jpeg', 3, NULL, 0, '1', '2022-12-14 12:42:26', '1', '2022-12-14 12:42:26', b'0', 1), (11, 2, '电脑配件', 'http://test.yudao.iocoder.cn/c7142b4024c795987b48cfa3d60c18c5cc55c2a9fe84f84e0af571f17053bfc1.jpeg', 4, NULL, 0, '1', '2022-12-14 12:43:11', '1', '2022-12-14 12:43:11', b'0', 1), (12, 2, '手机配件', 'http://test.yudao.iocoder.cn/66adb6384cdaa9c8e079c6065338385e99ac62ac7514cac541313b8f9252f1d7.jpeg', 5, NULL, 0, '1', '2022-12-14 12:43:38', '1', '2022-12-14 12:43:38', b'0', 1), (13, 5, '电子手环', 'http://test.yudao.iocoder.cn/9efd3b4e15e71d82ba1041026826b2202b3b82ff133bc2cd58a5dbf168ed862b.jpeg', 2, NULL, 0, '1', '2022-12-14 12:46:11', '1', '2022-12-14 12:46:11', b'0', 1), (14, 6, '瑜伽', 'http://test.yudao.iocoder.cn/ba2099e6f3b4582c56b5da35b3b917423995f6b91d6bc17a6b19be500bfcba50.jpeg', 2, NULL, 0, '1', '2022-12-14 12:47:07', '1', '2022-12-14 12:47:07', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for product_property
-- ----------------------------
DROP TABLE IF EXISTS `product_property`;
CREATE TABLE `product_property`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_name`(`name`(32) ASC) USING BTREE COMMENT '规格名称索引'
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品属性项';

-- ----------------------------
-- Records of product_property
-- ----------------------------
BEGIN;
INSERT INTO `product_property` (`id`, `name`, `status`, `remark`, `create_time`, `update_time`, `creator`, `updater`, `tenant_id`, `deleted`) VALUES (1, '颜色', 0, '嘿嘿嘿', '2022-09-20 10:25:53', '2022-12-12 23:21:21', '1', '1', 1, b'0'), (2, '尺寸', 0, '123', '2022-09-20 15:11:04', '2022-12-12 23:19:48', '1', '1', 1, b'0');
COMMIT;

-- ----------------------------
-- Table structure for product_property_value
-- ----------------------------
DROP TABLE IF EXISTS `product_property_value`;
CREATE TABLE `product_property_value`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `property_id` bigint NULL DEFAULT NULL COMMENT '属性项的编号',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品属性值';

-- ----------------------------
-- Records of product_property_value
-- ----------------------------
BEGIN;
INSERT INTO `product_property_value` (`id`, `property_id`, `name`, `status`, `remark`, `create_time`, `update_time`, `creator`, `updater`, `tenant_id`, `deleted`) VALUES (1, 1, '红色', 0, '啊啊啊', '2022-09-20 10:26:10', '2022-09-20 10:26:10', '1', '1', 1, b'0'), (2, 1, '绿色', 0, NULL, '2022-09-20 15:10:52', '2022-09-20 15:10:52', '1', '1', 1, b'0'), (3, 2, '12*12', 0, NULL, '2022-09-20 15:11:23', '2022-09-20 15:11:23', '1', '1', 1, b'0'), (4, 2, '13*13', 0, 'xx', '2022-09-20 15:11:30', '2022-12-12 23:39:40', '1', '1', 1, b'0');
COMMIT;

-- ----------------------------
-- Table structure for product_sku
-- ----------------------------
DROP TABLE IF EXISTS `product_sku`;
CREATE TABLE `product_sku`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `spu_id` bigint NOT NULL COMMENT 'SPU 名字',
  `spu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名字',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  `properties` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '属性数组，JSON 格式',
  `price` int NOT NULL DEFAULT -1 COMMENT '销售价格，单位：分',
  `market_price` int NULL DEFAULT NULL COMMENT '市场价',
  `cost_price` int NOT NULL DEFAULT -1 COMMENT '成本价，单位： 分',
  `pic_url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片地址',
  `stock` int NULL DEFAULT NULL COMMENT '库存',
  `warn_stock` int NULL DEFAULT NULL COMMENT '预警库存',
  `volume` double NULL DEFAULT NULL COMMENT '商品体积',
  `weight` double NULL DEFAULT NULL COMMENT '商品重量',
  `bar_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '条形码',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `updater` double(64, 0) NULL DEFAULT NULL COMMENT '更新人',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品sku';

-- ----------------------------
-- Records of product_sku
-- ----------------------------
BEGIN;
INSERT INTO `product_sku` (`id`, `spu_id`, `spu_name`, `tenant_id`, `properties`, `price`, `market_price`, `cost_price`, `pic_url`, `stock`, `warn_stock`, `volume`, `weight`, `bar_code`, `status`, `create_time`, `update_time`, `creator`, `updater`, `deleted`) VALUES (1, 1, '商品1', 1, NULL, 200, 2200, 200, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 2, NULL, NULL, NULL, NULL, 0, '2022-09-20 14:27:38', '2022-11-19 12:19:10', '1', 1, b'0'), (2, 2, '商品2', 1, NULL, 300, 200, 400, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 5, 6, 7, 98, '8', 0, '2022-09-20 14:29:22', '2022-11-19 12:19:13', '1', 1, b'0'), (3, 2, '商品3', 1, NULL, 300, 200, 400, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 5, 6, 7, 98, '8', 0, '2022-09-20 14:33:45', '2022-11-19 12:19:15', '1', 1, b'0'), (4, 2, '商品4', 1, NULL, 300, 200, 400, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 5, 6, 7, 98, '8', 0, '2022-09-20 14:34:26', '2022-11-19 12:19:17', '1', 1, b'0'), (5, 2, '商品5', 1, NULL, 300, 200, 400, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 5, 6, 7, 98, '8', 0, '2022-09-20 14:34:26', '2022-11-19 12:19:19', '1', 1, b'0'), (6, 3, '商品6', 1, '[{\"propertyId\":1,\"valueId\":1}]', 200, 200, 200, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 3, 56, 6, NULL, NULL, 0, '2022-09-20 15:09:35', '2022-11-19 12:19:23', '1', 1, b'0'), (7, 4, '商品7', 1, NULL, 200, 200, 200, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 2, 2, NULL, NULL, NULL, 0, '2022-09-21 10:31:44', '2022-11-19 12:19:25', '1', 1, b'1'), (23, 5, '商品23', 1, NULL, 200, 100, 300, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 4, 5, 6, 7, NULL, 0, '2022-09-22 11:22:00', '2022-11-19 12:19:34', '1', 1, b'0'), (24, 6, '商品24', 1, NULL, 400, 300, 500, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 6, 89, 7, NULL, NULL, 0, '2022-09-22 11:23:12', '2022-11-19 12:19:31', '1', 1, b'0'), (25, 4, '商品25', 1, '[{\"propertyId\":2,\"valueId\":3}]', 300, 2100, 3200, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 4, 56, 6, NULL, NULL, 0, '2022-09-22 11:33:29', '2022-11-19 12:19:36', '1', 1, b'0'), (26, 4, '商品26', 1, '[{\"propertyId\":2,\"valueId\":4}]', 200, 200, 200, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 4, 5, 7, NULL, NULL, 0, '2022-09-22 11:33:29', '2022-11-19 12:19:39', '1', 1, b'0'), (27, 7, '商品27', 1, NULL, 200, 200, 300, 'http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg', 4, 5, 6, NULL, NULL, 0, '2022-09-22 11:39:10', '2022-11-19 12:19:41', '1', 1, b'0'), (28, 8, '商品28', 1, NULL, 100, 100, 100, 'http://test.yudao.iocoder.cn/3d98d501a2bcd8560359a79d4332bc098a41b0cc95c207ca0307e3b8275eefb7.png', 1, NULL, NULL, NULL, NULL, 0, '2022-11-08 13:53:44', '2022-11-19 12:19:44', '1', 1, b'0'), (29, 10, '好利来', 1, NULL, 200, 100, 300, 'http://test.yudao.iocoder.cn/f52eaa01afa52d0e823a57b7ccefb8a5c3dac325e96672b8a6c83c9884df073e.png', 6, NULL, NULL, NULL, NULL, 0, '2022-11-19 12:25:16', '2022-11-22 22:45:05', '1', 1, b'0');
COMMIT;

-- ----------------------------
-- Table structure for product_spu
-- ----------------------------
DROP TABLE IF EXISTS `product_spu`;
CREATE TABLE `product_spu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品编码',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名称',
  `sell_point` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '促销语',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '描述',
  `category_id` bigint NOT NULL COMMENT '商品分类编号',
  `brand_id` int NULL DEFAULT NULL COMMENT '商品品牌编号',
  `pic_urls` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '商品轮播图地址\n 数组，以逗号分隔\n 最多上传15张',
  `video_url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品视频',
  `sort` int NOT NULL DEFAULT 0 COMMENT '排序字段',
  `status` bit(1) NULL DEFAULT NULL COMMENT '商品状态： 0 上架（开启） 1 下架（禁用）-1 回收',
  `spec_type` int NOT NULL COMMENT '规格类型：0 单规格 1 多规格',
  `min_price` int NULL DEFAULT NULL COMMENT '最小价格，单位使用：分',
  `max_price` int NULL DEFAULT NULL COMMENT '最大价格，单位使用：分',
  `market_price` int NULL DEFAULT NULL COMMENT '市场价，单位使用：分',
  `total_stock` int NOT NULL DEFAULT 0 COMMENT '总库存',
  `show_stock` int NULL DEFAULT 0 COMMENT '是否展示库存',
  `sales_count` int NULL DEFAULT 0 COMMENT '商品销量',
  `virtual_sales_count` int NULL DEFAULT 0 COMMENT '虚拟销量',
  `click_count` int NULL DEFAULT 0 COMMENT '商品点击量',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新人',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品spu';

-- ----------------------------
-- Records of product_spu
-- ----------------------------
BEGIN;
INSERT INTO `product_spu` (`id`, `code`, `name`, `sell_point`, `description`, `category_id`, `brand_id`, `pic_urls`, `video_url`, `sort`, `status`, `spec_type`, `min_price`, `max_price`, `market_price`, `total_stock`, `show_stock`, `sales_count`, `virtual_sales_count`, `click_count`, `create_time`, `update_time`, `creator`, `updater`, `deleted`, `tenant_id`) VALUES (1, NULL, '测试', '测试', '<p>v方式VS的</p>', 7, 1, '[\"http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg\"]', NULL, 2, b'1', 1, 200, 200, 2200, 2, 1, 0, 2, 0, '2022-09-20 14:27:38', '2022-09-22 11:44:49', '1', '1', b'0', 1), (2, NULL, '测试多图片', '测试', '<p>吃完</p>', 7, 1, '[\"http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg\",\"http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg\",\"http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg\",\"http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg\"]', NULL, 4, b'0', 1, 300, 300, 200, 10, 1, 0, 12, 0, '2022-09-20 14:29:22', '2022-09-20 14:34:26', '1', '1', b'0', 1), (3, NULL, '测试', NULL, '<p>测试问我</p>', 7, 1, '[\"http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg\"]', NULL, 2, b'0', 2, 200, 200, 200, 3, 1, 0, 0, 0, '2022-09-20 15:09:35', '2022-09-22 11:39:25', '1', '1', b'0', 1), (4, NULL, '测试上传视频测水水水水水水水水水水水水水水水水水水是', '测试', '<p>吃的啥从</p>', 7, 1, '[\"http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg\"]', 'http://test.yudao.iocoder.cn/4d389a97753a609fa5fe5488e2b4360cb48d2e95745660c93043b4213bab6630.mp4', 45, b'1', 2, 200, 300, 2100, 8, 1, 0, 2, 0, '2022-09-21 10:31:44', '2022-12-14 21:55:00', '1', '1', b'0', 1), (5, NULL, '商品', '测试', '<p>测试	</p>', 7, 1, '[\"http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg\"]', NULL, 3, b'0', 1, 200, 200, 100, 4, 1, 0, 1, 0, '2022-09-22 11:22:00', '2022-09-22 11:22:00', '1', '1', b'0', 1), (6, NULL, '测试', NULL, '<p>熔断</p>', 7, 1, '[\"http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg\"]', NULL, 6, b'0', 1, 400, 400, 300, 6, 1, 0, 2, 0, '2022-09-22 11:23:12', '2022-09-22 11:23:12', '1', '1', b'0', 1), (7, NULL, '测试', '嘿嘿嘿', '<p>测试</p>', 7, 1, '[\"http://test.yudao.iocoder.cn/663706891f14f77aca130abaac70099333233ce815edc8c6245538f05576db15.jpg\"]', NULL, 24, b'0', 1, 200, 200, 200, 4, 1, 0, 0, 0, '2022-09-22 11:39:10', '2022-09-22 11:39:10', '1', '1', b'0', 1), (8, NULL, '1', NULL, '<p>11111</p>', 7, 1, '[\"http://test.yudao.iocoder.cn/3d98d501a2bcd8560359a79d4332bc098a41b0cc95c207ca0307e3b8275eefb7.png\"]', NULL, 0, b'0', 1, 100, 100, 100, 1, 1, 0, 0, 0, '2022-11-08 13:53:44', '2022-11-08 13:53:44', '1', '1', b'0', 1), (10, NULL, '好利来', '好利来', '<p>31232132312</p>', 7, 1, '[\"http://test.yudao.iocoder.cn/758a7e19991c3f7ca401277d77a4a29a34e76058b303d9b4666ecf2ca57c38ba.jpeg\"]', NULL, 0, b'1', 1, 200, 200, 100, 6, 1, 0, 0, 0, '2022-11-19 12:25:16', '2022-11-22 22:45:05', '1', '1', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for promotion_coupon
-- ----------------------------
DROP TABLE IF EXISTS `promotion_coupon`;
CREATE TABLE `promotion_coupon`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '优惠劵编号',
  `template_id` bigint NOT NULL COMMENT '优惠劵模板编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '优惠劵名',
  `status` tinyint NOT NULL COMMENT '优惠码状态\n     *\n     * 1-未使用\n     * 2-已使用\n     * 3-已失效',
  `user_id` bigint NOT NULL COMMENT '用户编号',
  `take_type` tinyint NOT NULL COMMENT '领取类型\n     *\n     * 1 - 用户主动领取\n     * 2 - 后台自动发放',
  `use_price` int NOT NULL COMMENT '是否设置满多少金额可用，单位：分',
  `valid_start_time` datetime NOT NULL COMMENT '生效开始时间',
  `valid_end_time` datetime NOT NULL COMMENT '生效结束时间',
  `product_scope` tinyint NOT NULL COMMENT '商品范围',
  `product_spu_ids` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品 SPU 编号的数组',
  `discount_type` tinyint NOT NULL COMMENT '折扣类型',
  `discount_percent` tinyint NULL DEFAULT NULL COMMENT '折扣百分比',
  `discount_price` int NULL DEFAULT NULL COMMENT '优惠金额，单位：分',
  `discount_limit_price` int NULL DEFAULT NULL COMMENT '折扣上限',
  `use_order_id` bigint NULL DEFAULT NULL COMMENT '使用订单号',
  `use_time` datetime NULL DEFAULT NULL COMMENT '使用时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优惠劵';

-- ----------------------------
-- Records of promotion_coupon
-- ----------------------------
BEGIN;
INSERT INTO `promotion_coupon` (`id`, `template_id`, `name`, `status`, `user_id`, `take_type`, `use_price`, `valid_start_time`, `valid_end_time`, `product_scope`, `product_spu_ids`, `discount_type`, `discount_percent`, `discount_price`, `discount_limit_price`, `use_order_id`, `use_time`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (1, 1, '优惠劵A', 1, 247, 1, 10000, '2019-04-08 00:00:00', '2019-04-10 00:00:00', 0, NULL, 1, NULL, 1000, NULL, 0, '2019-05-17 17:46:30', '', '2022-11-03 00:09:56', '', '2022-11-04 21:12:01', b'1', 1), (2, 1, '优惠劵B', 2, 247, 1, 2, '2019-04-08 00:00:00', '2019-04-10 00:00:00', 0, NULL, 2, 49, 1000, NULL, 0, '2019-05-17 14:21:17', '', '2022-11-03 00:09:56', '', '2022-11-04 18:58:09', b'0', 1), (3, 1, '优惠劵C', 3, 247, 1, 10, '2019-04-08 00:00:00', '2019-04-10 00:00:00', 0, NULL, 1, NULL, 9, NULL, 0, '2019-05-17 17:58:50', '', '2022-11-03 00:09:56', '', '2022-11-04 18:58:12', b'0', 1), (4, 1, '优惠劵A', 1, 247, 1, 1000, '2020-08-20 11:00:00', '2020-08-22 11:00:00', 0, NULL, 1, NULL, 1000, NULL, 0, NULL, '', '2022-11-03 00:09:56', '1', '2022-11-04 21:05:02', b'1', 1), (5, 1, '优惠劵AAA', 1, 247, 1, 1000, '2020-08-22 11:00:00', '2020-08-24 11:00:00', 0, NULL, 1, NULL, 1000, NULL, 0, NULL, '', '2022-11-03 00:09:56', '1', '2022-11-04 20:58:58', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for promotion_coupon_template
-- ----------------------------
DROP TABLE IF EXISTS `promotion_coupon_template`;
CREATE TABLE `promotion_coupon_template`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '模板编号，自增唯一。',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '优惠劵名',
  `status` tinyint NOT NULL COMMENT '状态',
  `total_count` int NOT NULL COMMENT '发放数量, -1 - 则表示不限制',
  `take_limit_count` tinyint NOT NULL COMMENT '每人限领个数, -1 - 则表示不限制',
  `take_type` tinyint NOT NULL COMMENT '领取方式',
  `use_price` int NOT NULL COMMENT '是否设置满多少金额可用，单位：分',
  `product_scope` tinyint NOT NULL COMMENT '商品范围',
  `product_spu_ids` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品 SPU 编号的数组',
  `validity_type` tinyint NOT NULL COMMENT '生效日期类型',
  `valid_start_time` datetime NULL DEFAULT NULL COMMENT '固定日期-生效开始时间',
  `valid_end_time` datetime NULL DEFAULT NULL COMMENT '固定日期-生效结束时间',
  `fixed_start_term` int NULL DEFAULT NULL COMMENT '领取日期-开始天数',
  `fixed_end_term` int NULL DEFAULT NULL COMMENT '领取日期-结束天数',
  `discount_type` int NOT NULL COMMENT '优惠类型\n     *\n     * 1-代金卷\n     * 2-折扣卷',
  `discount_percent` tinyint NULL DEFAULT NULL COMMENT '折扣百分比',
  `discount_price` int NULL DEFAULT NULL COMMENT '优惠金额，单位：分',
  `discount_limit_price` int NULL DEFAULT NULL COMMENT '折扣上限，仅在 {@link #preferentialType} 等于 2 时生效。\n     *\n     * 例如，折扣上限为 20 元，当使用 8 折优惠券，订单金额为 1000 元时，最高只可折扣 20 元，而非 80  元。',
  `take_count` int NOT NULL DEFAULT 0 COMMENT '领取优惠券的数量',
  `use_count` int NOT NULL DEFAULT 0 COMMENT '使用优惠券的次数',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优惠劵模板';

-- ----------------------------
-- Records of promotion_coupon_template
-- ----------------------------
BEGIN;
INSERT INTO `promotion_coupon_template` (`id`, `name`, `status`, `total_count`, `take_limit_count`, `take_type`, `use_price`, `product_scope`, `product_spu_ids`, `validity_type`, `valid_start_time`, `valid_end_time`, `fixed_start_term`, `fixed_end_term`, `discount_type`, `discount_percent`, `discount_price`, `discount_limit_price`, `take_count`, `use_count`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (1, '优惠劵AAA', 0, 100, 10, 2, 1000, 2, '5,2,7,6', 2, NULL, NULL, 1, 2, 2, 90, 1000, 10, 1, 0, '', '2022-10-31 21:12:15', '1', '2022-11-04 21:12:01', b'0', 1), (2, '优惠劵B', 1, 10, 2, 1, 1000, 2, '10', 2, NULL, NULL, 3, 5, 1, NULL, 10000, 10, 0, 0, '', '2022-10-31 21:12:15', '1', '2022-11-02 22:44:18', b'0', 1), (14, '测试一下', 0, 2, 3, 1, 100, 1, '', 1, '2022-11-24 00:00:00', '2022-12-19 23:59:59', NULL, NULL, 1, NULL, 100, NULL, 0, 0, '1', '2022-11-02 22:05:56', '1', '2022-11-02 22:44:12', b'0', 1), (15, '测试下', 0, 1, 2, 1, 300, 1, '', 2, '2022-11-14 00:00:00', '2022-12-22 23:59:59', 1, 3, 2, 10, 400, 0, 0, 0, '1', '2022-11-02 22:12:19', '1', '2022-11-02 22:17:43', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for promotion_discount_activity
-- ----------------------------
DROP TABLE IF EXISTS `promotion_discount_activity`;
CREATE TABLE `promotion_discount_activity`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '活动编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '活动标题',
  `status` tinyint NOT NULL DEFAULT -1 COMMENT '活动状态',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '限时折扣活动';

-- ----------------------------
-- Records of promotion_discount_activity
-- ----------------------------
BEGIN;
INSERT INTO `promotion_discount_activity` (`id`, `name`, `status`, `start_time`, `end_time`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (4, '测试活动', 40, '2022-11-25 00:00:00', '2022-12-23 23:59:59', '12345', '1', '2022-11-05 00:54:34', '1', '2022-11-06 12:32:49', b'1', 1), (5, '111', 40, '2022-11-02 00:00:00', '2022-12-13 23:59:59', '', '1', '2022-11-06 00:35:51', '1', '2022-11-06 12:32:45', b'1', 1), (6, '测11', 10, '2022-11-15 00:00:00', '2022-12-29 23:59:59', '测试一下', '1', '2022-11-06 00:41:55', '1', '2022-11-06 00:41:55', b'0', 1), (7, '123', 40, '2022-11-01 00:00:00', '2022-12-20 23:59:59', '', '1', '2022-11-06 00:42:12', '1', '2022-11-06 12:32:36', b'1', 1), (8, '12', 10, '2022-11-09 00:00:00', '2022-12-21 23:59:59', '', '1', '2022-11-06 01:08:07', '1', '2022-11-06 12:36:35', b'0', 1), (9, '测试活动', 20, '2022-11-01 00:00:00', '2022-12-05 23:59:59', '', '1', '2022-11-06 11:48:40', '1', '2022-11-12 17:42:36', b'0', 1), (10, '满减一个商品', 10, '2022-11-08 00:00:00', '2022-11-09 23:59:59', '', '1', '2022-11-06 11:50:58', '1', '2022-11-07 20:24:31', b'0', 1), (11, '323', 10, '2022-12-08 00:00:00', '2023-01-20 23:59:59', '232', '1', '2022-12-04 15:18:05', '1', '2022-12-04 15:18:05', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for promotion_discount_product
-- ----------------------------
DROP TABLE IF EXISTS `promotion_discount_product`;
CREATE TABLE `promotion_discount_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号，主键自增',
  `activity_id` bigint NOT NULL COMMENT '活动编号',
  `spu_id` bigint NOT NULL DEFAULT -1 COMMENT '商品 SPU 编号',
  `sku_id` bigint NOT NULL COMMENT '商品 SKU 编号',
  `discount_type` int NOT NULL COMMENT '优惠类型\n     *\n     * 1-代金卷\n     * 2-折扣卷',
  `discount_percent` tinyint NULL DEFAULT NULL COMMENT '折扣百分比',
  `discount_price` int NULL DEFAULT NULL COMMENT '优惠金额，单位：分',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '限时折扣商品\n';

-- ----------------------------
-- Records of promotion_discount_product
-- ----------------------------
BEGIN;
INSERT INTO `promotion_discount_product` (`id`, `activity_id`, `spu_id`, `sku_id`, `discount_type`, `discount_percent`, `discount_price`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (5, 6, 2, 2, 1, NULL, 1322, '1', '2022-11-06 00:41:55', '1', '2022-11-06 00:41:55', b'0', 1), (6, 8, 1, 1, 1, NULL, 0, '1', '2022-11-06 01:08:07', '1', '2022-11-06 01:08:07', b'0', 1), (7, 9, 1, 1, 1, NULL, 0, '1', '2022-11-06 11:48:40', '1', '2022-11-12 17:37:18', b'1', 1), (8, 9, 2, 2, 2, 1, 0, '1', '2022-11-06 11:48:40', '1', '2022-11-12 17:37:18', b'1', 1), (9, 10, 4, 25, 1, NULL, 0, '1', '2022-11-06 11:50:58', '1', '2022-11-06 11:53:40', b'1', 1), (10, 10, 4, 25, 1, 0, 2, '1', '2022-11-06 11:58:49', '1', '2022-11-06 11:59:34', b'1', 1), (11, 10, 4, 25, 1, 0, 100, '1', '2022-11-06 12:04:43', '1', '2022-11-06 11:59:41', b'1', 1), (12, 10, 4, 25, 1, 0, 200, '1', '2022-11-06 12:04:49', '1', '2022-11-06 12:04:49', b'0', 1), (13, 10, 3, 6, 2, 30, NULL, '1', '2022-11-06 12:05:17', '1', '2022-11-06 12:01:15', b'1', 1), (14, 10, 3, 6, 2, 30, 0, '1', '2022-11-06 12:19:56', '1', '2022-11-06 12:19:56', b'0', 1), (15, 10, 2, 4, 1, NULL, 200, '1', '2022-11-06 12:19:56', '1', '2022-11-06 12:14:53', b'1', 1), (16, 10, 2, 4, 1, 0, 299, '1', '2022-11-06 12:20:02', '1', '2022-11-06 12:14:59', b'1', 1), (17, 10, 2, 4, 2, 20, 299, '1', '2022-11-06 12:20:08', '1', '2022-11-06 12:15:24', b'1', 1), (18, 9, 1, 1, 1, 0, 150, '1', '2022-11-12 17:42:36', '1', '2022-11-12 17:42:36', b'0', 1), (19, 9, 2, 2, 2, 15, 0, '1', '2022-11-12 17:42:36', '1', '2022-11-12 17:42:36', b'0', 1), (20, 11, 3, 6, 2, 10, 100, '1', '2022-12-04 15:18:05', '1', '2022-12-04 15:18:05', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for promotion_reward_activity
-- ----------------------------
DROP TABLE IF EXISTS `promotion_reward_activity`;
CREATE TABLE `promotion_reward_activity`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '活动编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '活动标题',
  `status` tinyint NOT NULL DEFAULT -1 COMMENT '活动状态',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `condition_type` tinyint NOT NULL DEFAULT -1 COMMENT '条件类型',
  `product_scope` tinyint NOT NULL COMMENT '商品范围',
  `product_spu_ids` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品 SPU 编号的数组',
  `rules` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '优惠规则的数组',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '满减送活动';

-- ----------------------------
-- Records of promotion_reward_activity
-- ----------------------------
BEGIN;
INSERT INTO `promotion_reward_activity` (`id`, `name`, `status`, `start_time`, `end_time`, `remark`, `condition_type`, `product_scope`, `product_spu_ids`, `rules`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (4, '测试活动', 40, '2022-11-25 00:00:00', '2022-12-23 23:59:59', '1234', 10, 2, '1,2', '[{\"limit\":1,\"discountPrice\":10,\"freeDelivery\":true,\"point\":10,\"couponIds\":[10,20],\"couponCounts\":[1,2]},{\"limit\":2,\"discountPrice\":20,\"freeDelivery\":false,\"point\":20,\"couponIds\":[30,40],\"couponCounts\":[3,4]}]', '1', '2022-11-05 00:54:34', '1', '2022-11-05 10:45:40', b'1', 1);
COMMIT;

-- ----------------------------
-- Table structure for promotion_seckill_activity
-- ----------------------------
DROP TABLE IF EXISTS `promotion_seckill_activity`;
CREATE TABLE `promotion_seckill_activity`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '秒杀活动编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '秒杀活动名称',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '活动状态 10未开始 20进行中 30已结束 40已关闭（手动）',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '备注',
  `start_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '活动开始时间',
  `end_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '活动结束时间',
  `sort` int NOT NULL DEFAULT 0 COMMENT '排序',
  `time_ids` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '秒杀时段id',
  `order_count` int NOT NULL DEFAULT 0 COMMENT '付款订单数',
  `user_count` int NOT NULL DEFAULT 0 COMMENT '付款人数',
  `total_price` int NOT NULL DEFAULT 0 COMMENT '订单实付金额，单位：分',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '秒杀活动';

-- ----------------------------
-- Records of promotion_seckill_activity
-- ----------------------------
BEGIN;
INSERT INTO `promotion_seckill_activity` (`id`, `name`, `status`, `remark`, `start_time`, `end_time`, `sort`, `time_ids`, `order_count`, `user_count`, `total_price`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (35, '测试秒杀活动1', 20, 'test1', '2022-11-04 00:00:00', '2022-12-08 00:00:00', 1, '26,27,28,29', 0, 0, 0, '1', '2022-12-03 15:26:58', '1', '2022-12-03 15:26:58', b'0', 1), (36, '测试秒杀活动2', 10, 'test2', '2022-12-04 00:00:00', '2022-12-09 00:00:00', 2, '27,28', 0, 0, 0, '1', '2022-12-03 15:27:31', '1', '2022-12-03 16:43:26', b'0', 1), (37, '测试秒杀活动3', 20, 'test', '2022-12-02 00:00:00', '2022-12-17 00:00:00', 3, '28,29', 0, 0, 0, '1', '2022-12-03 16:44:30', '1', '2022-12-03 16:44:30', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for promotion_seckill_product
-- ----------------------------
DROP TABLE IF EXISTS `promotion_seckill_product`;
CREATE TABLE `promotion_seckill_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '秒杀参与商品编号',
  `activity_id` bigint NOT NULL DEFAULT 0 COMMENT '秒杀活动id',
  `time_ids` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '秒杀时段id',
  `spu_id` bigint NOT NULL DEFAULT 0 COMMENT '商品spu_id',
  `sku_id` bigint NOT NULL DEFAULT 0 COMMENT '商品sku_id',
  `seckill_price` int NOT NULL DEFAULT 0 COMMENT '秒杀金额，单位：分',
  `stock` int NOT NULL DEFAULT 0 COMMENT '秒杀库存',
  `limit_buy_count` int NOT NULL DEFAULT 0 COMMENT '每人限购',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '秒杀参与商品';

-- ----------------------------
-- Records of promotion_seckill_product
-- ----------------------------
BEGIN;
INSERT INTO `promotion_seckill_product` (`id`, `activity_id`, `time_ids`, `spu_id`, `sku_id`, `seckill_price`, `stock`, `limit_buy_count`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (60, 35, '26,27,28,29', 1, 1, 20000, 5, 1, '1', '2022-12-03 15:26:58', '1', '2022-12-03 15:26:58', b'0', 1), (61, 35, '26,27,28,29', 2, 2, 30000, 5, 1, '1', '2022-12-03 15:26:58', '1', '2022-12-03 15:26:58', b'0', 1), (62, 35, '26,27,28,29', 2, 3, 30000, 5, 1, '1', '2022-12-03 15:26:58', '1', '2022-12-03 15:26:58', b'0', 1), (63, 35, '26,27,28,29', 2, 4, 30000, 5, 1, '1', '2022-12-03 15:26:58', '1', '2022-12-03 15:26:58', b'0', 1), (64, 36, '27,28,26', 2, 5, 30000, 5, 1, '1', '2022-12-03 15:27:31', '1', '2022-12-03 16:37:31', b'1', 1), (65, 36, '27,28', 3, 6, 20000, 5, 1, '1', '2022-12-03 15:27:31', '1', '2022-12-03 16:37:36', b'0', 1), (66, 36, '27,28', 5, 23, 20000, 5, 1, '1', '2022-12-03 15:27:31', '1', '2022-12-03 16:37:36', b'0', 1), (67, 36, '27,28,26', 6, 24, 40000, 5, 1, '1', '2022-12-03 15:27:31', '1', '2022-12-03 16:37:31', b'1', 1), (68, 37, '28,29', 4, 25, 30000, 5, 1, '1', '2022-12-03 16:44:30', '1', '2022-12-03 16:44:30', b'0', 1), (69, 37, '28,29', 8, 28, 10000, 5, 1, '1', '2022-12-03 16:44:30', '1', '2022-12-03 16:44:30', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for promotion_seckill_time
-- ----------------------------
DROP TABLE IF EXISTS `promotion_seckill_time`;
CREATE TABLE `promotion_seckill_time`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '秒杀时段名称',
  `start_time` time NOT NULL COMMENT '开始时间点',
  `end_time` time NOT NULL COMMENT '结束时间点',
  `seckill_activity_count` int NOT NULL DEFAULT 0 COMMENT '秒杀活动数量',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '秒杀时段';

-- ----------------------------
-- Records of promotion_seckill_time
-- ----------------------------
BEGIN;
INSERT INTO `promotion_seckill_time` (`id`, `name`, `start_time`, `end_time`, `seckill_activity_count`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (26, '上午场', '09:00:00', '11:50:00', 1, '1', '2022-11-19 15:36:11', '1', '2022-12-03 16:37:36', b'0', 1), (27, '中午场', '12:00:00', '13:30:00', 2, '1', '2022-11-19 15:36:36', '1', '2022-12-03 15:21:41', b'0', 1), (28, '下午场', '17:30:00', '19:00:00', 3, '1', '2022-11-19 15:37:23', '1', '2022-12-03 16:38:40', b'0', 1), (29, '晚间场', '21:00:00', '23:00:00', 2, '1', '2022-11-19 15:37:53', '1', '2022-12-03 16:38:40', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for trade_after_sale
-- ----------------------------
DROP TABLE IF EXISTS `trade_after_sale`;
CREATE TABLE `trade_after_sale`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '售后编号',
  `no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '售后流水号',
  `status` int NOT NULL DEFAULT 0 COMMENT '售后状态',
  `way` tinyint NOT NULL COMMENT '售后方式',
  `user_id` bigint UNSIGNED NOT NULL COMMENT '用户编号',
  `apply_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '申请原因',
  `apply_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '补充描述',
  `apply_pic_urls` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '补充凭证图片',
  `order_id` bigint UNSIGNED NOT NULL COMMENT '订单编号',
  `order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '订单流水号',
  `order_item_Id` bigint UNSIGNED NOT NULL COMMENT '订单项编号',
  `spu_id` bigint UNSIGNED NOT NULL COMMENT '商品 SPU 编号',
  `spu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商品 SPU 名称',
  `sku_id` bigint UNSIGNED NOT NULL COMMENT '商品 SKU 编号',
  `properties` json NULL COMMENT '商品属性数组，JSON 格式',
  `pic_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '商品图片',
  `count` int NOT NULL COMMENT '购买数量',
  `audit_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '审批时间',
  `audit_user_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '审批人',
  `audit_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '审批备注',
  `refund_price` int NOT NULL DEFAULT 0 COMMENT '退款金额，单位：分',
  `pay_refund_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '支付退款编号',
  `refund_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '退款时间',
  `logistics_id` bigint NULL DEFAULT NULL COMMENT '退货物流公司编号',
  `logistics_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '退货物流单号',
  `delivery_time` datetime NULL DEFAULT NULL COMMENT '退货时间',
  `receive_time` datetime NULL DEFAULT NULL COMMENT '收货时间',
  `receive_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '收货备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  `type` tinyint NULL DEFAULT NULL COMMENT '售后类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '交易订单明细表';

-- ----------------------------
-- Records of trade_after_sale
-- ----------------------------
BEGIN;
INSERT INTO `trade_after_sale` (`id`, `no`, `status`, `way`, `user_id`, `apply_reason`, `apply_description`, `apply_pic_urls`, `order_id`, `order_no`, `order_item_Id`, `spu_id`, `spu_name`, `sku_id`, `properties`, `pic_url`, `count`, `audit_time`, `audit_user_id`, `audit_reason`, `refund_price`, `pay_refund_id`, `refund_time`, `logistics_id`, `logistics_no`, `delivery_time`, `receive_time`, `receive_reason`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`, `type`) VALUES (1, '20221122', 10, 10, 247, 'biu', 'hhaha', NULL, 12, '2023', 24, 4, 'iphone14 pro\n', 12, '[{\"valueId\": 4, \"propertyId\": 2}]', 'http://test.yudao.iocoder.cn/e1fdd7271685ec143a0900681606406621717a666ad0b2798b096df41422b32f.png', 1, '2022-11-19 20:41:14', NULL, NULL, 20, NULL, '2022-11-19 20:41:14', NULL, NULL, NULL, NULL, NULL, '', '2022-11-19 20:41:14', '', '2022-12-09 00:13:39', b'0', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for trade_after_sale_log
-- ----------------------------
DROP TABLE IF EXISTS `trade_after_sale_log`;
CREATE TABLE `trade_after_sale_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint NOT NULL COMMENT '用户编号',
  `user_type` tinyint NOT NULL COMMENT '用户类型',
  `after_sale_id` bigint NOT NULL COMMENT '售后编号',
  `order_id` bigint UNSIGNED NOT NULL COMMENT '订单编号',
  `order_item_Id` bigint UNSIGNED NOT NULL COMMENT '订单项编号',
  `before_status` tinyint NULL DEFAULT NULL COMMENT '售后状态（之前）',
  `after_status` tinyint NOT NULL COMMENT '售后状态（之后）',
  `content` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '操作明细',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '交易售后日志';

-- ----------------------------
-- Records of trade_after_sale_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for trade_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `trade_cart_item`;
CREATE TABLE `trade_cart_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号，唯一自增。',
  `user_id` bigint NOT NULL COMMENT '用户编号',
  `spu_id` bigint NOT NULL COMMENT '商品 SPU 编号',
  `sku_id` bigint NOT NULL COMMENT '商品 SKU 编号',
  `selected` bit(1) NOT NULL COMMENT '是否选中',
  `count` int NOT NULL COMMENT '商品购买数量',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'cart_item';

-- ----------------------------
-- Records of trade_cart_item
-- ----------------------------
BEGIN;
INSERT INTO `trade_cart_item` (`id`, `user_id`, `spu_id`, `sku_id`, `selected`, `count`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (35, 1, 1, 1, b'0', 5, '1', '2022-09-11 20:44:44', '1', '2022-09-12 17:08:51', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for trade_express_company
-- ----------------------------
DROP TABLE IF EXISTS `trade_express_company`;
CREATE TABLE `trade_express_company`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '物流公司编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '物流公司名称',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '物流公司logo',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '物流公司网址',
  `sort` int NOT NULL DEFAULT 0 COMMENT '排序',
  `kd_bird_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '编码（快递鸟）',
  `kd100_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '编码（快递100）',
  `cainiao_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '编码（菜鸟）',
  `support_electronic_sheet` tinyint NOT NULL DEFAULT 0 COMMENT '是否支持电子面单（0不支持  1支持）',
  `print_style` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '电子面单打印风格',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '系统物流公司表';

-- ----------------------------
-- Records of trade_express_company
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for trade_express_template
-- ----------------------------
DROP TABLE IF EXISTS `trade_express_template`;
CREATE TABLE `trade_express_template`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '运费模板编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '模板名称',
  `price_type` tinyint NOT NULL DEFAULT 0 COMMENT '运费计算方式1.按件2重量',
  `defaulted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否为默认模板',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '运费模板';

-- ----------------------------
-- Records of trade_express_template
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for trade_express_template_item
-- ----------------------------
DROP TABLE IF EXISTS `trade_express_template_item`;
CREATE TABLE `trade_express_template_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '运费模板细节编号',
  `template_id` bigint NOT NULL DEFAULT 0 COMMENT '模板id',
  `area_ids` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '可配送地址id序列',
  `start_unit` int NOT NULL DEFAULT 0 COMMENT '起步计算标准（首重，首件）',
  `start_unit_price` int NOT NULL DEFAULT 0 COMMENT '起步计算价格，单位（分）',
  `plus_per_unit` int NOT NULL DEFAULT 0 COMMENT '续步计算标准（每件，每kg）',
  `plus_per_unit_price` int NOT NULL DEFAULT 0 COMMENT '续步计算价格，单位（分）',
  `price_type` tinyint NOT NULL DEFAULT 0 COMMENT '运费计算方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '运费模板细节';

-- ----------------------------
-- Records of trade_express_template_item
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for trade_order
-- ----------------------------
DROP TABLE IF EXISTS `trade_order`;
CREATE TABLE `trade_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '订单流水号',
  `type` int NOT NULL DEFAULT 0 COMMENT '订单类型：[0:普通订单 1:秒杀订单 2:拼团订单 3:砍价订单]',
  `terminal` int NOT NULL COMMENT '订单来源终端：[1:小程序 2:H5 3:iOS 4:安卓]',
  `user_id` bigint UNSIGNED NOT NULL COMMENT '用户编号',
  `user_ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '用户 IP',
  `user_remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户备注',
  `status` int NOT NULL DEFAULT 0 COMMENT '订单状态：[0:待付款 1:待发货 2:待收货 3:已完成 4:已关闭]',
  `product_count` int NOT NULL COMMENT '购买的商品数量',
  `cancel_type` int NULL DEFAULT NULL COMMENT '取消类型：[10:超时未支付 20:退款关闭 30:买家取消 40:已通过货到付款交易]',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '商家备注',
  `pay_order_id` bigint NULL DEFAULT NULL COMMENT '支付订单编号',
  `payed` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否已支付：[0:未支付 1:已经支付过]',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '订单支付时间',
  `pay_channel_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '支付成功的支付渠道',
  `finish_time` datetime NULL DEFAULT NULL COMMENT '订单完成时间',
  `cancel_time` datetime NULL DEFAULT NULL COMMENT '订单取消时间',
  `original_price` int NOT NULL DEFAULT 0 COMMENT '商品原价（总），单位：分',
  `order_price` int NOT NULL DEFAULT 0 COMMENT '订单原价（总），单位：分',
  `discount_price` int NOT NULL DEFAULT 0 COMMENT '订单优惠（总），单位：分',
  `delivery_price` int NOT NULL DEFAULT 0 COMMENT '运费金额，单位：分',
  `adjust_price` int NOT NULL DEFAULT 0 COMMENT '订单调价（总），单位：分',
  `pay_price` int NOT NULL DEFAULT 0 COMMENT '应付金额（总），单位：分',
  `delivery_template_id` bigint NULL DEFAULT NULL COMMENT '配置模板的编号',
  `logistics_id` bigint NULL DEFAULT NULL COMMENT '发货物流公司编号',
  `logistics_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '物流公司单号',
  `delivery_status` tinyint NOT NULL DEFAULT 0 COMMENT '发货状态',
  `delivery_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `receive_time` datetime NULL DEFAULT NULL COMMENT '收货时间',
  `receiver_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '收件人名称',
  `receiver_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '收件人手机',
  `receiver_area_id` int NOT NULL COMMENT '收件人地区编号',
  `receiver_post_code` int NULL DEFAULT NULL COMMENT '收件人邮编',
  `receiver_detail_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '收件人详细地址',
  `after_sale_status` int NOT NULL DEFAULT 0 COMMENT '售后状态',
  `refund_price` int NOT NULL DEFAULT 0 COMMENT '退款金额，单位：分',
  `coupon_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '优惠劵编号',
  `coupon_price` int NOT NULL DEFAULT 0 COMMENT '优惠劵减免金额，单位：分',
  `point_price` int NOT NULL DEFAULT 0 COMMENT '积分抵扣的金额',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '交易订单表';

-- ----------------------------
-- Records of trade_order
-- ----------------------------
BEGIN;
INSERT INTO `trade_order` (`id`, `no`, `type`, `terminal`, `user_id`, `user_ip`, `user_remark`, `status`, `product_count`, `cancel_type`, `remark`, `pay_order_id`, `payed`, `pay_time`, `pay_channel_code`, `finish_time`, `cancel_time`, `original_price`, `order_price`, `discount_price`, `delivery_price`, `adjust_price`, `pay_price`, `delivery_template_id`, `logistics_id`, `logistics_no`, `delivery_status`, `delivery_time`, `receive_time`, `receiver_name`, `receiver_mobile`, `receiver_area_id`, `receiver_post_code`, `receiver_detail_address`, `after_sale_status`, `refund_price`, `coupon_id`, `coupon_price`, `point_price`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (21, '1595061082189692928', 0, 10, 247, '127.0.0.1', '我是备注', 0, 1, NULL, NULL, NULL, b'0', NULL, 'wx_pub', NULL, NULL, 200, 200, 0, 0, 0, 200, NULL, NULL, NULL, 0, NULL, NULL, 'yunai', '15601691300', 610632, 200000, '芋道源码 233 号 666 室', 0, 0, NULL, 0, 0, '247', '2022-11-22 22:26:11', '247', '2022-12-10 11:07:32', b'0', 1), (23, '1595067235174912000', 0, 11, 247, '127.0.0.1', '我是备注', 0, 1, NULL, NULL, 125, b'0', NULL, NULL, NULL, NULL, 200, 200, 0, 0, 0, 200, NULL, NULL, NULL, 0, NULL, NULL, 'yunai', '15601691300', 610632, 200000, '芋道源码 233 号 666 室', 0, 0, NULL, 0, 0, '247', '2022-11-22 22:50:38', '247', '2022-12-10 11:08:57', b'0', 1), (24, '1595061082189692928', 0, 10, 248, '127.0.0.1', '我是备注', 0, 1, NULL, NULL, NULL, b'0', NULL, 'wx_pub', NULL, NULL, 200, 200, 0, 0, 0, 200, NULL, NULL, NULL, 0, NULL, NULL, 'yunai', '15601691300', 610632, 200000, '芋道源码 233 号 666 室', 0, 0, NULL, 0, 0, '248', '2022-12-13 22:26:11', '248', '2022-12-13 11:07:32', b'0', 1), (25, '1595067235174912000', 0, 11, 248, '127.0.0.1', '我是备注', 0, 1, NULL, NULL, 125, b'0', NULL, NULL, NULL, NULL, 200, 200, 0, 0, 0, 200, NULL, NULL, NULL, 0, NULL, NULL, 'yunai', '15601691300', 610632, 200000, '芋道源码 233 号 666 室', 0, 0, NULL, 0, 0, '248', '2022-12-13 22:50:38', '248', '2022-12-13 11:08:57', b'0', 1);
COMMIT;

-- ----------------------------
-- Table structure for trade_order_item
-- ----------------------------
DROP TABLE IF EXISTS `trade_order_item`;
CREATE TABLE `trade_order_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单项编号',
  `user_id` bigint UNSIGNED NOT NULL COMMENT '用户编号',
  `order_Id` bigint UNSIGNED NOT NULL COMMENT '订单编号',
  `spu_id` bigint UNSIGNED NOT NULL COMMENT '商品 SPU 编号',
  `spu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商品 SPU 名称',
  `sku_id` bigint UNSIGNED NOT NULL COMMENT '商品 SKU 编号',
  `properties` json NULL COMMENT '商品属性数组，JSON 格式',
  `pic_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '商品图片',
  `count` int NOT NULL COMMENT '购买数量',
  `commented` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否评论：[0:未评论 1:已评论]',
  `original_price` int NOT NULL DEFAULT 0 COMMENT '商品原价（总），单位：分',
  `original_unit_price` int NOT NULL DEFAULT 0 COMMENT '商品原价（单），单位：分',
  `discount_price` int NOT NULL DEFAULT 0 COMMENT '商品级优惠（总），单位：分',
  `pay_price` int NOT NULL DEFAULT 0 COMMENT '子订单实付金额，不算主订单分摊金额，单位：分',
  `order_part_price` int NOT NULL DEFAULT 0 COMMENT '子订单分摊金额（总），单位：分',
  `order_divide_price` int NOT NULL DEFAULT 0 COMMENT '分摊后子订单实付金额（总），单位：分',
  `after_sale_status` int NOT NULL DEFAULT 0 COMMENT '售后状态',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '交易订单明细表';

-- ----------------------------
-- Records of trade_order_item
-- ----------------------------
BEGIN;
INSERT INTO `trade_order_item` (`id`, `user_id`, `order_Id`, `spu_id`, `spu_name`, `sku_id`, `properties`, `pic_url`, `count`, `commented`, `original_price`, `original_unit_price`, `discount_price`, `pay_price`, `order_part_price`, `order_divide_price`, `after_sale_status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES (1, 247, 21, 10, '好利来', 29, '[{\"valueId\": 3, \"propertyId\": 2}]', 'https://cdn.pixabay.com/photo/2022/11/18/14/00/christmas-tree-7600201_640.jpg', 1, b'0', 200, 200, 0, 200, 0, 200, 0, '247', '2022-11-22 22:26:15', '247', '2022-12-10 11:16:26', b'0', 1), (2, 247, 21, 10, '好利来（测试）', 29, '[{\"valueId\": 3, \"propertyId\": 2}]', 'https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_1280.jpg', 1, b'0', 200, 200, 0, 200, 0, 200, 0, '247', '2022-11-22 22:26:15', '247', '2022-12-10 11:16:44', b'0', 1), (3, 247, 23, 10, '好利来', 29, '[{\"valueId\": 4, \"propertyId\": 2}]', 'https://cdn.pixabay.com/photo/2022/12/06/06/21/lavender-7638368_1280.jpg', 1, b'0', 200, 200, 0, 200, 0, 200, 0, '247', '2022-11-22 22:50:39', '247', '2022-12-10 11:16:35', b'0', 1), (4, 248, 24, 10, '好利来', 29, '[{\"valueId\": 3, \"propertyId\": 2}]', 'https://cdn.pixabay.com/photo/2022/11/18/14/00/christmas-tree-7600201_640.jpg', 1, b'0', 200, 200, 0, 200, 0, 200, 0, '248', '2022-11-22 22:26:15', '248', '2022-12-13 17:50:27', b'0', 1), (5, 248, 24, 10, '好利来（测试）', 29, '[{\"valueId\": 3, \"propertyId\": 2}]', 'https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_1280.jpg', 1, b'0', 200, 200, 0, 200, 0, 200, 0, '248', '2022-11-22 22:26:15', '248', '2022-12-13 17:50:31', b'0', 1), (6, 248, 25, 10, '好利来', 29, '[{\"valueId\": 4, \"propertyId\": 2}]', 'https://cdn.pixabay.com/photo/2022/12/06/06/21/lavender-7638368_1280.jpg', 1, b'0', 200, 200, 0, 200, 0, 200, 0, '248', '2022-11-22 22:50:39', '248', '2022-12-13 17:50:34', b'0', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
