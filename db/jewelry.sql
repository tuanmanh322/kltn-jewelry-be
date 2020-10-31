/*
 Navicat Premium Data Transfer

 Source Server         : databaseMysql
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : jewelry

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 01/11/2020 00:04:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_user` bigint NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL,
  `id_product` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for cart_order
-- ----------------------------
DROP TABLE IF EXISTS `cart_order`;
CREATE TABLE `cart_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_cart` bigint NULL DEFAULT NULL,
  `id_order` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_order
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, NULL, 'Nhẫn nữ');
INSERT INTO `category` VALUES (2, NULL, 'Nhẫn nam');
INSERT INTO `category` VALUES (3, NULL, 'Dây chuyền');
INSERT INTO `category` VALUES (4, NULL, 'Đá ruby');
INSERT INTO `category` VALUES (5, NULL, 'Đá rapphire');
INSERT INTO `category` VALUES (6, NULL, 'Lắc');
INSERT INTO `category` VALUES (7, NULL, 'Bông tai');
INSERT INTO `category` VALUES (8, NULL, 'Đồng hồ nữ');
INSERT INTO `category` VALUES (9, NULL, 'Đồng hồ nam');
INSERT INTO `category` VALUES (10, NULL, 'Charm');

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES (1, 'Vàng 14K');
INSERT INTO `color` VALUES (2, 'Vàng 18K');
INSERT INTO `color` VALUES (3, 'Vàng 24K');
INSERT INTO `color` VALUES (4, 'Bạc  trắng');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES (1, 'a', 'test123@gmail.com', 'tets', '1234567891');

-- ----------------------------
-- Table structure for new
-- ----------------------------
DROP TABLE IF EXISTS `new`;
CREATE TABLE `new`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `thumbnails` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES (1, NULL, 'Đám cưới - một “happy ending\" dành cho một cuộc tình nhưng cũng là cánh cửa mở ra một cuộc sống hoàn toàn khác với cả đôi bên. Khi ta không còn độc thân, khi ta có một người “bạn đời\" ở bên cạnh, đồng nghĩa với việc trách nhiệm nhân đôi, khó khăn ...', '2020-10-20', 'http://localhost:6789/api/file-load/co_dau_6b0f3f59bea4436e8dc7c6d54f9ce837_1024x1024.jpg', 'CẨM NANG SAU CƯỚI: NHỮNG ĐIỀU CẦN BIẾT KHI TA ĐÃ VỀ CHUNG MỘT NHÀ');
INSERT INTO `new` VALUES (2, NULL, 'Đám cưới tại Việt Nam có khá nhiều thủ tục phải chuẩn bị, 7 ngày trước đám cưới là thời điểm mọi công việc đã được sắp xếp khá ổn từ chụp ảnh cưới, mời bạn bè cho tới lên kế hoạch đặt cỗ,….mọi thứ gần như đã sẵn sàng. Vậy 7 ngày trước đám cưới cô ...', '2020-10-13', 'http://localhost:6789/api/file-load/pearl_7-2_027dd4c267d244bd8f73f429dbfc7900_1024x1024.jpg', 'Tips làm đẹp 7 ngày trước đám cưới mọi cô dâu nhất định phải biết');
INSERT INTO `new` VALUES (3, NULL, 'Với cánh mày râu việc nghĩ mua gì làm quà tặng phụ nữ đã khiến họ rối bời thì đến khâu lựa chọn kiểu dáng, mẫu mã sản phẩm phù hợp với người nhận cũng rất quan trọng, phải thật sự tinh tế và tốn khá nhiều thời gian để chuẩn bị một set quà tặng vừa...', '2020-10-09', 'http://localhost:6789/api/file-load/htj09796-min_6569b3f845ec4309a1ff8dd9bc2f5af7.jpg', 'Bí Kíp Chọn Quà 20/10 Ý Nghĩa Phù Hợp Cho Từng Đối Tượng');
INSERT INTO `new` VALUES (4, NULL, 'P/S I LOVE YOU - 20/10 NÀY, HÃY NÓI LỜI YÊU THƯƠNG ĐẾN NGƯỜI PHỤ NỮ CỦA BẠN!\r\n\r\nTâm lý đàn ông thường ngại ngùng khi thể hiện tình cảm bằng lời nói. Đôi khi tặng 1 món quà nhưng lời yêu thương “đính kèm” lại chẳng dám nói ra. Chính vì thế, thông điệp 20/10 năm nay của Huy Thanh, đó là muốn giúp các anh chuẩn bị một món quà gói gọn cả những lời yêu thương - “all in one” gửi tặng những người phụ nữ của mình. ', '2020-10-05', 'http://localhost:6789/api/file-load/co_dau_6b0f3f59bea4436e8dc7c6d54f9ce837_1024x1024.jpg', 'P/S I LOVE YOU - 20/10 NÀY, HÃY NÓI LỜI YÊU THƯƠNG ĐẾN NGƯỜI PHỤ NỮ CỦA BẠN!');

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hoten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transfer_done` int NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `id_user` bigint NOT NULL,
  `total_money` decimal(6, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_product
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint NOT NULL,
  `created_date` date NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_category` bigint NULL DEFAULT NULL,
  `id_sale` bigint NULL DEFAULT NULL,
  `id_mark` bigint NULL DEFAULT NULL,
  `image_product` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ma_sp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(19, 2) NULL DEFAULT NULL,
  `sell_count` int NULL DEFAULT NULL,
  `total_item` int NULL DEFAULT NULL,
  `id_color` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '2020-05-13', 'Dây chuyền DCMAMD 410 tạo hình vầng trăng khuyết với những dải đá CZ lấp đầy bề mặt đầy nổi bật. Điểm nhấn chính là biểu tượng mũi tên có gắn viên đá trằg sáng càng khiến thiết kế nổi bật và ấn tượng.', 1, 1, 1, 'http://localhost:6789/api/file-load/gdmrwkxx025.006-day-chuyen-pnj-vang-trang-10k.png', 'DCMAMD410', 'Dây chuyền DCMAMD410', 328800.00, 0, 99, 1);
INSERT INTO `product` VALUES (2, '2020-10-17', 'Giá tham khảo, có thể thay đổi theo trọng lượng, size tay và giá vàng theo thời điểm.', 2, NULL, 1, 'http://localhost:6789/api/file-load/gdmrwkxx025.006-day-chuyen-pnj-vang-trang-10k.png', 'PTB 267', 'Bộ trang sức Fireflies PTB 267', 8209000.00, 0, 99, 2);
INSERT INTO `product` VALUES (3, '2020-06-24', '\" Nhẫn Cưới Chung Đôi \" Thu hút bởi kiểu dáng tinh xảo, hài hòa đến từng đường nét, nhẫn cưới \"Chung Đôi\" với thiết kế nhẫn nam và nhẫn nữ đồng nhất, mang đến ấn tượng về sự đồng cảm, sẻ chia. Nhẫn cưới là món trang sức bạn sẽ đeo mỗi ngày, nên cần có sự chăm sóc, bảo quản phù hợp. Hãy tìm hiểu thêm về thông tin bảo hành cũng như chọn được một cặp nhẫn cưới thật ưng ý nhé.', 2, NULL, 1, 'http://localhost:6789/api/file-load/gndd00w000193-nhan-cuoi-kim-cuong-vang-trang-14k-pnj-chung-doi-001.png', 'GNDD00C000130', 'Nhẫn cưới Kim cương Vàng 18K PNJ Chung Đôi 00130-00128', 6606000.00, 0, 100, 3);
INSERT INTO `product` VALUES (4, '2020-10-17', 'Thương hiệu:', 1, 1, 2, 'http://localhost:6789/api/file-load/gndd00y000669-nhan-cuoi-kim-cuong-vang-18k-pnj-chung-doi-001.png', 'GNXM00W000068', 'Nhẫn cưới Vàng trắng 10K đính đá ECZ Swarovski PNJ XM00W000068', 1657000.00, 0, 100, 1);
INSERT INTO `product` VALUES (5, '2020-08-12', 'Loại đá chính:', 1, 2, 2, 'http://localhost:6789/api/file-load/gndd00y000682-nhan-cuoi-kim-cuong-vang-18k-pnj-chung-doi.png', 'GNDD00W000337', 'Nhẫn cưới Kim cương Vàng trắng 14K PNJ DD00W000337', 2607300.00, 0, 50, 1);
INSERT INTO `product` VALUES (6, '2020-10-17', 'Thương hiệu:', 7, NULL, 1, 'http://localhost:6789/api/file-load/gvddddw000192-vong-tay-kim-cuong-vang-trang-14k-pnj-01.png', 'GBXM00W000326', 'Bông tai Vàng trắng 10K đính đá ECZ Swarovski PNJ Galaxy XM00W000326', 2744000.00, 0, 99, 2);
INSERT INTO `product` VALUES (7, '2020-09-07', 'Dây chuyền Vàng 18K PNJ dây đan kiểu chữ cong 0000Y000256', 3, NULL, 1, 'http://localhost:6789/api/file-load/gdmrykkx020.002-day-chuyen-pnj-vang-18k-day-khit-xoan-01.png', 'GD0000Y000256', 'Dây chuyền Vàng 18K PNJ dây đan kiểu chữ cong', 1864000.00, 0, 88, 3);
INSERT INTO `product` VALUES (8, '2020-02-04', 'Dây Chuyền PNJ Vàng Trắng 10K', 3, NULL, 3, 'http://localhost:6789/api/file-load/GDMRWKKX020.006.jpg', 'GD0000W000075', 'Dây chuyền Vàng trắng 10K', 3761000.00, 0, 55, 1);
INSERT INTO `product` VALUES (9, '2020-10-17', 'Hạt charm xỏ DIY PNJSilver hình cỏ 4 lá', 10, NULL, 1, 'http://localhost:6789/api/file-load/gidrwy83246.400-hat-charm-me-pnj-vang-trang-y-18k-hinh-tron-dinh-da-mau-xanh.png', 'SI00XMW060001', 'Hạt charm xỏ DIY PNJSilver hình cỏ 4', 365000.00, 0, 91, 2);
INSERT INTO `product` VALUES (10, '2020-10-06', 'hương hiệu:', 10, NULL, 1, 'http://localhost:6789/api/file-load/gizt00y000006-hat-charm-me-vang-18k-dinh-da-suncut-swarovski-pnj-zt00y000006-01.png', 'SI00XMW060000', 'Hạt charm xỏ DIY PNJSilver hình tim đôi', 365000.00, 0, 80, 2);

-- ----------------------------
-- Table structure for product_map_color
-- ----------------------------
DROP TABLE IF EXISTS `product_map_color`;
CREATE TABLE `product_map_color`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_color` int NULL DEFAULT NULL,
  `id_product` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_map_color
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` int NULL DEFAULT NULL,
  `code_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 1, 'ROLE', 'quản trị', 'ROLE_ADMIN', NULL);
INSERT INTO `role` VALUES (2, 2, 'ROLE', 'khách', 'ROLE_GUESTS', NULL);

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` decimal(6, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES (1, '10%', '10%', 0.100);
INSERT INTO `sale` VALUES (2, '20%', '20%', 0.200);
INSERT INTO `sale` VALUES (3, '30%', '30%', 0.300);
INSERT INTO `sale` VALUES (4, '40%', '40%', 0.400);
INSERT INTO `sale` VALUES (5, '50%', '50%', 0.500);

-- ----------------------------
-- Table structure for trademark
-- ----------------------------
DROP TABLE IF EXISTS `trademark`;
CREATE TABLE `trademark`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name_product` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trademark
-- ----------------------------
INSERT INTO `trademark` VALUES (1, 'PNJ', 'Công ty vàng việt nam');
INSERT INTO `trademark` VALUES (2, 'Trung quốc', NULL);
INSERT INTO `trademark` VALUES (3, 'Nga', NULL);
INSERT INTO `trademark` VALUES (4, 'Đức', NULL);
INSERT INTO `trademark` VALUES (5, 'Việt Nam', NULL);
INSERT INTO `trademark` VALUES (6, 'Mỹ', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_active` bit(1) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modified_date` date NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_role` int NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, b'1', '', NULL, 'Tuấn', '123a', NULL, '$2a$10$pXeyZaL/OSxLVBIKRcUqu.w4pSOTBalso.6rLSrvpXX6ryxTaf46e', '1222222222', NULL, 2, 'son3@goku.com', 1);
INSERT INTO `user` VALUES (2, b'1', NULL, NULL, 't', '123a', NULL, '$2a$10$LTtlwQh1Qaqwg.BbrNgurOdpeC5ZdG/nrcMBdPTQnVLvksKN8gvvK', '123457678', NULL, 2, 'tuanmanh', 0);
INSERT INTO `user` VALUES (3, b'1', NULL, '2020-10-31', 'admin', 'admin', NULL, '$2a$10$VbAab6X/snLFngsSnhJssOSklMKvSjtNqEuAtoaO16LZynL8c0IIC', '1234567899', NULL, 1, 'admin', 1);

SET FOREIGN_KEY_CHECKS = 1;
