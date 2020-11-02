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

 Date: 03/11/2020 00:33:19
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (5, 2, 1, 11);

-- ----------------------------
-- Table structure for cart_order
-- ----------------------------
DROP TABLE IF EXISTS `cart_order`;
CREATE TABLE `cart_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_cart` bigint NULL DEFAULT NULL,
  `id_order` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_order
-- ----------------------------
INSERT INTO `cart_order` VALUES (5, 5, 5);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `category` VALUES (16, 'Charm mới', 'Charm');

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES (1, 'Vàng 14K');
INSERT INTO `color` VALUES (2, 'Vàng 18K');
INSERT INTO `color` VALUES (3, 'Vàng 24K');
INSERT INTO `color` VALUES (4, 'Bạc  trắng');
INSERT INTO `color` VALUES (6, 'Vàng 10K');
INSERT INTO `color` VALUES (7, 'Vàng 22K');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES (1, NULL, 'Đám cưới - một “happy ending\" dành cho một cuộc tình nhưng cũng là cánh cửa mở ra một cuộc sống hoàn toàn khác với cả đôi bên. Khi ta không còn độc thân, khi ta có một người “bạn đời\" ở bên cạnh, đồng nghĩa với việc trách nhiệm nhân đôi, khó khăn ...', '2020-10-20', 'http://localhost:6789/api/file-load/co_dau_6b0f3f59bea4436e8dc7c6d54f9ce837_1024x1024.jpg', 'CẨM NANG SAU CƯỚI: NHỮNG ĐIỀU CẦN BIẾT KHI TA ĐÃ VỀ CHUNG MỘT NHÀ');
INSERT INTO `new` VALUES (2, NULL, 'Đám cưới tại Việt Nam có khá nhiều thủ tục phải chuẩn bị, 7 ngày trước đám cưới là thời điểm mọi công việc đã được sắp xếp khá ổn từ chụp ảnh cưới, mời bạn bè cho tới lên kế hoạch đặt cỗ,….mọi thứ gần như đã sẵn sàng. Vậy 7 ngày trước đám cưới cô ...', '2020-10-13', 'http://localhost:6789/api/file-load/pearl_7-2_027dd4c267d244bd8f73f429dbfc7900_1024x1024.jpg', 'Tips làm đẹp 7 ngày trước đám cưới mọi cô dâu nhất định phải biết');
INSERT INTO `new` VALUES (3, NULL, 'Với cánh mày râu việc nghĩ mua gì làm quà tặng phụ nữ đã khiến họ rối bời thì đến khâu lựa chọn kiểu dáng, mẫu mã sản phẩm phù hợp với người nhận cũng rất quan trọng, phải thật sự tinh tế và tốn khá nhiều thời gian để chuẩn bị một set quà tặng vừa...', '2020-10-09', 'http://localhost:6789/api/file-load/htj09796-min_6569b3f845ec4309a1ff8dd9bc2f5af7.jpg', 'Bí Kíp Chọn Quà 20/10 Ý Nghĩa Phù Hợp Cho Từng Đối Tượng');
INSERT INTO `new` VALUES (4, NULL, 'P/S I LOVE YOU - 20/10 NÀY, HÃY NÓI LỜI YÊU THƯƠNG ĐẾN NGƯỜI PHỤ NỮ CỦA BẠN!\r\n\r\nTâm lý đàn ông thường ngại ngùng khi thể hiện tình cảm bằng lời nói. Đôi khi tặng 1 món quà nhưng lời yêu thương “đính kèm” lại chẳng dám nói ra. Chính vì thế, thông điệp 20/10 năm nay của Huy Thanh, đó là muốn giúp các anh chuẩn bị một món quà gói gọn cả những lời yêu thương - “all in one” gửi tặng những người phụ nữ của mình. ', '2020-10-05', 'http://localhost:6789/api/file-load/co_dau_6b0f3f59bea4436e8dc7c6d54f9ce837_1024x1024.jpg', 'P/S I LOVE YOU - 20/10 NÀY, HÃY NÓI LỜI YÊU THƯƠNG ĐẾN NGƯỜI PHỤ NỮ CỦA BẠN!');
INSERT INTO `new` VALUES (41, '<p>Trải qua hơn nửa chặng đường 2020 với nhiều thăng trầm, Huy Thanh hiểu rằng, những giá trị cơ bản nhất mới là những giá trị bền lâu nhất. Mùa cưới 2020 này, Huy Thanh ra mắt bộ sưu tập nhẫn cưới signature mang tên “Together\" - đong đầy những cảm xúc bình dị, chân thành từ trái tim.<br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/unnamed__2__64b0a1000d1c41dbaea63d2b1490d67a_2048x2048.jpg\"></figure><p><br>&nbsp;</p><h2><strong>TỪ NHỮNG XÚC CẢM BÌNH DỊ NHẤT</strong><br>&nbsp;</h2><p><br>Thổi hồn cho cảm hứng sáng tạo của <strong>Bộ sưu tập Nhẫn cưới “Together” là những cảm xúc dung dị của tình yêu</strong>. Trở về cội nguồn của tình yêu, là những rung cảm tự nhiên, được xây đắp lớn dần từ những kỉ niệm hai ta cùng nhau trải qua, sẽ được lưu giữ trong ký ức của anh và em, riêng chúng ta. Đó chính là khoảnh khắc của ánh mắt chạm nhau, của đôi má ửng hồng bối rối, của đôi tim bỗng dưng lỗi nhịp,… Và tình yêu cứ thế đong đầy thêm mỗi ngày, khi hai người nắm tay nhau cùng trải qua những vui – buồn trong cuộc sống. Để rồi có hay không những món quà xa xỉ, những bữa tối sang trọng hay những bức ảnh đăng facebook thì tình yêu vẫn còn đó, chưa từng vì thế mà mất đi.<br>&nbsp;</p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/img_1050_e73a0345e49246619d47b91526084045_2048x2048.jpg\"></figure><h2><strong>Sự giao hoà giữa cổ điển và hiện đại</strong></h2><p><br>Những cảm xúc bình dị của hôn nhân chảy xuyên suốt trong tinh thần của BST, cùng với đó là phong cách thiết kế tôn vinh sự tối giản. Thiết kế của BST Together được lấy&nbsp;cảm hứng từ <strong>phong cách Retro-Modern</strong> - một phong cách thiết kế trang sức vô cùng có ảnh hưởng trên thế giới những năm 1950s. Retro - Modern mang ý nghĩa cách điệu những giá trị cổ điển, làm mới những điều đã cũ. <strong>Nhẫn cưới “Together\"</strong> chính vì thế, vừa mang phong cách cổ điển với <strong>thiết kế tròn trơn</strong>, <strong>tối giản và tinh gọn</strong>, vừa có sự độc đáo hiện đại đến từ coating màu sắc, góc cạnh và phần thiết kế tiết diện lòng nhẫn.&nbsp;</p><p>Màu sắc là một trong những điểm Huy Thanh rất tự hào với BST Together lần này. Từng chiếc nhẫn màu sắc sáng bóng không tì vết nhờ công nghệ coating hiện đại từ Hàn Quốc, với <strong>3 phiên bản màu vàng vàng, vàng trắng, vàng hồng</strong> người dùng có thể dễ dàng lựa chọn phù hợp với tone da của mình.<br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/nc1_4591da96e04243788621289ab747b0d5_2048x2048.jpg\"></figure><p><i>Vàng vàng truyền thống nhưng vẫn sang trọng, hiện đại </i><a href=\"https://www.huythanhjewelry.vn/products/nhan-cuoi-long-low-dome-nc737m\"><i>NC737</i></a></p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/nc2_c41601eccde44e51a8aa0e43b290e5aa_2048x2048.jpg\"></figure><p><i>Vàng hồng trendy, cá tính </i><a href=\"https://www.huythanhjewelry.vn/products/nhan-cuoi-long-low-dome-nc736w\"><i>NC736</i></a></p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/unnamed__1__3c835988cfd84c6691f714daf5390ccc_2048x2048.jpg\"></figure><p><i>Vàng trắng mang lại cảm giác tinh tế, thanh lịch </i><a href=\"https://www.huythanhjewelry.vn/products/nhan-cuoi-long-square-nc733\"><i>NC733</i></a><br><br><br><strong>Đột phá với công nghệ chế tác, mang lại trải nghiệm tốt nhất cho khách hàng</strong><br>&nbsp;</p><p>Không hề cường điệu hóa khi nói rằng, mặc dù thiết kế tối giản nhưng đây là sản phẩm được làm ra với công nghệ hiện đại nhất mà Huy Thanh đang sở hữu. Điểm nổi bật của BST Nhẫn cưới “Together” với <strong>3 thiết kế lòng nhẫn (Oval (bán nguyệt), Low-dome (chữ D), Square (vuông),…)</strong> tối ưu tất cả tiết diện tiếp xúc để mang lại cảm nhận mượt mà, êm ái cho người đeo. Toàn bộ 360o nhẫn đều là “head” – mặt nhẫn. Người đeo không cần bận tâm đến việc mặt chính của nhẫn bị xoay hay lệch như khi đeo các thiết kế gắn đá chủ, đá tấm trên mặt nhẫn.</p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/img_0944_178ae38fdda24c029778a3c7bfd2661d.jpg\"></figure><p><i>Mang lại cảm giác êm mượt, dễ chịu, thoải mái khi đeo</i></p><p>Thấu hiểu được những trở ngại khi đeo nhẫn cưới trong những hoạt động hàng ngày, Huy Thanh cho ra mắt BST Nhẫn Cưới Together được <strong>thiết kế với</strong> <strong>tiêu chí “Fit” với tất cả các dáng tay</strong>, giúp khách hàng có thể đeo Nhẫn Cưới mọi lúc, mọi nơi, trong mọi hoạt động mà không bị vướng víu hay gặp trở ngại.</p><ul><li><strong>Square</strong>: Tiết diện lòng nhẫn được thiết kế với dáng Square thích hợp với những người có dáng bàn tay to hoặc ngón tay dày, vừa khiến cho ngón tay thon hơn, vừa mang lại cảm giác vô cùng vừa vặn cho người đeo.</li><li><strong>Oval:</strong> Tiết diện lòng nhẫn được thiết kế dáng Oval khiến cho phần nhẫn tiếp xúc với ngón tay được mềm mại, êm ái, thích hợp với những người ngón tay mảnh khảnh, thon dài. Thiết kế mang đến cảm giác sang trọng đầy thanh lịch.</li><li><strong>Low-Dome</strong>: Cặp nhẫn với thiết kế tiết diện lòng nhẫn dáng Low-dome, phần tiếp xúc với ngón tay được thiết kế theo dáng chữ D, vừa tạo độ vừa vặn khi đeo lên tay, vừa mang lại cảm giác mềm mại, nhẹ nhàng. Kiểu dáng nhẫn này rất phù hợp với những người thường xuyên phải hoạt động hoặc làm việc thủ công.<br><br>&nbsp;</li></ul><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/nc4_e30601a2b1174ed380c0bf7af49e399c_2048x2048.jpg\"></figure><p><i>Thiết kế độc đáo với 3 kiểu lòng nhẫn Oval, Square, Low-Dome</i></p>', 'Trải qua hơn nửa chặng đường 2020 với nhiều thăng trầm, Huy Thanh hiểu rằng, những giá trị cơ bản nhất mới là những giá trị bền lâu nhất. Mùa cưới 2020 này, Huy Thanh ra mắt bộ sưu tập nhẫn cưới signature mang tên “Together\" - đong đầy những cảm xúc bình dị, chân thành từ trái tim.', '2020-11-01', 'http://localhost:6789/api/file-load/1604248224383_unnamed__2__64b0a1000d1c41dbaea63d2b1490d67a_2048x2048.jpg', 'HUY THANH RA MẮT BST NHẪN CƯỚI SIGNATURE CHO 2020 - “TOGETHER\"');

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
  `total_money` decimal(20, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES (5, '123a123a', '123457678', 'Hà nội', 0, '2020-11-02 23:46:25', 2, 1015470);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
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
INSERT INTO `product` VALUES (9, '2020-10-17', 'Hạt charm xỏ DIY PNJSilver hình cỏ 4 lá', 16, NULL, 1, 'http://localhost:6789/api/file-load/gidrwy83246.400-hat-charm-me-pnj-vang-trang-y-18k-hinh-tron-dinh-da-mau-xanh.png', 'SI00XMW060001', 'Hạt charm xỏ DIY PNJSilver hình cỏ 4', 365000.00, 0, 91, 2);
INSERT INTO `product` VALUES (10, '2020-10-06', 'hương hiệu:', 16, NULL, 1, 'http://localhost:6789/api/file-load/gizt00y000006-hat-charm-me-vang-18k-dinh-da-suncut-swarovski-pnj-zt00y000006-01.png', 'SI00XMW060000', 'Hạt charm xỏ DIY PNJSilver hình tim đôi', 365000.00, 0, 80, 2);
INSERT INTO `product` VALUES (11, '2020-11-02', '<p>Chẳng điều gì có thể thu hút ánh nhìn hơn một chiếc <a href=\"https://www.pnj.com.vn/trang-suc-cuoi/nhan/\">nhẫn cưới</a> được đính kết kim cương sáng lấp lánh trên tay và đồng hành cùng người bạn đời của mình trọn kiếp. Hòa với niềm vui lứa đôi nên duyên vợ chồng, chiếc nhẫn cưới kim cương vàng 18K đến từ thương hiệu PNJ sẽ là lời chúc gắn kết yêu thương cũng như ý nghĩa sinh sôi nảy nở về con cái, tài lộc cho gia đình mới.</p><h3>Nhẫn cưới đính Kim cương – Một chút phá cách điểm tô cho vẻ đẹp truyền thống</h3><figure class=\"image\"><img src=\"https://www.pnj.com.vn/images/content/trang-suc-vang/nhan/nhan-cuoi-kim-cuong-vang-18k-pnj-true-love-19-ddddc000476.jpg?1577671115866\" alt=\"Nhẫn cưới PNJ sở hữu thiết kế sang trọng và hiện đại\"></figure><p><i>Nhẫn cưới PNJ sở hữu thiết kế sang trọng và hiện đại</i></p><p>Cho khởi đầu hoàn hảo của cuộc sống lứa đôi, PNJ mang đến những thiết kế nhẫn cưới với phong cách hiện đại, giúp cho cặp đôi có nhiều sự lựa chọn. Sở hữu kiểu dáng thu hút tinh xảo kết hợp dãy <a href=\"https://www.pnj.com.vn/trang-suc-kim-cuong/\">kim cương</a> sang trọng, nhẫn cưới với thiết kế dành cho phái nữ, tôn vinh vẻ đẹp dịu dàng và hiện đại.</p>', 1, 1, 1, 'http://localhost:6789/api/file-load/1604326405147_gnddddc000476-nhan-cuoi-kim-cuong-vang-18k-pnj-true-love-19-ddddc000476.png', 'GNDDDDC000476', 'Nhẫn cưới Kim cương Vàng 18K PNJ True Love ', 1128300.00, 1, 98, 3);
INSERT INTO `product` VALUES (12, '2020-11-02', '<h2>Bộ trang sức Vàng 18K đính đá Ruby DisneyIPNJ Beauty &amp; The Beast 00257-00821</h2>', 1, NULL, 1, 'http://localhost:6789/api/file-load/1604336111918_gbrbxmy000257-gnrbxmy000821-bo-trang-suc-vang-18k-dinh-da-ruby-pnj-beauty-and-the-beast-00257-00821.png', 'GBRBXMY000257-GNRBXMY000821', 'Bộ trang sức Vàng 18K đính đá Ruby DisneyIPNJ Beauty & The Beast', 14891000.00, 0, 55, 3);
INSERT INTO `product` VALUES (13, '2020-11-02', '<p>Thương hiệu :</p><p>PNJ</p><p>Bộ sưu tập:</p><p>Sunflower</p><p>Loại đá chính:</p><p>Suncut Swarovski</p><p>Màu đá chính:</p><p>Trắng</p><p>Loại đá phụ (nếu có):</p><p>ECZ - Swarovski</p><p>Màu đá phụ (nếu có):</p><p>Trắng</p><p>Giới tính:</p><p>Nữ</p><p>Dịp tặng quà:</p><ul><li>Sinh nhật</li><li>Tình yêu</li><li>Ngày kỷ niệm</li><li>Các dịp lễ tết</li></ul><p>Quà tặng cho người thân:</p><ul><li>Cho Nàng</li><li>Cho Mẹ</li></ul>', 1, NULL, 1, 'http://localhost:6789/api/file-load/1604336188519_bo-trang-suc-pnj-sunflower-vang-10k-dinh-da-swarovski-97429.png', 'GCXMXMC000023', 'Bộ trang sức Vàng 10K đính đá Suncut Swarovski PNJ Sunflower', 15432000.00, 0, 66, 3);
INSERT INTO `product` VALUES (14, '2020-11-02', '<h2>Bộ trang sức Vàng 10K đính đá Suncut Swarovski PNJ Sunflower 00001-00001</h2>', 1, NULL, 1, 'http://localhost:6789/api/file-load/1604336245000_bo-trang-suc-pnj-vang-10k-dinh-da-mau-vang-95883.png', 'GBXMZTC000001', 'Bộ trang sức Vàng 10K đính đá Suncut Swarovski ', 12345210.00, 0, 23, 1);
INSERT INTO `product` VALUES (15, '2020-11-03', '<p>Không chỉ là kỷ vật minh chứng cho ngày hạnh phúc thăng hoa và khắc ghi sự khởi đầu hoàn hảo cho cuộc sống lứa đôi, mỗi tuyệt tác trang sức cưới Hạnh Phúc Vàng còn là một câu chuyện gắn kết những giá trị đích thực của tình yêu, niềm hạnh phúc, sự thủy chung son sắt của riêng từng đôi lứa mà PNJ mãi tôn vinh. Nguyện ước về một cuộc hôn nhân viên mãn chính là nguồn cảm hứng để PNJ sáng tạo nên các sản phẩm trang sức sính lễ, hồi môn tinh tế, sắc sảo và đậm đà bản sắc truyền thống Á Đông.</p>', 3, NULL, 1, 'http://localhost:6789/api/file-load/1604336483028_gcdrya86736.000-day-co-cuoi-pnj-rang-ro-tinh-xuan-vang-22k.png', ' GC0000Y000046', 'Dây cổ cưới Vàng 22K PNJ Rạng Rỡ Tình Xuân ', 10003200.00, 0, 20, 7);
INSERT INTO `product` VALUES (16, '2020-11-03', '<p>Dây Cổ Cưới PNJ Ngọc Yêu Thương Vàng Trắng 14K đính Ngọc Trai Freshwater</p>', 3, NULL, 5, 'http://localhost:6789/api/file-load/1604336525465_gcdrwb85978.600-day-co-cuoi-pnj-ngoc-yeu-thuong-vang-trang-14k-dinh-ngoc-trai-freshwater.png', 'GCPFXMW000014', 'Dây cổ Vàng trắng 14K đính ngọc trai Freshwater PNJ Ngọc Yêu Thương PFXMW000014', 2412464.00, 0, 11, 1);
INSERT INTO `product` VALUES (17, '2020-11-03', '<p><strong>VŨ KHÚC TÌNH YÊU</strong></p><p>Lấy ý tưởng từ những thanh âm trầm bổng trong bản hoà ca tình yêu đôi lứa, \"Vũ Khúc Tình Yêu\" là sự hoà quyện hoàn hảo những đường nét uyển chuyển và tinh tế trong từng vũ điệu phượng hoàng sẽ tôn thêm vẻ đẹp đằm thắm, kiêu sa của cô dâu trong ngày trọng đại của đời mình.</p><p>Nguyện ước về một cuộc hôn nhân viên mãn chính là nguồn cảm hứng để PNJ sáng tạo nên các sản phẩm trang sức sính lễ, hồi môn tinh tế, sắc sảo và đậm đà bản sắc truyền thống Á Đông.</p>', 3, NULL, 5, 'http://localhost:6789/api/file-load/1604336567785_gcdrya71538.014-day-co-cuoi-pnj-vu-khuc-tinh-yeu-vang-24k.png', 'GC0000Y000033', 'Dây cổ cưới Vàng 24K PNJ Vũ Khúc Tình Yêu ', 2222114.00, 0, 55, 3);
INSERT INTO `product` VALUES (18, '2020-11-03', '<p>Không chỉ là kỷ vật minh chứng cho ngày hạnh phúc thăng hoa và khắc ghi sự khởi đầu hoàn hảo cho cuộc sống lứa đôi, mỗi tuyệt tác trang sức cưới Hạnh Phúc Vàng còn là một câu chuyện gắn kết những giá trị đích thực của tình yêu, niềm hạnh phúc, sự thủy chung son sắt của riêng từng đôi lứa mà PNJ mãi tôn vinh. Nguyện ước về một cuộc hôn nhân viên mãn chính là nguồn cảm hứng để PNJ sáng tạo nên các sản phẩm trang sức sính lễ, hồi môn tinh tế, sắc sảo và đậm đà bản sắc truyền thống Á Đông.</p>', 3, NULL, 1, 'http://localhost:6789/api/file-load/1604336624796_gcdrya86733.000-day-co-cuoi-pnj-that-duyen-to-hong-vang-22k-1.png', 'GC0000Y000045', 'Dây cổ cưới Vàng 22K PNJ Thắt Duyên Tơ Hồng 0', 32000200.00, 0, 25, 7);
INSERT INTO `product` VALUES (19, '2020-11-03', '<p><br>Hạt Charm Me Vàng 18K đính đá ECZ Swarovski PNJ</p>', 16, NULL, 3, 'http://localhost:6789/api/file-load/1604336763884_gixmxmc000004-hat-charm-me-vang-18k-dinh-da-ecz-swarovski-pnj-xmxmc000004.png', 'XMXMC000004', 'Hạt Charm Me Vàng 18K đính đá ECZ Swarovski PNJ', 6434000.00, 0, 22, 2);
INSERT INTO `product` VALUES (20, '2020-11-03', '<h2>Hạt Charm Me PNJ Vàng trắng Ý 18K đính đá màu hồng</h2><p>Chắc hẳn đối với các chị em đã không còn gì xa lạ với thú chơi trang sức xâu chuỗi. Tùy theo sở thích mỗi người mà có thể chọn cho mình những hạt charm khác nhau và kết hợp cùng chiếc <a href=\"https://www.pnj.com.vn/charm/charm-vang/?features_hash=38-19893\">vòng tay</a> sẽ tạo nên một món trang sức hoàn chỉnh.</p><h3>Nữ tính và sang trọng cùng charm Me</h3><figure class=\"image\"><img src=\"https://www.pnj.com.vn/images/content/trang-suc-vang/charm/gidrwy87909.400-hat-charm-me-pnj-vang-trang-y-18k-dinh-da-mau-hong.jpg?1540545905462\" alt=\"Tô điểm thêm nét nữ tính và tinh tế cho nàng thông qua charm \"></figure><p><i>Tô điểm thêm nét nữ tính và tinh tế cho nàng thông qua charm Me</i></p><p>Các hạt charm của PNJ đang rất được ưa chuộng với những ai yêu thích thời trang. Sở hữu thiết kế độc đáo được điểm xuyến bằng đá Synthetic màu hồng, hạt <a href=\"https://www.pnj.com.vn/charm/charm-vang/\">charm Me</a> mang vẻ đẹp nữ tính nhưng sang trọng cùng ý nghĩa mạnh mẽ và luôn tự tin trước mọi thử thách và khó khăn. Ngoài ra, với những thiết kế charm mới lạ, giúp nàng diện những chiếc vòng độc đáo và tự tin thể hiện cá tính của mình.</p>', 16, NULL, 4, 'http://localhost:6789/api/file-load/1604337055352_gidrwy87909.400-hat-charm-me-pnj-vang-trang-y-18k-dinh-da-mau-hong.png', 'GNDDDDC0004761', 'Hạt Charm Me Vàng trắng Ý 18K đính đá màu hồng', 15432000.00, 0, 99, 2);
INSERT INTO `product` VALUES (21, '2020-11-03', '<h2>Hạt Charm Me PNJ Vàng Ý 18K đính đá màu xanh</h2><p>Một trong những điều làm nên sự thú vị và hấp dẫn cho những chiếc vòng charm đó chính là sưu tập những hạt charm hay còn gọi là hạt trang trí và xâu chuỗi lại tạo thành một vòng tay hoàn chỉnh. <a href=\"https://www.pnj.com.vn/charm/charm-vang/\">Charm PNJ</a> sở hữu nhiều kiểu dáng độc đáo trên nền chất liệu vàng Ý 18K không chỉ giúp phái nữ trông xinh đẹp mà còn toát lên sự sang trọng và khẳng định giá trị của người đeo.</p>', 16, NULL, 6, 'http://localhost:6789/api/file-load/1604337174962_giztxmc000001-hat-charm-me-vang-y-18k-dinh-da-mau-xanh-pnj-01.png', 'ZTXMC000001', 'Hạt Charm Me Vàng Ý 18K đính đá màu xanh ', 3170000.00, 0, 23, 2);
INSERT INTO `product` VALUES (22, '2020-11-03', '<h2>Bông Tai Kim Cương PNJ First Diamond Vàng trắng 14K</h2><p>Sở hữu đôi bông tai hay bất kỳ món nữ trang kim cương cho riêng mình luôn là khát khao của mọi cô gái. Không chỉ thỏa mãn ước mơ sở hữu món kim cương đầu đời của các cô gái trẻ, BST First Diamond được chế tác từ chất liệu vàng trắng cùng với ánh sáng lấp lánh cuốn hút đến khó cưỡng của kim cương, hòa quyện đường nét thiết kế ấn tượng, thời trang theo xu hướng thế giới còn là tuyên ngôn cá tính theo cách rất riêng của những cô nàng hiện đại.</p>', 7, NULL, 6, 'http://localhost:6789/api/file-load/1604337228603_gbdrwa87582.500-bong-tai-kim-cuong-pnj-vang-trang-14k.png', 'GBDD00W000392', 'Bông tai Kim cương Vàng trắng 14K', 5690000.00, 0, 54, 2);
INSERT INTO `product` VALUES (23, '2020-11-03', '<h2>Bông tai Kim cương Vàng trắng 14K PNJ</h2><p><a href=\"https://www.pnj.com.vn/trang-suc-kim-cuong/\">Kim cương</a> được xem là biểu tượng của vẻ đẹp quyền lực, sự giàu sang và quý phái, do đó nó được sử dụng để tạo nên các tuyệt tác trang sức kim cương tinh tế. Những viên kim cương ẩn chứa một vẻ đẹp kiêu sa và tinh tế, nó tôn vinh vẻ đẹp, nét quyến rũ và đẳng cấp cho chủ sở hữu.</p><h3>Bông tai kim cương – Điểm nhấn quyền lực và đẳng cấp</h3><figure class=\"image\"><img src=\"http://www.pnj.com.vn/images/content/trang-suc-vang/bong-tai/gbdd00w000200-bong-tai-kim-cuong-vang-trang-14k-pnj.jpg?1562926588791\" alt=\"Kim cương - Người bạn tuyệt vời nhất của mọi cô gái\"></figure><p><i>Kim cương - Người bạn tuyệt vời nhất của mọi cô gái</i></p><p><a href=\"https://www.pnj.com.vn/bong-tai/bong-tai-kim-cuong/\">Đôi bông tai</a> được chế tác trên chất liệu vàng trắng 14K kết hợp điểm nhấn kim cương lấp lánh, tạo nên vẻ ngoài đầy sang trong và quý phái. Đồng thời khi kết hợp cùng các món trang sức khác, PNJ tin chắc rằng, sự kết hợp đó sẽ giúp quý cô thể hiện sự tự tin và khẳng định đẳng cấp của mình. Không chỉ cộng thêm nét yêu kiều cho tổng thể trang phục, khi đeo còn mang đến cho chủ nhân nhiều thuận lợi tình duyên viên mãn, cũng như sự may mắn, thành công và thành công cho phái đẹp.</p><h3>Trang sức vàng PNJ chứa đựng ý nghĩa sâu sắc</h3><p>Xã hội ngày càng hiện đại, vàng là chất liệu được những người thợ kim hoàn lành nghề, chế tác tạo nên những món trang sức mang vẻ đẹp hoàn hảo không tì vết. Mỗi món trang sức sẽ mang một ý nghĩa riêng, nhằm tôn vinh nét đẹp dịu dàng, đức khiêm tốn của người phụ nữ Việt Nam.</p>', 7, NULL, 5, 'http://localhost:6789/api/file-load/1604337283390_gbdrwa33665.5a0-bong-tai-kim-cuong-pnj-vang-trang-14k.png', 'GBDD00W000200', 'Bông tai Kim cương Vàng trắng 14K PNJ ', 13600000.00, 0, 6, 1);
INSERT INTO `product` VALUES (24, '2020-11-03', '<h2>Bông tai Kim cương Vàng trắng 14K PNJ First Diamond DDDDW000672</h2>', 7, NULL, 5, 'http://localhost:6789/api/file-load/1604337330209_gbdrwa85061.5a0-bong-tai-kim-cuong-vang-trang-14k.png', 'DDDDW000672', 'Bông tai Kim cương Vàng trắng 14K PNJ First Diamond', 15910000.00, 0, 34, 1);
INSERT INTO `product` VALUES (25, '2020-11-03', '<h2>Lắc tay Kim cương Vàng trắng 14K PNJ First Diamond DDDDW000117</h2><p>Trang sức Kim Cương PNJ luôn lựa chọn những viên kim cương Round Brilliant Cut với 57 giác cắt, đó cũng là tiêu chí hoàn hảo, và chuẩn mực nhất cho trang sức kim cương. Quá trình tuyển chọn một món trang sức kim cương hoàn hảo cho bản thân không khác gì việc đi tìm người yêu. Nguyên tắc 4C đã ra đời để đảm bảo lựa chọn của bạn không sai lầm. Vì thế một chiếc <a href=\"https://www.pnj.com.vn/lac-vong-tay/lac/lac-vang/\">lắc tay</a> kim cương không chỉ thể hiện sự đẳng cấp của chủ nhân mà con mang giá trị thẩm mỹ cao.</p>', 6, NULL, 1, 'http://localhost:6789/api/file-load/1604337404768_gldd00w000035-lac-tay-kim-cuong-vang-trang-14k-pnj-first-diamond-01.png', 'GLDD00W000035', 'Lắc tay Kim cương Vàng trắng 14K', 5115000.00, 0, 23, 1);
INSERT INTO `product` VALUES (26, '2020-11-03', '<h2>Lắc tay Kim cương Vàng trắng 14K PNJ First Diamond DD00W000038</h2><p>Không giống với các loại đá quý khác, kim cương – được xem như là nữ hoàng của các loại trang sức bởi sự tinh khiết và vẻ đẹp hoàn hảo đầy mê hoặc của nó, dường như sinh ra để tôn vinh vẻ đẹp hoàn hảo, thuần khiết và là biểu tượng của sự xa hoa. Lắc tay kim cương PNJ First Diamond còn là món trang sức tượng trưng cho quyền uy và sự giàu sang, không những thế kim cương còn mang ý nghĩa về sự vĩnh cửu.</p>', 6, NULL, 1, 'http://localhost:6789/api/file-load/1604337460105_glhrwa85086.500-lac-tay-kim-cuong-pnj-first-diamond-vang-trang-14k_0.png', 'GLDD00W000038', 'Lắc tay Kim cương Vàng trắng 14K', 7785000.00, 0, 53, 1);
INSERT INTO `product` VALUES (27, '2020-11-03', '<h2>Đồng Hồ Fossil Nam FS5536 Dây Nhựa 44mm</h2><p><br>&nbsp;</p>', 9, NULL, 6, 'http://localhost:6789/api/file-load/1604337566409_dong-ho-nam-day-cao-su-fossil-fs5536.png', 'WFO00000108', 'Đồng Hồ Fossil Nam FS5536 Dây Nhựa 44mm', 2670000.00, 0, 45, NULL);
INSERT INTO `product` VALUES (28, '2020-11-03', '<h2>Đồng Hồ Orient Nam FUNG2001D0 Dây Thép Không Gỉ 42mm</h2>', 9, NULL, 4, 'http://localhost:6789/api/file-load/1604337620956_%C4%90%E1%BB%93ng_H%E1%BB%93_Orient_Nam_FUNG2001D0_D%C3%A2y_Th%C3%A9p_Kh%C3%B4ng_G%E1%BB%89_42mm_-_1.jpg', 'WOR00000063', 'Đồng Hồ Orient Nam FUNG2001D0', 2360000.00, 0, 65, NULL);
INSERT INTO `product` VALUES (29, '2020-11-03', '<h2>Đồng Hồ Casio Nam MTS-100D-1AVDF Dây Thép Không Gỉ 47mm</h2><p><br>&nbsp;</p>', 9, NULL, 6, 'http://localhost:6789/api/file-load/1604337659340_MTS-100D-1AVDF_Desktop_1.jpg', 'WCA00000338', 'Đồng Hồ Casio Nam MTS-100D-1AVDF ', 2468000.00, 0, 5, NULL);
INSERT INTO `product` VALUES (30, '2020-11-03', '<h2>Đồng Hồ Michael Kors Nữ MK3398 Dây Thép Không Gỉ 39mm</h2><p><br>&nbsp;</p>', 8, NULL, 6, 'http://localhost:6789/api/file-load/1604337693131_wmf33v02439.100-mk3398-dong-ho-nu-day-thep-khong-gi-chong-nuoc-michael-kors.png', 'WMI00000129', 'Đồng Hồ Michael Kors Nữ MK3398 ', 8450000.00, 0, 7, NULL);
INSERT INTO `product` VALUES (31, '2020-11-03', '<h2>Đồng Hồ Fossil Nữ ES4650 Dây Da 28mm</h2>', 8, NULL, 5, 'http://localhost:6789/api/file-load/1604337728089_ES4650_Desktop_1.jpg', 'WFO00000258', 'Đồng Hồ Fossil Nữ ES4650', 2400000.00, 0, 9, NULL);
INSERT INTO `product` VALUES (32, '2020-11-03', '<h2>Đồng Hồ Casio Nữ LTP-E143DBL-5ADR Dây Da 30mm</h2>', 8, NULL, 5, 'http://localhost:6789/api/file-load/1604337762422_LTP-E143DBL-5ADR_Desktop_1.jpg', 'WCA00000261', 'Đồng Hồ Casio Nữ LTP-E143DBL', 2468000.00, 0, 12, NULL);
INSERT INTO `product` VALUES (33, '2020-11-03', '<h2>Nhẫn bạc đính đá PNJSilver XM00K000088</h2><p>Trong vẻ muôn màu đa sắc của phong cách thời trang, những món trang sức sở hữu thiết kế đơn giản mang vẻ đẹp tinh tế và trẻ trung luôn là ưu tiên hàng đầu của các chị em. Khoác lên mình sự nổi bật trong ánh kim của bạc và vẻ sáng lấp lánh của đá, chiếc <a href=\"https://www.pnj.com.vn/nhan/nhan-bac/\">nhẫn bạc PNJSilver</a> giúp nàng tự tin thu hút mọi ánh nhìn xung quanh.</p>', 2, NULL, 1, 'http://localhost:6789/api/file-load/1604337803159_snxm00k000088-nhan-bac-dinh-da-pnjsilver01.png', 'SNXM00K000088', 'Nhẫn bạc đính đá PNJSilver', 328000.00, 0, 77, 4);
INSERT INTO `product` VALUES (34, '2020-11-03', '<h2>Nhẫn nam bạc đính đá PNJSilver XMXMK000129</h2><p><br>&nbsp;</p>', 2, NULL, 1, 'http://localhost:6789/api/file-load/1604337840825_snxmxmk000129-nhan-nam-bac-dinh-da-pnjsilver_k27x-3g.png', 'SNXMXMK000129', 'Nhẫn nam bạc đính đá ', 409000.00, 0, 89, 4);
INSERT INTO `product` VALUES (35, '2020-11-03', '<h2>Nhẫn bạc đính đá PNJSilver XMXMK000128</h2><p><br>&nbsp;</p>', 2, NULL, 1, 'http://localhost:6789/api/file-load/1604337878592_snxmxmk000128-nhan-bac-dinh-da-pnjsilver.png', 'SNXMXMK000128', 'Nhẫn bạc đính đá PNJSilver ', 367000.00, 0, 86, 4);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `trademark` VALUES (2, 'Trung quốc', 'Công ty vàng trung quốc');
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, b'1', 'Hà nội', NULL, 't', '123a', NULL, '$2a$10$LTtlwQh1Qaqwg.BbrNgurOdpeC5ZdG/nrcMBdPTQnVLvksKN8gvvK', '123457678', NULL, 2, 'tuanmanh', 0);
INSERT INTO `user` VALUES (3, b'1', NULL, '2020-10-31', 'admin', 'admin', NULL, '$2a$10$VbAab6X/snLFngsSnhJssOSklMKvSjtNqEuAtoaO16LZynL8c0IIC', '1234567899', NULL, 1, 'admin', 1);
INSERT INTO `user` VALUES (4, b'1', NULL, '2020-11-02', 'Admin Pro1', 'Thong lv', NULL, '$2a$10$7eBLCXiAu09TU2rRDpP0ZOlSUglkbBXvlm5nW98JDYGegqvc1fTYu', NULL, NULL, 1, 'thonglv', 0);
INSERT INTO `user` VALUES (5, b'1', 'Hà nội', '2020-11-02', 'guest', 'guest 1', NULL, '$2a$10$2D62RYWt3QBL1m6RR3ZSw.6mWZA9UH2j.f6onwWXzkJFn/aepcxsS', '1222222222', NULL, 2, 'guest', 0);

SET FOREIGN_KEY_CHECKS = 1;
