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

 Date: 04/12/2020 22:12:09
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
  `create_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (5, 4, 1, 11, '2020-12-04');
INSERT INTO `cart` VALUES (6, 4, 1, 18, '2020-12-04');
INSERT INTO `cart` VALUES (7, 5, 2, 23, '2020-12-04');
INSERT INTO `cart` VALUES (8, 6, 1, 22, '2020-12-04');
INSERT INTO `cart` VALUES (9, 4, 5, 18, '2020-12-04');
INSERT INTO `cart` VALUES (10, 5, 1, 23, '2020-12-02');
INSERT INTO `cart` VALUES (11, 6, 1, 22, '2020-11-30');
INSERT INTO `cart` VALUES (12, 7, 1, 18, '2020-11-29');
INSERT INTO `cart` VALUES (13, 4, 1, 22, '2020-11-03');
INSERT INTO `cart` VALUES (14, 5, 1, 23, '2020-11-03');
INSERT INTO `cart` VALUES (15, 6, 3, 24, '2020-11-03');
INSERT INTO `cart` VALUES (16, 7, 4, 10, '2020-11-03');

-- ----------------------------
-- Table structure for cart_order
-- ----------------------------
DROP TABLE IF EXISTS `cart_order`;
CREATE TABLE `cart_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_cart` bigint NULL DEFAULT NULL,
  `id_order` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_order
-- ----------------------------
INSERT INTO `cart_order` VALUES (5, 5, 5);
INSERT INTO `cart_order` VALUES (6, 6, 6);
INSERT INTO `cart_order` VALUES (7, 7, 7);
INSERT INTO `cart_order` VALUES (8, 8, 8);
INSERT INTO `cart_order` VALUES (9, 9, 9);
INSERT INTO `cart_order` VALUES (10, 10, 9);
INSERT INTO `cart_order` VALUES (11, 11, 9);
INSERT INTO `cart_order` VALUES (12, 12, 10);
INSERT INTO `cart_order` VALUES (13, 13, 10);
INSERT INTO `cart_order` VALUES (14, 14, 10);
INSERT INTO `cart_order` VALUES (15, 15, 10);
INSERT INTO `cart_order` VALUES (16, 16, 11);

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES (1, 'a', 'test123@gmail.com', 'tets', '1234567891');
INSERT INTO `contact` VALUES (2, 'Test', 'test123@gmail.com', 'Test', '1231231233');

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
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES (1, NULL, 'Đám cưới - một “happy ending\" dành cho một cuộc tình nhưng cũng là cánh cửa mở ra một cuộc sống hoàn toàn khác với cả đôi bên. Khi ta không còn độc thân, khi ta có một người “bạn đời\" ở bên cạnh, đồng nghĩa với việc trách nhiệm nhân đôi, khó khăn ...', '2020-10-20', 'http://localhost:6789/api/file-load/co_dau_6b0f3f59bea4436e8dc7c6d54f9ce837_1024x1024.jpg', 'CẨM NANG SAU CƯỚI: NHỮNG ĐIỀU CẦN BIẾT KHI TA ĐÃ VỀ CHUNG MỘT NHÀ');
INSERT INTO `new` VALUES (2, NULL, 'Đám cưới tại Việt Nam có khá nhiều thủ tục phải chuẩn bị, 7 ngày trước đám cưới là thời điểm mọi công việc đã được sắp xếp khá ổn từ chụp ảnh cưới, mời bạn bè cho tới lên kế hoạch đặt cỗ,….mọi thứ gần như đã sẵn sàng. Vậy 7 ngày trước đám cưới cô ...', '2020-10-13', 'http://localhost:6789/api/file-load/pearl_7-2_027dd4c267d244bd8f73f429dbfc7900_1024x1024.jpg', 'Tips làm đẹp 7 ngày trước đám cưới mọi cô dâu nhất định phải biết');
INSERT INTO `new` VALUES (3, NULL, 'Với cánh mày râu việc nghĩ mua gì làm quà tặng phụ nữ đã khiến họ rối bời thì đến khâu lựa chọn kiểu dáng, mẫu mã sản phẩm phù hợp với người nhận cũng rất quan trọng, phải thật sự tinh tế và tốn khá nhiều thời gian để chuẩn bị một set quà tặng vừa...', '2020-10-09', 'http://localhost:6789/api/file-load/htj09796-min_6569b3f845ec4309a1ff8dd9bc2f5af7.jpg', 'Bí Kíp Chọn Quà 20/10 Ý Nghĩa Phù Hợp Cho Từng Đối Tượng');
INSERT INTO `new` VALUES (4, NULL, 'P/S I LOVE YOU - 20/10 NÀY, HÃY NÓI LỜI YÊU THƯƠNG ĐẾN NGƯỜI PHỤ NỮ CỦA BẠN!\r\n\r\nTâm lý đàn ông thường ngại ngùng khi thể hiện tình cảm bằng lời nói. Đôi khi tặng 1 món quà nhưng lời yêu thương “đính kèm” lại chẳng dám nói ra. Chính vì thế, thông điệp 20/10 năm nay của Huy Thanh, đó là muốn giúp các anh chuẩn bị một món quà gói gọn cả những lời yêu thương - “all in one” gửi tặng những người phụ nữ của mình. ', '2020-10-05', 'http://localhost:6789/api/file-load/co_dau_6b0f3f59bea4436e8dc7c6d54f9ce837_1024x1024.jpg', 'P/S I LOVE YOU - 20/10 NÀY, HÃY NÓI LỜI YÊU THƯƠNG ĐẾN NGƯỜI PHỤ NỮ CỦA BẠN!');
INSERT INTO `new` VALUES (41, '<p>Trải qua hơn nửa chặng đường 2020 với nhiều thăng trầm, Huy Thanh hiểu rằng, những giá trị cơ bản nhất mới là những giá trị bền lâu nhất. Mùa cưới 2020 này, Huy Thanh ra mắt bộ sưu tập nhẫn cưới signature mang tên “Together\" - đong đầy những cảm xúc bình dị, chân thành từ trái tim.<br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/unnamed__2__64b0a1000d1c41dbaea63d2b1490d67a_2048x2048.jpg\"></figure><p><br>&nbsp;</p><h2><strong>TỪ NHỮNG XÚC CẢM BÌNH DỊ NHẤT</strong><br>&nbsp;</h2><p><br>Thổi hồn cho cảm hứng sáng tạo của <strong>Bộ sưu tập Nhẫn cưới “Together” là những cảm xúc dung dị của tình yêu</strong>. Trở về cội nguồn của tình yêu, là những rung cảm tự nhiên, được xây đắp lớn dần từ những kỉ niệm hai ta cùng nhau trải qua, sẽ được lưu giữ trong ký ức của anh và em, riêng chúng ta. Đó chính là khoảnh khắc của ánh mắt chạm nhau, của đôi má ửng hồng bối rối, của đôi tim bỗng dưng lỗi nhịp,… Và tình yêu cứ thế đong đầy thêm mỗi ngày, khi hai người nắm tay nhau cùng trải qua những vui – buồn trong cuộc sống. Để rồi có hay không những món quà xa xỉ, những bữa tối sang trọng hay những bức ảnh đăng facebook thì tình yêu vẫn còn đó, chưa từng vì thế mà mất đi.<br>&nbsp;</p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/img_1050_e73a0345e49246619d47b91526084045_2048x2048.jpg\"></figure><h2><strong>Sự giao hoà giữa cổ điển và hiện đại</strong></h2><p><br>Những cảm xúc bình dị của hôn nhân chảy xuyên suốt trong tinh thần của BST, cùng với đó là phong cách thiết kế tôn vinh sự tối giản. Thiết kế của BST Together được lấy&nbsp;cảm hứng từ <strong>phong cách Retro-Modern</strong> - một phong cách thiết kế trang sức vô cùng có ảnh hưởng trên thế giới những năm 1950s. Retro - Modern mang ý nghĩa cách điệu những giá trị cổ điển, làm mới những điều đã cũ. <strong>Nhẫn cưới “Together\"</strong> chính vì thế, vừa mang phong cách cổ điển với <strong>thiết kế tròn trơn</strong>, <strong>tối giản và tinh gọn</strong>, vừa có sự độc đáo hiện đại đến từ coating màu sắc, góc cạnh và phần thiết kế tiết diện lòng nhẫn.&nbsp;</p><p>Màu sắc là một trong những điểm Huy Thanh rất tự hào với BST Together lần này. Từng chiếc nhẫn màu sắc sáng bóng không tì vết nhờ công nghệ coating hiện đại từ Hàn Quốc, với <strong>3 phiên bản màu vàng vàng, vàng trắng, vàng hồng</strong> người dùng có thể dễ dàng lựa chọn phù hợp với tone da của mình.<br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/nc1_4591da96e04243788621289ab747b0d5_2048x2048.jpg\"></figure><p><i>Vàng vàng truyền thống nhưng vẫn sang trọng, hiện đại </i><a href=\"https://www.huythanhjewelry.vn/products/nhan-cuoi-long-low-dome-nc737m\"><i>NC737</i></a></p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/nc2_c41601eccde44e51a8aa0e43b290e5aa_2048x2048.jpg\"></figure><p><i>Vàng hồng trendy, cá tính </i><a href=\"https://www.huythanhjewelry.vn/products/nhan-cuoi-long-low-dome-nc736w\"><i>NC736</i></a></p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/unnamed__1__3c835988cfd84c6691f714daf5390ccc_2048x2048.jpg\"></figure><p><i>Vàng trắng mang lại cảm giác tinh tế, thanh lịch </i><a href=\"https://www.huythanhjewelry.vn/products/nhan-cuoi-long-square-nc733\"><i>NC733</i></a><br><br><br><strong>Đột phá với công nghệ chế tác, mang lại trải nghiệm tốt nhất cho khách hàng</strong><br>&nbsp;</p><p>Không hề cường điệu hóa khi nói rằng, mặc dù thiết kế tối giản nhưng đây là sản phẩm được làm ra với công nghệ hiện đại nhất mà Huy Thanh đang sở hữu. Điểm nổi bật của BST Nhẫn cưới “Together” với <strong>3 thiết kế lòng nhẫn (Oval (bán nguyệt), Low-dome (chữ D), Square (vuông),…)</strong> tối ưu tất cả tiết diện tiếp xúc để mang lại cảm nhận mượt mà, êm ái cho người đeo. Toàn bộ 360o nhẫn đều là “head” – mặt nhẫn. Người đeo không cần bận tâm đến việc mặt chính của nhẫn bị xoay hay lệch như khi đeo các thiết kế gắn đá chủ, đá tấm trên mặt nhẫn.</p><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/img_0944_178ae38fdda24c029778a3c7bfd2661d.jpg\"></figure><p><i>Mang lại cảm giác êm mượt, dễ chịu, thoải mái khi đeo</i></p><p>Thấu hiểu được những trở ngại khi đeo nhẫn cưới trong những hoạt động hàng ngày, Huy Thanh cho ra mắt BST Nhẫn Cưới Together được <strong>thiết kế với</strong> <strong>tiêu chí “Fit” với tất cả các dáng tay</strong>, giúp khách hàng có thể đeo Nhẫn Cưới mọi lúc, mọi nơi, trong mọi hoạt động mà không bị vướng víu hay gặp trở ngại.</p><ul><li><strong>Square</strong>: Tiết diện lòng nhẫn được thiết kế với dáng Square thích hợp với những người có dáng bàn tay to hoặc ngón tay dày, vừa khiến cho ngón tay thon hơn, vừa mang lại cảm giác vô cùng vừa vặn cho người đeo.</li><li><strong>Oval:</strong> Tiết diện lòng nhẫn được thiết kế dáng Oval khiến cho phần nhẫn tiếp xúc với ngón tay được mềm mại, êm ái, thích hợp với những người ngón tay mảnh khảnh, thon dài. Thiết kế mang đến cảm giác sang trọng đầy thanh lịch.</li><li><strong>Low-Dome</strong>: Cặp nhẫn với thiết kế tiết diện lòng nhẫn dáng Low-dome, phần tiếp xúc với ngón tay được thiết kế theo dáng chữ D, vừa tạo độ vừa vặn khi đeo lên tay, vừa mang lại cảm giác mềm mại, nhẹ nhàng. Kiểu dáng nhẫn này rất phù hợp với những người thường xuyên phải hoạt động hoặc làm việc thủ công.<br><br>&nbsp;</li></ul><figure class=\"image\"><img src=\"https://file.hstatic.net/1000112469/file/nc4_e30601a2b1174ed380c0bf7af49e399c_2048x2048.jpg\"></figure><p><i>Thiết kế độc đáo với 3 kiểu lòng nhẫn Oval, Square, Low-Dome</i></p>', 'Trải qua hơn nửa chặng đường 2020 với nhiều thăng trầm, Huy Thanh hiểu rằng, những giá trị cơ bản nhất mới là những giá trị bền lâu nhất. Mùa cưới 2020 này, Huy Thanh ra mắt bộ sưu tập nhẫn cưới signature mang tên “Together\" - đong đầy những cảm xúc bình dị, chân thành từ trái tim.', '2020-11-01', 'http://localhost:6789/api/file-load/1604248224383_unnamed__2__64b0a1000d1c41dbaea63d2b1490d67a_2048x2048.jpg', 'HUY THANH RA MẮT BST NHẪN CƯỚI SIGNATURE CHO 2020 - “TOGETHER\"');
INSERT INTO `new` VALUES (43, '<h2>Trong hàng loạt những thương hiệu nổi tiếng tại Việt Nam, cái tên Skymond Luxury nổi lên như một danh từ không thể thiếu mỗi khi nhắc tới Bạch Kim – chất liệu sang trọng và bền vững hàng đầu làng trang sức.</h2><figure class=\"image\"><img src=\"http://skymond.vn/uploads/news/img20160128101316862.jpg\" alt=\"Đột phá với dòng trang sức Bạch Kim đẳng cấp\"></figure><p>Đột phá với dòng trang sức Bạch Kim đẳng cấp</p><p>Skymond Luxury là thương hiệu đã gắn liền với thị trường trang sức Việt Nam trong hơn 30 năm vừa qua. Thế nhưng trong quãng thời gian ấy, có tới gần một thập kỷ họ đào sâu nghiên cứu, cử chuyên gia tới những kinh đô thời trang thế giới và đầu tư thiết bị với những cỗ máy trị giá hàng chục tỉ đồng để mang tới một dòng trang sức thực sự khác biệt, độc đáo.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/news/img20160128101317031.jpg\" alt=\"Skymond Luxury – Tiên phong đưa Platin đến với trang sức Việt\"></figure><p>Để tạo ra dòng trang sức đẹp và thực sự khẳng định được cái tôi cá nhân của mỗi khách hàng, Skymond Luxury đã đi một con đường khác với sự lựa chọn của hàng loạt những thương hiệu trang sức lớn nhỏ khác tại Việt Nam, đó là sử dụng chất liệu vô cùng mới lạ: Bạch Kim. Đây được coi là một quyết định táo bạo, bởi Bạch Kim là một trong những kim loại quý hiếm nhất trên thế giới, vô cùng đắt đỏ, khó chế tác và không phải ai cũng hiểu biết về chúng.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/news/img20160128101317212.jpg\" alt=\"Skymond Luxury \"></figure><p>&nbsp;</p><p>Trên thực tế, bất kỳ chất liệu trang sức nào cũng đều có những hạn chế riêng. Vàng nguyên chất với màu vàng ánh rất kim đậm được coi là kém thẩm mỹ, cộng thêm độ mềm dẻo vốn có khiến chúng không đủ “sức” để giữ chặt những viên đá quý; Bạc dễ bị xỉn màu khi tiếp xúc với không khí hay mồ hoi; các loại Vàng trang sức như 10K, 14K có tính thẩm mỹ cao hơn và khắc phục được độ mềm dẻo của Vàng nguyên chất nhưng lại chứa những kim loại khác nên dễ dàng bị oxy hóa.</p><p>Đó là lý do Skymond Luxury sử dụng chất liệu Bạch Kim hội tụ đầy đủ những đặc tính siêu việt từ khả năng chống ăn mòn, không tan trong axit tới vẻ đẹp sáng bóng và độ bền màu bất chấp thời gian, sắc trắng thể hiện chiều sâu của cái đẹp và tôn vinh những giá trị thanh lịch, tinh tế, sang trọng và đẳng cấp. Đó là một trong những điểm khác biệt mà Skymond Luxury đã làm được so với hàng loạt các thương hiệu lớn nhỏ vốn nổi tiếng trong lĩnh vực kinh doanh trang sức tại Việt Nam.</p><p><strong>Tại sao Skymond Luxury luôn hút khách?</strong></p><p>Chất liệu độc đáo chính là lý do đầu tiên trả lời cho câu hỏi này. Lựa chọn rẽ vào một con đường mà chưa từng thương hiệu nào dám dấn thân là chìa khóa để tạo nên sự thành công của Skymond. Hiểu rõ khao khát sở hữu vẻ đẹp thanh lịch giúp tôn lên nét quý phái của những tâm hồn yêu cái đẹp, đồng thời mong muốn mang xu hướng bậc nhất của thế giới tiếp cận gần hơn với người Việt, thương hiệu Skymond Luxury đã tiên phong tạo ra một phân khúc đẳng cấp nhất trên thị trường mang tên Bạch Kim. Cho tới nay, đây vẫn là thương hiệu duy nhất thành công trong việc nghiên cứu và chế tác chất liệu này.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/news/img20160128101318802.jpg\" alt=\"Tại sao Skymond Luxury luôn hút khách?\"></figure><p>Điểm thu hút tiếp theo của Skymond Luxury là sự thăng hoa của những mẫu thiết kế. Với tiêu chí phải sáng tạo và làm mới không ngừng, họ luôn có ý thức bắt kịp những “hot trend” của thế giới. Những sản phẩm Bạch Kim của Skymond được thiết kế theo phong cách tinh tế, thanh lịch, tối giản về chi tiết nhưng thăng hoa trong từng đường nét, xử lý kỹ lưỡng tới từng giác cắt tinh xảo, thể hiện được nét đẹp quý phái và quyến rũ. Đặc biệt, các sản phẩm này chỉ được phép nằm tại quầy trưng bày không quá 6 tháng. Dĩ nhiên, những mẫu thiết kế không được ưa chuộng và “lạc hậu” so với sự phát triển của thời trang sẽ bị hủy để thu lại nguyên liệu, sau đó tiếp tục sản xuất ra các sản phẩm mới mẻ, độc đáo hơn kể từ tháng thứ 7. Bởi vậy, những người ưa chuộng cái mới, am hiểu về thời trang thường tìm đến Skymond như cách để cập nhật những xu hướng nổi bật của thế giới.</p><p>Mỗi món trang sức của Skymond không chỉ là kết quả của quá trình sáng tạo và chế tác miệt mài, tỉ mỉ của những người thợ kim hoàn có ít nhất 10 năm kinh nghiệm mà còn là thành tựu của sự ứng dụng những công nghệ hiện đại trị giá hàng chục tỉ đồng. Trong khi những cỗ máy hỗ trợ cho quá trình thiết kế, tạo sáp, đúc và xi mạ… thì toàn bộ những công đoạn tinh vi đòi hỏi sự linh hoạt, khéo léo và am hiểu thẩm mỹ như mài giũa, gắn đá và đánh bóng đều được các nghệ nhân thực hiện thủ công. Nói thì có vẻ đơn giản, thế nhưng để thực hiện được một trong những công đoạn ấy, họ đã phải mất rất nhiều năm để học tập và rèn luyện tay nghề, và phải mất hàng giờ mỗi ngày để cho ra được một sản phẩm ưng ý. “Kiểm tra”, “Tái kiểm tra” và “Tiếp tục kiểm tra” là những cụm từ được sử dụng nhiều nhất tại xưởng chế tác và sản xuất trang sức của Skymond với mục đích cuối cùng là tạo ra những tuyệt phẩm thật hoàn hảo.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/news/img20160128101319126.jpg\" alt=\"món trang sức của Skymond \"></figure><p>Bằng cách kết hợp kỹ nghệ tinh xảo, chất liệu quý hiếm và phong cách thời thượng, Skymond Luxury đã thổi một làn gió mới vào thị trường trang sức Việt, để giới mộ điệu thể hiện được “tuyên ngôn cá tính” của mình một cách thời trang, khác biệt mà vẫn hết sức sang trọng, tạo ra những dấu ấn thực sự đẳng cấp.</p>', 'Trong hàng loạt những thương hiệu nổi tiếng tại Việt Nam, cái tên Skymond Luxury nổi lên như một danh từ không thể thiếu mỗi khi nhắc tới Bạch Kim – chất liệu sang trọng và bền vững hàng đầu làng trang sức.', '2020-11-03', 'http://localhost:6789/api/file-load/1604413154615_img20160128101316862.jpg', 'Skymond Luxury – Tiên phong đưa Platin đến với trang sức Việt1');
INSERT INTO `new` VALUES (44, '<p><strong>Những cặp đôi điều kiện có vô vàn cách để thể hiện đẳng cấp giàu sang mà ai ai cũng phải ao ước. Từ những món đồ dùng hàng ngày cho đến trang sức cho những dịp trọng đại như ngày cưới. Và hãy xem địa chỉ nhẫn cưới nào thường xuyên được các cặp đôi giàu có lựa chọn nhé!</strong></p><h2>Mua nhẫn cưới đắt tiền để khẳng định đẳng cấp</h2><p>Các thiếu gia, ái nữ của các gia đình giàu có hay các bạn trẻ đã chạm tay đến thành công từ khá sớm luôn có khả năng chi trả cho những đôi nhẫn cưới từ vài chục đến hàng trăm triệu đồng. Tại sao họ lại lựa chọn những mẫu nhẫn cưới đắt đỏ như vậy?</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/nhan-cuoi-platin-249-1-ngoisaovn-w600-h600.jpg\" alt=\"\"></figure><p>Khách hàng thông thái ở đẳng cấp thượng lưu thường lựa chọn sản phẩm tại các thương hiệu danh tiếng. Đó là bởi tư duy khác biệt và tinh tế của giới nhà giàu – những cậu ấm cô chiêu từng trải nghiệm cuộc sống bên trời Tây, nơi những kinh đô thời trang phồn hoa bậc nhất thế giới, nơi có những thương hiệu trang sức lừng danh dành riêng cho tầng lớp quý tộc hay các ngôi sao hạng A. Những người trẻ như vậy luôn có một gu thời trang riêng, hiện đại và độc đáo, họ có nhiều ý tưởng khác biệt và mong muốn có một thương hiệu trang sức tại Việt Nam có thể thỏa mãn mong ước đó của họ.</p><p><i>Xem thêm:&nbsp;</i><a href=\"https://skymond.vn/nhan-cuoi-platin-c-345.aspx\"><i>BST nhẫn cưới Platin</i></a></p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/nhan-cuoi-platin-249-2-ngoisaovn-w600-h600.jpg\" alt=\"\"></figure><p>Thế nhưng hiện tại không có nhiều thương hiệu tại Việt Nam có thể làm được điều này. Phần lớn vẫn là hàng đại trà với mức giá bình dân, kiểu dáng cũ, tròn trơn mà những thời trước do chế tác còn hạn chế nên hay sử dụng và không cập nhật xu hướng thời trang thế giới.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/nhan-cuoi-platin-249-3-ngoisaovn-w600-h600.jpg\" alt=\"\"></figure><p>Thế nên trước kia, nhiều đại thiếu gia phải cất công chọn lựa, đặt hàng nhẫn cưới từ các hãng trang sức nước ngoài. Nhưng nay thì không cần nữa! Càng ngày họ càng chuyển hướng sang lựa chọn trang sức trong nước khi đã tìm được cho mình một địa chỉ tin cậy cả về chất lượng sản phẩm cũng như dịch vụ và đặc biệt là đảm bảo được độ “sang – xịn” số 1 Việt Nam, đó chính là thương hiệu Skymond Luxury. Là hãng trang sức thiết kế cao cấp được mệnh danh là “thương hiệu thiết kế trang sức Platin hàng đầu Việt Nam”, Skymond khiến giới con nhà giàu có thể hãnh diện khoe với bạn bè và đồng nghiệp, đồng thời tạo nên vị thế cao trong xã hội.</p><h2>Skymond Luxury - Hãng thiết kế trang sức Platin hàng đầu Việt Nam</h2><p>Skymond Luxury là thương hiệu xuất hiện tại thị trường Việt Nam từ năm 2008, được biết đến như Cha đẻ ngành thiết kế trang sức Platin, tiên phong trong việc đưa trang sức Platin phát triển tại Việt Nam. Sản phẩm của Skymond đặc trưng bởi phong cách thời thượng và chất liệu quý hiếm nhất hành tinh - “Platin”. Với định vị “đẳng cấp của bạn”, Skymond luôn cho ra những bộ sưu tập nhẫn cưới có 1 không 2 tại thị trường Việt Nam.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/nhan-cuoi-platin-249-4-ngoisaovn-w600-h600.jpg\" alt=\"\"></figure><p><a href=\"https://skymond.vn/bi-an-dang-sau-platin-d-58978.aspx\">Platin</a>&nbsp;tốt cho sức khỏe, bền màu vĩnh cửu và không bao giờ bị oxy hóa trước tác động của môi trường. Nhẫn cưới Platin đính kim cương là minh chứng hoàn hảo nhất cho tình yêu và hôn nhân trường tồn vĩnh cửu, một vật bảo hộ dành cho giới nhà giàu muốn giữ gìn hạnh phúc dài lâu của mình, bên cạnh sự nghiệp và cuộc sống thăng hoa. Do đó chất liệu này không thể tìm thấy ở những nhãn hiệu nhẫn cưới thông thường khác với hàng trăm mẫu mã giống nhau và công nghệ chế tác lạc hậu.Tại Skymond, với công nghệ chế tác tiên tiến đến từ Nhật Bản, các nhà thiết kế và nghệ nhân đã cho ra đời những đôi nhẫn cưới tuyệt phẩm, đạt tới đỉnh cao của nghệ thuật kim hoàn hiện đại.</p><p>Không có nhiều địa chỉ bày bán nhẫn cưới Platin tại Hà Nội và càng không có một cơ sở nào có nhiều mẫu nhẫn cưới Platin đa dạng, sang trọng và đẹp mắt như tại Skymond Luxury. Với phong cách phục vụ chuyên nghiệp và chính sách bảo hành tận tâm cho tất cả khách hàng, ngay cả những đối tượng khách hàng “khó tính” nhất cũng luôn cảm thấy hài lòng khi đến với địa chỉ này.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/nhan-cuoi-platin-249-5-ngoisaovn-w600-h600.jpg\" alt=\"\"></figure>', 'Những cặp đôi điều kiện có vô vàn cách để thể hiện đẳng cấp giàu sang mà ai ai cũng phải ao ước. Từ những món đồ dùng hàng ngày cho đến trang sức cho những dịp trọng đại như ngày cưới. Và hãy xem địa chỉ nhẫn cưới nào thường xuyên được các cặp đôi giàu có lựa chọn nhé!', '2020-11-03', 'http://localhost:6789/api/file-load/1604413226517_nhan-cuoi-platin-249-1-ngoisaovn-w600-h600.jpg', 'Rich kid Việt phát sốt vì nhẫn cưới Platin');
INSERT INTO `new` VALUES (45, '<p><strong>Để giúp bạn dễ dàng hơn trong việc tìm và chọn nhẫn đính hôn, Skymond đã tập hợp một danh sách 10 kiểu nhẫn đính hôn phổ biến thuộc hàng kinh điển được đánh giá là phù hợp với đa dạng phong cách, tính tình của cô dâu cũng như tương xứng với nhiều kích cỡ hầu bao của chú rể</strong>.</p><p>&nbsp;</p><p><strong>1. Nhẫn kiểu Solitaire</strong></p><p>Nhẫn #Solitaire - nhẫn có vòng kim loại mảnh với duy nhất một viên kim cương hoặc đá quý cắt hình tròn vốn là kiểu nhẫn đính hôn kinh điển được rất nhiều phụ nữ, đặc biệt là những phụ nữ thuộc tuýp cổ điển, lãng mạn yêu thích, do đó nó cũng là mẫu nhẫn cầu hôn/đính hôn được nhiều người ưa chuộng. Mang vẻ đẹp vừa duyên dáng vừa thanh lịch, nhẫn solitaire có khả năng tôn dáng cho mọi bàn tay và là mẫu nhẫn không bao giờ lỗi mốt. Chất lượng và giá thành của nhẫn solitaire phụ thuộc chủ yếu vào chất liệu làm vòng nhẫn. Phổ biến nhất và đắt nhất là Platin nhờ ưu điểm độ bền cao, màu sắc rực rỡ, nổi bật, có khả năng giữ viên đá chắc chắn hơn và ít bị trầy xước.&nbsp;</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/OI.jpg\" alt=\"\"></figure><p><strong>2. Nhẫn kim cương giác cắt fancy (fancy cuts/ shapes)</strong></p><p>Nếu cô dâu của bạn vẫn thuộc tuýp đơn giản, thích phong cách cổ điển nhưng vẫn muốn mình phải khác biệt một chút thì một chiếc nhẫn kiểu solitaire với viên kim cương cắt dạng fancy (khác hình tròn truyền thống) sẽ là sự lựa chọn khôn ngoan. Kiểu cắt phổ biến thứ nhì sau hình tròn là kiểu cắt hình vuông thanh lịch (princess). Những cô dâu thuộc hàng “celebrity” đã góp phần lăng xê mẫu nhẫn đính kim cương fancy cuts này, đặc biệt là kiểu hình vuông và chữ nhật xếp tầng. Hãy thử lướt qua ngón tay của Katherine Heigl, Eva Longoria Parker, Angelina Jolie (cho ảnh họ vào) phong cách của những ngôi sao này đã chinh phục trái tim của những người phụ nữ yêu thời trang và quan tâm đến thế giới của người nổi tiếng.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/1418257443-35-angelina-jolie.jpg\" alt=\"\"></figure><p><strong>3. Nhẫn mặt đá to</strong></p><p>Với một số cô dâu thì kích thước viên kim cương/đá quý còn quan trọng hơn cả chất lượng, màu sắc và độ lấp lánh của viên đá đó. Trong trường hợp này, chú rể nên bớt chút thời gian tìm hiểu về tiêu chuẩn 4Cs bao gồm: giác cắt, màu sắc, độ tinh khiết và số carat. Carat là khối lượng của viên kim cương (không phải kích thước). Độ tinh khiết được quyết định bởi số lượng các khiếm khuyết của viên kim cương. Giác cắt của kim cương thể hiện viên kim cương tỏa sáng lấp lánh đẹp đến cỡ nào, điều này phụ thuộc vào mức độ chuyên nghiệp của người thợ khi cắt từ viên kim cương thô. Giác cắt được xếp loại theo một quy mô khác nhau, cuối cùng là màu sắc. Lý tưởng nhất chính là một viên kim cương không màu.Hãy nhớ điều này khi chọn nhẫn cho một cô dâu “cuồng” hột xoàn nhé!</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/HYK.jpg\" alt=\"\"></figure><p><strong>&nbsp;4. Nhẫn 6 chấu</strong></p><p>Nhiều phụ nữ thổ lộ họ đã phát cuồng khi nhìn thấy chiếc hộp nhỏ hình vuông của Skymond, bên trong là một chiếc nhẫn cầu hôn 6 chấu (6-prongs). Và khi nó được nâng niu trên đôi tay của một người đàn ông đang quỳ gối, đảm bảo 100% chả vị hôn thê nào có thể chối từ.</p><p>Nhẫn kim cương 6 chấu là một trong những thiết kế kinh điển, viên kim cương được nâng cao hơn một chút so với vòng nhẫn, nhờ đó ánh sáng sẽ khúc xạ qua viên kim cương tốt hơn giúp nó rực rỡ lấp lánh hơn. Với những cô dâu vốn mê mẩn đôi giày cao gót Manolo Blahnik hay chiếc túi Prada, kiểu nhẫn kinh điển này chắc chắn là lựa chọn không bao giờ thất bại.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/kimcuong(3).jpg\" alt=\"\"></figure><p><strong>5. Nhẫn đính 3 viên đá/ kim cương</strong></p><p>Nhẫn đính 3 viên đá/kim cương thường đắt hơn nhẫn Solitaire và “tiềm năng” của nó thì khá đáng nể đấy. Mỗi viên đá lại mang một biểu tượng khác nhau, nó đại diện cho cho quá khứ, hiện tại và tương lai cuộc hôn nhân. Nhẫn 3 viên đá thường có thiết kế 1 viên đá lớn ở giữa và 2 viên đá nhỏ hơn bên cạnh nhưng bạn cũng có thể chọn kiểu 3 viên đá có kích thước bằng nhau. Nhẫn có 3 viên đá rất nổi bật, sang trọng và chắc chắn là vô cùng lấp lánh.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/HH.jpg\" alt=\"\"></figure><p><strong>6. Nhẫn kiểu split-shank</strong></p><p>Những phụ nữ không thích kiểu vòng nhẫn trơn truyền thống sẽ thích những kiểu nhẫn phá cách và bắt mắt. Split-shrank có nghĩa là phần nhẫn bên dưới mặt đá sẽ được chia làm hai, mở rộng điểm trung tâm của vòng nhẫn để có thể trang trí thêm các viên kim cương khác nhỏ hơn hoặc các chi tiết trang trí khác. Kiểu nhẫn này rất thanh lịch, thể hiện vẻ đẹp cổ điển, nó phù hợp với cả việc đeo hằng ngày cho đến những buổi tiệc tối cần sự trang trọng.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/gh.jpg\" alt=\"\"></figure><p><strong>&nbsp;7. Nhẫn đính nhiều đá</strong></p><p>Một người phụ nữ với gu quyến rũ và theo phong cách “bling-bling” (thích mặc trang phục của các nhà tạo mẫu nổi tiếng và mang nữ trang chói sáng) sẽ đánh giá cao một chiếc nhẫn cưới có các viên kim cương xếp theo phong cách chanel-setting hay pavé-setting. Cả hai loại này đều sử dụng những viên kim cương nhỏ gắn dọc theo vòng nhẫn giúp nhẫn có độ lấp lánh cao hơn các mẫu nhẫn solitaire hoặc nhẫn 3 viên đá.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/Untitled-111.jpg\" alt=\"\"></figure><p>&gt;&gt; Xem thêm: <a href=\"http://skymond.vn/tri-an-khach-hang-nhan-ngan-uu-dai-d-58988.aspx\">Chương trình ưu đãi lớn khi mua nhẫn cưới</a></p><p><strong>8. Nhẫn cưới và nhẫn đính hôn hòa làm một</strong></p><p>Với người phương Tây, nhẫn đính hôn là chiếc nhẫn không thể thiếu trong một cuộc tình. Nó đánh dấu việc người phụ nữ chính thức đồng ý trở thành bạn đời của người đàn ông, lễ cưới sau đó chỉ còn là vấn đề thủ tục. Tại Việt Nam, cái bóng quá lớn của chiếc nhẫn cưới đã lấn át vai trò của chiếc nhẫn đính hôn. Tuy nhiên hiện nay, nhiều bạn trẻ đã hiểu được vai trò của chiếc nhẫn đính hôn nên không ít cô dâu có cơ hội sở hữu một chiếc nhẫn đính hôn và nhẫn cưới riêng rẽ. Với những cô dâu cầu kỳ, họ sẽ mong muốn chiếc nhẫn đính hôn và nhẫn cưới phải có chút gì đó liên quan đến nhau hoặc phải “match” với nhau. Điều này đã vô tình làm khó chú rể khi phong cách của mỗi chiếc nhẫn là khác nhau. Do đó một trào lưu khá phổ biến hiện nay là các nhà chế tác những cặp nhẫn cưới và nhẫn đính hôn (thường thì nhẫn đính hôn sẽ cầu kì hơn và nhẫn cưới đơn giản hơn một chút). Hai chiếc nhẫn này có thể đeo độc lập và có thể gắn lại với nhau thành một cặp nhẫn đồng bộ tượng trưng cho một tình yêu hòa hợp.&nbsp;&nbsp;</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/tyg.jpg\" alt=\"\"></figure><p><strong>9. Nhẫn có màu sắc đặc biệt</strong></p><p>Kim cương là loại đá truyền thống và là lựa chọn số 1 cho các mẫu nhẫn đính hôn và nhẫn cưới, nhưng cũng không ai cấm bạn tô điểm cho chiếc nhẫn một chút màu sắc. Nhiều phụ nữ thích màu sắc phong phú của ngọc bích hoặc ngọc lục bảo để làm chiếc nhẫn của mình nổi bật hơn. Một chiếc nhẫn đính đá quý chắc chắn sẽ nổi bật so với những chiếc nhẫn khác, chưa kể chú rể còn có thể tiết kiệm một khoản kha khá cho ví tiền của mình.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/Untitled-22.jpg\" alt=\"\"></figure><p><strong>10. Nhẫn sử dụng đá tổng hợp (đá CZ Swarovski)</strong></p><p>Những chú rể không dư dả có thể thuyết phục cô dâu chọn mẫu nhẫn sử dụng đá cubic zirconia – có mức giá chỉ bằng một phần nhỏ so với kim cương thật và nếu mua từ một thương hiệu uy tín thì gần như không thể phân biệt được nó với kim cương nếu nhìn bằng mắt thường. Tuy nhiên, chú rể vẫn cứ nên hỏi ý kiến cô dâu trước khi mua loại nhẫn này để còn biết xem cô nàng thuộc tuýp: thà đeo kim cương xấu còn hơn đeo kim cương giả hay thật giả không quan trọng, miễn là to.</p><figure class=\"image\"><img src=\"http://skymond.vn/uploads/files/Untitled-2(9).jpg\" alt=\"\"></figure>', 'Để giúp bạn dễ dàng hơn trong việc tìm và chọn nhẫn đính hôn, Skymond đã tập hợp một danh sách 10 kiểu nhẫn đính hôn phổ biến thuộc hàng kinh điển được đánh giá là phù hợp với đa dạng phong cách, tính tình của cô dâu cũng như tương xứng với nhiều kích cỡ hầu bao của chú rể.', '2020-11-03', 'http://localhost:6789/api/file-load/1604413280989_OI.jpg', 'Chọn đúng ý nàng - cầu hôn dễ dàng');
INSERT INTO `new` VALUES (46, '<p><i>Nhân dịp 20/10, DOJI ra mắt Bộ sưu tập Trang sức Vàng 24k công nghệ 3D mang tên “Cúc hoạ mi” với thiết kế độc đáo cùng chương trình khuyến mãi hấp dẫn.</i></p><p>Vài năm trở lại đây, DOJI được biết đến là một trong những thương hiệu trang sức hàng đầu Việt Nam với các dòng sản phẩm Trang sức Kim cương, đá màu tinh xảo, thời thượng. Tuy nhiên, thương hiệu này vẫn luôn dành sự quan tâm cho Trang sức Vàng 24K bởi sở hữu thế mạnh trong công nghệ sản xuất hiện đại bậc nhất hiện nay tại Việt Nam.</p><p><strong>Cảm hứng trong trẻo từ loài cúc hoạ mi thuần khiết</strong></p><p>Giản dị, nhẹ nhàng, mong manh và thuần khiết là những gì mà người ta nói về vẻ đẹp của cúc họa mi, loài hoa gắn liền với mảnh đất Hà Nội mỗi độ đông về. Ngay cả trên thế giới, loài hoa này cũng đem đến nguồn cảm hứng bất tận cho bộ đôi nhà thiết kế thiên tài Dolce &amp; Gabbana với tuyệt tác với họa tiết cúc hoa mi lãng mạn cho mùa mốt xuân hè 2016. Cho đến dòng nước hoa mà Marc Jacobs dành riêng cho loài hoa này cũng trở thành mùi hương được săn đón suốt nhiều năm qua.</p><figure class=\"image\"><img src=\"https://trangsuc.doji.vn/Uploads/images/hang-ngan-qua-tang-hap-dan-khi-mua-trang-suc-vang-24k-doji-dip-20-10-01(2).jpg\" alt=\"\"></figure><p><i>Cận cảnh các thiết kế trong Bộ sưu tập “Cúc họa mi” của DOJI</i></p><p>Được chế tác trên chất liệu vàng 24K tinh khiết, điểm nhấn của Bộ sưu tập <i>“Cúc hoạ mi”</i> của DOJI mang đậm tính thời trang, là món quà đặc biệt mà thương hiệu này dành tặng những người phụ nữ nhân dịp 20/10.</p><p>Mỗi thiết kế trong Bộ sưu tập <i>“Cúc họa mi”</i> sống động với hình tượng cánh hoa nhỏ xinh kết hợp với những viên đá lấp lánh. Những viên đá được lựa chọn có kích thước vừa phải, làm cân đối các cánh hoa để đạt độ tinh tế nhất.</p><p>Giá trị của Bộ sưu tập không chỉ tôn thêm vẻ đẹp của người phụ nữ, mà còn thể hiện sự thanh lịch, thời trang dù chất liệu vàng 24K vốn được xem là chất liệu truyền thống. Bởi vậy, Bộ sưu tập này chính là biểu trưng cho sự trong sáng, thuần khiết, cho tình yêu trọn vẹn, cho may mắn đủ đầy đến với chủ nhân.</p><p><strong>Công nghệ chế tác 3D hiện đại</strong></p><p>Hơn 25 năm không ngừng theo đuổi khát vọng nâng tầm trang sức Việt, DOJI hiểu rằng, trang sức mãi mãi là tinh hoa tô điểm cho cuộc đời người phụ nữ, là trợ thủ “cho phụ nữ luôn trọn vẹn”.</p><p>Bởi thế, Bộ sưu tập <i>“Cúc hoạ mi”</i> được các nghệ nhân tài hoa của DOJI dành nhiều tâm huyết để thổi hồn vào mỗi sản phẩm, như những người nghệ sĩ kỳ công với tác phẩm nghệ thuật của mình.</p><figure class=\"image\"><img src=\"https://trangsuc.doji.vn/Uploads/images/hang-ngan-qua-tang-hap-dan-khi-mua-trang-suc-vang-24k-doji-dip-20-10-02(1).jpg\" alt=\"\"></figure><p><i>Thiết kế dây chuyền trong Bộ sưu tập “Cúc họa mi” mang đến sự duyên dáng cho người sử dụng.</i></p><p>Một thách thức với các nghệ nhân kim hoàn của DOJI là chất liệu vàng truyền thống vốn mềm, dễ bóp méo khiến Trang sức Vàng 24K thường hạn chế về kiểu dáng. Thế nhưng, với công nghệ chế tác 3D của DOJI, chất liệu vàng 24K có thể được thiết kế thành những mẫu trang sức tinh xảo và đảm bảo độ cứng.</p><p>Không những vậy, lượng vàng cần thiết để chế tác cho một sản phẩm chỉ bằng 1/3 so với công nghệ cũ. Nhờ đó, DOJI tạo ra các sản phẩm có trọng lượng nhẹ, mẫu mã đa dạng, để khách hàng sử dụng trang sức mỗi ngày dù là đi làm, đi chơi hay đi tiệc.</p><p>Kết hợp cảm hứng tuyệt vời từ hoa cúc hoạ mi và chất liệu vàng 24K, DOJI đã tạo ra những thiết kế đột phá, đậm chất thời trang, biến Trang sức Vàng 24K thành món trang sức mà bất kì cô gái nào cũng mong muốn sở hữu.</p><figure class=\"image\"><img src=\"https://trangsuc.doji.vn/Uploads/images/hang-ngan-qua-tang-hap-dan-khi-mua-trang-suc-vang-24k-doji-dip-20-10-03(2).jpg\" alt=\"\"></figure><p><i>Sản phẩm cài áo trong Bộ sưu tập “Cúc họa mi” mang đến sự mới lạ cho phong cách thời trang của phái đẹp.</i></p><p>Với tính ứng dụng cao, các sản phẩm trong Bộ sưu tập <i>“Cúc hoa mi”</i> của DOJI rất đa dạng từ dây chuyền, bông tay, nhẫn, đến cài áo, charm... cho thấy sức sáng tạo của những người thợ kim hoàn tài hoa.</p><p>Đặc biệt, mỗi sản phẩm này có mức giá chỉ từ 3 triệu đồng, mức giá rất phù hợp để các chàng trai dành tặng cô gái yêu thương của mình, hay cũng có thể chính là món quà “tự thưởng” của phái đẹp nhân dịp đặc biệt 20/10. Đã không còn những chiếc nhẫn trơn hay mặt dây chuyền đơn điệu, những bông cúc họa mi bằng vàng 24K tinh xảo đã sẵn sàng làm mới bộ cánh của phái đẹp thời hiện đại.</p><figure class=\"image\"><img src=\"https://trangsuc.doji.vn/Uploads/images/hang-ngan-qua-tang-hap-dan-khi-mua-trang-suc-vang-24k-doji-dip-20-10-04.jpg\" alt=\"\"></figure><p><i>Những sản phẩm trong Bộ sưu tập “Cúc họa mi” được dự đoán trở thành tâm điểm của thị trường quà tặng 20/10 năm nay.</i></p>', 'Nhân dịp 20/10, DOJI ra mắt Bộ sưu tập Trang sức Vàng 24k công nghệ 3D mang tên “Cúc hoạ mi” với thiết kế độc đáo cùng chương trình khuyến mãi hấp dẫn.', '2020-11-03', 'http://localhost:6789/api/file-load/1604413508949_doji-gui-tang-khach-hang-hang-ngan-uu-dai-dip-20-10-02(2).jpg', 'BỘ SƯU TẬP TRANG SỨC QUỐC DÂN DỊP 20/10 CÓ GÌ ĐỘC ĐÁO?');

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES (5, '123a123a', '123457678', 'Hà nội', 0, '2020-11-02 23:46:25', 2, 1015470);
INSERT INTO `order_product` VALUES (6, '123a123a', '123457678', 'Hà nội', 0, '2020-11-04 20:55:12', 2, 32000200);
INSERT INTO `order_product` VALUES (7, '123a123a', '123457678', 'Hà nội', 0, '2020-11-04 21:24:21', 2, 27200000);
INSERT INTO `order_product` VALUES (8, '123a123a', '123457678', 'Việt Nam', 0, '2020-11-15 13:30:16', 2, 5690000);
INSERT INTO `order_product` VALUES (9, '123a123a', '123457678', 'Việt Nam', 0, '2020-11-15 13:33:22', 2, 179291000);
INSERT INTO `order_product` VALUES (10, '123a123a', '012354568', 'Thành Phố Hồ Chí Minh', 0, '2020-11-15 13:40:35', 2, 99020200);
INSERT INTO `order_product` VALUES (11, '123a123a', '012354568', 'Thành Phố Hồ Chí Minh', 0, '2020-11-15 13:46:28', 2, 1460000);

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
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `product` VALUES (10, '2020-10-06', 'hương hiệu:', 16, NULL, 1, 'http://localhost:6789/api/file-load/gizt00y000006-hat-charm-me-vang-18k-dinh-da-suncut-swarovski-pnj-zt00y000006-01.png', 'SI00XMW060000', 'Hạt charm xỏ DIY PNJSilver hình tim đôi', 365000.00, 1, 79, 2);
INSERT INTO `product` VALUES (11, '2020-11-02', '<p>Chẳng điều gì có thể thu hút ánh nhìn hơn một chiếc <a href=\"https://www.pnj.com.vn/trang-suc-cuoi/nhan/\">nhẫn cưới</a> được đính kết kim cương sáng lấp lánh trên tay và đồng hành cùng người bạn đời của mình trọn kiếp. Hòa với niềm vui lứa đôi nên duyên vợ chồng, chiếc nhẫn cưới kim cương vàng 18K đến từ thương hiệu PNJ sẽ là lời chúc gắn kết yêu thương cũng như ý nghĩa sinh sôi nảy nở về con cái, tài lộc cho gia đình mới.</p><h3>Nhẫn cưới đính Kim cương – Một chút phá cách điểm tô cho vẻ đẹp truyền thống</h3><figure class=\"image\"><img src=\"https://www.pnj.com.vn/images/content/trang-suc-vang/nhan/nhan-cuoi-kim-cuong-vang-18k-pnj-true-love-19-ddddc000476.jpg?1577671115866\" alt=\"Nhẫn cưới PNJ sở hữu thiết kế sang trọng và hiện đại\"></figure><p><i>Nhẫn cưới PNJ sở hữu thiết kế sang trọng và hiện đại</i></p><p>Cho khởi đầu hoàn hảo của cuộc sống lứa đôi, PNJ mang đến những thiết kế nhẫn cưới với phong cách hiện đại, giúp cho cặp đôi có nhiều sự lựa chọn. Sở hữu kiểu dáng thu hút tinh xảo kết hợp dãy <a href=\"https://www.pnj.com.vn/trang-suc-kim-cuong/\">kim cương</a> sang trọng, nhẫn cưới với thiết kế dành cho phái nữ, tôn vinh vẻ đẹp dịu dàng và hiện đại.</p>', 1, 1, 1, 'http://localhost:6789/api/file-load/1604326405147_gnddddc000476-nhan-cuoi-kim-cuong-vang-18k-pnj-true-love-19-ddddc000476.png', 'GNDDDDC000476', 'Nhẫn cưới Kim cương Vàng 18K PNJ True Love ', 1128300.00, 1, 98, 3);
INSERT INTO `product` VALUES (12, '2020-11-02', '<h2>Bộ trang sức Vàng 18K đính đá Ruby DisneyIPNJ Beauty &amp; The Beast 00257-00821</h2>', 1, NULL, 1, 'http://localhost:6789/api/file-load/1604336111918_gbrbxmy000257-gnrbxmy000821-bo-trang-suc-vang-18k-dinh-da-ruby-pnj-beauty-and-the-beast-00257-00821.png', 'GBRBXMY000257-GNRBXMY000821', 'Bộ trang sức Vàng 18K đính đá Ruby DisneyIPNJ Beauty & The Beast', 14891000.00, 0, 55, 3);
INSERT INTO `product` VALUES (13, '2020-11-02', '<p>Thương hiệu :</p><p>PNJ</p><p>Bộ sưu tập:</p><p>Sunflower</p><p>Loại đá chính:</p><p>Suncut Swarovski</p><p>Màu đá chính:</p><p>Trắng</p><p>Loại đá phụ (nếu có):</p><p>ECZ - Swarovski</p><p>Màu đá phụ (nếu có):</p><p>Trắng</p><p>Giới tính:</p><p>Nữ</p><p>Dịp tặng quà:</p><ul><li>Sinh nhật</li><li>Tình yêu</li><li>Ngày kỷ niệm</li><li>Các dịp lễ tết</li></ul><p>Quà tặng cho người thân:</p><ul><li>Cho Nàng</li><li>Cho Mẹ</li></ul>', 1, NULL, 1, 'http://localhost:6789/api/file-load/1604336188519_bo-trang-suc-pnj-sunflower-vang-10k-dinh-da-swarovski-97429.png', 'GCXMXMC000023', 'Bộ trang sức Vàng 10K đính đá Suncut Swarovski PNJ Sunflower', 15432000.00, 0, 66, 3);
INSERT INTO `product` VALUES (14, '2020-11-02', '<h2>Bộ trang sức Vàng 10K đính đá Suncut Swarovski PNJ Sunflower 00001-00001</h2>', 1, NULL, 1, 'http://localhost:6789/api/file-load/1604336245000_bo-trang-suc-pnj-vang-10k-dinh-da-mau-vang-95883.png', 'GBXMZTC000001', 'Bộ trang sức Vàng 10K đính đá Suncut Swarovski ', 12345210.00, 0, 23, 1);
INSERT INTO `product` VALUES (15, '2020-11-03', '<p>Không chỉ là kỷ vật minh chứng cho ngày hạnh phúc thăng hoa và khắc ghi sự khởi đầu hoàn hảo cho cuộc sống lứa đôi, mỗi tuyệt tác trang sức cưới Hạnh Phúc Vàng còn là một câu chuyện gắn kết những giá trị đích thực của tình yêu, niềm hạnh phúc, sự thủy chung son sắt của riêng từng đôi lứa mà PNJ mãi tôn vinh. Nguyện ước về một cuộc hôn nhân viên mãn chính là nguồn cảm hứng để PNJ sáng tạo nên các sản phẩm trang sức sính lễ, hồi môn tinh tế, sắc sảo và đậm đà bản sắc truyền thống Á Đông.</p>', 3, NULL, 1, 'http://localhost:6789/api/file-load/1604336483028_gcdrya86736.000-day-co-cuoi-pnj-rang-ro-tinh-xuan-vang-22k.png', ' GC0000Y000046', 'Dây cổ cưới Vàng 22K PNJ Rạng Rỡ Tình Xuân ', 10003200.00, 0, 20, 7);
INSERT INTO `product` VALUES (16, '2020-11-03', '<p>Dây Cổ Cưới PNJ Ngọc Yêu Thương Vàng Trắng 14K đính Ngọc Trai Freshwater</p>', 3, NULL, 5, 'http://localhost:6789/api/file-load/1604336525465_gcdrwb85978.600-day-co-cuoi-pnj-ngoc-yeu-thuong-vang-trang-14k-dinh-ngoc-trai-freshwater.png', 'GCPFXMW000014', 'Dây cổ Vàng trắng 14K đính ngọc trai Freshwater PNJ Ngọc Yêu Thương PFXMW000014', 2412464.00, 0, 11, 1);
INSERT INTO `product` VALUES (17, '2020-11-03', '<p><strong>VŨ KHÚC TÌNH YÊU</strong></p><p>Lấy ý tưởng từ những thanh âm trầm bổng trong bản hoà ca tình yêu đôi lứa, \"Vũ Khúc Tình Yêu\" là sự hoà quyện hoàn hảo những đường nét uyển chuyển và tinh tế trong từng vũ điệu phượng hoàng sẽ tôn thêm vẻ đẹp đằm thắm, kiêu sa của cô dâu trong ngày trọng đại của đời mình.</p><p>Nguyện ước về một cuộc hôn nhân viên mãn chính là nguồn cảm hứng để PNJ sáng tạo nên các sản phẩm trang sức sính lễ, hồi môn tinh tế, sắc sảo và đậm đà bản sắc truyền thống Á Đông.</p>', 3, NULL, 5, 'http://localhost:6789/api/file-load/1604336567785_gcdrya71538.014-day-co-cuoi-pnj-vu-khuc-tinh-yeu-vang-24k.png', 'GC0000Y000033', 'Dây cổ cưới Vàng 24K PNJ Vũ Khúc Tình Yêu ', 2222114.00, 0, 55, 3);
INSERT INTO `product` VALUES (18, '2020-11-15', '<p>Không chỉ là kỷ vật minh chứng cho ngày hạnh phúc thăng hoa và khắc ghi sự khởi đầu hoàn hảo cho cuộc sống lứa đôi, mỗi tuyệt tác trang sức cưới Hạnh Phúc Vàng còn là một câu chuyện gắn kết những giá trị đích thực của tình yêu, niềm hạnh phúc, sự thủy chung son sắt của riêng từng đôi lứa mà PNJ mãi tôn vinh. Nguyện ước về một cuộc hôn nhân viên mãn chính là nguồn cảm hứng để PNJ sáng tạo nên các sản phẩm trang sức sính lễ, hồi môn tinh tế, sắc sảo và đậm đà bản sắc truyền thống Á Đông.</p>', 3, NULL, 1, 'http://localhost:6789/api/file-load/1604336624796_gcdrya86733.000-day-co-cuoi-pnj-that-duyen-to-hong-vang-22k-1.png', 'GC0000Y000045', 'Dây cổ cưới Vàng 22K PNJ Thắt Duyên Tơ Hồng', 32000200.00, 0, 22, 7);
INSERT INTO `product` VALUES (19, '2020-11-03', '<p><br>Hạt Charm Me Vàng 18K đính đá ECZ Swarovski PNJ</p>', 16, NULL, 3, 'http://localhost:6789/api/file-load/1604336763884_gixmxmc000004-hat-charm-me-vang-18k-dinh-da-ecz-swarovski-pnj-xmxmc000004.png', 'XMXMC000004', 'Hạt Charm Me Vàng 18K đính đá ECZ Swarovski PNJ', 6434000.00, 0, 22, 2);
INSERT INTO `product` VALUES (20, '2020-11-03', '<h2>Hạt Charm Me PNJ Vàng trắng Ý 18K đính đá màu hồng</h2><p>Chắc hẳn đối với các chị em đã không còn gì xa lạ với thú chơi trang sức xâu chuỗi. Tùy theo sở thích mỗi người mà có thể chọn cho mình những hạt charm khác nhau và kết hợp cùng chiếc <a href=\"https://www.pnj.com.vn/charm/charm-vang/?features_hash=38-19893\">vòng tay</a> sẽ tạo nên một món trang sức hoàn chỉnh.</p><h3>Nữ tính và sang trọng cùng charm Me</h3><figure class=\"image\"><img src=\"https://www.pnj.com.vn/images/content/trang-suc-vang/charm/gidrwy87909.400-hat-charm-me-pnj-vang-trang-y-18k-dinh-da-mau-hong.jpg?1540545905462\" alt=\"Tô điểm thêm nét nữ tính và tinh tế cho nàng thông qua charm \"></figure><p><i>Tô điểm thêm nét nữ tính và tinh tế cho nàng thông qua charm Me</i></p><p>Các hạt charm của PNJ đang rất được ưa chuộng với những ai yêu thích thời trang. Sở hữu thiết kế độc đáo được điểm xuyến bằng đá Synthetic màu hồng, hạt <a href=\"https://www.pnj.com.vn/charm/charm-vang/\">charm Me</a> mang vẻ đẹp nữ tính nhưng sang trọng cùng ý nghĩa mạnh mẽ và luôn tự tin trước mọi thử thách và khó khăn. Ngoài ra, với những thiết kế charm mới lạ, giúp nàng diện những chiếc vòng độc đáo và tự tin thể hiện cá tính của mình.</p>', 16, NULL, 4, 'http://localhost:6789/api/file-load/1604337055352_gidrwy87909.400-hat-charm-me-pnj-vang-trang-y-18k-dinh-da-mau-hong.png', 'GNDDDDC0004761', 'Hạt Charm Me Vàng trắng Ý 18K đính đá màu hồng', 15432000.00, 0, 99, 2);
INSERT INTO `product` VALUES (21, '2020-11-03', '<h2>Hạt Charm Me PNJ Vàng Ý 18K đính đá màu xanh</h2><p>Một trong những điều làm nên sự thú vị và hấp dẫn cho những chiếc vòng charm đó chính là sưu tập những hạt charm hay còn gọi là hạt trang trí và xâu chuỗi lại tạo thành một vòng tay hoàn chỉnh. <a href=\"https://www.pnj.com.vn/charm/charm-vang/\">Charm PNJ</a> sở hữu nhiều kiểu dáng độc đáo trên nền chất liệu vàng Ý 18K không chỉ giúp phái nữ trông xinh đẹp mà còn toát lên sự sang trọng và khẳng định giá trị của người đeo.</p>', 16, NULL, 6, 'http://localhost:6789/api/file-load/1604337174962_giztxmc000001-hat-charm-me-vang-y-18k-dinh-da-mau-xanh-pnj-01.png', 'ZTXMC000001', 'Hạt Charm Me Vàng Ý 18K đính đá màu xanh ', 3170000.00, 0, 23, 2);
INSERT INTO `product` VALUES (22, '2020-11-03', '<h2>Bông Tai Kim Cương PNJ First Diamond Vàng trắng 14K</h2><p>Sở hữu đôi bông tai hay bất kỳ món nữ trang kim cương cho riêng mình luôn là khát khao của mọi cô gái. Không chỉ thỏa mãn ước mơ sở hữu món kim cương đầu đời của các cô gái trẻ, BST First Diamond được chế tác từ chất liệu vàng trắng cùng với ánh sáng lấp lánh cuốn hút đến khó cưỡng của kim cương, hòa quyện đường nét thiết kế ấn tượng, thời trang theo xu hướng thế giới còn là tuyên ngôn cá tính theo cách rất riêng của những cô nàng hiện đại.</p>', 7, 2, 6, 'http://localhost:6789/api/file-load/1604337228603_gbdrwa87582.500-bong-tai-kim-cuong-pnj-vang-trang-14k.png', 'GBDD00W000392', 'Bông tai vàng trắng DOJI ', 5690000.00, 3, 51, 2);
INSERT INTO `product` VALUES (23, '2020-11-03', '<h2>Bông tai Kim cương Vàng trắng 14K PNJ</h2><p><a href=\"https://www.pnj.com.vn/trang-suc-kim-cuong/\">Kim cương</a> được xem là biểu tượng của vẻ đẹp quyền lực, sự giàu sang và quý phái, do đó nó được sử dụng để tạo nên các tuyệt tác trang sức kim cương tinh tế. Những viên kim cương ẩn chứa một vẻ đẹp kiêu sa và tinh tế, nó tôn vinh vẻ đẹp, nét quyến rũ và đẳng cấp cho chủ sở hữu.</p><h3>Bông tai kim cương – Điểm nhấn quyền lực và đẳng cấp</h3><figure class=\"image\"><img src=\"http://www.pnj.com.vn/images/content/trang-suc-vang/bong-tai/gbdd00w000200-bong-tai-kim-cuong-vang-trang-14k-pnj.jpg?1562926588791\" alt=\"Kim cương - Người bạn tuyệt vời nhất của mọi cô gái\"></figure><p><i>Kim cương - Người bạn tuyệt vời nhất của mọi cô gái</i></p><p><a href=\"https://www.pnj.com.vn/bong-tai/bong-tai-kim-cuong/\">Đôi bông tai</a> được chế tác trên chất liệu vàng trắng 14K kết hợp điểm nhấn kim cương lấp lánh, tạo nên vẻ ngoài đầy sang trong và quý phái. Đồng thời khi kết hợp cùng các món trang sức khác, PNJ tin chắc rằng, sự kết hợp đó sẽ giúp quý cô thể hiện sự tự tin và khẳng định đẳng cấp của mình. Không chỉ cộng thêm nét yêu kiều cho tổng thể trang phục, khi đeo còn mang đến cho chủ nhân nhiều thuận lợi tình duyên viên mãn, cũng như sự may mắn, thành công và thành công cho phái đẹp.</p><h3>Trang sức vàng PNJ chứa đựng ý nghĩa sâu sắc</h3><p>Xã hội ngày càng hiện đại, vàng là chất liệu được những người thợ kim hoàn lành nghề, chế tác tạo nên những món trang sức mang vẻ đẹp hoàn hảo không tì vết. Mỗi món trang sức sẽ mang một ý nghĩa riêng, nhằm tôn vinh nét đẹp dịu dàng, đức khiêm tốn của người phụ nữ Việt Nam.</p>', 7, NULL, 5, 'http://localhost:6789/api/file-load/1604337283390_gbdrwa33665.5a0-bong-tai-kim-cuong-pnj-vang-trang-14k.png', 'GBDD00W000200', 'Bông tai Kim cương Vàng trắng 14K PNJ ', 13600000.00, 3, 3, 1);
INSERT INTO `product` VALUES (24, '2020-11-03', '<h2>Bông tai Kim cương Vàng trắng 14K PNJ First Diamond DDDDW000672</h2>', 7, NULL, 5, 'http://localhost:6789/api/file-load/1604337330209_gbdrwa85061.5a0-bong-tai-kim-cuong-vang-trang-14k.png', 'DDDDW000672', 'Bông tai Kim cương Vàng trắng 14K PNJ First Diamond', 15910000.00, 1, 33, 1);
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
INSERT INTO `product` VALUES (37, '2020-11-15', '<h3><strong>NHẪN NỮ KIM CƯƠNG DJR2871</strong></h3><p>Lấy cảm hứng từ những cô nàng độc lập, mạnh mẽ nhưng đầy tinh tế, bộ sưu tập&nbsp;<strong>“Rays of Light”</strong>&nbsp;nổi bật với những tia sáng lan tỏa rực rỡ từ viên kim cương chủ siêu lý tưởng&nbsp;<strong>8 Hearts &amp; 8 Arrows</strong>. Hoạ tiết tia sáng xoáy đều từ trung tâm mang lại hiệu ứng thị giác hoàn hảo, giúp viên kim cương chủ thêm phần rực sáng.</p>', 1, NULL, 1, 'http://localhost:6789/api/file-load/1605426224432_nhan-nu-1019183r4635vc2871-copy1.jpg', 'DJR2871', 'NHẪN NỮ KIM CƯƠNG DJR2871', 48360000.00, 0, 58, 3);

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 1, 'ROLE', 'quản trị', 'ROLE_ADMIN', NULL);
INSERT INTO `role` VALUES (2, 2, 'ROLE', 'khách', 'ROLE_GUESTS', NULL);
INSERT INTO `role` VALUES (3, 3, 'ROLE', 'Nhân viên', 'ROLE_STAFF', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, b'1', NULL, '2020-10-31', 'admin', 'admin', NULL, '$2a$10$dvf4LigrCTsq4EVKMK0w9.4KeTUq9bGVI4xTCfil.IHsfokOZ8ICO', '1234567899', NULL, 1, 'admin', 1);
INSERT INTO `user` VALUES (4, b'1', NULL, '2020-11-02', 'Admin Pro1', 'Thong lv', NULL, '$2a$10$7eBLCXiAu09TU2rRDpP0ZOlSUglkbBXvlm5nW98JDYGegqvc1fTYu', NULL, NULL, 1, 'thonglv', 0);
INSERT INTO `user` VALUES (5, b'1', 'Hà nội', '2020-11-02', 'guest', 'guest 1', NULL, '$2a$10$2D62RYWt3QBL1m6RR3ZSw.6mWZA9UH2j.f6onwWXzkJFn/aepcxsS', '1222222222', NULL, 2, 'guest', 0);
INSERT INTO `user` VALUES (6, b'1', NULL, '2020-11-03', 'Nguyễn Văn', 'B', NULL, '$2a$10$tcD5wSX1hN4cIbl.f4zse.aWahiKRBLtipSmSPKXUcBZDRTE3sshi', '0123456789', NULL, 2, 'vanb123', 1);
INSERT INTO `user` VALUES (7, b'1', 'Hà Nội', '2020-11-03', 'Nguyễn Thị', 'Bé', NULL, '$2a$10$JgHSw9Uo6xiTDF7FzhqsM.RXKLvS/tJ3QZCmj1UA2RfzNc.yMu322', '0123456789', NULL, 2, 'be1234', 1);
INSERT INTO `user` VALUES (8, b'1', NULL, '2020-12-04', 'Nhân viên1', 'NV1', NULL, '$2a$10$IatTUFJxxalKvwzC0lDq9OdrUDZxGH0zo.6qgAf7b0Sw9UziHeV.u', NULL, NULL, 3, 'nhanvien', 0);

SET FOREIGN_KEY_CHECKS = 1;
