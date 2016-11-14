-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 11:21 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhahang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `TenDangNhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `TenDangNhap`, `Full_name`, `MatKhau`) VALUES
(2, 'tungtv', 'Trần Văn Tùng', '1ef26373d3c9447baae66eabd52b1e0e9dc1b702c2f51d5322a67f1c42cf6f3ef0d513d04624c3bfee41b848cac59f4e6c29bf915d10c820c6c883bee00d3afb');

-- --------------------------------------------------------

--
-- Table structure for table `booking_food`
--

CREATE TABLE `booking_food` (
  `id` int(11) NOT NULL,
  `booking_table_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_table`
--

CREATE TABLE `booking_table` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `Id` int(11) NOT NULL,
  `Logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Hotline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`Id`, `Logo`, `Icon`, `Name`, `Address`, `Phone`, `fax`, `Hotline`, `Email`, `Website`) VALUES
(1, '/nhahang/view/admin/Themes/kcfinder/upload/images/config/logo.png', '/nhahang/view/admin/Themes/kcfinder/upload/images/config/favicon.png', 'VIET GARDENS', ' Số 2 lô 4C Vũ Phạm Hàm, P. Yên Hòa, Q. Cầu Giấy', '0432123354', '', '0909790598', 'sales@vietgardens.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name_kh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name_kh`, `address`, `phone`, `email`, `title`, `content`, `created`, `status`) VALUES
(1, 'tran van tung', 'ha noi', '123123123', 'tungtv.soict@gmail.com', '', 'sadfasdfasdfasdfasdf', '0000-00-00 00:00:00', 0),
(2, 'tran van tung', 'van noi', '12312312', 'tungtv.soict@gmail.com', '', '123123123', '2016-10-09 15:18:15', 0),
(3, 'tran van tung', 'van noi', '12312312', 'tungtv.soict@gmail.com', '', '123123123', '2016-10-09 15:18:17', 0),
(4, 'tran van tung', 'van noi', '12312312', 'tungtv.soict@gmail.com', '', '123123123', '2016-10-09 15:18:18', 0),
(5, 'tran van tung', 'van noi', '12312312', 'tungtv.soict@gmail.com', '', '123123123', '2016-10-09 15:18:18', 0),
(6, 'tran van tung', 'van noi', '12312312', 'tungtv.soict@gmail.com', '', '123123123', '2016-10-09 15:18:26', 0),
(7, 'tran van tung', 'van noi', '12312312', 'tungtv.soict@gmail.com', '', '123123123', '2016-10-09 15:19:14', 0),
(8, 'tran van tung', 'van noi', '12312312', 'tungtv.soict@gmail.com', '', '123123123', '2016-10-09 15:19:14', 0),
(9, 'tran van tung', 'van noi', '12312312', 'tungtv.soict@gmail.com', '', '123123123bmnghghj', '2016-10-09 15:19:17', 0),
(10, 'tran van tung', 'tfghfgjhghjkghk', 'ghjf', 'tungtv.soict@gmail.com', '', '', '2016-10-09 15:19:31', 0),
(11, 'dsfgdfg', 'gsdfg', 'dsgdsf', 'tungtv.soict@gmail.com', '', 'dsfgsdfg', '2016-10-09 15:22:47', 0),
(12, 'sdg', 'sdfgdsf', '123123', 'tungtv.soict@gmail.com', '', 'gsdfg', '2016-10-09 15:23:15', 0),
(13, 'sdfg', 'dsfg', 't', 'tungtv.soict@gmail.com', '', 'sdfg', '2016-10-09 15:23:24', 0),
(14, 'sdfg', 'dsfg', 't', 'tungtv.soict@gmail.com', '', 'sdfg', '2016-10-09 15:23:26', 0),
(15, 'sdfg', 'dsfg', 't', 'tungtv.soict@gmail.com', '', 'sdfg', '2016-10-09 15:23:35', 0),
(16, 'wetrtwer', '123', '12312312', 'tungtv.soict@gmail.com', '', '123', '2016-10-09 15:24:05', 0),
(17, 'wetrtwer', '123', '12312312', 'tungtv.soict@gmail.com', '', '123', '2016-10-09 15:24:07', 0),
(18, 'wetrtwer', '123', '12312312', 'tungtv.soict@gmail.com', '', '123', '2016-10-09 15:24:08', 0),
(19, 'wetrtwer', '123', '12312312', 'tungtv.soict@gmail.com', '', '123', '2016-10-09 15:24:08', 0),
(20, 'wetrtwer', '123', '12312312', 'tungtv.soict@gmail.com', '', '123', '2016-10-09 15:24:09', 0),
(21, 'wetrtwer', '123', '12312312', 'tungtv.soict@gmail.com', '', '123', '2016-10-09 15:24:09', 0),
(22, 'tewrt', 'asdf', 'sadf', 'tungtv.soict@gmail.com', '', 'asdf', '2016-10-09 15:24:44', 0),
(23, 'tewrt', 'asdf', 'sadf', 'tungtv.soict@gmail.com', '', 'asdf', '2016-10-09 15:24:45', 0),
(24, 'tewrt', 'asdf', 'sadf', 'tungtv.soict@gmail.com', '', 'asdf', '2016-10-09 15:24:46', 0),
(25, 'tewrt', 'asdf', 'sadf', 'tungtv.soict@gmail.com', '', 'asdf', '2016-10-09 15:24:46', 0),
(26, 'tewrt', 'asdf', 'sadf', 'tungtv.soict@gmail.com', '', 'asdf', '2016-10-09 15:24:46', 0),
(27, 'tewrt', 'asdf', 'sadf', 'tungtv.soict@gmail.com', '', 'asdf', '2016-10-09 15:24:47', 0),
(28, 'tewrt', 'asdf', 'sadf', 'tungtv.soict@gmail.com', '', 'asdf', '2016-10-09 15:24:47', 0),
(29, 'tewrt', 'asdf', 'sadf', 'tungtv.soict@gmail.com', '', 'asdf', '2016-10-09 15:24:48', 0),
(30, 'tewrt', 'asdf', 'sadf', 'tungtv.soict@gmail.com', '', 'asdf', '2016-10-09 15:24:48', 0),
(31, 'dftgsdfg', 'dfsg', 'dsfg', 'tungtv.soict@gmail.com', '', 'sdfg', '2016-10-09 15:26:36', 0),
(32, 'tran van tung', 'ha noij', '12345678', 'tungtv.soict@gmail.com', '', 'Dong Anh', '2016-10-16 02:58:59', 0),
(33, 'tran van tung', 'ha noij', '12345678', 'tungtv.soict@gmail.com', '', 'Dong Anh', '2016-10-16 02:59:44', 0),
(34, 'tran van tung', 'ha noij', '12345678', 'tungtv.soict@gmail.com', '', 'Dong Anh', '2016-10-16 02:59:52', 0),
(35, 'tu', 'sdafasdf', '3123', 'tungtv.soict@gmail.com', '', '', '2016-10-16 03:12:30', 0),
(36, 'tran van tung', 'dsgdf', '3123', 'tungtv.soict@gmail.com', '', '', '2016-10-16 03:13:29', 0),
(37, 'tran van tung', 'dsgdf', '3123', 'tungtv.soict@gmail.com', '', '', '2016-10-16 03:14:48', 0),
(38, 'ưetertert', 'ha noi', '123123123', 'tungtv.soict@gmail.com', '', 'noi dung', '2016-10-16 03:26:19', 0),
(39, 'ưetertert', 'ha noi', '123123123', 'tungtv.soict@gmail.com', '', '<p>\r\n	noi dung</p>\r\n', '2016-10-16 03:29:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc1`
--

CREATE TABLE `danhmuc1` (
  `id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc1`
--

INSERT INTO `danhmuc1` (`id`, `position`, `name`, `name_url`, `img`, `title`, `keyword`, `description`) VALUES
(1, 1, 'Chọn danh mục cấp 1', 'combo', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'COMBO', 'COMBO', 'COMBO'),
(2, 2, 'Alacarte', 'alacarte', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'ALACARTE', 'ALACARTE', 'ALACARTE'),
(3, 3, 'Set menu', 'set-menu', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'SET MENU', 'SET MENU', 'SET MENU'),
(4, 4, 'Drink', 'drink', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'DRINK', 'DRINK', 'DRINK'),
(5, 1, 'Combo', 'combo', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'COMBO', 'COMBO', 'COMBO');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc2`
--

CREATE TABLE `danhmuc2` (
  `id` int(11) NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `show_index` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc2`
--

INSERT INTO `danhmuc2` (`id`, `danhmuc_id`, `position`, `show_index`, `name`, `name_url`, `img`, `title`, `keyword`, `description`) VALUES
(1, 1, 1, 0, 'Chọn danh mục cấp 2', 'combo-danh-cho-2-4-nguoi', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'COMBO DÀNH CHO 2-4 NGƯỜI', 'COMBO DÀNH CHO 2-4 NGƯỜI', 'COMBO DÀNH CHO 2-4 NGƯỜI'),
(2, 5, 2, 0, 'LIÊN HOAN, TIỆC CUỐI NĂM, SINH NHẬT....', 'lien-hoan-tiec-cuoi-nam-sinh-nhat', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'LIÊN HOAN, TIỆC CUỐI NĂM, SINH NHẬT.....', 'LIÊN HOAN, TIỆC CUỐI NĂM, SINH NHẬT.....', 'LIÊN HOAN, TIỆC CUỐI NĂM, SINH NHẬT.....'),
(3, 2, 1, 0, 'MÓN NỘM ( SALAD )', 'mon-nom--salad-', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MÓN NỘM ( SALAD )', 'MÓN NỘM ( SALAD )', 'MÓN NỘM ( SALAD )'),
(4, 2, 2, 0, 'ĂN NHẸ', 'an-nhe', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'ĂN NHẸ', 'ĂN NHẸ', 'ĂN NHẸ'),
(5, 2, 3, 0, 'CÁC MÓN RAU', 'cac-mon-rau', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN RAU', 'CÁC MÓN RAU', 'CÁC MÓN RAU'),
(6, 2, 4, 0, 'CÁC MÓN VỀ LỢN', 'cac-mon-ve-lon', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN VỀ LỢN', 'CÁC MÓN VỀ LỢN', 'CÁC MÓN VỀ LỢN'),
(7, 2, 5, 0, 'CÁC MÓN VỀ GÀ', 'cac-mon-ve-ga', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN VỀ GÀ ', 'CÁC MÓN VỀ GÀ ', 'CÁC MÓN VỀ GÀ '),
(8, 2, 6, 0, 'CÁC MÓN VỀ BÒ', 'cac-mon-ve-bo', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN VỀ BÒ', 'CÁC MÓN VỀ BÒ', 'CÁC MÓN VỀ BÒ'),
(9, 2, 7, 0, 'CÁC MÓN HẢI SẢN', 'cac-mon-hai-san', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN HẢI SẢN', 'CÁC MÓN HẢI SẢN', 'CÁC MÓN HẢI SẢN'),
(10, 2, 10, 0, 'CÁ SONG', 'ca-song', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁ SONG', 'CÁ SONG', 'CÁ SONG'),
(11, 2, 11, 0, 'CÁ CHÌNH', 'ca-chinh', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁ CHÌNH', 'CÁ CHÌNH', 'CÁ CHÌNH'),
(12, 2, 12, 0, 'BABA', 'baba', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'BABA', 'BABA', 'BABA'),
(13, 2, 13, 0, 'TÔM HÙM', 'tom-hum', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'TÔM HÙM', 'TÔM HÙM', 'TÔM HÙM'),
(14, 2, 14, 0, 'CÁ QUỶ BIỂN', 'ca-quy-bien', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁ QUỶ BIỂN', 'CÁ QUỶ BIỂN', 'CÁ QUỶ BIỂN'),
(15, 2, 15, 0, 'CẦY , DON, NHÍM', 'cay--don-nhim', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CẦY , DON, NHÍM', 'CẦY , DON, NHÍM', 'CẦY , DON, NHÍM'),
(16, 2, 16, 0, 'LỢN MÁN', 'lon-man', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'LỢN MÁN', 'LỢN MÁN', 'LỢN MÁN'),
(17, 2, 17, 0, 'NGỖNG', 'ngong', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'NGỖNG', 'NGỖNG', 'NGỖNG'),
(18, 2, 18, 0, 'CÁC MÓN CANH', 'cac-mon-canh', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN CANH', 'CÁC MÓN CANH', 'CÁC MÓN CANH'),
(19, 2, 19, 0, 'CÁC MÓN LẢU', 'cac-mon-lau', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN LẢU', 'CÁC MÓN LẢU', 'CÁC MÓN LẢU'),
(20, 2, 20, 0, 'CƠM NIÊU 7 MÓN', 'com-nieu-7-mon', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CƠM NIÊU 7 MÓN', 'CƠM NIÊU 7 MÓN', 'CƠM NIÊU 7 MÓN'),
(21, 3, 1, 0, 'MENU 100.000 VNĐ/ PAX', 'menu-100000-vnd-pax', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MENU 100.000 VNĐ/PAX', 'MENU 100.000 VNĐ/PAX', 'MENU 100.000 VNĐ/PAX'),
(22, 3, 2, 0, 'MENU 120.000 VNĐ/ PAX', 'menu-120000-vnd-pax', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MENU 120.000 VNĐ/PAX', 'MENU 120.000 VNĐ/PAX', 'MENU 120.000 VNĐ/PAX'),
(23, 3, 3, 0, 'MENU 150.000 VNĐ/ PAX', 'menu-150000-vnd-pax', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MENU 150.000 VNĐ/PAX', 'MENU 150.000 VNĐ/PAX', 'MENU 150.000 VNĐ/PAX'),
(24, 3, 4, 0, 'MENU 200.000 VNĐ/ PAX', 'menu-200000-vnd-pax', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MENU 200.000 VNĐ/PAX', 'MENU 200.000 VNĐ/PAX', 'MENU 200.000 VNĐ/PAX'),
(25, 3, 5, 0, 'MENU 250.000 VNĐ/ PAX', 'menu-250000-vnd-pax', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MENU 250.000 VNĐ/ PAX', 'MENU 250.000 VNĐ/ PAX', 'MENU 250.000 VNĐ/ PAX'),
(26, 5, 1, 0, 'COMBO DÀNH CHO 2-4 NGƯỜI', 'combo-danh-cho-2-4-nguoi', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'COMBO DÀNH CHO 2-4 NGƯỜI', 'COMBO DÀNH CHO 2-4 NGƯỜI', 'COMBO DÀNH CHO 2-4 NGƯỜI');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc_tintuc`
--

CREATE TABLE `danhmuc_tintuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc_tintuc`
--

INSERT INTO `danhmuc_tintuc` (`id`, `name`, `name_url`, `img`, `title`, `keyword`, `description`, `position`) VALUES
(1, 'Sức khỏe', 'suc-khoe', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'Sức khỏe', 'Sức khỏe', 'Sức khỏe', 1),
(2, 'Dinh dưỡng', 'dinh-duong', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'Dinh dưỡng', 'Dinh dưỡng', 'Dinh dưỡng', 2);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `contents_short` text COLLATE utf8_unicode_ci,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `img`, `content`, `contents_short`, `title`, `keyword`, `description`) VALUES
(1, 'ABOUT VIET GARDENS', '/nhahang/view/admin/Themes/kcfinder/upload/images/gioithieu/about.jpg', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Helvetica, Arial, sans-serif;">VIETGARDEN - VƯỜN ẨM THỰC XANH ĐẬM Đ&Agrave; HƯƠNG VỊ VIỆT</span><br style="color: rgb(102, 102, 102); font-family: Helvetica, Arial, sans-serif;" />\r\n	<span style="color: rgb(102, 102, 102); font-family: Helvetica, Arial, sans-serif;">Tọa lạc tr&ecirc;n một vị tr&iacute; đắc địa tại đường Vũ Phạm H&agrave;m, Phường Y&ecirc;n H&ograve;a, Quận Cầu Giấy, VietGardens phủ sắc xa</span><span class="text_exposed_show" style="display: inline; color: rgb(102, 102, 102); font-family: Helvetica, Arial, sans-serif;">nh tươi m&aacute;t l&ecirc;n một g&oacute;c phố phường nhộn nhịp. Thiết kế ấm c&uacute;ng, chan h&ograve;a với thi&ecirc;n nhi&ecirc;n mang đến kh&ocirc;ng gian trong l&agrave;nh với c&acirc;y v&agrave; hoa c&ugrave;ng một m&agrave;u xanh nổi bật kh&ocirc;ng pha trộn. Tuy nhi&ecirc;n đ&acirc;y mới chỉ l&agrave; c&aacute;nh cổng bước v&agrave;o khu vườn ẩm thực Việt với v&ocirc; v&agrave;n những m&oacute;n ăn đậm chất Việt xưa mang dấu ấn cả 3 miền Đất nước. Hương vị nhẹ nh&agrave;ng, b&igrave;nh dị m&agrave; tinh tế trong chế biến cũng như kh&acirc;u tr&igrave;nh b&agrave;y đưa c&aacute;c thực kh&aacute;ch t&igrave;m về hương vị quen thuộc m&agrave; xa xưa nhất của c&aacute;c l&agrave;ng qu&ecirc; Việt Nam, của n&uacute;i rừng T&acirc;y Bắc, của Miệt Vườn, Ao C&aacute; như trong c&acirc;u chuyện của B&aacute;c Ba Phi. Ai cũng muốn t&igrave;m lại những hương vị đậm đ&agrave;, thuần t&uacute;y đ&atilde; khảm v&agrave;o t&acirc;m hồn mỗi con người Việt Nam, bạn b&egrave; quốc tế cũng h&aacute;o hức muốn kh&aacute;m ph&aacute; những m&oacute;n ngon thuần chất Việt m&agrave; kh&ocirc;ng phải ở đ&acirc;u cũng c&oacute; được. Ch&iacute;nh v&igrave; vậy những người con đất Việt với mong muốn t&ocirc;n vinh n&eacute;t văn h&oacute;a truyền thống của Ẩm thực Việt Nam, đưa n&eacute;t văn h&oacute;a của qu&ecirc; hương đến với thực kh&aacute;ch bốn phương để c&ugrave;ng trải nghiệm cảm gi&aacute;c ch&acirc;n thật như thực sự lạc v&agrave;o vườn rau, ao c&aacute; Việt Nam, thưởng thức những m&oacute;n ăn Việt mang hơi thở của qu&ecirc; hương được chế biến từ những nguy&ecirc;n liệu tươi mới, ngon l&agrave;nh đặc biệt xuất ph&aacute;t điểm từ l&agrave;ng qu&ecirc; Việt Nam. Sự chắt lọc trong kh&acirc;u chọn Nguy&ecirc;n liệu, sự tỉ mỉ, săn s&oacute;c v&agrave; tinh tế trong từng kh&acirc;u chế biến của những đầu bếp kinh nghiệm nhất như lời cam kết về chất lượng cũng như đ&aacute;p ứng nhu cầu của những thực kh&aacute;ch kh&oacute; t&iacute;nh nhất khi đến với VietGardens.<br />\r\n	Ch&uacute;ng t&ocirc;i tin tưởng với sự phục vụ nhiệt t&igrave;nh, chu đ&aacute;o, &acirc;n cần v&agrave; gi&aacute; cả hợp l&iacute; cũng như sự kh&eacute;o l&eacute;o trong c&aacute;ch thể hiện hương vị ẩm thực Việt v&agrave; t&acirc;m huyết đối với m&oacute;n ăn Việt Nam sẽ l&agrave; kim chỉ nam cho việc hướng đến tr&aacute;i tim kh&aacute;ch h&agrave;ng của VietGardens.&nbsp;<br />\r\n	<span class="_47e3" title="Biểu tượng cảm xúc heart"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f6c/1/16/2764.png" style="border: 0px; vertical-align: -3px;" width="16" /><span aria-hidden="1" class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">&lt;3</span></span>&nbsp;<span class="_47e3" title="Biểu tượng cảm xúc heart"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f6c/1/16/2764.png" style="border: 0px; vertical-align: -3px;" width="16" /><span aria-hidden="1" class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">&lt;3</span></span>&nbsp;<span class="_47e3" title="Biểu tượng cảm xúc heart"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f6c/1/16/2764.png" style="border: 0px; vertical-align: -3px;" width="16" /><span aria-hidden="1" class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">&lt;3</span></span></span></p>\r\n', '<p>\r\n	VIETGARDEN - VƯỜN ẨM THỰC XANH ĐẬM Đ&Agrave; HƯƠNG VỊ VIỆT Tọa lạc tr&ecirc;n một vị tr&iacute; đắc địa tại đường Vũ Phạm H&agrave;m, Phường Y&ecirc;n H&ograve;a, Quận Cầu Giấy, VietGardens phủ sắc xanh tươi m&aacute;t l&ecirc;n một g&oacute;c phố phường nhộn nhịp. Thiết kế ấm c&uacute;ng, chan h&ograve;a với thi&ecirc;n nhi&ecirc;n mang đến kh&ocirc;ng gian trong l&agrave;nh với c&acirc;y v&agrave; hoa c&ugrave;ng một m&agrave;u xanh nổi bật kh&ocirc;ng pha trộn.</p>\r\n', 'ABOUT VIET GARDENS', 'ABOUT VIET GARDENS', 'ABOUT VIET GARDENS'),
(2, 'OUR CHEFS', '/nhahang/view/admin/Themes/kcfinder/upload/images/gioithieu/image-chefs.png', '<p>\r\n	<span style="color: rgb(121, 121, 121); font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 16px; text-align: center; background-color: rgb(250, 248, 235);">Ch&uacute;ng t&ocirc;i tin tưởng với sự phục vụ nhiệt t&igrave;nh, chu đ&aacute;o, &acirc;n cần v&agrave; gi&aacute; cả hợp l&iacute; cũng như sự kh&eacute;o l&eacute;o trong c&aacute;ch thể hiện hương vị ẩm thực Việt với t&acirc;m huyết đối với m&oacute;n ăn Việt Nam sẽ l&agrave; kim chỉ nam cho việc hướng đến tr&aacute;i tim kh&aacute;ch h&agrave;ng của VietGardens.</span></p>\r\n', '<p>\r\n	<span style="color: rgb(121, 121, 121); font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 16px; text-align: center; background-color: rgb(250, 248, 235);">Ch&uacute;ng t&ocirc;i tin tưởng với sự phục vụ nhiệt t&igrave;nh, chu đ&aacute;o, &acirc;n cần v&agrave; gi&aacute; cả hợp l&iacute; cũng như sự kh&eacute;o l&eacute;o trong c&aacute;ch thể hiện hương vị ẩm thực Việt với t&acirc;m huyết đối với m&oacute;n ăn Việt Nam sẽ l&agrave; kim chỉ nam cho việc hướng đến tr&aacute;i tim kh&aacute;ch h&agrave;ng của VietGardens.</span></p>\r\n', 'OUR CHEFS', 'OUR CHEFS', 'OUR CHEFS');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `img`, `name`, `title`, `keyword`, `description`) VALUES
(1, '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'TRANG CHỦ', 'TRANG CHỦ', 'TRANG CHỦ', 'TRANG CHỦ'),
(2, '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'GIỚI THIỆU', 'GIỚI THIỆU', 'GIỚI THIỆU', 'GIỚI THIỆU'),
(3, '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'Thực đơn', 'Thực đơn', 'Thực đơn', 'Thực đơn'),
(4, '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CẨM NANG', 'CẨM NANG', 'CẨM NANG', 'CẨM NANG'),
(5, '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'LIÊN HỆ', 'LIÊN HỆ', 'LIÊN HỆ', 'LIÊN HỆ'),
(6, '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'TUYỂN DỤNG', 'TUYỂN DỤNG', 'TUYỂN DỤNG', 'TUYỂN DỤNG'),
(7, '/mix/view/admin/Themes/kcfinder/upload/images/slide/anh-dep-du-lich-viet-nam-vietnam-travel-ha-long-bay-03.jpg', 'New', 'New', 'New', 'New'),
(8, NULL, 'Search', 'Search', 'Search', 'Search'),
(9, NULL, 'PACKAGES', 'PACKAGES', 'PACKAGES', 'PACKAGES'),
(10, NULL, 'PROMOTIONS', 'PROMOTIONS', 'PROMOTIONS', 'PROMOTIONS'),
(11, NULL, 'Video', 'Video', 'Video', 'Video'),
(12, NULL, 'Destination', 'Destination', 'Destination', 'Destination'),
(13, NULL, 'Request Form', 'Request Form', 'Request Form', 'Request Form');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `danhmuc_id`, `name`, `name_url`, `img`, `content`, `title`, `keyword`, `description`, `created`) VALUES
(1, 1, 'Chọn thịt và sản phẩm', 'chon-thit-san-pham-tu-dong-vat-va', '/nhahang/view/admin/Themes/kcfinder/upload/images/new/14-570x570.jpg', '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	Đối với c&aacute;c loại thịt: Trước ti&ecirc;n cần t&igrave;m hiểu nguồn gốc cung cấp thịt hay người kinh doanh bu&ocirc;n b&aacute;n, thịt v&agrave; c&aacute;c sản phẩm từ động vật. Dấu hiệu nhận biết l&agrave; dấu chứng nhận của cơ quan th&uacute; y tr&ecirc;n sản phẩm v&agrave; nh&atilde;n m&aacute;c sản phẩm. Ngo&agrave;i ra, cũng cần quan t&acirc;m đến vệ sinh của quầy b&aacute;n thịt v&igrave; đ&acirc;y cũng l&agrave; yếu tố ảnh hưởng đến chất lượng thịt v&agrave; sự an to&agrave;n khi sử dụng.<br />\r\n	Đối với thịt, nếu thịt tươi th&igrave; bề mặt kh&ocirc; mịn, kh&ocirc;ng bị nhớt, khối thịt rắn chắc, c&oacute; độ đ&agrave;n hồi cao, ấn ng&oacute;n tay v&agrave;o thịt tạo th&agrave;nh vết l&otilde;m nhưng kh&ocirc;ng để lại dấu vết khi nhấc ng&oacute;n tay ra. Nếu thấy mặt thịt th&ocirc; r&aacute;p, ngửi kh&ocirc;ng c&oacute; m&ugrave;i thơm của thịt, đề nghị người b&aacute;n rạch một lằn dao v&agrave;o thớ thịt, xem b&ecirc;n trong c&oacute; m&agrave;u tươi hồng của thịt (thịt lợn) hoặc m&agrave;u đỏ tươi (thịt b&ograve;) th&igrave; thịt đ&oacute; vẫn c&ograve;n tươi.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	Lưu &yacute;:<br />\r\n	&bull; Nếu thịt c&oacute; m&agrave;u sẫm, hoặc c&oacute; vết bầm ở cơ hoặc c&aacute;c nốt hoặc đ&aacute;m xuất huyết tr&ecirc;n da th&igrave; kh&ocirc;ng n&ecirc;n mua v&igrave; đ&oacute; l&agrave; c&aacute;c dấu hiệu nghi thịt gia s&uacute;c, gia cầm đ&atilde; chết hoặc mắc&nbsp;<a href="http://www.thucphamantoan.com/tag/benh/" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(0, 87, 42); text-decoration: none;">bệnh</a>&nbsp;hoặc do nhuộm m&agrave;u.<br />\r\n	&bull; Kh&ocirc;ng n&ecirc;n mua thịt c&oacute; m&agrave;u nhợt nhạt hoặc c&oacute; c&aacute;c bọc trắng trong thớ thịt, đối với thịt lợn kh&ocirc;ng n&ecirc;n mua thịt khi mỡ c&oacute; m&agrave;u v&agrave;ng v&agrave; m&ugrave;i kh&eacute;t.<br />\r\n	&bull; Đối với thịt đ&ocirc;ng lạnh cần xem kỹ nh&atilde;n m&aacute;c xuất xứ v&agrave; hạn sử dụng ghi tr&ecirc;n bao b&igrave; v&agrave; thiết bị bảo quản.<br />\r\n	Đối với&nbsp;<a href="http://www.thucphamantoan.com/tag/trung/" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(0, 87, 42); text-decoration: none;">trứng</a>: Khi mua n&ecirc;n chọn những quả vỏ sạch, m&agrave;u tươi s&aacute;ng, vỏ d&agrave;y kh&ocirc;ng nứt vỡ, cầm trứng đưa l&ecirc;n gần tai lắc nhẹ nếu kh&ocirc;ng nghe thấy tiếng k&ecirc;u l&agrave; trứng tươi, hoặc d&ugrave;ng ng&oacute;n trỏ v&agrave; ng&oacute;n c&aacute;i cầm v&agrave;o hai đầu của quả trứng giơ về ph&iacute;a &aacute;nh s&aacute;ng, nh&igrave;n ph&iacute;a đầu to của quả trứng nếu thấy k&iacute;ch thước b&oacute;ng kh&iacute; c&agrave;ng nhỏ th&igrave; trứng c&agrave;ng tươi.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	Trước khi chế biến, để biết trứng c&ograve;n d&ugrave;ng được kh&ocirc;ng th&igrave; c&oacute; thể ng&acirc;m trứng v&agrave;o&nbsp;<a href="http://www.thucphamantoan.com/tag/nuoc/" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(0, 87, 42); text-decoration: none;">nước</a>, nếu thấy trứng ch&igrave;m l&agrave; trứng vẫn c&ograve;n tươi, trứng lơ lửng trong nước l&agrave; trứng kh&ocirc;ng c&ograve;n tươi nữa. Nếu trứng nổi hẳn l&ecirc;n mặt nước th&igrave; kh&ocirc;ng n&ecirc;n sử dụng để chế biến&nbsp;<a href="http://www.thucphamantoan.com/tag/thuc-an/" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(0, 87, 42); text-decoration: none;">thức ăn</a>. Hoặc khi đập trứng, thấy l&ograve;ng trắng trứng thu gọn quanh l&ograve;ng đỏ (trong đặc, ngo&agrave;i r&igrave;a hơi lỏng, l&ograve;ng đỏ nguy&ecirc;n vẹn v&agrave; nổi tr&ograve;n hẳn) hoặc sau luộc trứng, bổ đ&ocirc;i quả trứng nếu thấy l&ograve;ng đỏ nằm ch&iacute;nh giữa, kh&ocirc;ng s&aacute;t v&agrave;o b&ecirc;n n&agrave;o l&agrave; trứng mới.</p>\r\n', 'Chọn thịt và sản phẩm từ động vật', 'Chọn thịt và sản phẩm từ động vật', 'Chọn thịt và sản phẩm từ động vật', '2016-11-14 01:59:46'),
(2, 1, 'Cách chọn rau, củ quả', 'cach-chon-rau-cu-qua', '/nhahang/view/admin/Themes/kcfinder/upload/images/new/1-570x570.jpg', '<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">Chọn rau, củ quả tươi:</span><br style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;" />\r\n	<span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">&bull; N&ecirc;n chọn rau c&oacute; m&agrave;u tươi s&aacute;ng kh&ocirc;ng h&eacute;o &uacute;a, dập n&aacute;t, kh&ocirc;ng d&iacute;nh bẩn. Đối với một số loại rau ăn l&aacute; kh&ocirc;ng n&ecirc;n chọn rau c&oacute; bề mặt nhẵn b&oacute;ng, xanh mướt v&igrave; c&oacute; thể sản phẩm đ&oacute; được sử dụng c&aacute;c loại ph&acirc;n b&oacute;n l&aacute; v&agrave; thuốc bảo vệ thực vật vẫn c&ograve;n tồn dư trong rau v&agrave; bề mặt.</span><br style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;" />\r\n	<span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">&bull; Đối với c&aacute;c loại rau dạng củ, quả n&ecirc;n chọn c&aacute;c loại củ trơn nhẵn, da căng, kh&ocirc;ng bị dập n&aacute;t, m&agrave;u sắc củ phải đồng nhất, kh&ocirc;ng n&ecirc;n chọn mua c&aacute;c loại củ đ&atilde; mọc mầm v&igrave; ảnh hưởng đến&nbsp;</span><a href="http://www.thucphamantoan.com/tag/tieu-hoa/" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(0, 87, 42); text-decoration: none; font-family: Arial, Helvetica, sans-serif; text-align: justify;">ti&ecirc;u h&oacute;a</a><span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">.</span><br style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;" />\r\n	<span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">&bull; Khi chọn c&aacute;c loại đỗ quả, mướp đắng n&ecirc;n chọn quả c&oacute; cuống to m&agrave;u xanh tươi, th&acirc;n mềm, hạt kh&ocirc;ng lớn, kh&ocirc;ng nhỏ.</span><br style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;" />\r\n	<span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">Chọn c&aacute;c loại rau đ&atilde; sơ chế:</span><br style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;" />\r\n	<span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">&bull; Đối với mộc nhĩ n&ecirc;n chọn loại c&aacute;nh to, d&agrave;y, m&agrave;u v&agrave;ng s&aacute;ng khi nấu sẽ gi&ograve;n v&agrave; ngon, đối với c&aacute;c loại&nbsp;</span><a href="http://www.thucphamantoan.com/tag/nam/" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(0, 87, 42); text-decoration: none; font-family: Arial, Helvetica, sans-serif; text-align: justify;">nấm</a><span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">&nbsp;kh&ocirc; n&ecirc;n chọn những nấm c&oacute; m&agrave;u v&agrave;ng s&aacute;ng, ch&acirc;n nấm nhỏ v&agrave; ngắn.</span><br style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;" />\r\n	<span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">&bull; Đối với măng kh&ocirc; n&ecirc;n chọn mua măng non, c&oacute; m&agrave;u hanh v&agrave;ng l&agrave; măng phơi được&nbsp;</span><a href="http://www.thucphamantoan.com/tag/nang/" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(0, 87, 42); text-decoration: none; font-family: Arial, Helvetica, sans-serif; text-align: justify;">nắng</a><span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">&nbsp;v&igrave; măng c&agrave;ng để l&acirc;u m&agrave;u c&agrave;ng sẫm. Miếng măng ngắn, b&uacute;p to sẽ ngon hơn.</span></p>\r\n', 'Cách chọn rau, củ quả', 'Cách chọn rau, củ quả', 'Cách chọn rau, củ quả', '2016-11-14 01:45:38'),
(3, 1, 'Thực phẩm tốt nhất cho người sa dạ dày', 'thuc-pham-tot-nhat-cho-nguoi-sa-da-day', '/nhahang/view/admin/Themes/kcfinder/upload/images/new/13-570x570.jpg', '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	Sa dạ d&agrave;y thường gặp ở người suy nhược cơ thể v&agrave; mất sức. Cơ dạ d&agrave;y gi&atilde;n ra, dạ d&agrave;y sa xuống, ảnh hưởng chức năng ti&ecirc;u h&oacute;a.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	Nguy&ecirc;n nh&acirc;n g&acirc;y sa dạ d&agrave;y ngo&agrave;i số &iacute;t do gi&atilde;n d&acirc;y chằng cố định b&ecirc;n trong nội tạng, phần nhiều do suy giảm chức năng dạ d&agrave;y. Phần đ&ocirc;ng người sa dạ d&agrave;y l&agrave; do ngồi l&acirc;u, &iacute;t vận động; hoặc vận động mạnh, đi lại nhiều ngay sau bữa ăn cũng l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y bệnh n&agrave;y. Người bệnh thường c&oacute; triệu chứng như: đầy bụng, đau v&ugrave;ng bụng tr&ecirc;n, ti&ecirc;u h&oacute;a k&eacute;m, k&eacute;m ăn, t&aacute;o b&oacute;n&hellip; Một số người c&ograve;n k&egrave;m theo triệu chứng ch&oacute;ng mặt, hoa mắt, mất sức, rối loạn thần kinh thực vật (dẫn đến ra mồ h&ocirc;i tay ch&acirc;n).</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	Người sa dạ d&agrave;y c&oacute; thể tham khảo thực đơn như sau:</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	&ndash; D&ugrave;ng một &iacute;t củ sen tươi, gạo nếp, đường trắng lượng vừa. Nấu gạo nếp với củ sen cho ch&iacute;n mềm, rồi gia th&ecirc;m đường vừa d&ugrave;ng. D&ugrave;ng t&ugrave;y l&uacute;c, c&oacute; t&aacute;c dụng dưỡng vị.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	<img alt="nguoi-sa-da-day-nen-dung-thuc-an-gi" class="aligncenter size-full wp-image-3259" height="409" src="http://www.thucphamantoan.com/wp-content/images/2013/01/nguoi-sa-da-day-nen-dung-thuc-an-gi.jpg" style="margin: 10px auto; padding: 4px; border: 0px; vertical-align: baseline; max-width: 100%; height: auto; display: block;" width="500" /></p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	&ndash; Bao tử b&ograve; 200 gr, vị thuốc chỉ x&aacute;c (sao) 10-20 gr, sa nh&acirc;n 2 gr. C&aacute;ch l&agrave;m: Bao tử b&ograve; sau khi rửa sạch cắt sợi, c&ugrave;ng chỉ x&aacute;c v&agrave; sa nh&acirc;n cho v&agrave;o nồi đất d&ugrave;ng lửa lớn nấu s&ocirc;i, sau đ&oacute; hạ lửa nhỏ tiếp tục nấu đến ch&iacute;n, n&ecirc;m nếm gia vị. T&aacute;c dụng dưỡng vị.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	&ndash; Bao tử heo 1 c&aacute;i, vị thuốc ho&agrave;ng kỳ 200 gr, trần b&igrave; (vỏ qu&yacute;t) 30 gr. C&aacute;ch l&agrave;m: Bao tử heo rửa sạch cắt sợi, sau đ&oacute; c&ugrave;ng cho ho&agrave;ng kỳ v&agrave; vỏ qu&yacute;t, th&ecirc;m nước lượng vừa để nấu cho đến khi ch&iacute;n nhừ th&igrave; tắt lửa. Chia 2 lần d&ugrave;ng hết trong ng&agrave;y, c&oacute; t&aacute;c dụng dưỡng vị.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	<img alt="nguoi-sa-da-day-nen-dung-thuc-an-gi-1" class="aligncenter size-full wp-image-3258" height="336" src="http://www.thucphamantoan.com/wp-content/images/2013/01/nguoi-sa-da-day-nen-dung-thuc-an-gi-1.jpg" style="margin: 10px auto; padding: 4px; border: 0px; vertical-align: baseline; max-width: 100%; height: auto; display: block;" width="500" /></p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	&ndash; Vị thuốc sơn tra 15 gr, chỉ x&aacute;c 15 gr. Sơn tra sau khi rửa sạch c&ugrave;ng chỉ x&aacute;c cho v&agrave;o nồi nấu, sau khi s&ocirc;i hạ lửa nhỏ nấu tiếp sau đ&oacute; bỏ b&atilde; lấy nước. C&aacute;ch d&ugrave;ng: mỗi ng&agrave;y 1 ch&eacute;n, chia 2 lần d&ugrave;ng. T&aacute;c dụng dưỡng vị.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	&ndash; Nh&acirc;n s&acirc;m, sinh khương (gừng tươi), phục linh, trần b&igrave; (vỏ qu&yacute;t) &ndash; mỗi thứ 3 gr, vị thuốc thương truật 9 gr, chỉ thực 1,5 gr. Tất cả nguy&ecirc;n liệu tr&ecirc;n c&ugrave;ng cho v&agrave;o nồi đất, d&ugrave;ng nước lượng vừa để nấu, sau khi d&ugrave;ng lửa lớn nấu s&ocirc;i, th&igrave; hạ lửa vừa tiếp tục nấu đến khi ch&iacute;n mềm. Chia l&agrave;m 3 lần d&ugrave;ng trong ng&agrave;y, c&oacute; t&aacute;c dụng dưỡng vị.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	<img alt="nguoi-sa-da-day-nen-dung-thuc-an-gi-2" class="aligncenter size-full wp-image-3257" height="407" src="http://www.thucphamantoan.com/wp-content/images/2013/01/nguoi-sa-da-day-nen-dung-thuc-an-gi-2.jpg" style="margin: 10px auto; padding: 4px; border: 0px; vertical-align: baseline; max-width: 100%; height: auto; display: block;" width="500" /></p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	&ndash; 1 c&aacute;i bao tử b&ograve;, 180 gr vị thuốc đương quy, một &iacute;t rượu, gia vị. C&aacute;ch l&agrave;m: Bao tử b&ograve; rửa thật sạch, cắt th&agrave;nh l&aacute;t nhỏ, c&ugrave;ng đương quy cho v&agrave;o nồi đất, th&ecirc;m nước lượng vừa, sau khi d&ugrave;ng lửa lớn nấu s&ocirc;i, th&ecirc;m rượu, hạ lửa nhỏ tiếp tục nấu cho đến khi canh đậm thịt nhừ, n&ecirc;m nếm gia vị. Th&iacute;ch hợp cho người bệnh sa dạ d&agrave;y c&oacute; triệu chứng đau.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	&ndash; 1 c&aacute;i bao tử heo, vị thuốc ho&agrave;ng kỳ 20-30 gr, ti&ecirc;u sọ chừng 15 gr. C&aacute;ch l&agrave;m: Bao tử heo rửa sạch cắt l&aacute;t, sau đ&oacute; c&ugrave;ng ho&agrave;ng kỳ, ti&ecirc;u sọ cho v&agrave;o nồi nước nấu ch&iacute;n, chia 2 hay 3 lần d&ugrave;ng trong ng&agrave;y, c&oacute; t&aacute;c dụng dưỡng vị bổ kh&iacute;.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	&ndash; G&agrave; tơ 1 con, can khương (gừng kh&ocirc;), c&ocirc;ng đinh hương, sa nh&acirc;n (mỗi thứ 3 gr). G&agrave; tơ l&agrave;m sạch. Can khương, c&ocirc;ng đinh hương, sa nh&acirc;n cho v&agrave;o t&uacute;i vải buộc lại, rồi cho t&uacute;i thuốc n&agrave;y v&agrave; g&agrave; tơ v&agrave;o nồi tiềm c&aacute;ch thủy, chia 2 lần ăn hết trong ng&agrave;y, c&oacute; t&aacute;c dụng dưỡng vị &iacute;ch kh&iacute;.</p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; text-align: justify;">\r\n	&ndash; G&agrave; m&aacute;i tơ 1 con, vị thuốc ch&iacute;ch ho&agrave;ng kỳ 100 gr, gừng, h&agrave;nh, rượu trắng, ti&ecirc;u lượng vừa. G&agrave; m&aacute;i rửa sạch bỏ nội tạng v&agrave; đầu m&oacute;ng, đưa ho&agrave;ng kỳ nh&eacute;t v&agrave;o bụng g&agrave;, d&ugrave;ng chỉ kh&acirc;u lại, cho v&agrave;o chiếc thố, cho nước d&ugrave;ng, gừng, h&agrave;nh, rượu, gia vị, d&ugrave;ng lửa lớn chưng c&aacute;ch thủy trong 2 giờ, sau c&ugrave;ng rắc một &iacute;t bột ti&ecirc;u. C&oacute; t&aacute;c dụng trị sa dạ d&agrave;y v&agrave; triệu chứng đau dạ d&agrave;y do lạnh.</p>\r\n', 'Thực phẩm tốt nhất cho người sa dạ dày', 'Thực phẩm tốt nhất cho người sa dạ dày', 'Thực phẩm tốt nhất cho người sa dạ dày', '2016-11-14 01:46:03'),
(4, 1, 'Ăn nhiều đường dễ đau tim', 'an-nhieu-duong-de-dau-tim', '/nhahang/view/admin/Themes/kcfinder/upload/images/new/14-570x570.jpg', '<h2 class="summary" style="margin: 0px; padding: 0px; font-size: 17.3333px; font-weight: normal; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; background-color: rgb(244, 245, 246);">\r\n	Glucose l&agrave;m tổn thương trầm trọng chức năng của tim, như g&acirc;y loạn nhịp v&agrave; loại bỏ c&aacute;c cơ chế bảo vệ nội tại của tim khi bị stress.</h2>\r\n<p style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 17.3333px; background-color: rgb(244, 245, 246);">\r\n	&nbsp;</p>\r\n<div class="relate_inner_t" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 17.3333px; background-color: rgb(244, 245, 246);">\r\n	&nbsp;</div>\r\n<div class="description" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 17.3333px; background-color: rgb(244, 245, 246);">\r\n	<p style="margin: 0px; padding: 0px;">\r\n		TS Richard Rainbow v&agrave; cộng sự tại Khoa Tim mạch thuộc ĐH Leicester (Anh quốc) cho biết c&aacute;c mạch m&aacute;u co rất mạnh khi nồng độ glucose trong m&aacute;u gia tăng hơn mức &ldquo;sinh l&yacute; b&igrave;nh thường&rdquo;.</p>\r\n	<table align="center" class="image center" style="border-collapse: collapse; border-spacing: 0px; font-size: inherit; max-width: 500px;">\r\n		<tbody>\r\n			<tr>\r\n				<td style="margin: 0px; padding: 0px;">\r\n					<img alt="nguy hại khi ăn nhiều đường" class="alignnone size-full wp-image-2128" height="375" sizes="(max-width: 500px) 100vw, 500px" src="http://camnangthucpham.com/wp-content/uploads/an-nhieu-duong-co-tac-hai-gi-den-suc-khoe-phunutoday_vn.jpg" srcset="http://camnangthucpham.com/wp-content/uploads/an-nhieu-duong-co-tac-hai-gi-den-suc-khoe-phunutoday_vn.jpg 500w, http://camnangthucpham.com/wp-content/uploads/an-nhieu-duong-co-tac-hai-gi-den-suc-khoe-phunutoday_vn-300x225.jpg 300w" style="border: 0px; box-shadow: rgb(126, 126, 126) 0px 0px 4px; margin: 3px; max-width: 486px;" width="500" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td class="image_desc" style="margin: 0px; padding: 0px;">\r\n					&nbsp;</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<p style="margin: 0px; padding: 0px;">\r\n		C&aacute;c mạch m&aacute;u co lại v&agrave; gi&atilde;n ra để điều chỉnh huyết &aacute;p. C&agrave;ng co nhiều th&igrave; huyết &aacute;p c&agrave;ng tăng cao. D&ugrave;ng điện cơ đồ v&agrave; điện sinh l&yacute; để xem t&aacute;c động của glucose tr&ecirc;n tế b&agrave;o cơ th&agrave;nh động mạch, họ đ&atilde; biết được cơ chế kiểm so&aacute;t sự co hẹp của c&aacute;c mạch m&aacute;u.</p>\r\n	<p style="margin: 0px; padding: 0px;">\r\n		C&aacute;c cơn đau tim xảy ra khi một động mạch v&agrave;nh (cung cấp m&aacute;u c&ugrave;ng chất dinh dưỡng v&agrave; &ocirc;xy cho cơ tim) bị nghẽn. Lượng glucose tăng cao v&agrave;o thời điểm cơn đau tim xuất hiện khiến cho hiện tượng tắc nghẽn nặng nề hơn v&igrave; g&acirc;y co mạch m&aacute;u, dẫn đến nguy cơ xuất hiện biến chứng cao hơn.</p>\r\n	<p style="margin: 0px; padding: 0px;">\r\n		Lượng glucose tăng cao trong m&aacute;u l&agrave;m thay đổi trạng th&aacute;i của c&aacute;c mạch m&aacute;u, khiến ch&uacute;ng co lại nhiều hơn mức b&igrave;nh thường. Điều n&agrave;y dẫn đến tăng huyết &aacute;p hoặc l&agrave;m giảm lượng m&aacute;u đến c&aacute;c tạng phủ quan trọng trong cơ thể.</p>\r\n	<p style="margin: 0px; padding: 0px;">\r\n		Đ&acirc;y l&agrave; nghi&ecirc;n cứu đầu ti&ecirc;n cho thấy bằng chứng r&otilde; rệt về sự co mạch m&aacute;u khi c&oacute; sự gia tăng glucose trong m&aacute;u. Nhiều người bị cơn đau tim sẽ c&oacute; glucose m&aacute;u tăng cao do &ldquo;đ&aacute;p ứng stress&rdquo;, nghĩa l&agrave; ngay cả bệnh nh&acirc;n đ&oacute; kh&ocirc;ng bị đ&aacute;i th&aacute;o đường cũng c&oacute; thể bị tăng đường m&aacute;u trong thời gian bị cơn đau tim h&agrave;nh hạ.</p>\r\n	<p style="margin: 0px; padding: 0px;">\r\n		Nh&oacute;m c&aacute;c nh&agrave; nghi&ecirc;n cứu tr&ecirc;n đ&atilde; c&oacute; một thời gian nghi&ecirc;n cứu hậu quả của glucose tr&ecirc;n hệ tim mạch, chức năng tim cũng như trong bệnh đ&aacute;i th&aacute;o đường. Nghi&ecirc;n cứu năm 2010 cho thấy nồng độ glucose m&aacute;u tăng cao do bất kỳ nguy&ecirc;n nh&acirc;n n&agrave;o (kh&ocirc;ng phải đ&aacute;i th&aacute;o đường) l&agrave; &ldquo;ti&ecirc;n lượng xấu&rdquo; về một cơn đau tim xuất hiện sau đ&oacute;. Trong một nghi&ecirc;n cứu năm 2014, glucose l&agrave;m tổn thương trầm trọng chức năng của tim, như g&acirc;y loạn nhịp v&agrave; loại bỏ c&aacute;c cơ chế bảo vệ nội tại của tim khi bị stress. Tăng đường m&aacute;u đến mức bệnh l&yacute; g&acirc;y ra những thay đổi r&otilde; rệt ở mạch m&aacute;u b&igrave;nh thường v&agrave; cơ tim, đe dọa đến t&iacute;nh mạng nếu kh&ocirc;ng được điều trị.</p>\r\n	<p style="margin: 0px; padding: 0px;">\r\n		Từ c&aacute;c nghi&ecirc;n cứu tr&ecirc;n, c&oacute; thể d&ugrave;ng một protein k&iacute;ch khởi, c&oacute; t&ecirc;n l&agrave; PKC, để ngăn chặn sự co mạch m&aacute;u v&agrave; cải thiện chất lượng điều trị cho bệnh nh&acirc;n đau tim do tăng cao glucose m&aacute;u.</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 'Ăn nhiều đường dễ đau tim', 'Ăn nhiều đường dễ đau tim', 'Ăn nhiều đường dễ đau tim', '2016-11-14 01:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `danhmuc1_id` int(11) NOT NULL,
  `danhmuc2_id` int(11) NOT NULL,
  `highlights` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `price_sale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_percent` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `num_like` int(11) NOT NULL,
  `content_short` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `danhmuc1_id`, `danhmuc2_id`, `highlights`, `name`, `name_url`, `code`, `img`, `img1`, `img2`, `price`, `price_sale`, `price_percent`, `start`, `num_like`, `content_short`, `content`, `title`, `keyword`, `description`) VALUES
(1, 5, 26, 0, 'COMBO 1', 'combo-1', 'cb1', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/1-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/2-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/3-1.jpg', 99000, '180000', 55, 4, 100, '<ul>\r\n	<li>\r\n		CƠM NI&Ecirc;U ( chọn 2 loại): B&ograve; om nấm, g&agrave;, sườn, x&aacute; x&iacute;u.</li>\r\n	<li>\r\n		2 tộ cơm, b&ograve; 120g, g&agrave; 150g, sườn 100g, x&aacute; x&iacute;u 100g)</li>\r\n	<li>\r\n		KIM CHI: 150g.</li>\r\n	<li>\r\n		RAU X&Agrave;O THEO M&Ugrave;A 250G ( RAU MUỐNG, CẢI CH&Iacute;P, CẢI THẢO..)</li>\r\n	<li>\r\n		2 LY SORT DRINK</li>\r\n</ul>\r\n', '<p>\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">CƠM NI&Ecirc;U 7 M&Oacute;N - TINH HOA ẨM THỰC VIỆT TỪ NH&Agrave; H&Agrave;NG VIETGARDENS</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">Thời tiết H&agrave; Nội đ&oacute;n đợt lạnh đầu ti&ecirc;n, c&ograve;n g&igrave; tuyệt vời hơn khi ngồi b&ecirc;n bạn b&egrave; v&agrave; người th&acirc;n thưởng thức m&oacute;n cơm ni&ecirc;u thơm phức c&ograve;n nghi ng&uacute;t kh&oacute;i v&agrave; m&ugrave;i thơm đặc trưng chỉ c&oacute; ở cơm ni&ecirc;u của Vietgardens.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Gi&aacute; rẻ bất ngờ&quot; Chỉ từ&nbsp;</span><a class="_58cn" data-ft="{" href="https://www.facebook.com/hashtag/49k?source=feed_text&amp;story_id=893676984096052" style="color: rgb(54, 88, 153); cursor: pointer; text-decoration: none; font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><span class="_5afx" style="direction: ltr; unicode-bidi: isolate;"><span aria-label="hashtag" class="_58cl _5afz" style="unicode-bidi: isolate; color: rgb(66, 103, 178);">#</span><span class="_58cm">49k</span></span></a><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;. Ưu đ&atilde;i đặc biệt hơn nữa giảm th&ecirc;m 10% cho tất cả c&aacute;c h&oacute;a đơn thanh to&aacute;n trước ng&agrave;y 15/11/2016.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">NH&Agrave; H&Agrave;NG VIETGARDENS LU&Ocirc;N CAM KẾT</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Thực phẩm sạch c&oacute; được nhập từ c&aacute;c đơn vị ph&acirc;n p</span><span class="text_exposed_show" style="display: inline; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">hối uy t&iacute;n. C&aacute;c m&oacute;n ngon được chế biết từ đội ngũ đầu bếp kinh nghiệm nhiều năm, k&egrave;m theo một số b&iacute; quyết gia truyền<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Hương vị cơm ni&ecirc;u của nh&agrave; h&agrave;ng Vietgardens l&agrave; hương vị thuần việt ( Vị thanh, hương thơm từ nước sốt rất Việt Nam, &iacute;t dầu mỡ ..) Rất kh&aacute;c với c&aacute;c nh&agrave; h&agrave;ng cơm ni&ecirc;u kh&aacute;c m&agrave; Qu&yacute; kh&aacute;ch đ&atilde; từng ăn.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Lu&ocirc;n cam kết c&oacute; đủ 7 m&oacute;n cơm ni&ecirc;u để Qu&yacute; kh&aacute;ch lựa chọn.<br />\r\n	- Cơm ni&ecirc;u X&aacute; x&iacute;u<br />\r\n	- Cơm ni&ecirc;u g&agrave; om nấm<br />\r\n	- Cơm ni&ecirc;u đ&ugrave;i g&agrave; nước<br />\r\n	- Cơm ni&ecirc;u b&ograve; om nấm<br />\r\n	- Cơm ni&ecirc;u hải sản<br />\r\n	- Cơm ni&ecirc;u sườn cotlet<br />\r\n	- Cơm ni&ecirc;u thập cẩm<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Kh&ocirc;ng gian đẹp với sức chứa 200 kh&aacute;ch c&ugrave;ng l&uacute;c. V&igrave; vậy Qu&yacute; kh&aacute;ch c&oacute; thể vừa thưởng thức m&oacute;n cơm ni&ecirc;u ngon tuyệt v&agrave; t&aacute;n chuyện cả ng&agrave;y m&agrave; kh&ocirc;ng lo ảnh hưởng tới ai.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện, nhiệt t&igrave;nh<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f9e/1/16/27a1.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">➡</span></span>&nbsp;CH&Uacute;NG T&Ocirc;I CAM KẾT HO&Agrave;N TIỀN 100% NẾU QU&Yacute; KH&Aacute;CH KH&Ocirc;NG H&Agrave;I L&Ograve;NG.<br />\r\n	Nh&agrave; h&agrave;ng Viet Gardens.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fc4/1/16/1f6a7.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Add: Số 2 l&ocirc; 4C Vũ Phạm H&agrave;m - Y&ecirc;n H&ograve;a - Cầu Giấy - H&agrave; Nội ( Mặt đường Vũ phạm H&agrave;m nh&eacute; )<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f4d/1/16/1f4de.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Điện thoại: 0432123354 HOTLINE: 0909790598&nbsp;<br />\r\n	N&Agrave;O ! H&Atilde;Y ĐẾN V&Agrave; CẢM NHẬN VỀ M&Oacute;N CƠM NI&Ecirc;U RẤT RI&Ecirc;NG CỦA VIETGARDENS.</span></p>\r\n', NULL, NULL, NULL),
(2, 5, 26, 1, 'COMBO 2', 'combo-2', 'CB2', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/2-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/3-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/4-1.jpg', 199000, '310000', 55, 3, 9, '<ul>\r\n	<li>\r\n		NỘM G&Agrave; X&Eacute; PHAY: 1 đĩa 250g</li>\r\n	<li>\r\n		G&Agrave; KH&Ocirc;NG LỐI THO&Aacute;T: G&agrave; nguy&ecirc;n con 1,2kg</li>\r\n</ul>\r\n', '<p>\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">CƠM NI&Ecirc;U 7 M&Oacute;N - TINH HOA ẨM THỰC VIỆT TỪ NH&Agrave; H&Agrave;NG VIETGARDENS</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">Thời tiết H&agrave; Nội đ&oacute;n đợt lạnh đầu ti&ecirc;n, c&ograve;n g&igrave; tuyệt vời hơn khi ngồi b&ecirc;n bạn b&egrave; v&agrave; người th&acirc;n thưởng thức m&oacute;n cơm ni&ecirc;u thơm phức c&ograve;n nghi ng&uacute;t kh&oacute;i v&agrave; m&ugrave;i thơm đặc trưng chỉ c&oacute; ở cơm ni&ecirc;u của Vietgardens.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Gi&aacute; rẻ bất ngờ&quot; Chỉ từ&nbsp;</span><a class="_58cn" data-ft="{" href="https://www.facebook.com/hashtag/49k?source=feed_text&amp;story_id=893676984096052" style="color: rgb(54, 88, 153); cursor: pointer; text-decoration: none; font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><span class="_5afx" style="direction: ltr; unicode-bidi: isolate;"><span aria-label="hashtag" class="_58cl _5afz" style="unicode-bidi: isolate; color: rgb(66, 103, 178);">#</span><span class="_58cm">49k</span></span></a><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;. Ưu đ&atilde;i đặc biệt hơn nữa giảm th&ecirc;m 10% cho tất cả c&aacute;c h&oacute;a đơn thanh to&aacute;n trước ng&agrave;y 15/11/2016.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">NH&Agrave; H&Agrave;NG VIETGARDENS LU&Ocirc;N CAM KẾT</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Thực phẩm sạch c&oacute; được nhập từ c&aacute;c đơn vị ph&acirc;n p</span><span class="text_exposed_show" style="display: inline; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">hối uy t&iacute;n. C&aacute;c m&oacute;n ngon được chế biết từ đội ngũ đầu bếp kinh nghiệm nhiều năm, k&egrave;m theo một số b&iacute; quyết gia truyền<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Hương vị cơm ni&ecirc;u của nh&agrave; h&agrave;ng Vietgardens l&agrave; hương vị thuần việt ( Vị thanh, hương thơm từ nước sốt rất Việt Nam, &iacute;t dầu mỡ ..) Rất kh&aacute;c với c&aacute;c nh&agrave; h&agrave;ng cơm ni&ecirc;u kh&aacute;c m&agrave; Qu&yacute; kh&aacute;ch đ&atilde; từng ăn.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Lu&ocirc;n cam kết c&oacute; đủ 7 m&oacute;n cơm ni&ecirc;u để Qu&yacute; kh&aacute;ch lựa chọn.<br />\r\n	- Cơm ni&ecirc;u X&aacute; x&iacute;u<br />\r\n	- Cơm ni&ecirc;u g&agrave; om nấm<br />\r\n	- Cơm ni&ecirc;u đ&ugrave;i g&agrave; nước<br />\r\n	- Cơm ni&ecirc;u b&ograve; om nấm<br />\r\n	- Cơm ni&ecirc;u hải sản<br />\r\n	- Cơm ni&ecirc;u sườn cotlet<br />\r\n	- Cơm ni&ecirc;u thập cẩm<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Kh&ocirc;ng gian đẹp với sức chứa 200 kh&aacute;ch c&ugrave;ng l&uacute;c. V&igrave; vậy Qu&yacute; kh&aacute;ch c&oacute; thể vừa thưởng thức m&oacute;n cơm ni&ecirc;u ngon tuyệt v&agrave; t&aacute;n chuyện cả ng&agrave;y m&agrave; kh&ocirc;ng lo ảnh hưởng tới ai.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện, nhiệt t&igrave;nh<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f9e/1/16/27a1.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">➡</span></span>&nbsp;CH&Uacute;NG T&Ocirc;I CAM KẾT HO&Agrave;N TIỀN 100% NẾU QU&Yacute; KH&Aacute;CH KH&Ocirc;NG H&Agrave;I L&Ograve;NG.<br />\r\n	Nh&agrave; h&agrave;ng Viet Gardens.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fc4/1/16/1f6a7.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Add: Số 2 l&ocirc; 4C Vũ Phạm H&agrave;m - Y&ecirc;n H&ograve;a - Cầu Giấy - H&agrave; Nội ( Mặt đường Vũ phạm H&agrave;m nh&eacute; )<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f4d/1/16/1f4de.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Điện thoại: 0432123354 HOTLINE: 0909790598&nbsp;<br />\r\n	N&Agrave;O ! H&Atilde;Y ĐẾN V&Agrave; CẢM NHẬN VỀ M&Oacute;N CƠM NI&Ecirc;U RẤT RI&Ecirc;NG CỦA VIETGARDENS.</span></p>\r\n', NULL, NULL, NULL),
(3, 5, 26, 0, 'COMBO 3', 'combo-3', 'CB3', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/3-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/4-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/1-1.jpg', 310000, '520000', 55, 3, 345, '<ul>\r\n	<li>\r\n		RAU X&Agrave;O THEO M&Ugrave;A: 250g</li>\r\n	<li>\r\n		KHOAI LANG CHI&Ecirc;N VỪNG: 200g</li>\r\n	<li>\r\n		LẨU HẢI SẢN: T&ocirc;m, mực, ngao, c&aacute; ( T&ocirc;m 200g, Mực 300g, Ngao 200g, C&aacute; di&ecirc;u hồng 300g, rau lẩu 500g)</li>\r\n	<li>\r\n		DƯA CHUỘT CHẺ 300g</li>\r\n</ul>\r\n', '<p>\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">CƠM NI&Ecirc;U 7 M&Oacute;N - TINH HOA ẨM THỰC VIỆT TỪ NH&Agrave; H&Agrave;NG VIETGARDENS</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">Thời tiết H&agrave; Nội đ&oacute;n đợt lạnh đầu ti&ecirc;n, c&ograve;n g&igrave; tuyệt vời hơn khi ngồi b&ecirc;n bạn b&egrave; v&agrave; người th&acirc;n thưởng thức m&oacute;n cơm ni&ecirc;u thơm phức c&ograve;n nghi ng&uacute;t kh&oacute;i v&agrave; m&ugrave;i thơm đặc trưng chỉ c&oacute; ở cơm ni&ecirc;u của Vietgardens.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Gi&aacute; rẻ bất ngờ&quot; Chỉ từ&nbsp;</span><a class="_58cn" data-ft="{" href="https://www.facebook.com/hashtag/49k?source=feed_text&amp;story_id=893676984096052" style="color: rgb(54, 88, 153); cursor: pointer; text-decoration: none; font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><span class="_5afx" style="direction: ltr; unicode-bidi: isolate;"><span aria-label="hashtag" class="_58cl _5afz" style="unicode-bidi: isolate; color: rgb(66, 103, 178);">#</span><span class="_58cm">49k</span></span></a><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;. Ưu đ&atilde;i đặc biệt hơn nữa giảm th&ecirc;m 10% cho tất cả c&aacute;c h&oacute;a đơn thanh to&aacute;n trước ng&agrave;y 15/11/2016.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">NH&Agrave; H&Agrave;NG VIETGARDENS LU&Ocirc;N CAM KẾT</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Thực phẩm sạch c&oacute; được nhập từ c&aacute;c đơn vị ph&acirc;n p</span><span class="text_exposed_show" style="display: inline; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">hối uy t&iacute;n. C&aacute;c m&oacute;n ngon được chế biết từ đội ngũ đầu bếp kinh nghiệm nhiều năm, k&egrave;m theo một số b&iacute; quyết gia truyền<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Hương vị cơm ni&ecirc;u của nh&agrave; h&agrave;ng Vietgardens l&agrave; hương vị thuần việt ( Vị thanh, hương thơm từ nước sốt rất Việt Nam, &iacute;t dầu mỡ ..) Rất kh&aacute;c với c&aacute;c nh&agrave; h&agrave;ng cơm ni&ecirc;u kh&aacute;c m&agrave; Qu&yacute; kh&aacute;ch đ&atilde; từng ăn.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Lu&ocirc;n cam kết c&oacute; đủ 7 m&oacute;n cơm ni&ecirc;u để Qu&yacute; kh&aacute;ch lựa chọn.<br />\r\n	- Cơm ni&ecirc;u X&aacute; x&iacute;u<br />\r\n	- Cơm ni&ecirc;u g&agrave; om nấm<br />\r\n	- Cơm ni&ecirc;u đ&ugrave;i g&agrave; nước<br />\r\n	- Cơm ni&ecirc;u b&ograve; om nấm<br />\r\n	- Cơm ni&ecirc;u hải sản<br />\r\n	- Cơm ni&ecirc;u sườn cotlet<br />\r\n	- Cơm ni&ecirc;u thập cẩm<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Kh&ocirc;ng gian đẹp với sức chứa 200 kh&aacute;ch c&ugrave;ng l&uacute;c. V&igrave; vậy Qu&yacute; kh&aacute;ch c&oacute; thể vừa thưởng thức m&oacute;n cơm ni&ecirc;u ngon tuyệt v&agrave; t&aacute;n chuyện cả ng&agrave;y m&agrave; kh&ocirc;ng lo ảnh hưởng tới ai.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện, nhiệt t&igrave;nh<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f9e/1/16/27a1.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">➡</span></span>&nbsp;CH&Uacute;NG T&Ocirc;I CAM KẾT HO&Agrave;N TIỀN 100% NẾU QU&Yacute; KH&Aacute;CH KH&Ocirc;NG H&Agrave;I L&Ograve;NG.<br />\r\n	Nh&agrave; h&agrave;ng Viet Gardens.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fc4/1/16/1f6a7.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Add: Số 2 l&ocirc; 4C Vũ Phạm H&agrave;m - Y&ecirc;n H&ograve;a - Cầu Giấy - H&agrave; Nội ( Mặt đường Vũ phạm H&agrave;m nh&eacute; )<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f4d/1/16/1f4de.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Điện thoại: 0432123354 HOTLINE: 0909790598&nbsp;<br />\r\n	N&Agrave;O ! H&Atilde;Y ĐẾN V&Agrave; CẢM NHẬN VỀ M&Oacute;N CƠM NI&Ecirc;U RẤT RI&Ecirc;NG CỦA VIETGARDENS.</span></p>\r\n', NULL, NULL, NULL),
(4, 5, 26, 1, 'COMBO 4', 'combo-4', 'CB4', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/4-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/1-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/2-1.jpg', 265000, '390000', 35, 4, 234, '<ul>\r\n	<li>\r\n		LẨU B&Ograve; KIM CHI: B&ograve; Mỹ 200g, B&ograve; gầu 200g</li>\r\n	<li>\r\n		RAU X&Agrave;O THEO M&Ugrave;A: 250G</li>\r\n	<li>\r\n		KHOAI T&Acirc;Y CHI&Ecirc;N BƠ: 200g</li>\r\n	<li>\r\n		DƯA CHUỘT CHẺ: 300G</li>\r\n</ul>\r\n', '<p>\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">CƠM NI&Ecirc;U 7 M&Oacute;N - TINH HOA ẨM THỰC VIỆT TỪ NH&Agrave; H&Agrave;NG VIETGARDENS</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">Thời tiết H&agrave; Nội đ&oacute;n đợt lạnh đầu ti&ecirc;n, c&ograve;n g&igrave; tuyệt vời hơn khi ngồi b&ecirc;n bạn b&egrave; v&agrave; người th&acirc;n thưởng thức m&oacute;n cơm ni&ecirc;u thơm phức c&ograve;n nghi ng&uacute;t kh&oacute;i v&agrave; m&ugrave;i thơm đặc trưng chỉ c&oacute; ở cơm ni&ecirc;u của Vietgardens.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Gi&aacute; rẻ bất ngờ&quot; Chỉ từ&nbsp;</span><a class="_58cn" data-ft="{" href="https://www.facebook.com/hashtag/49k?source=feed_text&amp;story_id=893676984096052" style="color: rgb(54, 88, 153); cursor: pointer; text-decoration: none; font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><span class="_5afx" style="direction: ltr; unicode-bidi: isolate;"><span aria-label="hashtag" class="_58cl _5afz" style="unicode-bidi: isolate; color: rgb(66, 103, 178);">#</span><span class="_58cm">49k</span></span></a><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;. Ưu đ&atilde;i đặc biệt hơn nữa giảm th&ecirc;m 10% cho tất cả c&aacute;c h&oacute;a đơn thanh to&aacute;n trước ng&agrave;y 15/11/2016.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">NH&Agrave; H&Agrave;NG VIETGARDENS LU&Ocirc;N CAM KẾT</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Thực phẩm sạch c&oacute; được nhập từ c&aacute;c đơn vị ph&acirc;n p</span><span class="text_exposed_show" style="display: inline; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">hối uy t&iacute;n. C&aacute;c m&oacute;n ngon được chế biết từ đội ngũ đầu bếp kinh nghiệm nhiều năm, k&egrave;m theo một số b&iacute; quyết gia truyền<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Hương vị cơm ni&ecirc;u của nh&agrave; h&agrave;ng Vietgardens l&agrave; hương vị thuần việt ( Vị thanh, hương thơm từ nước sốt rất Việt Nam, &iacute;t dầu mỡ ..) Rất kh&aacute;c với c&aacute;c nh&agrave; h&agrave;ng cơm ni&ecirc;u kh&aacute;c m&agrave; Qu&yacute; kh&aacute;ch đ&atilde; từng ăn.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Lu&ocirc;n cam kết c&oacute; đủ 7 m&oacute;n cơm ni&ecirc;u để Qu&yacute; kh&aacute;ch lựa chọn.<br />\r\n	- Cơm ni&ecirc;u X&aacute; x&iacute;u<br />\r\n	- Cơm ni&ecirc;u g&agrave; om nấm<br />\r\n	- Cơm ni&ecirc;u đ&ugrave;i g&agrave; nước<br />\r\n	- Cơm ni&ecirc;u b&ograve; om nấm<br />\r\n	- Cơm ni&ecirc;u hải sản<br />\r\n	- Cơm ni&ecirc;u sườn cotlet<br />\r\n	- Cơm ni&ecirc;u thập cẩm<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Kh&ocirc;ng gian đẹp với sức chứa 200 kh&aacute;ch c&ugrave;ng l&uacute;c. V&igrave; vậy Qu&yacute; kh&aacute;ch c&oacute; thể vừa thưởng thức m&oacute;n cơm ni&ecirc;u ngon tuyệt v&agrave; t&aacute;n chuyện cả ng&agrave;y m&agrave; kh&ocirc;ng lo ảnh hưởng tới ai.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện, nhiệt t&igrave;nh<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f9e/1/16/27a1.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">➡</span></span>&nbsp;CH&Uacute;NG T&Ocirc;I CAM KẾT HO&Agrave;N TIỀN 100% NẾU QU&Yacute; KH&Aacute;CH KH&Ocirc;NG H&Agrave;I L&Ograve;NG.<br />\r\n	Nh&agrave; h&agrave;ng Viet Gardens.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fc4/1/16/1f6a7.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Add: Số 2 l&ocirc; 4C Vũ Phạm H&agrave;m - Y&ecirc;n H&ograve;a - Cầu Giấy - H&agrave; Nội ( Mặt đường Vũ phạm H&agrave;m nh&eacute; )<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f4d/1/16/1f4de.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Điện thoại: 0432123354 HOTLINE: 0909790598&nbsp;<br />\r\n	N&Agrave;O ! H&Atilde;Y ĐẾN V&Agrave; CẢM NHẬN VỀ M&Oacute;N CƠM NI&Ecirc;U RẤT RI&Ecirc;NG CỦA VIETGARDENS.</span></p>\r\n', NULL, NULL, NULL),
(5, 5, 26, 1, 'COMBO 5', 'combo-5', 'CB5', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/2-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/4-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/1-1.jpg', 255, '350', 30, 2, 234, '<ul>\r\n	<li>\r\n		LẨU G&Agrave; BỔ DƯỠNG: G&agrave; 1/2 con, rau lẩu 500g</li>\r\n	<li>\r\n		KHOAI LANG CHI&Ecirc;N: 200g</li>\r\n	<li>\r\n		RAU X&Agrave;O THEO M&Ugrave;A: 250g</li>\r\n	<li>\r\n		DƯA CHUỘT CHẺ: 300g</li>\r\n</ul>\r\n', '<p>\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">CƠM NI&Ecirc;U 7 M&Oacute;N - TINH HOA ẨM THỰC VIỆT TỪ NH&Agrave; H&Agrave;NG VIETGARDENS</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">Thời tiết H&agrave; Nội đ&oacute;n đợt lạnh đầu ti&ecirc;n, c&ograve;n g&igrave; tuyệt vời hơn khi ngồi b&ecirc;n bạn b&egrave; v&agrave; người th&acirc;n thưởng thức m&oacute;n cơm ni&ecirc;u thơm phức c&ograve;n nghi ng&uacute;t kh&oacute;i v&agrave; m&ugrave;i thơm đặc trưng chỉ c&oacute; ở cơm ni&ecirc;u của Vietgardens.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Gi&aacute; rẻ bất ngờ&quot; Chỉ từ&nbsp;</span><a class="_58cn" data-ft="{" href="https://www.facebook.com/hashtag/49k?source=feed_text&amp;story_id=893676984096052" style="color: rgb(54, 88, 153); cursor: pointer; text-decoration: none; font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><span class="_5afx" style="direction: ltr; unicode-bidi: isolate;"><span aria-label="hashtag" class="_58cl _5afz" style="unicode-bidi: isolate; color: rgb(66, 103, 178);">#</span><span class="_58cm">49k</span></span></a><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;. Ưu đ&atilde;i đặc biệt hơn nữa giảm th&ecirc;m 10% cho tất cả c&aacute;c h&oacute;a đơn thanh to&aacute;n trước ng&agrave;y 15/11/2016.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">NH&Agrave; H&Agrave;NG VIETGARDENS LU&Ocirc;N CAM KẾT</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Thực phẩm sạch c&oacute; được nhập từ c&aacute;c đơn vị ph&acirc;n p</span><span class="text_exposed_show" style="display: inline; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">hối uy t&iacute;n. C&aacute;c m&oacute;n ngon được chế biết từ đội ngũ đầu bếp kinh nghiệm nhiều năm, k&egrave;m theo một số b&iacute; quyết gia truyền<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Hương vị cơm ni&ecirc;u của nh&agrave; h&agrave;ng Vietgardens l&agrave; hương vị thuần việt ( Vị thanh, hương thơm từ nước sốt rất Việt Nam, &iacute;t dầu mỡ ..) Rất kh&aacute;c với c&aacute;c nh&agrave; h&agrave;ng cơm ni&ecirc;u kh&aacute;c m&agrave; Qu&yacute; kh&aacute;ch đ&atilde; từng ăn.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Lu&ocirc;n cam kết c&oacute; đủ 7 m&oacute;n cơm ni&ecirc;u để Qu&yacute; kh&aacute;ch lựa chọn.<br />\r\n	- Cơm ni&ecirc;u X&aacute; x&iacute;u<br />\r\n	- Cơm ni&ecirc;u g&agrave; om nấm<br />\r\n	- Cơm ni&ecirc;u đ&ugrave;i g&agrave; nước<br />\r\n	- Cơm ni&ecirc;u b&ograve; om nấm<br />\r\n	- Cơm ni&ecirc;u hải sản<br />\r\n	- Cơm ni&ecirc;u sườn cotlet<br />\r\n	- Cơm ni&ecirc;u thập cẩm<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Kh&ocirc;ng gian đẹp với sức chứa 200 kh&aacute;ch c&ugrave;ng l&uacute;c. V&igrave; vậy Qu&yacute; kh&aacute;ch c&oacute; thể vừa thưởng thức m&oacute;n cơm ni&ecirc;u ngon tuyệt v&agrave; t&aacute;n chuyện cả ng&agrave;y m&agrave; kh&ocirc;ng lo ảnh hưởng tới ai.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện, nhiệt t&igrave;nh<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f9e/1/16/27a1.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">➡</span></span>&nbsp;CH&Uacute;NG T&Ocirc;I CAM KẾT HO&Agrave;N TIỀN 100% NẾU QU&Yacute; KH&Aacute;CH KH&Ocirc;NG H&Agrave;I L&Ograve;NG.<br />\r\n	Nh&agrave; h&agrave;ng Viet Gardens.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fc4/1/16/1f6a7.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Add: Số 2 l&ocirc; 4C Vũ Phạm H&agrave;m - Y&ecirc;n H&ograve;a - Cầu Giấy - H&agrave; Nội ( Mặt đường Vũ phạm H&agrave;m nh&eacute; )<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f4d/1/16/1f4de.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Điện thoại: 0432123354 HOTLINE: 0909790598&nbsp;<br />\r\n	N&Agrave;O ! H&Atilde;Y ĐẾN V&Agrave; CẢM NHẬN VỀ M&Oacute;N CƠM NI&Ecirc;U RẤT RI&Ecirc;NG CỦA VIETGARDENS.</span></p>\r\n', NULL, NULL, NULL),
(6, 5, 2, 1, 'COMBO 6', 'combo-6', 'CB6', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/4-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/2-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/3-1.jpg', 1890000, '', 0, 4, 555, '<ul>\r\n	<li>\r\n		S&Uacute;P G&Agrave; NG&Ocirc; NON VỚI NẤM HƯƠNG</li>\r\n	<li>\r\n		NỘM HOA CHUỐI VỚI G&Agrave; X&Eacute;</li>\r\n	<li>\r\n		KHOAI M&Ocirc;N C&Agrave;N LONG</li>\r\n	<li>\r\n		G&Agrave; HẤP L&Aacute; CHANH ( G&Agrave; NƯỚNG T&Acirc;Y BẮC)</li>\r\n	<li>\r\n		T&Ocirc;M CHI&Ecirc;N MUỐI ỚT KIỂU VIET GARDENS</li>\r\n	<li>\r\n		B&Ograve; X&Agrave;O SỐT TI&Ecirc;U ĐEN&nbsp;</li>\r\n	<li>\r\n		RAU X&Agrave;O THEO M&Ugrave;A ( VD: CẢI CH&Iacute;P TRẦN SỐT NẤM, CẢI THẢO X&Agrave;O.....)</li>\r\n	<li>\r\n		CANH NGAO NẤU CHUA</li>\r\n	<li>\r\n		CƠM TRẮNG</li>\r\n	<li>\r\n		HOA QUẢ TR&Aacute;NG MIỆNG</li>\r\n</ul>\r\n', '<p>\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">CƠM NI&Ecirc;U 7 M&Oacute;N - TINH HOA ẨM THỰC VIỆT TỪ NH&Agrave; H&Agrave;NG VIETGARDENS</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">Thời tiết H&agrave; Nội đ&oacute;n đợt lạnh đầu ti&ecirc;n, c&ograve;n g&igrave; tuyệt vời hơn khi ngồi b&ecirc;n bạn b&egrave; v&agrave; người th&acirc;n thưởng thức m&oacute;n cơm ni&ecirc;u thơm phức c&ograve;n nghi ng&uacute;t kh&oacute;i v&agrave; m&ugrave;i thơm đặc trưng chỉ c&oacute; ở cơm ni&ecirc;u của Vietgardens.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Gi&aacute; rẻ bất ngờ&quot; Chỉ từ&nbsp;</span><a class="_58cn" data-ft="{" href="https://www.facebook.com/hashtag/49k?source=feed_text&amp;story_id=893676984096052" style="color: rgb(54, 88, 153); cursor: pointer; text-decoration: none; font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><span class="_5afx" style="direction: ltr; unicode-bidi: isolate;"><span aria-label="hashtag" class="_58cl _5afz" style="unicode-bidi: isolate; color: rgb(66, 103, 178);">#</span><span class="_58cm">49k</span></span></a><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;. Ưu đ&atilde;i đặc biệt hơn nữa giảm th&ecirc;m 10% cho tất cả c&aacute;c h&oacute;a đơn thanh to&aacute;n trước ng&agrave;y 15/11/2016.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">NH&Agrave; H&Agrave;NG VIETGARDENS LU&Ocirc;N CAM KẾT</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Thực phẩm sạch c&oacute; được nhập từ c&aacute;c đơn vị ph&acirc;n p</span><span class="text_exposed_show" style="display: inline; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">hối uy t&iacute;n. C&aacute;c m&oacute;n ngon được chế biết từ đội ngũ đầu bếp kinh nghiệm nhiều năm, k&egrave;m theo một số b&iacute; quyết gia truyền<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Hương vị cơm ni&ecirc;u của nh&agrave; h&agrave;ng Vietgardens l&agrave; hương vị thuần việt ( Vị thanh, hương thơm từ nước sốt rất Việt Nam, &iacute;t dầu mỡ ..) Rất kh&aacute;c với c&aacute;c nh&agrave; h&agrave;ng cơm ni&ecirc;u kh&aacute;c m&agrave; Qu&yacute; kh&aacute;ch đ&atilde; từng ăn.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Lu&ocirc;n cam kết c&oacute; đủ 7 m&oacute;n cơm ni&ecirc;u để Qu&yacute; kh&aacute;ch lựa chọn.<br />\r\n	- Cơm ni&ecirc;u X&aacute; x&iacute;u<br />\r\n	- Cơm ni&ecirc;u g&agrave; om nấm<br />\r\n	- Cơm ni&ecirc;u đ&ugrave;i g&agrave; nước<br />\r\n	- Cơm ni&ecirc;u b&ograve; om nấm<br />\r\n	- Cơm ni&ecirc;u hải sản<br />\r\n	- Cơm ni&ecirc;u sườn cotlet<br />\r\n	- Cơm ni&ecirc;u thập cẩm<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Kh&ocirc;ng gian đẹp với sức chứa 200 kh&aacute;ch c&ugrave;ng l&uacute;c. V&igrave; vậy Qu&yacute; kh&aacute;ch c&oacute; thể vừa thưởng thức m&oacute;n cơm ni&ecirc;u ngon tuyệt v&agrave; t&aacute;n chuyện cả ng&agrave;y m&agrave; kh&ocirc;ng lo ảnh hưởng tới ai.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện, nhiệt t&igrave;nh<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f9e/1/16/27a1.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">➡</span></span>&nbsp;CH&Uacute;NG T&Ocirc;I CAM KẾT HO&Agrave;N TIỀN 100% NẾU QU&Yacute; KH&Aacute;CH KH&Ocirc;NG H&Agrave;I L&Ograve;NG.<br />\r\n	Nh&agrave; h&agrave;ng Viet Gardens.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fc4/1/16/1f6a7.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Add: Số 2 l&ocirc; 4C Vũ Phạm H&agrave;m - Y&ecirc;n H&ograve;a - Cầu Giấy - H&agrave; Nội ( Mặt đường Vũ phạm H&agrave;m nh&eacute; )<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f4d/1/16/1f4de.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Điện thoại: 0432123354 HOTLINE: 0909790598&nbsp;<br />\r\n	N&Agrave;O ! H&Atilde;Y ĐẾN V&Agrave; CẢM NHẬN VỀ M&Oacute;N CƠM NI&Ecirc;U RẤT RI&Ecirc;NG CỦA VIETGARDENS.</span></p>\r\n', NULL, NULL, NULL);
INSERT INTO `sanpham` (`id`, `danhmuc1_id`, `danhmuc2_id`, `highlights`, `name`, `name_url`, `code`, `img`, `img1`, `img2`, `price`, `price_sale`, `price_percent`, `start`, `num_like`, `content_short`, `content`, `title`, `keyword`, `description`) VALUES
(7, 5, 2, 0, 'COMBO 7', 'combo-7', 'CB7', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/3-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/2-1.jpg', '/nhahang/view/admin/Themes/kcfinder/upload/images/thucdon/4-1.jpg', 1970000, '', 0, 4, 1234, '<ul>\r\n	<li>\r\n		S&Uacute;P HẢI SẢN VỚI MĂNG T&Acirc;Y</li>\r\n	<li>\r\n		NỘM NG&Oacute; SEN VỚI T&Ocirc;M THỊT</li>\r\n	<li>\r\n		KHOAI LANG CHI&Ecirc;N VỪNG</li>\r\n	<li>\r\n		C&Aacute; DI&Ecirc;U HỒNG HẤP X&Igrave; DẦU</li>\r\n	<li>\r\n		G&Agrave; HẤP L&Aacute; SEN</li>\r\n	<li>\r\n		B&Ograve; X&Agrave;O HẠT ĐIỀU</li>\r\n	<li>\r\n		NGỌN XU XU X&Agrave;O TỎI</li>\r\n	<li>\r\n		CƠM T&Aacute;M L&Aacute; NẾP</li>\r\n	<li>\r\n		CANH CẢI XANH NẤU NGAO</li>\r\n	<li>\r\n		HOA QUẢ TR&Aacute;NG MIỆNG</li>\r\n</ul>\r\n', '<p>\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">CƠM NI&Ecirc;U 7 M&Oacute;N - TINH HOA ẨM THỰC VIỆT TỪ NH&Agrave; H&Agrave;NG VIETGARDENS</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">Thời tiết H&agrave; Nội đ&oacute;n đợt lạnh đầu ti&ecirc;n, c&ograve;n g&igrave; tuyệt vời hơn khi ngồi b&ecirc;n bạn b&egrave; v&agrave; người th&acirc;n thưởng thức m&oacute;n cơm ni&ecirc;u thơm phức c&ograve;n nghi ng&uacute;t kh&oacute;i v&agrave; m&ugrave;i thơm đặc trưng chỉ c&oacute; ở cơm ni&ecirc;u của Vietgardens.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Gi&aacute; rẻ bất ngờ&quot; Chỉ từ&nbsp;</span><a class="_58cn" data-ft="{" href="https://www.facebook.com/hashtag/49k?source=feed_text&amp;story_id=893676984096052" style="color: rgb(54, 88, 153); cursor: pointer; text-decoration: none; font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><span class="_5afx" style="direction: ltr; unicode-bidi: isolate;"><span aria-label="hashtag" class="_58cl _5afz" style="unicode-bidi: isolate; color: rgb(66, 103, 178);">#</span><span class="_58cm">49k</span></span></a><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;. Ưu đ&atilde;i đặc biệt hơn nữa giảm th&ecirc;m 10% cho tất cả c&aacute;c h&oacute;a đơn thanh to&aacute;n trước ng&agrave;y 15/11/2016.</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">NH&Agrave; H&Agrave;NG VIETGARDENS LU&Ocirc;N CAM KẾT</span><br style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;" />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span><span style="color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;Thực phẩm sạch c&oacute; được nhập từ c&aacute;c đơn vị ph&acirc;n p</span><span class="text_exposed_show" style="display: inline; color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;">hối uy t&iacute;n. C&aacute;c m&oacute;n ngon được chế biết từ đội ngũ đầu bếp kinh nghiệm nhiều năm, k&egrave;m theo một số b&iacute; quyết gia truyền<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f51/1/16/1f449.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Hương vị cơm ni&ecirc;u của nh&agrave; h&agrave;ng Vietgardens l&agrave; hương vị thuần việt ( Vị thanh, hương thơm từ nước sốt rất Việt Nam, &iacute;t dầu mỡ ..) Rất kh&aacute;c với c&aacute;c nh&agrave; h&agrave;ng cơm ni&ecirc;u kh&aacute;c m&agrave; Qu&yacute; kh&aacute;ch đ&atilde; từng ăn.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Lu&ocirc;n cam kết c&oacute; đủ 7 m&oacute;n cơm ni&ecirc;u để Qu&yacute; kh&aacute;ch lựa chọn.<br />\r\n	- Cơm ni&ecirc;u X&aacute; x&iacute;u<br />\r\n	- Cơm ni&ecirc;u g&agrave; om nấm<br />\r\n	- Cơm ni&ecirc;u đ&ugrave;i g&agrave; nước<br />\r\n	- Cơm ni&ecirc;u b&ograve; om nấm<br />\r\n	- Cơm ni&ecirc;u hải sản<br />\r\n	- Cơm ni&ecirc;u sườn cotlet<br />\r\n	- Cơm ni&ecirc;u thập cẩm<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Kh&ocirc;ng gian đẹp với sức chứa 200 kh&aacute;ch c&ugrave;ng l&uacute;c. V&igrave; vậy Qu&yacute; kh&aacute;ch c&oacute; thể vừa thưởng thức m&oacute;n cơm ni&ecirc;u ngon tuyệt v&agrave; t&aacute;n chuyện cả ng&agrave;y m&agrave; kh&ocirc;ng lo ảnh hưởng tới ai.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fba/1/16/1f4e3.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Đội ngũ nh&acirc;n vi&ecirc;n th&acirc;n thiện, nhiệt t&igrave;nh<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f9e/1/16/27a1.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">➡</span></span>&nbsp;CH&Uacute;NG T&Ocirc;I CAM KẾT HO&Agrave;N TIỀN 100% NẾU QU&Yacute; KH&Aacute;CH KH&Ocirc;NG H&Agrave;I L&Ograve;NG.<br />\r\n	Nh&agrave; h&agrave;ng Viet Gardens.<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/fc4/1/16/1f6a7.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Add: Số 2 l&ocirc; 4C Vũ Phạm H&agrave;m - Y&ecirc;n H&ograve;a - Cầu Giấy - H&agrave; Nội ( Mặt đường Vũ phạm H&agrave;m nh&eacute; )<br />\r\n	<span class="_5mfr _47e3" style="line-height: 0; vertical-align: middle; margin: 0px 1px;"><img alt="" aria-hidden="1" class="img" height="16" src="https://www.facebook.com/images/emoji.php/v5/f4d/1/16/1f4de.png" style="border: 0px; vertical-align: -3px;" width="16" /><span class="_7oe" style="display: inline-block; font-size: 0px; width: 0px;">????</span></span>&nbsp;Điện thoại: 0432123354 HOTLINE: 0909790598&nbsp;<br />\r\n	N&Agrave;O ! H&Atilde;Y ĐẾN V&Agrave; CẢM NHẬN VỀ M&Oacute;N CƠM NI&Ecirc;U RẤT RI&Ecirc;NG CỦA VIETGARDENS.</span></p>\r\n', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `img`, `link`, `position`) VALUES
(1, 'TỐI NAY ĂN GÌ', '/nhahang/view/admin/Themes/kcfinder/upload/images/slide/res1_slide2.jpg', '', 1),
(2, 'CƠM NIÊU 7 MÓN', '/nhahang/view/admin/Themes/kcfinder/upload/images/slide/res1_slide2.jpg', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `facebook`, `twitter`, `youtube`, `google`, `linkedin`, `instagram`) VALUES
(1, 'https://www.facebook.com/vietgardens/', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tuyendung`
--

CREATE TABLE `tuyendung` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `booking_food`
--
ALTER TABLE `booking_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_table_id` (`booking_table_id`);

--
-- Indexes for table `booking_table`
--
ALTER TABLE `booking_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc1`
--
ALTER TABLE `danhmuc1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc2`
--
ALTER TABLE `danhmuc2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Indexes for table `danhmuc_tintuc`
--
ALTER TABLE `danhmuc_tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc1_id` (`danhmuc1_id`),
  ADD KEY `danhmuc2_id` (`danhmuc2_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuyendung`
--
ALTER TABLE `tuyendung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `booking_food`
--
ALTER TABLE `booking_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `booking_table`
--
ALTER TABLE `booking_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `danhmuc1`
--
ALTER TABLE `danhmuc1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `danhmuc2`
--
ALTER TABLE `danhmuc2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `danhmuc_tintuc`
--
ALTER TABLE `danhmuc_tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tuyendung`
--
ALTER TABLE `tuyendung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_food`
--
ALTER TABLE `booking_food`
  ADD CONSTRAINT `booking_food_ibfk_1` FOREIGN KEY (`booking_table_id`) REFERENCES `booking_table` (`id`);

--
-- Constraints for table `danhmuc2`
--
ALTER TABLE `danhmuc2`
  ADD CONSTRAINT `danhmuc2_ibfk_1` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc1` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc_tintuc` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`danhmuc1_id`) REFERENCES `danhmuc1` (`id`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`danhmuc2_id`) REFERENCES `danhmuc2` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
