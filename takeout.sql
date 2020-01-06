/*
 Navicat Premium Data Transfer

 Source Server         : 本地Mysql
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : takeout

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 06/01/2020 10:34:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `account` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户登入账号',
  `pwd` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户登入密码',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户姓名',
  `tel` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户联系电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户联系地址',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (2, 'yyy', '666', 'en', '66666', 'Xiamen China', NULL);
INSERT INTO `client` VALUES (3, 'xxx', '666', 'en', '66666', 'Xiamen China', NULL);
INSERT INTO `client` VALUES (4, 'zzz', '666', 'en', '66666', 'Xiamen China', NULL);
INSERT INTO `client` VALUES (5, 'qqq', '111', 'en', '66666', 'Xiamen China', NULL);
INSERT INTO `client` VALUES (6, 'www', '666', 'en', '66666', 'Xiamen China', NULL);
INSERT INTO `client` VALUES (7, 'aaa', '777', 'en', '66666', 'Xiamen China', NULL);
INSERT INTO `client` VALUES (8, 'bbb', '666', 'en', NULL, NULL, NULL);
INSERT INTO `client` VALUES (9, 'qwe', '666', 'en', '66666', 'Xiamen China', NULL);
INSERT INTO `client` VALUES (10, '1', '1', '', '', '', NULL);
INSERT INTO `client` VALUES (11, 'wkb', '12345', '吴凯斌', '17632948032', '福州市', NULL);
INSERT INTO `client` VALUES (12, 'vincent', '123', 'vincent', '111', '111', NULL);

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dish_type_id` bigint(10) NULL DEFAULT NULL COMMENT '菜品类型',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜品名',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参照图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES (2, 4, '麻辣烫', '麻辣烫', 30.00, '/img/dde7c2ce477247fc8b222f4fe5b1849e.jpg');
INSERT INTO `dish` VALUES (3, 3, '剁椒鱼头', '剁椒鱼头', 45.00, '/img/46b232b12705412b9dfca8ff0603d6a3.jpg');
INSERT INTO `dish` VALUES (4, 14, '腐竹炒肉', '我喜欢', 35.00, '/img/316c02b0e69e432c832d5ecce76bc0a9.jpg');
INSERT INTO `dish` VALUES (5, 14, '荔枝肉', '我喜欢', 38.00, '/img/c69e606d32174deebca29c0f1dfed5c1.jpg');
INSERT INTO `dish` VALUES (6, 11, '红烧肉套餐饭', '好吃不上火', 42.00, '/img/694190fd36134a619618be97ef1907f3.jpg');
INSERT INTO `dish` VALUES (11, 14, '凤梨虾球', '我喜欢', 35.00, '/img/4a0da08741d446ce9d48d97101fa17ee.jpg');
INSERT INTO `dish` VALUES (12, 20, '鲜肉混沌', '鲜肉混沌', 10.00, '/img/d169da8f315a4c6483d94eb49cba3025.jpg');
INSERT INTO `dish` VALUES (13, 20, '猪肉韭菜馅饺子', '猪肉韭菜馅饺子', 20.00, '/img/4dcea52b62cd469a86880e4e759d2180.jpg');
INSERT INTO `dish` VALUES (14, 19, '紫菜蛋汤', '紫菜蛋汤', 15.00, '/img/97a23586ce4f4191ac80686d969d9700.jpg');
INSERT INTO `dish` VALUES (15, 19, '苦瓜瘦肉汤', '苦瓜瘦肉汤', 25.00, '/img/47b89022e3e84f1eac53d6fa97b18f27.jpg');
INSERT INTO `dish` VALUES (16, 19, '鱼头豆腐汤', '鱼头豆腐汤', 30.00, '/img/ff5343c2f6d5461e888fc64ca4c99e31.jpg');
INSERT INTO `dish` VALUES (17, 18, '小龙虾', '小龙虾', 88.00, '/img/cb89c91ee4e342678d89aaa87d4bc927.jpg');
INSERT INTO `dish` VALUES (18, 17, '牛肉火锅', '牛肉火锅', 70.00, '/img/d5d308c5cc104cf78d2e6d8a37779f95.jpg');
INSERT INTO `dish` VALUES (19, 16, '韩式石锅拌饭', '韩式石锅拌饭', 25.00, '/img/238bd09a3e7e43eda53f3752a3dff821.jpg');
INSERT INTO `dish` VALUES (20, 15, '寿司套餐', '寿司套餐', 22.00, '/img/42f55addd0c84b488303db2521628342.jpg');
INSERT INTO `dish` VALUES (21, 10, '韩国炸鸡', '韩国炸鸡', 35.00, '/img/56303edcbfd14ffb95aaaa9c63372bf0.jpg');
INSERT INTO `dish` VALUES (22, 2, '意面披萨', '意面披萨', 35.00, '/img/79aa751f169e4f5c83b8890dce4d3b04.jpg');
INSERT INTO `dish` VALUES (23, 2, '米饭', '米饭', 2.00, '/img/15c2ccb6a11e4d36a04aae5b4353de09.jpg');
INSERT INTO `dish` VALUES (24, 2, '牛肉面', '牛肉面', 20.00, '/img/9da255a4d2eb41ecb4321e32cc656657.jpg');
INSERT INTO `dish` VALUES (25, 8, '餐具', '餐具', 2.00, '/img/7293121cfebf425ebdc6f3aba63cc4d9.jpg');

-- ----------------------------
-- Table structure for dish_type
-- ----------------------------
DROP TABLE IF EXISTS `dish_type`;
CREATE TABLE `dish_type`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜品类型名',
  `detail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish_type
-- ----------------------------
INSERT INTO `dish_type` VALUES (2, '主食', '主食');
INSERT INTO `dish_type` VALUES (3, '川湘菜', '辣');
INSERT INTO `dish_type` VALUES (4, '麻辣烫冒菜', '非常好吃的');
INSERT INTO `dish_type` VALUES (8, '餐具', '工具');
INSERT INTO `dish_type` VALUES (10, '汉堡薯条', '炸鸡');
INSERT INTO `dish_type` VALUES (11, '快餐便当', '快速');
INSERT INTO `dish_type` VALUES (14, '地方菜系', '地方味道');
INSERT INTO `dish_type` VALUES (15, '日料寿司', '日料');
INSERT INTO `dish_type` VALUES (16, '韩式料理', '韩式');
INSERT INTO `dish_type` VALUES (17, '火锅串串', '火锅');
INSERT INTO `dish_type` VALUES (18, '龙虾烧烤', '夜宵');
INSERT INTO `dish_type` VALUES (19, '精品汤类', '汤');
INSERT INTO `dish_type` VALUES (20, '饺子混沌', '饺子混沌');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工账号',
  `pwd` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工密码',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工电话',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工姓名',
  `health_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '健康证图片',
  `health_expire` date NULL DEFAULT NULL COMMENT '健康证过期时间',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工账号状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (7, 'zxc', '666', '777', 'en', '/img/cb41790631a14fec91854a37d1d76420.jpg', '2020-12-12', NULL);
INSERT INTO `employee` VALUES (8, 'wxy', '123', '12345', 'qqq', '/img/4500961aeb8749678e66335e4cecad41.jpg', '2020-12-18', NULL);
INSERT INTO `employee` VALUES (9, 'ljx', '12345', '13674563127', '林锦仙', '/img/aaf9f5404e704ed2832be3cdda84d891.jpg', '2020-01-31', NULL);

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `emp_id` bigint(10) NULL DEFAULT NULL COMMENT '入库人员',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '食材名',
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购来源',
  `stock` int(10) NULL DEFAULT NULL COMMENT '库存',
  `expire_time` date NULL DEFAULT NULL COMMENT '过期时间',
  `report_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报告图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (4, 9, '陈醋', '山西xxx供应商', 15, '2019-12-29', '/img/2968a417c9eb48eda333a3bddda73b9c.jpg');
INSERT INTO `food` VALUES (6, 8, '好大的大闸蟹', '澄阳xx供应', 15, '2020-02-20', '/img/9cd17c27dd624a77ac011278f326b939.jpg');
INSERT INTO `food` VALUES (8, 9, '上海青', '江西', 35, '2020-01-01', '/img/1dfb76e9b2fb4367861f6dd3bd67ec06.jpg');
INSERT INTO `food` VALUES (11, 9, '虾米', '平潭', 103, '2020-01-08', '/img/65dffa136adf483890467180ee9276df.jpg');
INSERT INTO `food` VALUES (12, 9, '好大的大闸蟹', '澄阳xx供应', 15, '2020-02-20', '/img/309ad6b7aa3a4aeeb86ba6c4cf7a58fd.jpg');
INSERT INTO `food` VALUES (16, 8, '大wwww闸蟹', '海南', 12, '2020-01-11', '/img/5d4d3bd224564f14be7eaff2eb49aa11.jpg');
INSERT INTO `food` VALUES (22, 9, '排骨', '永泰', 20, '2020-01-10', '/img/a1ef6f4dd1554cf0910265b3850a8cc7.jpg');

-- ----------------------------
-- Table structure for leave_message
-- ----------------------------
DROP TABLE IF EXISTS `leave_message`;
CREATE TABLE `leave_message`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(10) NOT NULL COMMENT '客户id',
  `dish_id` bigint(10) NOT NULL COMMENT '菜品id',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户留言',
  `leave_date` date NULL DEFAULT NULL COMMENT '留言时间',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言类型(1、评价；2、投诉)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave_message
-- ----------------------------
INSERT INTO `leave_message` VALUES (1, 2, 2, '五星好评', '2019-12-15', '1');
INSERT INTO `leave_message` VALUES (8, 9, 3, '111', '2020-01-02', '1');
INSERT INTO `leave_message` VALUES (16, 9, 11, '还行', '2020-01-03', '1');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `emp_id` bigint(10) NULL DEFAULT NULL COMMENT '员工id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `create_time` date NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (3, 2, '优惠活动3', '强强强强强强强强强强', '2019-12-15');
INSERT INTO `notice` VALUES (4, 2, '优惠活动4', '强强强强强强强强强强', '2019-12-15');
INSERT INTO `notice` VALUES (5, 2, '优惠活动5', '强强强强强强强强强强', '2019-12-15');
INSERT INTO `notice` VALUES (6, 2, '优惠活动6', '强强强强强强强强强强', '2019-12-15');
INSERT INTO `notice` VALUES (7, 2, '优惠活动7', '强强强强强强强强强强', '2019-12-15');
INSERT INTO `notice` VALUES (8, 2, '优惠活动8', '强强强强强强强强强强', '2019-12-15');
INSERT INTO `notice` VALUES (9, 2, '优惠活动9', '强强强强强强强强强强', '2019-12-15');
INSERT INTO `notice` VALUES (10, 2, '优惠活动10', '强强强强强强强强强强', '2019-12-15');
INSERT INTO `notice` VALUES (11, 2, '优惠活动11', '强强强强强强强强强强', '2019-12-15');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `clientId` bigint(11) NULL DEFAULT NULL,
  `total_price` decimal(10, 2) NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态（1.已下单 2.已发货 3.已收货）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (2, 5, 16.66, '2019-12-12 16:50:55', '1');
INSERT INTO `order` VALUES (3, 5, 56.62, '2019-12-13 16:53:08', '2');
INSERT INTO `order` VALUES (4, 2, 26.66, '2019-12-13 16:56:28', '3');
INSERT INTO `order` VALUES (5, 2, 609.90, '2019-12-16 16:59:21', '2');
INSERT INTO `order` VALUES (6, 2, 859.00, '2019-12-17 11:38:25', '1');
INSERT INTO `order` VALUES (7, 11, 64.00, '2020-01-04 18:41:16', '1');
INSERT INTO `order` VALUES (8, 11, 70.00, '2020-01-04 18:43:02', '1');
INSERT INTO `order` VALUES (9, 11, 86.00, '2020-01-04 18:43:57', '1');
INSERT INTO `order` VALUES (10, 3, 78.00, '2020-01-04 18:47:33', '1');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(11) NOT NULL,
  `dish_id` bigint(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (1, 2, 2, 1, 6.66);
INSERT INTO `order_item` VALUES (2, 2, 3, 1, 10.00);
INSERT INTO `order_item` VALUES (3, 3, 2, 7, 46.62);
INSERT INTO `order_item` VALUES (4, 3, 3, 1, 10.00);
INSERT INTO `order_item` VALUES (5, 4, 2, 1, 6.66);
INSERT INTO `order_item` VALUES (6, 4, 3, 2, 20.00);
INSERT INTO `order_item` VALUES (7, 5, 3, 1, 10.00);
INSERT INTO `order_item` VALUES (8, 5, 2, 1, 79.90);
INSERT INTO `order_item` VALUES (9, 5, 4, 1, 520.00);
INSERT INTO `order_item` VALUES (10, 6, 2, 10, 799.00);
INSERT INTO `order_item` VALUES (11, 6, 3, 6, 60.00);
INSERT INTO `order_item` VALUES (12, 7, 24, 1, 20.00);
INSERT INTO `order_item` VALUES (13, 7, 20, 2, 44.00);
INSERT INTO `order_item` VALUES (14, 8, 21, 1, 35.00);
INSERT INTO `order_item` VALUES (15, 8, 22, 1, 35.00);
INSERT INTO `order_item` VALUES (16, 9, 25, 1, 2.00);
INSERT INTO `order_item` VALUES (17, 9, 24, 2, 40.00);
INSERT INTO `order_item` VALUES (18, 9, 20, 2, 44.00);
INSERT INTO `order_item` VALUES (19, 10, 25, 2, 4.00);
INSERT INTO `order_item` VALUES (20, 10, 23, 2, 4.00);
INSERT INTO `order_item` VALUES (21, 10, 21, 2, 70.00);

-- ----------------------------
-- Table structure for spot_check
-- ----------------------------
DROP TABLE IF EXISTS `spot_check`;
CREATE TABLE `spot_check`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `emp_id` bigint(10) NULL DEFAULT NULL COMMENT '抽查人id',
  `check_time` datetime(0) NULL DEFAULT NULL COMMENT '抽查时间',
  `dish_id` bigint(10) NULL DEFAULT NULL COMMENT '抽查菜品id',
  `result` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '抽查结果(0、不合格，1、合格)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spot_check
-- ----------------------------
INSERT INTO `spot_check` VALUES (2, 9, '2020-01-02 17:00:15', 4, '合格');
INSERT INTO `spot_check` VALUES (3, 9, '2020-01-02 17:00:22', 3, '合格');
INSERT INTO `spot_check` VALUES (5, 9, '2020-01-02 18:30:47', 5, '不合格');

-- ----------------------------
-- Table structure for tablewear
-- ----------------------------
DROP TABLE IF EXISTS `tablewear`;
CREATE TABLE `tablewear`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `check_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tablewear
-- ----------------------------
INSERT INTO `tablewear` VALUES (1, '/img/1c4402a2fd0444c284f70e074097ab0f.jpg');

SET FOREIGN_KEY_CHECKS = 1;
