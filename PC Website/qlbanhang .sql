-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 06, 2021 lúc 12:26 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id_bill` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id_bill`, `name`, `phone`, `address`, `note`, `total`) VALUES
(6, 'Nguyễn Việt Tiến', '0388607894', 'Hà Nội', '', 2260000),
(7, 'Đinh Hải Long', '0833702000', 'Hà Nội', '', 3830000),
(8, 'Anha', '0335555027', 'Hà Nội', 'Giao trong giờ hành chính', 6900000),
(9, 'sf', 'sfaf', 'sfaf', 'ầ', 17860000),
(10, 'chipboy', 'sfaf', 'fsdfgs', 'sâfa', 790000),
(11, 'edgfwg', 'ửqtrqt', 'ưrqrq', 'ưqrqrfqw', 790000),
(12, 'sdfsdf', 'szxcvs', '234', 'ửtgsdf', 450000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `price`) VALUES
(3, 7, 2, 2, 790000),
(4, 7, 8, 5, 450000),
(5, 8, 9, 2, 1200000),
(6, 8, 18, 3, 1500000),
(7, 9, 1, 3, 3000000),
(8, 9, 4, 2, 680000),
(9, 9, 17, 1, 7500000),
(10, 10, 2, 1, 790000),
(11, 11, 2, 1, 790000),
(12, 12, 8, 1, 450000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id_category`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DENIM', '2021-04-07 17:32:33', '2021-06-04 19:47:35'),
(2, 'ACCESSORIES', '2021-04-07 17:32:51', '2021-04-08 14:51:53'),
(3, 'OUTERWEAR', '2021-04-09 03:55:54', '2021-04-09 03:55:54'),
(4, 'BOTTOMS', '2021-04-09 03:00:55', '2021-04-09 03:00:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_role` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`id_member`, `fullname`, `email`, `phone_number`, `date_of_birth`, `created_at`, `updated_at`, `username`, `password`, `id_role`) VALUES
(1, 'Nguyễn Đức Trung Hiếu', 'CHipboy155@gmail.com', '0388607894', '2000-05-12', '2021-04-08 19:43:55', '2021-04-16 05:49:32', 'hieu', 'hieu123', '2'),
(11, '', '', '', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'admin', 'admin', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `title`, `price`, `thumbnail`, `content`, `id_category`, `created_at`, `updated_at`, `quantity`) VALUES
(1, 'PASILEY JACKET', 3000000, 'https://cf.shopee.vn/file/bea5eb456c3f895fc0f2a23da2542cc6', 'The Paisley Cropped Puffer Jacket features 2-way zipper closure at the placket, extended collar, black nylon lining, polyester filled and quilted, patch pockets on the front, cropped fit, and finished with a vintage wash.', 3, '2021-04-08 17:35:38', '2021-06-23 13:22:59', 90),
(2, 'GREY OVERSIZED DENIM SHIRT', 790000, 'https://cdn.shopify.com/s/files/1/1687/1083/products/1_4e37710c-de55-407f-80da-7931cb720fe9_1800x1800.jpg?v=1592819469', '<p style=\"margin-bottom: 25px; font-family: \"Roboto Condensed\", sans-serif; font-size: 18px; letter-spacing: 0.45px;\">100% COTTON<br>10OZ Denim<br>Oversized Fit</p><p style=\"margin-bottom: 0px; font-family: \"Roboto Condensed\", sans-serif; font-size: 18px; letter-spacing: 0.45px;\"><span class=\"text_exposed_show\">Cold Wash<br>Tailored<br>180CM & 70KG WEAR SIZE XL</span></p>', 1, '2021-04-07 17:32:33', '2021-06-23 13:32:59', 100),
(3, 'HENLEY SHORT SLEEVE SHIRT - CHECK - BLUE LAGOON', 350000, 'https://cdn.shopify.com/s/files/1/1687/1083/products/2-TE9300-TX00-F02-BD000-BA000-FR000-AL000-LO000-LOM000-EX000-RES000-1-None_1800x1800.jpg?v=1609922250', '<p data-mce-fragment=\"1\" style=\"margin-bottom: 25px; font-family: \"Roboto Condensed\", sans-serif; font-size: 18px; letter-spacing: 0.45px;\"><span data-mce-fragment=\"1\">100% COTTON</span><br data-mce-fragment=\"1\">Oversized Fit</p><p data-mce-fragment=\"1\" style=\"margin-bottom: 25px; font-family: \"Roboto Condensed\", sans-serif; font-size: 18px; letter-spacing: 0.45px;\"><span class=\"text_exposed_show\" data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">Cold Wash</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">Tailored</span></span><br data-mce-fragment=\"1\"></p><p data-mce-fragment=\"1\" style=\"margin-bottom: 0px; font-family: \"Roboto Condensed\", sans-serif; font-size: 18px; letter-spacing: 0.45px;\"><span data-mce-fragment=\"1\">180CM & 75KG WEAR SIZE XL</span></p>', 3, '2021-04-07 17:32:51', '2021-06-23 13:47:59', 54),
(4, 'X32 STRETCH DENIM', 680000, 'https://di2ponv0v5otw.cloudfront.net/posts/2021/04/16/607a49fe5462c34839db8afa/m_607a4a15cb692c0f893b9f10.jpeg', '<p data-mce-fragment=\"1\" style=\"margin-bottom: 25px; font-family: \"Roboto Condensed\", sans-serif; font-size: 18px; letter-spacing: 0.45px;\"><span style=\"color: rgb(81, 81, 81); font-family: \"Larsseit W01 Regular\", sans-serif; font-size: 14px; letter-spacing: normal;\">The X32 Stretch Denim is designed with our new X fit which is skinny throughout with an extended inseam for stacking, and features a vintage black wash.</span><br></p>', 4, '2021-04-07 17:31:42', '2021-06-23 13:58:59', 155),
(6, 'RED PAISLEY CROPPED PUFFER ', 300000, 'https://cdn.shopify.com/s/files/1/1218/3578/products/2037035002-1_2019-10-24_06-37-25_WHIFZ9bmft_1024x1024.jpg', 'The Paisley Cropped Puffer Jacket features 2-way zipper closure at the placket, extended collar, black nylon lining, polyester filled and quilted, patch pockets on the front, cropped fit, and finished with a vintage wash.', 3, '2021-04-09 19:29:41', '2021-06-23 14:09:00', 50),
(7, 'CROPPED PUFFER JACKET', 450000, 'https://cdn.shopify.com/s/files/1/1218/3578/products/assets_2Fimage_2F4424944-8d05cf28-6ce7-4024-9e5d-d4d653084f29-resized_a442ce8d-2822-48db-8328-c78cc9f0e63c_1024x1024.jpg?v=1632879798', 'Developed in los angeles, the original blue m1 denim is designed with a relaxed fit through the thigh that tapers from the knee to the ankle, featuring distress details at the knee and thigh, finishing off with a 10\" concealed zipper on the inseam for a carefully optimized fit.', 3, '2021-04-09 19:29:41', '2021-06-23 14:25:00', 70),
(8, 'CAMO CROPPED PUFFER JACKET', 450000, 'https://cdn.shopify.com/s/files/1/1218/3578/products/assets_2Fimage_2F013e2b53-07b8-46a2-b05b-235de7b09752-original-4234225_1024x1024.jpg?v=1632885382', 'The Cropped Puffer Jacket features 2-way zipper closure at the placket, extended collar, black nylon lining, polyester filled and quilted, patch pockets on the front, cropped fit, and finished with a vintage wash.', 3, '2021-04-09 19:32:59', '2021-06-23 14:38:00', 350),
(9, 'X162 STRETCH DENIM', 1200000, 'https://www.picclickimg.com/00/s/NjUwWDY1MA==/z/VksAAOSw-11ftzVg/$/MNML-DESIGNER-JEANS-for-Men-M1-Stretch-Denim-_1.jpg', 'The X162 Stretch Denim is designed with our new X fit which is  skinny throughout with an extended inseam for stacking, and features a medium wash, distressing throughout and finished with pin-tucked denim panels repairing the knee holes.', 4, '2021-04-09 19:35:00', '2021-04-09 19:35:00', 78),
(10, 'M1 STRETCH DENIM', 750000, 'https://product.hstatic.net/200000307615/product/img2274_e517547d5c264c4cbd59fd4ad302ccc9.jpg', 'Developed in Los Angeles, the Black M1 Denim is designed with a relaxed fit through the thigh that tapers from the knee to the ankle, featuring distress details at the knees and finishing off with a 10\" concealed zipper on the inseam for a carefully optimized fit.', 4, '2021-04-09 19:29:41', '2021-04-09 19:29:41', 51),
(11, 'M1 BLUE DENIM\r\n', 750000, 'https://product.hstatic.net/200000307615/product/z2615714669093_1290bf414fd9fc64660a3188c76f6e1d_9b0f02ccda06447c9d8866d6bc219b06_grande.jpg', 'Developed in los angeles, the original blue m1 denim is designed with a relaxed fit through the thigh that tapers from the knee to the ankle, featuring distress details at the knee and thigh, finishing off with a 10\" concealed zipper on the inseam for a carefully optimized fit.', 4, '2021-04-09 19:32:59', '2021-04-09 17:32:33', 65),
(12, 'D184 SKELETON DENIM', 1250000, 'https://cdn.fs.grailed.com/api/file/snWqsTOdRjKTzehJenZ2', 'The D184 Denim is designed with our new D fit which is relaxed throughout with an extended inseam for stacking and features sewn-on skeleton artwork in fleece on both legs and is constructed from black denim with a raw leg opening.', 4, '2021-04-09 19:41:08', '2021-04-09 19:41:08', 72),
(13, 'A9 QUAD CHAIN', 450000, 'https://ae01.alicdn.com/kf/H96981623d1f1405c82dfdcf3bb19aed1Q/Fashion-2020-Lock-Key-Pendant-Padlock-Charm-Necklaces-Chain-Women-Jewelry-Gift.jpg', 'The A9 Quad Chain is constructed of stainless steel and features four different link chains with a interlocking open clasp.', 2, '2021-04-09 16:27:04', '2021-04-09 19:44:04', 129),
(14, 'BANDANA WEEKEND BAG', 2970000, 'https://cdn-images.farfetch-contents.com/16/55/90/93/16559093_32506901_1000.jpg', 'the Bandana Weekend Bag is constructed from paisley printed polyester canvas with a fusing for additional stiffness, self fabric handles, contrast lining, two internal pockets, gold plated trims including a lock and 2 keys, and finished with a matching dust bag.', 2, '2021-04-09 19:29:41', '2021-04-09 19:44:04', 12),
(15, 'CROSS BODY BAG', 320000, 'https://nicebag.vn/wp-content/uploads/2021/07/louis-vuitton-utility-crossbody-monogram-canvas-1.jpg', 'The Cross Body Bag is constructed from nylon and features one large compartment that contains four zipper pockets and one pouch that is closed using a polished metal clasp, another zipper compartment that is offset and has additional velcro closure. There is one internal zipper pocket and the webbing strap is adjustable and is completed with a plastic snap closure.', 2, '2021-04-09 19:46:01', '2021-04-09 19:46:01', 297),
(16, 'WEB BELT', 200000, 'https://sieuthihangmy.com.vn/upload/images/san_pham/2020-07/image0-1594364950.jpg', 'This web belt is constructed of nylon webbing and features a tactical metal clasp.', 2, '2021-04-09 19:47:06', '2021-04-09 19:47:06', 12),
(17, 'zxczxc', 7500000, 'https://media.gucci.com/style/DarkGray_Center_0_0_2400x2400/1603305905/641341_XDBIP_4266_002_100_0000_Light-Eco-washed-organic-denim-jacket.jpg', '<p>Crafted from eco washed organic GG denim, this jacket is embellished by the ‘Gucci quelle qu’en soit la saison’ sartorial label. The motto in French translates literally to \"Gucci whatever the season\" and plays on the concept that Gucci can be worn at any time. A message about leaving fashion’s old rules behind, the Epilogue collection conveys the idea that pieces should be timeless–not just in fashion for one season.<br></p>', 1, '2021-04-12 08:41:51', '2021-06-23 14:12:01', 50),
(18, 'zxczxccc', 1500000, 'https://images.stockx.com/images/Louis-Vuitton-x-Nigo-Giant-Damier-Waves-MNGM-Denim-Jacket-Indigo.png?fit=clip&bg=FFFFFF&h=500&auto=compress&q=90&dpr=2&trim=color&updated_at=1614778411&fm=webp&ixlib=react-9.0.3&w=1446', '<p>xlfjkbhsldijflskd</p>', 1, '2021-04-15 13:31:27', '2021-06-23 14:04:01', 300);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_1` (`id_bill`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id_bill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id_bill`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
