-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 17, 2023 lúc 11:27 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoestoredb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `brand_img` varchar(255) DEFAULT NULL,
  `brand_des` varchar(10000) DEFAULT NULL,
  `brand_des_img` varchar(255) DEFAULT NULL,
  `brand_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_logo`, `brand_img`, `brand_des`, `brand_des_img`, `brand_active`) VALUES
(1, 'CONVERSE', 'converse.jpg', 'banner_project_1.jpg', 'Thành lập năm 1908, thương hiệu Converse đã  nổi tiếng :’’Công ty thể thao truyền thống của MỸ ‘’ và hãng cũng sở hữu những thiết kế kinh điển như Chuck Taylor All Star, Jack Purcell, One Star, Chuck 70s, Chuck Taylor All Star CX, Run Star Hike,... Ngày nay, Converse được ưu chuộng và trở thành biểu tượng của thời trang đường phố và có mặt trên 160 quốc gia', 'banner-danh-muc-converse-1420x400_d2c31e77d7244176a810f10b98e16d15.jpg', 1),
(2, 'VANS', 'vans.jpg', 'banner_project_2.jpg', 'Vans là thương hiệu giày thể thao, đặc biệt biểu tượng cho những môn thể thao mạo hiểm, dựa trên sự trẻ trung, tính hữu dụng và nâng cao phong cách cá nhân. Tồn tại để truyền cảm hứng và khuyến khích sự sáng tạo cho giới trẻ trên toàn cầu là mục tiêu của Vans. Được thành lập vào năm 1966 bởi Paul Van Doren và sau hơn 56 năm thành lập, Vans đã có mặt trên 22 quốc gia trên toàn thế giới như Hàn quốc, Thái Lan, Philippines, Trung Quốc, Hongkong, Singapore,... Vans chính thức về Việt Nam vào năm 2009 dưới sự bảo trợ của công ty TNHH TMDV Vĩnh Quang Minh. Trải qua 13 năm thành lập và phát triển, hiện nay Vans Việt Nam đã có 17 hệ thống cửa hàng chính hãng và hơn 30 chi nhánh trên toàn quốc. Với tinh thần “OFF THE WALL” Vans tự tin sẽ là một trong những thương hiệu giày Sneaker đồng hành mạnh mẽ nhất cùng các bạn trong suốt chặng đường chinh phục đam mê của mình.', 'banner-danh-muc-vans-1420x400_ec988faf7e9841bf8acfecc4a7fb9ca1.jpg', 1),
(3, 'ADIDAS', 'adidas.jpg', '3-15-cac-hang-giay-noi-tieng-ban-chay-nhat-tren-the-gioi.jpg', 'Adidas – Ông trùm trong ngành giày thể thao. Adidas là thương hiệu được nhiều người sử dụng nhất hiện nay.Sử dụng công nghệ tiên tiến trong dây chuyền sản xuất giày dép, Adidas mang lại cho người dùng một đôi giày cực kỳ thoải mái, thời trang và linh hoạt. Adidas rất tỉ mỉ trong từng sản phẩm mà họ mang lại, sự phong phú văn hóa thời trang được thể hiện qua các sản phẩm nổi tiếng như: Stan Smith, Super Star, Yeezy 350 V2 Israfil… Hiện nay, hệ thống cửa hàng Adidas chính hãng đã có mặt tại Việt Nam và nhiều quốc gia khác trên thế giới.', '023a877e31bece11178bc786e058d49f.jpg', 1),
(4, 'NIKE', 'nike.jpg', 'Nike-Air-Max-Pre-Day-Summit-White-DA4263-100-on-foot-01.jpg', 'Nike – Thách thức giới hạn bản thân. Đây là một trong những hãng giày thể thao số 1 toàn cầu tin dùng bởi cầu thủ thể thao nổi tiếng như Ronaldo, Tiger Woods, Neymar… Nike Luôn luôn áp dụng công nghệ mới tiên tiến lên sản phẩm đem đến sự trải nghiệm tuyệt vời cho người dùng. Một số sản phẩm được ưa chuộng như: Nike Air Force 1, Nike Air Jordan, Air Max …', 'banner-danh-muc-nike-1420x400_396c9b19168f411b821396f926a6cf7a.jpg', 1),
(5, 'Palladium', 'img_bran_category3.jpg', 'Palladium 2023-06-11 123210.png', 'Được thành lập vào năm 1920 tại Lyon, Pháp, Palladium khởi đầu  là một công ty chuyên sản xuất lốp máy bay dành cho quân đội. Năm 1947, Palladium thay đổi định hướng sang sản xuất giày dành cho binh lính, quân đội. Ngày nay, giày palladium không chỉ giới hạn trong các quân doanh mà ngay cả công chúng, đặc biệt là giới trẻ cũng ưa thích sự tiện lợi và cá tính thời trang của những đôi boots đặc biệt này. Các dòng sản phẩm của Palladium bao gồm: Pampa, Blanc, Monochorm, Pallabrouse, Pallaphoenix, Pallakix, Pallashock.', 'banner-danh-muc-palladium-1420x400_9130ec08d1944a789f44599a4bb44f4b.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `mem_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `mem_id`, `product_id`, `color`, `size`, `amount`) VALUES
(42, 2, 1, 'WHITE/CYBER TEAL/GHOSTED', 39, 1),
(43, 1, 2, 'Trắng', 37, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount`
--

CREATE TABLE `discount` (
  `discount_id` int(11) NOT NULL,
  `discount_name` varchar(255) NOT NULL,
  `discount_start` date NOT NULL DEFAULT current_timestamp(),
  `discount_end` date DEFAULT NULL,
  `discount_value` float NOT NULL,
  `discount_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `discount`
--

INSERT INTO `discount` (`discount_id`, `discount_name`, `discount_start`, `discount_end`, `discount_value`, `discount_active`) VALUES
(1, '1.deleted', '2023-06-04', NULL, 12, -1),
(2, '2.deleted', '2023-06-16', NULL, 11, -1),
(3, 'deleted', '2023-06-16', NULL, 11, -1),
(4, 'black friday', '2023-06-17', '2023-06-16', 11, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `mem_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `star` tinyint(1) NOT NULL,
  `receipt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `mem_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `mem_active` tinyint(1) NOT NULL DEFAULT 1,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`mem_id`, `username`, `password`, `name`, `address`, `phone`, `mem_active`, `role`) VALUES
(1, 'hoangminhtam1602@gmail.com', 'a', 'Tam Minh', 'Vietnam', 886882799, 1, NULL),
(2, 'hoangminhtam16021@gmail.com', 'a', 'tamqweasd', '', 0, 1, 'admin'),
(3, 'tam@gmail.com', 'a', 'Tam', '0', 886882799, 1, 'staff');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_material` varchar(255) NOT NULL,
  `product_des` varchar(1000) NOT NULL,
  `product_price` float NOT NULL,
  `product_updated_date` date NOT NULL DEFAULT current_timestamp(),
  `product_active` tinyint(1) NOT NULL DEFAULT 1,
  `brand_id` int(11) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_material`, `product_des`, `product_price`, `product_updated_date`, `product_active`, `brand_id`, `discount_id`) VALUES
(1, 'Giày Converse Chuck Taylor All Star Cx Spray Paint', 'cotton', '', 2600000, '2023-06-01', 1, 1, 4),
(2, 'Giày Converse Chuck 70 Summer Tone Seasonal Color', 'polyester canvas', '', 2000000, '2023-06-01', 1, 1, NULL),
(11, 'Giay ADIDAS', 'COTTON', 'a', 2222220, '2023-06-16', 1, 3, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size_color`
--

CREATE TABLE `product_size_color` (
  `product_id` int(11) NOT NULL,
  `size` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_size_color`
--

INSERT INTO `product_size_color` (`product_id`, `size`, `quantity`, `color`, `product_image`) VALUES
(1, 39, 9, 'WHITE/CYBER TEAL/GHOSTED', 'img-01.jpg,a03462c-01-web_588d667880bd48a5b163ae09247e5ee6_1024x1024.jpg'),
(1, 40, 12, 'BLACK/CYBER TEAL/GHOSTED', 'img-02.jpg'),
(1, 40, 0, 'WHITE/CYBER TEAL/GHOSTED', 'img-01.jpg,a03462c-01-web_588d667880bd48a5b163ae09247e5ee6_1024x1024.jpg'),
(1, 41, 14, 'BLACK/CYBER TEAL/GHOSTED', 'img-02.jpg'),
(2, 37, 10, 'Trắng', 'img-0122.jpg'),
(11, 39, 1, 'trang', 'No_image_2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt`
--

CREATE TABLE `receipt` (
  `receipt_id` int(11) NOT NULL,
  `created_date` date NOT NULL DEFAULT current_timestamp(),
  `validated_date` date DEFAULT NULL,
  `receipt_value` float NOT NULL,
  `receipt_status` tinyint(1) NOT NULL DEFAULT 0,
  `mem_id` int(11) DEFAULT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_phone` varchar(10) NOT NULL,
  `receiver_address` varchar(10000) NOT NULL,
  `staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `receipt`
--

INSERT INTO `receipt` (`receipt_id`, `created_date`, `validated_date`, `receipt_value`, `receipt_status`, `mem_id`, `receiver_name`, `receiver_phone`, `receiver_address`, `staff_id`) VALUES
(2, '2023-06-16', NULL, 2600000, 0, 1, 'Tam Minh', '886882799', 'Vietnam', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt_product`
--

CREATE TABLE `receipt_product` (
  `receipt_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `sell_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `receipt_product`
--

INSERT INTO `receipt_product` (`receipt_id`, `product_id`, `color`, `size`, `quantity`, `sell_price`) VALUES
(2, 1, 'BLACK/CYBER TEAL/GHOSTED', 41, 1, 2600000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `fk_cart_member` (`mem_id`);

--
-- Chỉ mục cho bảng `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_id`),
  ADD UNIQUE KEY `discount_name` (`discount_name`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`mem_id`,`product_id`,`receipt_id`),
  ADD KEY `fk_feedback_product` (`product_id`),
  ADD KEY `fk_receipt_feedback` (`receipt_id`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_brand` (`brand_id`),
  ADD KEY `fk_product_discount` (`discount_id`);

--
-- Chỉ mục cho bảng `product_size_color`
--
ALTER TABLE `product_size_color`
  ADD PRIMARY KEY (`product_id`,`size`,`color`);

--
-- Chỉ mục cho bảng `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `fk_receipt_member` (`mem_id`);

--
-- Chỉ mục cho bảng `receipt_product`
--
ALTER TABLE `receipt_product`
  ADD PRIMARY KEY (`receipt_id`,`product_id`,`color`,`size`),
  ADD KEY `fk_product_receipt` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `discount`
--
ALTER TABLE `discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `receipt`
--
ALTER TABLE `receipt`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_cart_member` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`);

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback_member` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`),
  ADD CONSTRAINT `fk_feedback_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `fk_receipt_feedback` FOREIGN KEY (`receipt_id`) REFERENCES `receipt` (`receipt_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  ADD CONSTRAINT `fk_product_discount` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`);

--
-- Các ràng buộc cho bảng `product_size_color`
--
ALTER TABLE `product_size_color`
  ADD CONSTRAINT `fk_product_size` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `fk_receipt_member` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`);

--
-- Các ràng buộc cho bảng `receipt_product`
--
ALTER TABLE `receipt_product`
  ADD CONSTRAINT `fk_product_receipt` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `fk_receipt_product` FOREIGN KEY (`receipt_id`) REFERENCES `receipt` (`receipt_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
