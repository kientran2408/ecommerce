-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 27, 2021 lúc 07:33 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_username`, `admin_pass`, `admin_contact`, `admin_image`) VALUES
(1, 'KienTran', 'admin', 'admin', '0962035322', 'admin.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, '  Anime/Manga', ''),
(2, 'Marvel/DC', ''),
(3, 'Product Film', ''),
(4, 'Others', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_username` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_username`, `customer_pass`, `customer_city`, `customer_contact`, `customer_ip`) VALUES
(5, 'kien', 'kien1', 'kien1', 'bn', '123', '::1'),
(7, 'KienTran', 'kien2', 'kien2', 'BN', '0123489166', '::1'),
(8, 'Marco', 'marco1', 'marco1', 'HN', '417815454', '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(5, 1, 1, '2021-04-16 20:34:13', 'Son Goku Kid', 'gokuhopgiay1.png', 'gokuhopgiay2.png', 'gokuhopgiay3.png', 10, 'goku', '<p>Characters: Son Goku</p>\r\n<p>Anime / Manga: Dragon Ball - 7 Dragon Balls</p>\r\n<p>About High 22cm</p>\r\n<p>PVC Plastic</p>\r\n<p>Weight about 0.7kg</p>\r\n<p>Box Size: 18x14x23.5cm</p>'),
(6, 3, 1, '2021-04-14 10:04:16', 'Roronoa Zoro Kimono ', 'zorokimono1.png', 'zorokimono2.png', 'zorokimono3.png', 20, 'zoro', '<p>Characters: Roronoa Zoro</p>\r\n<p>Anime / Manga: One Piece</p>\r\n<p>About High 28cm </p>\r\n<p>PVC Plastic </p>\r\n<p>Weight about 1kg</p>\r\n<p>Box Size: 21 × 10.5x30cm</p>'),
(8, 4, 3, '2021-04-14 10:01:10', 'The Flash', 'flash 1.png', 'flash 2.png', 'flash 3.png', 45, 'the flash', '<p>Characters: The Flash</p>\r\n<p>Anime / Manga: The Flash</p>\r\n<p>About 26cm High</p>\r\n<p>PVC Plastic</p>'),
(9, 5, 3, '2021-04-14 10:13:52', 'Bumblebee', 'bumblebee 1.png', 'bumblebee 2.png', 'bumblebee 3.png', 20, 'bumblebee', '<p>Characters: Bumblebee</p>\r\n<p>Anime / Manga: Transformer</p>\r\n<p>About High 20cm</p>\r\n<p>PVC + ABS Plastic</p>\r\n<p>Weight about 1kg</p>\r\n<p>Box Size: 9.2x3.2x6.8cm</p>'),
(12, 2, 1, '2021-04-14 11:26:34', 'Naruto Uzumaki Kurama', 'naruto 1.png', 'naruto 2.png', 'naruto 3.png', 30, 'naruto', '<p>Character: Naruto Uzumaki</p>\r\n<p>Anime / Manga: Naruto Shippuuden</p>\r\n<p>About 20cm high</p>\r\n<p>PVC, ABS Plastic</p>\r\n<p>Weight 1.02kg</p>\r\n<p>Box size: 26.5 &times; 26.5x24cm</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_categories`
--

CREATE TABLE `products_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products_categories`
--

INSERT INTO `products_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Dragon Ball', ''),
(2, 'Naruto', ''),
(3, 'One Piece', ''),
(4, 'Marvel', ''),
(5, 'Transformer', ''),
(6, 'Three Kingdoms', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide Number 1', 'slide 1.jpg'),
(2, 'Slide Number 2', 'slide 2.jpg'),
(3, 'Slide Number 3', 'slide 3.jpg'),
(4, 'Slide Number 4', 'slide 4.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
