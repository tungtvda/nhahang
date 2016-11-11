-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2016 at 03:43 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

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

CREATE TABLE IF NOT EXISTS `admin` (
  `Id` int(11) NOT NULL,
  `TenDangNhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `TenDangNhap`, `Full_name`, `MatKhau`) VALUES
(2, 'tungtv', 'Trần Văn Tùng', '1ef26373d3c9447baae66eabd52b1e0e9dc1b702c2f51d5322a67f1c42cf6f3ef0d513d04624c3bfee41b848cac59f4e6c29bf915d10c820c6c883bee00d3afb');

-- --------------------------------------------------------

--
-- Table structure for table `booking_food`
--

CREATE TABLE IF NOT EXISTS `booking_food` (
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

CREATE TABLE IF NOT EXISTS `booking_table` (
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

CREATE TABLE IF NOT EXISTS `config` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`Id`, `Logo`, `Icon`, `Name`, `Address`, `Phone`, `fax`, `Hotline`, `Email`, `Website`) VALUES
(1, '/nhahang/view/admin/Themes/kcfinder/upload/images/config/logo.png', '/nhahang/view/admin/Themes/kcfinder/upload/images/config/favicon.png', 'VIET GARDENS', ' Số 2 lô 4C Vũ Phạm Hàm, P. Yên Hòa, Q. Cầu Giấy', '0432123354', '', '0909790598', 'sales@mixtourist.com ', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL,
  `name_kh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE IF NOT EXISTS `danhmuc1` (
  `id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc1`
--

INSERT INTO `danhmuc1` (`id`, `position`, `name`, `name_url`, `img`, `title`, `keyword`, `description`) VALUES
(1, 1, 'COMBO', 'combo', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'COMBO', 'COMBO', 'COMBO'),
(2, 2, 'ALACARTE', 'alacarte', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'ALACARTE', 'ALACARTE', 'ALACARTE'),
(3, 3, 'SET MENU', 'set-menu', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'SET MENU', 'SET MENU', 'SET MENU'),
(4, 4, 'DRINK', 'drink', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'DRINK', 'DRINK', 'DRINK');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc2`
--

CREATE TABLE IF NOT EXISTS `danhmuc2` (
  `id` int(11) NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc2`
--

INSERT INTO `danhmuc2` (`id`, `danhmuc_id`, `position`, `name`, `name_url`, `img`, `title`, `keyword`, `description`) VALUES
(1, 1, 1, 'COMBO DÀNH CHO 2-4 NGƯỜI', 'combo-danh-cho-2-4-nguoi', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'COMBO DÀNH CHO 2-4 NGƯỜI', 'COMBO DÀNH CHO 2-4 NGƯỜI', 'COMBO DÀNH CHO 2-4 NGƯỜI'),
(2, 1, 2, 'LIÊN HOAN, TIỆC CUỐI NĂM, SINH NHẬT....', 'lien-hoan-tiec-cuoi-nam-sinh-nhat', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'LIÊN HOAN, TIỆC CUỐI NĂM, SINH NHẬT.....', 'LIÊN HOAN, TIỆC CUỐI NĂM, SINH NHẬT.....', 'LIÊN HOAN, TIỆC CUỐI NĂM, SINH NHẬT.....'),
(3, 2, 1, 'MÓN NỘM ( SALAD )', 'mon-nom--salad-', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MÓN NỘM ( SALAD )', 'MÓN NỘM ( SALAD )', 'MÓN NỘM ( SALAD )'),
(4, 2, 2, 'ĂN NHẸ', 'an-nhe', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'ĂN NHẸ', 'ĂN NHẸ', 'ĂN NHẸ'),
(5, 2, 3, 'CÁC MÓN RAU', 'cac-mon-rau', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN RAU', 'CÁC MÓN RAU', 'CÁC MÓN RAU'),
(6, 2, 4, 'CÁC MÓN VỀ LỢN', 'cac-mon-ve-lon', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN VỀ LỢN', 'CÁC MÓN VỀ LỢN', 'CÁC MÓN VỀ LỢN'),
(7, 2, 5, 'CÁC MÓN VỀ GÀ', 'cac-mon-ve-ga', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN VỀ GÀ ', 'CÁC MÓN VỀ GÀ ', 'CÁC MÓN VỀ GÀ '),
(8, 2, 6, 'CÁC MÓN VỀ BÒ', 'cac-mon-ve-bo', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN VỀ BÒ', 'CÁC MÓN VỀ BÒ', 'CÁC MÓN VỀ BÒ'),
(9, 2, 7, 'CÁC MÓN HẢI SẢN', 'cac-mon-hai-san', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN HẢI SẢN', 'CÁC MÓN HẢI SẢN', 'CÁC MÓN HẢI SẢN'),
(10, 2, 10, 'CÁ SONG', 'ca-song', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁ SONG', 'CÁ SONG', 'CÁ SONG'),
(11, 2, 11, 'CÁ CHÌNH', 'ca-chinh', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁ CHÌNH', 'CÁ CHÌNH', 'CÁ CHÌNH'),
(12, 2, 12, 'BABA', 'baba', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'BABA', 'BABA', 'BABA'),
(13, 2, 13, 'TÔM HÙM', 'tom-hum', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'TÔM HÙM', 'TÔM HÙM', 'TÔM HÙM'),
(14, 2, 14, 'CÁ QUỶ BIỂN', 'ca-quy-bien', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁ QUỶ BIỂN', 'CÁ QUỶ BIỂN', 'CÁ QUỶ BIỂN'),
(15, 2, 15, 'CẦY , DON, NHÍM', 'cay--don-nhim', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CẦY , DON, NHÍM', 'CẦY , DON, NHÍM', 'CẦY , DON, NHÍM'),
(16, 2, 16, 'LỢN MÁN', 'lon-man', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'LỢN MÁN', 'LỢN MÁN', 'LỢN MÁN'),
(17, 2, 17, 'NGỖNG', 'ngong', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'NGỖNG', 'NGỖNG', 'NGỖNG'),
(18, 2, 18, 'CÁC MÓN CANH', 'cac-mon-canh', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN CANH', 'CÁC MÓN CANH', 'CÁC MÓN CANH'),
(19, 2, 19, 'CÁC MÓN LẢU', 'cac-mon-lau', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CÁC MÓN LẢU', 'CÁC MÓN LẢU', 'CÁC MÓN LẢU'),
(20, 2, 20, 'CƠM NIÊU 7 MÓN', 'com-nieu-7-mon', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'CƠM NIÊU 7 MÓN', 'CƠM NIÊU 7 MÓN', 'CƠM NIÊU 7 MÓN'),
(21, 3, 1, 'MENU 100.000 VNĐ/ PAX', 'menu-100000-vnd-pax', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MENU 100.000 VNĐ/PAX', 'MENU 100.000 VNĐ/PAX', 'MENU 100.000 VNĐ/PAX'),
(22, 3, 2, 'MENU 120.000 VNĐ/ PAX', 'menu-120000-vnd-pax', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MENU 120.000 VNĐ/PAX', 'MENU 120.000 VNĐ/PAX', 'MENU 120.000 VNĐ/PAX'),
(23, 3, 3, 'MENU 150.000 VNĐ/ PAX', 'menu-150000-vnd-pax', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MENU 150.000 VNĐ/PAX', 'MENU 150.000 VNĐ/PAX', 'MENU 150.000 VNĐ/PAX'),
(24, 3, 4, 'MENU 200.000 VNĐ/ PAX', 'menu-200000-vnd-pax', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MENU 200.000 VNĐ/PAX', 'MENU 200.000 VNĐ/PAX', 'MENU 200.000 VNĐ/PAX'),
(25, 3, 5, 'MENU 250.000 VNĐ/ PAX', 'menu-250000-vnd-pax', '/nhahang/view/admin/Themes/kcfinder/upload/images/danhmuc/banner-about.jpg', 'MENU 250.000 VNĐ/ PAX', 'MENU 250.000 VNĐ/ PAX', 'MENU 250.000 VNĐ/ PAX');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc_tintuc`
--

CREATE TABLE IF NOT EXISTS `danhmuc_tintuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc_tintuc`
--

INSERT INTO `danhmuc_tintuc` (`id`, `name`, `name_url`, `img`, `title`, `keyword`, `description`, `position`) VALUES
(1, 'Discover', 'discover', '/mix/view/admin/Themes/kcfinder/upload/images/new/banner_725.jpg', 'Discover', 'Discover', 'Discover', 0),
(2, 'Delicious foods', 'delicious-foods', '/mix/view/admin/Themes/kcfinder/upload/images/new/banner_725.jpg', 'Delicious foods', 'Delicious foods', 'Delicious foods', 0);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `contents_short` text COLLATE utf8_unicode_ci,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_cn` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_cn` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `img`, `name`, `name_cn`, `title`, `title_cn`, `keyword`, `keyword_cn`, `description`, `description_cn`) VALUES
(1, '/mix/view/admin/Themes/kcfinder/upload/images/slide/anh-dep-du-lich-viet-nam-vietnam-travel-ha-long-bay-03.jpg', 'Home', '家', 'Mixtourist.com | Vietnam travel agent|Vietnam travel company|Indochina', '家', 'Mixtourist.com | Vietnam travel agent|Vietnam travel company|Indochina Tours', 'Mixtourist.com | Vietnam travel agent|Vietnam travel company|Indochina Tours', 'Mixtourist.com | Vietnam travel agent|Vietnam travel company|Indochina Tours', 'Mixtourist.com | Vietnam travel agent|Vietnam travel company|Indochina Tours'),
(2, '/mix/view/admin/Themes/kcfinder/upload/images/slide/anh-dep-du-lich-viet-nam-vietnam-travel-ha-long-bay-03.jpg', 'Excursion Tours', '游览之旅', 'Excursion Tours', '游览之旅', 'Excursion Tours', 'Excursion Tours', 'Excursion Tours', 'Excursion Tours'),
(3, '/mix/view/admin/Themes/kcfinder/upload/images/slide/anh-dep-du-lich-viet-nam-vietnam-travel-ha-long-bay-03.jpg', 'Vacation Packages', '度假套餐', 'Vacation Packages', '度假套餐', 'Vacation Packages', 'Vacation Packages', 'Vacation Packages', 'Vacation Packages'),
(4, '/mix/view/admin/Themes/kcfinder/upload/images/slide/anh-dep-du-lich-viet-nam-vietnam-travel-ha-long-bay-03.jpg', 'Cruise Tours', '游轮之旅', 'Cruise Tours', '游轮之旅', 'Cruise Tours', 'Cruise Tours', 'Cruise Tours', 'Cruise Tours'),
(5, '/mix/view/admin/Themes/kcfinder/upload/images/slide/anh-dep-du-lich-viet-nam-vietnam-travel-ha-long-bay-03.jpg', 'Multi Country', '多国', 'Multi Country', '多国', 'Multi Country', 'Multi Country', 'Multi Country', 'Multi Country'),
(6, '/mix/view/admin/Themes/kcfinder/upload/images/slide/anh-dep-du-lich-viet-nam-vietnam-travel-ha-long-bay-03.jpg', 'Vietnam Visa', '越南签证', 'Vietnam Visa', '越南签证', 'Vietnam Visa', 'Vietnam Visa', 'Vietnam Visa', 'Vietnam Visa'),
(7, '/mix/view/admin/Themes/kcfinder/upload/images/slide/anh-dep-du-lich-viet-nam-vietnam-travel-ha-long-bay-03.jpg', 'New', '新', 'New', '新', 'New', 'New', 'New', 'New'),
(8, NULL, 'Search', '搜索', 'Search', '搜索', 'Search', 'Search', 'Search', 'Search'),
(9, NULL, 'PACKAGES', '套餐', 'PACKAGES', '套餐', 'PACKAGES', 'PACKAGES', 'PACKAGES', 'PACKAGES'),
(10, NULL, 'PROMOTIONS', '促销', 'PROMOTIONS', '促销', 'PROMOTIONS', 'PROMOTIONS', 'PROMOTIONS', 'PROMOTIONS'),
(11, NULL, 'Video', '视频', 'Video', '视频', 'Video', 'Video', 'Video', 'Video'),
(12, NULL, 'Destination', 'Destination', 'Destination', 'Destination', 'Destination', 'Destination', 'Destination', 'Destination'),
(13, NULL, 'Request Form', 'Request Form', 'Request Form', 'Request Form', 'Request Form', 'Request Form', 'Request Form', 'Request Form');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `danhmuc_id`, `name`, `name_url`, `img`, `content`, `title`, `keyword`, `description`, `created`) VALUES
(1, 1, '4 field ravishingly beautiful shepherd in Vietnam', '4-field-ravishingly-beautiful-shepherd-in-vietnam', '/mix/view/admin/Themes/kcfinder/upload/images/new/dulich.jpg', '<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<strong style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">1. Đồng cừu An H&ograve;a, Ninh Thuận</strong></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Nằm c&aacute;ch trung t&acirc;m th&agrave;nh phố Phan Rang khoảng 16 km theo hướng T&acirc;y Bắc chạy theo quốc lộ 1A, đồng cừu An H&ograve;a (th&ocirc;n An H&ograve;a, x&atilde; Xu&acirc;n Hải, huyện Ninh Hải) l&agrave; địa điểm l&iacute; tưởng được nhiều du kh&aacute;ch gh&eacute; thăm.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-1-1475540830808.jpg" h="533" id="img_4e6fa430-89c9-11e6-b939-01b8b69b7923" photoid="4e6fa430-89c9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-1-1475540830808.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-1-1475540830808.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Với số lượng cừu rất lớn, từ v&agrave;i trăm cho đến cả ng&agrave;n con, du kh&aacute;ch c&oacute; thể tha hồ tham quan, ngắm cảnh, chụp ảnh cừu v&agrave; trải nghiệm cuộc sống của d&acirc;n du mục nơi đ&acirc;y. Giữa kh&ocirc;ng gian tĩnh lặng, bốn bề l&agrave; n&uacute;i non, được đứng giữa c&aacute;nh đồng rộng lớn, tận tai nghe tiếng cừu k&ecirc;u khi gặm cỏ, du kh&aacute;ch sẽ c&agrave;ng th&ecirc;m th&iacute;ch th&uacute; với khung cảnh qu&aacute; đỗi y&ecirc;n b&igrave;nh.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Những đồng cừu đẹp như tranh là điểm đến hút khách du lịch" data-original="https://dantri4.vcmedia.vn/2016/photo-2-1475540830823.jpg" h="533" id="img_4bcb8640-89c9-11e6-b939-01b8b69b7923" photoid="4bcb8640-89c9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-2-1475540830823.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-2-1475540830823.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Những đồng cừu đẹp như tranh l&agrave; điểm đến h&uacute;t kh&aacute;ch du lịch</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Khu vực hồ đập Thanh Sơn l&agrave; nơi thơ mộng nhất để chụp ảnh c&ugrave;ng những ch&uacute; cừu dễ thương. V&igrave; l&agrave; v&ugrave;ng đất kh&ocirc; hạn n&ecirc;n hồ rất &iacute;t nước, để lộ ra một khoảng kh&ocirc;ng rộng lớn với nhiều đ&aacute;m cỏ mọc lởm chởm, nhiều nơi xanh rờn,&hellip;l&agrave; nguồn thức ăn ch&iacute;nh cho c&aacute;c đ&agrave;n cừu.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<strong style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">2. Đồng cừu Suối Nghệ, B&agrave; Rịa - Vũng T&agrave;u</strong></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Đ&acirc;y l&agrave; c&aacute;nh đồng cừu nằm tr&ecirc;n đường Phước T&acirc;n - Hội B&agrave;i, huyện Ch&acirc;u Đức, tỉnh B&agrave; Rịa Vũng T&agrave;u. Khu vực n&agrave;y c&oacute; khoảng 3 đ&agrave;n cừu, mỗi đ&agrave;n chừng 150 con.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Đồng cừu Suối Nghệ, Bà Rịa - Vũng Tàu" data-original="https://dantri4.vcmedia.vn/2016/photo-3-1475540831510.jpg" h="485" id="img_4c2d2e40-89c9-11e6-b939-01b8b69b7923" photoid="4c2d2e40-89c9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-3-1475540831510.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-3-1475540831510.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Đồng cừu Suối Nghệ, B&agrave; Rịa - Vũng T&agrave;u</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Ban đầu, c&aacute;c hộ nu&ocirc;i cừu chủ yếu l&agrave; để b&aacute;n lấy thịt v&agrave; l&ocirc;ng. Tuy nhi&ecirc;n, sau khi c&oacute; du kh&aacute;ch t&igrave;m đến để chụp ảnh v&agrave; tham quan, người d&acirc;n đ&atilde; l&agrave;m dịch vụ phục vụ du kh&aacute;ch. Đặc biệt, để &ldquo;h&uacute;t&rdquo; kh&aacute;ch, chủ đ&agrave;n cừu đ&atilde; mua th&ecirc;m v&agrave;i ch&uacute; ngựa về thả chung, tạo n&ecirc;n những điểm nhấn hấp dẫn hơn. Cũng ch&iacute;nh l&yacute; do đ&oacute; m&agrave; nơi n&agrave;y trở th&agrave;nh&nbsp;<a draggable="false" href="http://www.diachianuong.vn/di-dau/chu-de-du-lich/dong-cuu-suoi-nghe-diem-chup-hinh-ly-tuong-tai-vung-tau.html" rel="nofollow" style="margin: 0px; padding: 0px; list-style: none; text-decoration: none; border: 0px; outline: none; color: rgb(6, 117, 148);" target="_blank">điểm chụp h&igrave;nh l&yacute; tưởng tại Vũng T&agrave;u</a>.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-4-1475540831435.jpg" h="565" id="img_4c0ed0d0-89c9-11e6-b939-01b8b69b7923" photoid="4c0ed0d0-89c9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-4-1475540831435.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-4-1475540831435.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Nổi bật giữa kh&ocirc;ng gian ngập m&agrave;u xanh của rau, đồng cỏ b&aacute;t ng&aacute;t, l&agrave; những ch&uacute; cừu trắng dễ thương đang thong dong gặm cỏ. Ngắm nh&igrave;n đồng cừu, bạn sẽ c&oacute; cảm gi&aacute;c như đang ở một n&ocirc;ng trại ch&acirc;u &Acirc;u.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Nếu muốn chụp những bức ảnh gần gũi với lo&agrave;i vật đ&aacute;ng y&ecirc;u n&agrave;y, bạn n&ecirc;n nhờ người chăn cừu hỗ trợ trong việc l&ugrave;a thả.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<strong style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">3. Đồng cừu ở Bi&ecirc;n H&ograve;a, Đồng Nai</strong></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	&Iacute;t ai biết rằng ở th&agrave;nh phố Bi&ecirc;n H&ograve;a cũng c&oacute; trang trại cừu, được kh&aacute; nhiều người, nhất l&agrave; giới trẻ chọn l&agrave;m địa điểm chụp ảnh. So với hai địa điểm tr&ecirc;n, nơi n&agrave;y nằm kh&aacute; gần TP Hồ Ch&iacute; Minh (chỉ c&aacute;ch khu trung t&acirc;m quận 1 hơn 30 km), rất th&iacute;ch hợp để đi chơi kết hợp chụp ảnh v&agrave;o cuối tuần.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-5-1475540831409.jpg" h="531" id="img_4c29abd1-89c9-11e6-b939-01b8b69b7923" photoid="4c29abd1-89c9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-5-1475540831409.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-5-1475540831409.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Đ&acirc;y l&agrave; nơi c&oacute; thể cho ra đời những bức ảnh trẻ trung, hiện đại giữa khung cảnh đồng qu&ecirc;</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-6-1475540830988.jpg" h="514" id="img_4c2984c0-89c9-11e6-b939-01b8b69b7923" photoid="4c2984c0-89c9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-6-1475540830988.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-6-1475540830988.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Trại cừu nằm ở phường Hố Nai, kh&aacute; kh&oacute; t&igrave;m. Du kh&aacute;ch khi đến tham quan địa điểm n&agrave;y n&ecirc;n nhờ đến sự trợ gi&uacute;p từ người d&acirc;n nơi đ&acirc;y để tr&aacute;nh bị lạc.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<strong style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">4. Đồng cừu ở Thảo nguy&ecirc;n hoa Long Bi&ecirc;n, H&agrave; Nội</strong></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Kh&ocirc;ng cần đến Ninh Thuận hay Đồng Nai xa x&ocirc;i, ngay trong l&ograve;ng H&agrave; Nội cũng c&oacute; một đồng cừu để bạn tha hồ chụp ảnh.</p>\r\n<div class="VCSortableInPreviewMode IMSCurrentEditorEditObject" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Nhiều bạn trẻ đến chụp ảnh cưới" data-original="https://dantri4.vcmedia.vn/2016/photo-7-1475540830859.jpg" h="533" id="img_4c2761e0-89c9-11e6-b939-01b8b69b7923" photoid="4c2761e0-89c9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-7-1475540830859.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-7-1475540830859.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Nhiều bạn trẻ đến chụp ảnh cưới</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Thảo nguy&ecirc;n hoa Long Bi&ecirc;n nằm tr&ecirc;n b&atilde;i Thạch Cầu, phường Long Bi&ecirc;n, đối diện với vườn nh&atilde;n Gia L&acirc;m l&agrave; địa điểm cho bạn thoả sức s&aacute;ng tạo với những bức h&igrave;nh tự nhi&ecirc;n nhất. Ở đ&acirc;y c&ograve;n c&oacute; cả những đ&agrave;n ngựa để tạo n&ecirc;n bức ảnh thi&ecirc;n nhi&ecirc;n vừa hoang sơ, vừa mộc mạc.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Ngay trong kh&ocirc;ng gian của Thảo nguy&ecirc;n hoa Long Bi&ecirc;n, c&aacute;c bạn cũng c&oacute; thể lựa chọn chụp ảnh c&ugrave;ng thảo nguy&ecirc;n hoa rực rỡ hay phim trường trong nh&agrave;.</p>\r\n', '4 field ravishingly beautiful shepherd in Vietnam', '4 field ravishingly beautiful shepherd in Vietnam', '4 field ravishingly beautiful shepherd in Vietnam', '2016-10-07 03:26:45'),
(2, 1, 'China built huge train station and the deepest under the Great Wall', 'china-built-huge-train-station-and-the-deepest-under-the-great-wall', '/mix/view/admin/Themes/kcfinder/upload/images/new/dulich.jpg', '<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Trong thời gian tới, Vạn L&yacute; Trường Th&agrave;nh sẽ c&oacute; nh&agrave; ga đường sắt tốc độ cao với kỷ lục về độ s&acirc;u v&agrave; lớn nhất thế giới. C&ocirc;ng tr&igrave;nh đầy tham vọng n&agrave;y l&agrave; một phần của 174 km đường sắt cao tốc, kết nối Bắc Kinh với Trương Gia Khẩu trong thời gian diễn ra Thế vận hội Olympic m&ugrave;a đ&ocirc;ng năm 2022 sắp tới. Theo đ&oacute;, h&agrave;nh kh&aacute;ch c&oacute; thể dừng ch&acirc;n tại B&aacute;t Đạt Lĩnh &ndash; đoạn thuộc Vạn L&yacute; Trường Th&agrave;nh c&aacute;ch Bắc Kinh chừng 80 km.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Vạn Lý Trường Thành là một trong những kỳ quan vỹ đại thời cổ đại còn tồn tại tới ngày nay" data-original="https://dantri4.vcmedia.vn/c05a76d21c/2016/10/03/img20161003154305571-88f98.jpg" h="492" id="img_462351" photoid="462351" rel="https://dantri4.vcmedia.vn/c05a76d21c/2016/10/03/img20161003154305571-88f98.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/c05a76d21c/2016/10/03/img20161003154305571-88f98.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="733" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Vạn L&yacute; Trường Th&agrave;nh l&agrave; một trong những kỳ quan vỹ đại thời cổ đại c&ograve;n tồn tại tới ng&agrave;y nay</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Được biết, nh&agrave; ga B&aacute;t Đạt Lĩnh nằm ở độ s&acirc;u 102m, với tổng diện t&iacute;ch ngầm đạt 36.000 m2, tương đương với độ lớn của 5 s&acirc;n b&oacute;ng đ&aacute; đạt ti&ecirc;u chuẩn. &ldquo;Nh&agrave; ga ngầm c&oacute; 3 tầng, biến nơi n&agrave;y trở th&agrave;nh ga đường sắt tốc độ cao lớn v&agrave; s&acirc;u nhất thế giới&rdquo;, &ocirc;ng Chen Bin, Gi&aacute;m đốc dự &aacute;n chia sẻ với China Daily.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Đây cũng là địa điểm hút khách du lịch bậc nhất Trung Quốc" data-original="https://dantri4.vcmedia.vn/c05a76d21c/2016/10/03/img20161003154306991-520a6.jpg" h="2047" id="img_462352" photoid="462352" rel="https://dantri4.vcmedia.vn/c05a76d21c/2016/10/03/img20161003154306991-520a6.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/c05a76d21c/2016/10/03/img20161003154306991-520a6.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="3071" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Đ&acirc;y cũng l&agrave; địa điểm h&uacute;t kh&aacute;ch du lịch bậc nhất Trung Quốc</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Dự kiến, tuyến đường sắt d&agrave;i 174 km sẽ ho&agrave;n th&agrave;nh v&agrave;o năm 2019. Vận tốc tối đa của t&agrave;u l&ecirc;n tới 350 km/h, nhận kh&aacute;ch từ ga Bắc Kinh đến c&aacute;c điểm tổ chức Olympic ở Trương Gia Khẩu chỉ trong v&ograve;ng 50 ph&uacute;t. Trong đ&oacute;, trạm B&aacute;t Đạt Lĩnh l&agrave; 1 trong 10 trạm nằm dọc theo tuyến đường.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Sơ đồ tuyến đường sắt" data-original="https://dantri4.vcmedia.vn/c05a76d21c/2016/10/03/img20161003154308535-04b48.jpg" h="312" id="img_462353" photoid="462353" rel="https://dantri4.vcmedia.vn/c05a76d21c/2016/10/03/img20161003154308535-04b48.jpg" src="https://dantri4.vcmedia.vn/c05a76d21c/2016/10/03/img20161003154308535-04b48.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="494" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Sơ đồ tuyến đường sắt</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Công trình sẽ sử dụng các kỹ thuật hiện đại để không ảnh hưởng tới Vạn Lý Trường Thành" data-original="https://dantri4.vcmedia.vn/c05a76d21c/2016/10/03/img20161003154309690-efedc.jpg" h="353" id="img_462354" photoid="462354" rel="https://dantri4.vcmedia.vn/c05a76d21c/2016/10/03/img20161003154309690-efedc.jpg" src="https://dantri4.vcmedia.vn/c05a76d21c/2016/10/03/img20161003154309690-efedc.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="640" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		C&ocirc;ng tr&igrave;nh sẽ sử dụng c&aacute;c kỹ thuật hiện đại để kh&ocirc;ng ảnh hưởng tới Vạn L&yacute; Trường Th&agrave;nh</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Được biết, trạm B&aacute;t Đạt Lĩnh l&agrave; th&aacute;ch thức lớn nhất của c&ocirc;ng tr&igrave;nh khi tọa lạc b&ecirc;n trong d&atilde;y n&uacute;i hiểm trở v&agrave; cũng l&agrave; một phần của kỳ quan cổ đại lớn nhất thế giới. Tuy nhi&ecirc;n, theo chia sẻ của Luo Duhao, Kỹ sư trưởng phụ tr&aacute;ch c&ocirc;ng tr&igrave;nh, c&aacute;c kỹ sư tham gia thiết kế sẽ sử dụng c&ocirc;ng nghệ ti&ecirc;n tiến bậc nhất nhằm kh&ocirc;ng ảnh hưởng tới Vạn L&yacute; Trường Th&agrave;nh.</p>\r\n', 'China built huge train station and the deepest under the Great Wall', 'China built huge train station and the deepest under the Great Wall', 'China built huge train station and the deepest under the Great Wall', '2016-10-07 03:26:42');
INSERT INTO `news` (`id`, `danhmuc_id`, `name`, `name_url`, `img`, `content`, `title`, `keyword`, `description`, `created`) VALUES
(3, 1, 'Filled with emotion with ', 'filled-with-emotion-with-', '/mix/view/admin/Themes/kcfinder/upload/images/new/dulich.jpg', '<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<i style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">T&ocirc;i chỉ c&oacute; ng&agrave;y h&ocirc;m nay</i></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<i style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">Để cười v&agrave; để vui sống</i></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<i style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">Để t&igrave;m niềm vui b&eacute; bỏng</i></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<i style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">Sống một lần cho thật đẹp</i></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<i style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">Để kh&ocirc;ng hối tiếc ng&agrave;y mai.</i></p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-1-1475481099904.jpg" h="797" id="img_415fe4c0-893e-11e6-b939-01b8b69b7923" photoid="415fe4c0-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-1-1475481099904.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-1-1475481099904.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1195" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-2-1475481101508.jpg" h="796" id="img_42292830-893e-11e6-b939-01b8b69b7923" photoid="42292830-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-2-1475481101508.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-2-1475481101508.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1194" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Chạm ng&otilde; M&ugrave; Cang Chải khi nắng chiều đ&atilde; tắt, c&aacute;i l&agrave;nh lạnh ngọt ng&agrave;o thấm v&agrave;o da thịt khiến ai cũng phải k&eacute;o vội c&aacute;nh &aacute;o sơ mi, kho&aacute;c th&ecirc;m chiếc &aacute;o gi&oacute; v&agrave;&hellip; s&agrave; ngay v&agrave;o h&agrave;ng thịt xi&ecirc;n nướng&hellip; Để được ngồi s&aacute;t b&ecirc;n nhau c&ugrave;ng nh&acirc;m nhi vị cay nh&egrave; nhẹ của rượu hoa Artiso h&ograve;a quyện c&ugrave;ng vị hăng b&ugrave;i b&ugrave;i của cải m&egrave;o trong xi&ecirc;n thịt nướng&hellip; Để c&ugrave;ng chia sẻ cảm x&uacute;c ấm &aacute;p l&agrave; lạ giữa thi&ecirc;n nhi&ecirc;n hoang sơ...</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	S&aacute;ng h&ocirc;m sau khi mặt trời như c&ograve;n vương vấn m&atilde;i chẳng chịu nh&ocirc; l&ecirc;n khỏi những d&atilde;y n&uacute;i xanh mờ trong sương sớm, ch&uacute;ng t&ocirc;i thu&ecirc; một d&agrave;n xe m&aacute;y &ldquo;kh&ocirc;ng kịp độ&rdquo; để thỏa ch&iacute; kh&aacute;m ph&aacute; những cung đường nơi đ&acirc;y.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Đồi M&acirc;m X&ocirc;i - trung t&acirc;m v&agrave; cũng l&agrave; linh hồn của m&ugrave;a v&agrave;ng M&ugrave; Cang Chải l&agrave;m say l&ograve;ng kh&aacute;ch đường xa bằng vẻ đẹp h&ugrave;ng vĩ v&agrave; rất đỗi n&ecirc;n thơ m&agrave; chắc chắn kh&ocirc;ng một loại m&aacute;y ảnh n&agrave;o thể hiện hết được, khiến ta bỗng dưng muốn dấn tới th&ecirc;m một v&agrave;i bước nữa để chớp được những tia nắng đầu ti&ecirc;n lấp l&oacute; xa xa, hoặc lui lại một bước để gần hơn những c&aacute;nh đồng l&uacute;a h&ograve;ng n&iacute;u giữ khoảnh khắc tuyệt vời n&agrave;y.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-3-1475481109930.jpg" h="832" id="img_448abee0-893e-11e6-b939-01b8b69b7923" photoid="448abee0-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-3-1475481109930.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-3-1475481109930.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1248" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-4-1475481101703.jpg" h="838" id="img_42336160-893e-11e6-b939-01b8b69b7923" photoid="42336160-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-4-1475481101703.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-4-1475481101703.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1257" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="\r\nGiữa khung cảnh Xanh – Vàng, màu đỏ thắm của tà áo dài tha thướt cùng những chiếc áo in biểu tượng sao vàng trên nền đỏ quả là rất bắt mắt…\r\n\r\n\r\n" data-original="https://dantri4.vcmedia.vn/2016/photo-5-1475481101624.jpg" h="845" id="img_421fd960-893e-11e6-b939-01b8b69b7923" photoid="421fd960-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-5-1475481101624.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-5-1475481101624.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1267" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<p style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none; font-stretch: normal; line-height: 20px;">\r\n			Giữa khung cảnh Xanh &ndash; V&agrave;ng, m&agrave;u đỏ thắm của t&agrave; &aacute;o d&agrave;i tha thướt c&ugrave;ng những chiếc &aacute;o in biểu tượng sao v&agrave;ng tr&ecirc;n nền đỏ quả l&agrave; rất bắt mắt&hellip;</p>\r\n		<p style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none; font-stretch: normal; line-height: 20px;">\r\n			&nbsp;</p>\r\n	</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="\r\nRời đồi Mâm Xôi, chúng tôi đi tiếp khoảng 2km cùng một người dẫn đường bản địa tới thác Pú Nhu thuộc xã La Pán Tẩn. Vừa nếm trải những cảm giác mạnh với độ cao, cả đoàn tiếp tục ngấm cái sự mạnh đó với những pha liên tục đổ dốc bởi thác nằm sâu tít dưới thung lũng.\r\n\r\n\r\n" data-original="https://dantri4.vcmedia.vn/2016/photo-6-1475481101761.jpg" h="919" id="img_422864e0-893e-11e6-b939-01b8b69b7923" photoid="422864e0-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-6-1475481101761.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-6-1475481101761.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1379" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<p style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none; font-stretch: normal; line-height: 20px;">\r\n			Rời đồi M&acirc;m X&ocirc;i, ch&uacute;ng t&ocirc;i đi tiếp khoảng 2km c&ugrave;ng một người dẫn đường bản địa tới th&aacute;c P&uacute; Nhu thuộc x&atilde; La P&aacute;n Tẩn. Vừa nếm trải những cảm gi&aacute;c mạnh với độ cao, cả đo&agrave;n tiếp tục ngấm c&aacute;i sự mạnh đ&oacute; với những pha li&ecirc;n tục đổ dốc bởi th&aacute;c nằm s&acirc;u t&iacute;t dưới thung lũng.</p>\r\n		<p style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none; font-stretch: normal; line-height: 20px;">\r\n			&nbsp;</p>\r\n	</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Đường ven suối nửa tự nhiên nửa nhân tạo với những thân cây vắt ngang làm cầu, với vách đá nhiều khi tìm mãi không có chỗ bám… gợi nhớ “Cho tôi một vé đi tuổi thơ” bởi cảm giác được hòa mình vào thiên nhiên hùng vĩ, như được xuyên không trở về tuổi thơ chân đất chạy trên đồng làng… trốn mẹ lội suối bắt cá, đua nhau bơi vượt sông…" data-original="https://dantri4.vcmedia.vn/2016/photo-7-1475481101322.jpg" h="872" id="img_42329e10-893e-11e6-b939-01b8b69b7923" photoid="42329e10-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-7-1475481101322.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-7-1475481101322.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1162" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Đường ven suối nửa tự nhi&ecirc;n nửa nh&acirc;n tạo với những th&acirc;n c&acirc;y vắt ngang l&agrave;m cầu, với v&aacute;ch đ&aacute; nhiều khi t&igrave;m m&atilde;i kh&ocirc;ng c&oacute; chỗ b&aacute;m&hellip; gợi nhớ &ldquo;Cho t&ocirc;i một v&eacute; đi tuổi thơ&rdquo; bởi cảm gi&aacute;c được h&ograve;a m&igrave;nh v&agrave;o thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ, như được xuy&ecirc;n kh&ocirc;ng trở về tuổi thơ ch&acirc;n đất chạy tr&ecirc;n đồng l&agrave;ng&hellip; trốn mẹ lội suối bắt c&aacute;, đua nhau bơi vượt s&ocirc;ng&hellip;</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Hết lội qua con suối nước đến đầu gối và chảy khá xiết…" data-original="https://dantri4.vcmedia.vn/2016/photo-8-1475481101603.jpg" h="883" id="img_422fb7e0-893e-11e6-b939-01b8b69b7923" photoid="422fb7e0-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-8-1475481101603.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-8-1475481101603.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1178" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Hết lội qua con suối nước đến đầu gối v&agrave; chảy kh&aacute; xiết&hellip;</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="\r\n... Tới chạy chân trần xuyên ruộng ngô…\r\n" data-original="https://dantri4.vcmedia.vn/2016/photo-9-1475481109196.jpg" h="916" id="img_448a97d0-893e-11e6-b939-01b8b69b7923" photoid="448a97d0-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-9-1475481109196.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-9-1475481109196.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1222" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<p style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none; font-stretch: normal; line-height: 20px;">\r\n			... Tới chạy ch&acirc;n trần xuy&ecirc;n ruộng ng&ocirc;&hellip;</p>\r\n	</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="… Và luồn lách giữa hoa thơm cỏ dại" data-original="https://dantri4.vcmedia.vn/2016/photo-10-1475481101672.jpg" h="919" id="img_42204e90-893e-11e6-b939-01b8b69b7923" photoid="42204e90-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-10-1475481101672.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-10-1475481101672.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1379" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&hellip; V&agrave; luồn l&aacute;ch giữa hoa thơm cỏ dại</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Tinh thần tập thể c&agrave;ng c&oacute; dịp ph&aacute;t huy khi ta nắm thật chắc tay nhau c&ugrave;ng tiến bước qua hết chặng đường ngoằn ngo&egrave;o n&agrave;y tới đoạn đường gồ ghề sỏi đ&aacute; kh&aacute;c.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-11-1475481101546.jpg" h="919" id="img_42204e92-893e-11e6-b939-01b8b69b7923" photoid="42204e92-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-11-1475481101546.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-11-1475481101546.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1379" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Xa thị th&agrave;nh kh&ocirc;ng thiếu đồ ăn thức uống, về nơi n&uacute;i rừng để được h&iacute;t h&agrave; hương thơm của tr&aacute;i ổi rừng mới ch&iacute;n&hellip; Bứt được một v&agrave;i tr&aacute;i th&igrave; sướng hết biết để chia nhau v&agrave; vừa ăn vừa xu&yacute;t xoa khen ngon.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Niềm vui hái được trái ổi rừng chín ngay bên suối" data-original="https://dantri4.vcmedia.vn/2016/photo-12-1475481107611.jpg" h="883" id="img_442d5ca0-893e-11e6-b939-01b8b69b7923" photoid="442d5ca0-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-12-1475481107611.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-12-1475481107611.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1177" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Niềm vui h&aacute;i được tr&aacute;i ổi rừng ch&iacute;n ngay b&ecirc;n suối</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	H&agrave;nh trang qua suối kh&ocirc;ng c&oacute; balo, kh&ocirc;ng mang gi&agrave;y d&eacute;p, chỉ vẻn vẹn một kh&uacute;c c&acirc;y vừa đủ chắc l&agrave;m gậy chống. Nước chảy cuồn cuộn l&agrave;m đ&ocirc;i tay ta phải b&aacute;m chắc bạn đường v&agrave; đ&ocirc;i ch&acirc;n lu&ocirc;n phải gồng l&ecirc;n chống đỡ.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Sang đến bờ bên kia, ai cũng thở hổn hển nhưng vẫn tràn đầy hưng phấn bởi đã thành công trong cuộc chinh phục con thác." data-original="https://dantri4.vcmedia.vn/2016/photo-13-1475481107570.jpg" h="894" id="img_43bb12d0-893e-11e6-b939-01b8b69b7923" photoid="43bb12d0-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-13-1475481107570.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-13-1475481107570.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1342" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Sang đến bờ b&ecirc;n kia, ai cũng thở hổn hển nhưng vẫn tr&agrave;n đầy hưng phấn bởi đ&atilde; th&agrave;nh c&ocirc;ng trong cuộc chinh phục con th&aacute;c.</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="\r\nChặng về đã quen chân hơn vậy mà có lẽ do đã thấm mệt nên chúng tôi bị rơi hành lý xuống suối, phải trải ra hong cho khô trên phiến đá.\r\n" data-original="https://dantri4.vcmedia.vn/2016/photo-14-1475481106942.jpg" h="864" id="img_442d0e80-893e-11e6-b939-01b8b69b7923" photoid="442d0e80-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-14-1475481106942.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-14-1475481106942.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1296" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<p style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none; font-stretch: normal; line-height: 20px;">\r\n			Chặng về đ&atilde; quen ch&acirc;n hơn vậy m&agrave; c&oacute; lẽ do đ&atilde; thấm mệt n&ecirc;n ch&uacute;ng t&ocirc;i bị rơi h&agrave;nh l&yacute; xuống suối, phải trải ra hong cho kh&ocirc; tr&ecirc;n phiến đ&aacute;.</p>\r\n	</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-15-1475481109495.jpg" h="790" id="img_452ddcb0-893e-11e6-b939-01b8b69b7923" photoid="452ddcb0-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-15-1475481109495.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-15-1475481109495.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1053" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-16-1475481101841.jpg" h="718" id="img_42333a50-893e-11e6-b939-01b8b69b7923" photoid="42333a50-893e-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-16-1475481101841.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-16-1475481101841.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1077" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Sau năm tiếng đồng hồ chinh phục con th&aacute;c, ch&uacute;ng t&ocirc;i đi tiếp tới bản người M&ocirc;ng thuộc x&atilde; La P&aacute;n Tẩn.Chiều đ&atilde; muộn, ch&uacute;ng t&ocirc;i gh&eacute; nh&agrave; một gia đ&igrave;nh người M&ocirc;ng, được chủ nh&agrave; cởi mở mời ngồi quanh bếp lửa hồng thơm m&ugrave;i cơm vừa ch&iacute;n tới&hellip;</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Chưa c&oacute; điện lưới, người d&acirc;n nơi đ&acirc;y tự tạo &aacute;nh s&aacute;ng bằng thủy điện nhỏ - ngăn suối cho nước chảy l&agrave;m quay m&aacute;y ph&aacute;t điện&hellip; Cả đo&agrave;n mừng h&uacute;m nhận ngay lời của chủ nh&agrave; mời ở lại ăn cơm dưới những d&acirc;y bắp ng&ocirc; v&agrave;ng &oacute;ng v&agrave; ngước nh&igrave;n ra xa qua khung cửa l&agrave; cả một bầu trời đầy sao.</p>\r\n<div class="VCSortableInPreviewMode IMSCurrentEditorEditObject" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="\r\n\r\n\r\nSáng ra trước khi chia tay, phát hiện hai cái xe cút kít bằng gỗ tự chế dành cho trẻ con dùng để trượt trên những con đường đất dốc vừa như một thứ đồ chơi, vừa như phương tiện đi lại, ai trong chúng tôi cũng muốn thử thêm cảm giác cùng con trẻ vùng cao xem sao.\r\n" data-original="https://dantri4.vcmedia.vn/2016/cutkit-1475481771256.jpg" h="418" id="img_cc3466b0-893f-11e6-b939-01b8b69b7923" photoid="cc3466b0-893f-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/cutkit-1475481771256.jpg" src="https://dantri4.vcmedia.vn/2016/cutkit-1475481771256.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="400" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<p style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none; font-stretch: normal; line-height: 20px;">\r\n			&nbsp;</p>\r\n		<p style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none; font-stretch: normal; line-height: 20px;">\r\n			S&aacute;ng ra trước khi chia tay, ph&aacute;t hiện hai c&aacute;i xe c&uacute;t k&iacute;t bằng gỗ tự chế d&agrave;nh cho trẻ con d&ugrave;ng để trượt tr&ecirc;n những con đường đất dốc vừa như một thứ đồ chơi, vừa như phương tiện đi lại, ai trong ch&uacute;ng t&ocirc;i cũng muốn thử th&ecirc;m cảm gi&aacute;c c&ugrave;ng con trẻ v&ugrave;ng cao xem sao.</p>\r\n	</div>\r\n</div>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Đong đầy xúc cảm với Mù Cang Chải." data-original="https://dantri4.vcmedia.vn/2016/cutkita-1475481771259.jpg" h="400" id="img_cc8e6d90-893f-11e6-b939-01b8b69b7923" photoid="cc8e6d90-893f-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/cutkita-1475481771259.jpg" src="https://dantri4.vcmedia.vn/2016/cutkita-1475481771259.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="600" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Đong đầy x&uacute;c cảm với M&ugrave; Cang Chải.</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 'Filled with emotion with ', 'Filled with emotion with ', 'Filled with emotion with ', '2016-10-07 03:26:39'),
(4, 1, 'Vietnamese dishes wanted to hear the name ', 'vietnamese-dishes-wanted-to-hear-the-name-', '/mix/view/admin/Themes/kcfinder/upload/images/new/dulich.jpg', '<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<strong style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">1. Thịt chuột</strong></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Nhiều nơi thuộc đồng bằng Bắc Bộ v&agrave; s&ocirc;ng Cửu Long, chuột được giao b&aacute;n rộng r&atilde;i như một nhu yếu phẩm cần thiết cho bữa ăn h&agrave;ng ng&agrave;y. Thậm ch&iacute;, tại nhiều miền qu&ecirc;, thịt chuột c&ograve;n được coi l&agrave; m&oacute;n đặc sản kh&ocirc;ng thể thiếu trong những dịp lễ tết trọng đại. Kh&ocirc;ng chỉ vậy, người Việt chế biến chuột c&ograve;n rất cầu k&igrave; v&agrave;...s&aacute;ng tạo với tr&ecirc;n 30 m&oacute;n ăn.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-1-1475218109432.jpg" h="534" id="img_e7322ff0-86d9-11e6-b939-01b8b69b7923" photoid="e7322ff0-86d9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-1-1475218109432.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-1-1475218109432.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242); text-align: center;">\r\n	<i style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">Thịt chuột được coi l&agrave; đặc sản.</i></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Lo&agrave;i gặm nhấm n&agrave;y được nhiều người s&agrave;nh ăn ưa chuộng v&igrave; thức ăn của ch&uacute;ng l&agrave; mầm cỏ non, khoai, sắn, l&uacute;a&hellip; n&ecirc;n thịt chuột thơm như thịt g&agrave; nhưng mềm v&agrave; dai hơn. Thịt chuột đồng được chế biến th&agrave;nh c&aacute;c m&oacute;n như: nấu giả cầy, nướng muối ớt, x&agrave;o dưa&hellip;</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<strong style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">2. Đu&ocirc;ng dừa</strong></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	L&agrave; một loại s&acirc;u trong đọt c&acirc;y dừa, đu&ocirc;ng lu&ocirc;n được giới s&agrave;nh ăn đ&aacute;nh gi&aacute; cao về độ gi&ograve;n, vị b&eacute;o ngậy, thơm lừng độc đ&aacute;o. Vẻ ngo&agrave;i mập tr&ograve;n v&agrave; mềm nhũn của đu&ocirc;ng dừa khiến nhiều người nh&igrave;n b&ecirc;n ngo&agrave;i đều thấy &ldquo;khiếp v&iacute;a&rdquo;, tuy nhi&ecirc;n đ&acirc;y lại l&agrave; m&oacute;n ăn đặc sản của người miền T&acirc;y.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-2-1475218111195.jpg" h="450" id="img_e7f57ff0-86d9-11e6-b939-01b8b69b7923" photoid="e7f57ff0-86d9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-2-1475218111195.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-2-1475218111195.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242); text-align: center;">\r\n	<i style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">Đu&ocirc;ng dừa tắm mắm.</i></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Thịt đu&ocirc;ng dừa được chế biến th&agrave;nh c&aacute;c m&oacute;n nướng, chi&ecirc;n, x&agrave;o tỏi, hấp l&aacute; chanh nhưng phổ biến nhất phải kể đến đu&ocirc;ng dừa tắm mắm. Những người &ldquo;nghiện&rdquo; m&oacute;n ăn n&agrave;y cho rằng, c&aacute;i th&uacute; của việc thưởng thức đu&ocirc;ng dừa l&agrave; khi nước trong con đu&ocirc;ng dừa tr&agrave;n ra, đầy vị b&eacute;o, sau đ&oacute; thấm v&agrave;o khoang mi&ecirc;ng, v&ograve;m họng, khiến những ai đ&atilde; can đảm ăn thử sẽ bị hấp dẫn lạ l&ugrave;ng.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<strong style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">3. S&acirc;u măng</strong></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	L&agrave; m&oacute;n ăn xuất hiện nhiều v&agrave;o m&ugrave;a mưa ẩm ướt, s&acirc;u măng l&agrave; m&oacute;n đặc sản của v&ugrave;ng n&uacute;i ph&iacute;a T&acirc;y xứ Thanh.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-3-1475218110473.jpg" h="631" id="img_e7f57ff2-86d9-11e6-b939-01b8b69b7923" photoid="e7f57ff2-86d9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-3-1475218110473.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-3-1475218110473.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242); text-align: center;">\r\n	<i style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">S&acirc;u măng c&oacute; nhiều c&aacute;ch chế biến.</i></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Người đi rừng t&igrave;m đến những c&acirc;y măng nứa th&acirc;n hơi cong queo, vỏ ngo&agrave;i hơi th&acirc;m, h&eacute;o ngọn, mắt c&oacute; u th&igrave; biết rằng đ&acirc;y đ&iacute;ch thị l&agrave; nơi tr&uacute; ngụ của những ch&uacute; s&acirc;u b&eacute;o nhất. Sau khi đốn hạ th&acirc;n măng, người bắt s&acirc;u sẽ tr&uacute;t s&acirc;u trong ống nứa v&agrave;o giỏ. S&acirc;u măng to như cọng rau muống, m&agrave;u trắng sữa, d&agrave;i độ 2 đốt ng&oacute;n tay.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Ngo&agrave;i để ng&acirc;m rượu, s&acirc;u măng cũng xuất hiện nhiều trong c&aacute;c bữa ăn hằng ng&agrave;y. S&acirc;u măng b&eacute;o, b&ugrave;i, c&oacute; gi&aacute; trị dinh dưỡng cao v&agrave; l&agrave; thức ăn sạch, tốt cho sức khỏe.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<strong style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">4. Kỳ nh&ocirc;ng</strong></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Kỳ nh&ocirc;ng sống phổ biến ở v&ugrave;ng đồi c&aacute;t ở B&igrave;nh Thuận. Thịt con vật n&agrave;y ăn rất thơm, v&agrave; chứa nhiều chất dinh dưỡng.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-4-1475218110292.jpg" h="600" id="img_e7be1c40-86d9-11e6-b939-01b8b69b7923" photoid="e7be1c40-86d9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-4-1475218110292.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-4-1475218110292.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Người ta thường chế biến kỳ nh&ocirc;ng th&agrave;nh c&aacute;c m&oacute;n như gỏi kỳ nh&ocirc;ng l&aacute; me, nấu canh chua l&aacute; me, nướng muối hoặc hầm thuốc bắc.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<strong style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">5. D&uacute;i</strong></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Con d&uacute;i c&oacute; những đặc điểm gần giống với con chuột, được xem l&agrave; một trong những m&oacute;n đặc sản vừa d&acirc;n d&atilde;, vừa ti&ecirc;u biểu của v&ugrave;ng rừng n&uacute;i T&acirc;y Nguy&ecirc;n, H&ograve;a B&igrave;nh hay người Mường ở Ph&uacute; Thọ.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-5-1475218110345.jpg" h="600" id="img_e7bcbcb0-86d9-11e6-b939-01b8b69b7923" photoid="e7bcbcb0-86d9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-5-1475218110345.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-5-1475218110345.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	D&uacute;i c&oacute; thể chế biến th&agrave;nh nhiều m&oacute;n như hấp, x&agrave;o lăn, nấu rượu mận... Nếu đ&atilde; một lần thưởng thức m&oacute;n đặc sản n&agrave;y th&igrave; chắc hẳn bạn sẽ kh&ocirc;ng thể n&agrave;o qu&ecirc;n hương vị thơm ngon, m&aacute;t v&agrave; gi&agrave;u đạm của d&uacute;i rừng.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	<strong style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">6. Dơi</strong></p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Dơi được coi l&agrave; m&oacute;n nhậu kho&aacute;i khẩu của người d&acirc;n miền T&acirc;y. C&oacute; hai loại dơi ch&iacute;nh: dơi sen v&agrave; dơi quạ. Dơi quạ l&agrave; dơi đen v&agrave; to con hơn, dơi sen m&agrave;u l&ocirc;ng chuột. Theo lời truyền tụng, hai loại dơi n&agrave;y đều xấu v&agrave; h&ocirc;i, nhưng dơi bắt được ngửi c&agrave;ng h&ocirc;i th&igrave; thịt lại c&agrave;ng thơm.</p>\r\n<div class="VCSortableInPreviewMode IMSCurrentEditorEditObject" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="Thịt dơi nướng." data-original="https://dantri4.vcmedia.vn/2016/photo-6-1475218112199.jpg" h="532" id="img_e829af50-86d9-11e6-b939-01b8b69b7923" photoid="e829af50-86d9-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-6-1475218112199.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-6-1475218112199.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="800" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		Thịt dơi nướng.</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Dơi c&oacute; nhiều m&oacute;n, nhưng được nhiều người ưa chuộng nhất vẫn l&agrave; ch&aacute;o dơi. Thịt dơi băm nhỏ hoặc xắt miếng, bắc chảo l&ecirc;n khử tỏi cho thơm, rồi để thịt v&agrave;o x&agrave;o. Dơi vừa ch&iacute;n th&igrave; lấy ra cho v&agrave;o nồi ch&aacute;o, n&ecirc;m nếm vừa ngon th&igrave; d&ugrave;ng t&ocirc; đ&atilde; chuẩn bị sẵn, rau bắp chuối để dưới v&agrave; m&uacute;c ch&aacute;o v&agrave;o, ăn n&oacute;ng.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Ngo&agrave;i ra, d&acirc;n nhậu miền T&acirc;y c&ograve;n c&oacute; thể thưởng thức m&oacute;n dơi kh&igrave;a nước dừa, trộn gỏi bắp cải, cuốn b&aacute;nh tr&aacute;ng chấm nước mắm chua ngọt. Để &aacute;t hơi h&ocirc;i của dơi, khi chế biến thường rắc th&ecirc;m một &iacute;t ti&ecirc;u, h&agrave;nh ng&ograve;.</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Theo quan niệm người miền T&acirc;y, thịt dơi c&oacute; thể chữa được rất nhiều bệnh như ho, lao phổi.</p>\r\n', 'Vietnamese dishes wanted to hear the name ', 'Vietnamese dishes wanted to hear the name ', 'Vietnamese dishes wanted to hear the name ', '2016-10-07 03:26:37');
INSERT INTO `news` (`id`, `danhmuc_id`, `name`, `name_url`, `img`, `content`, `title`, `keyword`, `description`, `created`) VALUES
(5, 1, 'Admire the world''s most expensive type of chili with a cost of half a billion kilograms', 'admire-the-worlds-most-expensive-type-of-chili-with-a-cost-of-half-a-billion-kilograms', '/mix/view/admin/Themes/kcfinder/upload/images/new/dulich.jpg', '<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	C&ugrave;ng với vani v&agrave; hoa nghệ t&acirc;y, ớt Aji Charapita ở Peru được xếp v&agrave;o h&agrave;ng một trong những loại gia vị đắt gi&aacute; nhất thế giới.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-1-1475106640188.jpg" h="407" id="img_5d7ae710-85d6-11e6-b939-01b8b69b7923" photoid="5d7ae710-85d6-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-1-1475106640188.jpg" src="https://dantri4.vcmedia.vn/2016/photo-1-1475106640188.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="600" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Ớt Aji Charapita từng mọc hoang ở c&aacute;c khu rừng ph&iacute;a bắc tại Peru</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	C&oacute; nguồn gốc từ những khu rừng thuộc ph&iacute;a bắc của Peru, ớt Aji Charapita từng l&agrave; loại c&acirc;y sống hoang d&atilde;, mới được người d&acirc;n đưa về để trồng với mục đ&iacute;ch thương mại. Loại ớt hạt ti&ecirc;u n&agrave;y c&oacute; k&iacute;ch thước chỉ tương đương với hạt đậu. Khi d&ugrave;ng tươi, thực kh&aacute;ch c&oacute; thể cảm nhận được hương vị tr&aacute;i c&acirc;y mạnh mẽ, rất ph&ugrave; hợp cho m&oacute;n salat hay nước sốt vị nhiệt đới.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-2-1475106640966.jpg" h="473" id="img_5ddf9c50-85d6-11e6-b939-01b8b69b7923" photoid="5ddf9c50-85d6-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-2-1475106640966.jpg" src="https://dantri4.vcmedia.vn/2016/photo-2-1475106640966.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="512" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Những tr&aacute;i ớt c&oacute; k&iacute;ch thước chỉ tương đương với hạt đậu, nhưng được xếp v&agrave;o loại gia vị đắt nhất thế giới</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Trước đ&oacute;, người ta từng d&ugrave;ng loại ớt n&agrave;y chủ yếu dưới dạng bột, tạo vị cay để ăn k&egrave;m c&ugrave;ng những m&oacute;n ăn kh&aacute;c. D&ugrave; vẫn kh&aacute; mới mẻ với c&aacute;c nước phương T&acirc;y, nhưng ớt Aji Charapita đang nhận được sự đ&aacute;nh gi&aacute; cao từ những người s&agrave;nh ăn ớt v&agrave; đầu bếp ở kh&aacute;ch sạn 5 sao.</p>\r\n<div class="VCSortableInPreviewMode" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-3-1475106640224.jpg" h="450" id="img_5da3cbd0-85d6-11e6-b939-01b8b69b7923" photoid="5da3cbd0-85d6-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-3-1475106640224.jpg" src="https://dantri4.vcmedia.vn/2016/photo-3-1475106640224.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="600" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Loại ớt n&agrave;y c&ograve;n được mệnh danh l&agrave; &ldquo;Mẹ của c&aacute;c loại ớt&rdquo;</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Để c&oacute; được những tr&aacute;i ớt Aji Charapita l&agrave; điều kh&ocirc;ng dễ d&agrave;ng. Đầu ti&ecirc;n, loại ớt n&agrave;y rất kh&oacute; để t&igrave;m nguồn cung cấp ngoại trừ Peru. Trừ khi bạn sẵn l&ograve;ng mua hạt giống v&agrave; tự trồng. L&yacute; do tiếp theo, mức gi&aacute; của loại ớt n&agrave;y khiến nhiều người phải ngỡ ng&agrave;ng. Bạn cần bỏ ra &iacute;t nhất 25.000 USD ( hơn 550 triệu đồng) để c&oacute; được 1 kg ớt hạt ti&ecirc;u &ndash; một mức gi&aacute; gần như kh&ocirc;ng tưởng cho loại gia vị rất quen thuộc trong cuộc sống. Do vậy, Aji Charapita c&ograve;n được mệnh danh l&agrave; &ldquo;mẹ của c&aacute;c loại ớt&rdquo;.</p>\r\n<div class="VCSortableInPreviewMode IMSCurrentEditorEditObject" style="margin: 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; text-align: center; color: rgb(0, 0, 0); font-family: Arial; background-color: rgb(242, 242, 242);" type="Photo">\r\n	<div style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		<img alt="" data-original="https://dantri4.vcmedia.vn/2016/photo-4-1475106640867.jpg" h="1080" id="img_5dc3afe0-85d6-11e6-b939-01b8b69b7923" photoid="5dc3afe0-85d6-11e6-b939-01b8b69b7923" rel="https://dantri4.vcmedia.vn/2016/photo-4-1475106640867.jpg" src="https://dantri4.vcmedia.vn/thumb_w/640/2016/photo-4-1475106640867.jpg" style="margin: 15px auto 0px; padding: 0px; list-style: none; border: 0px; font-size: 0px; outline: none; color: transparent; vertical-align: middle; max-width: 100%;" type="photo" w="1620" /></div>\r\n	<div class="PhotoCMS_Caption" style="margin: 0px; padding: 0px; list-style: none; border: 0px; outline: none;">\r\n		&nbsp;</div>\r\n</div>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Aji Charapita c&oacute; độ cay l&ecirc;n tới 30.000 tới 50.000 độ cay Scolville</p>\r\n<p style="margin: 12.5469px 0px; padding: 0px; list-style: none; border: 0px; font-size: 13px; outline: none; color: rgb(0, 0, 0); font-stretch: normal; line-height: 20px; font-family: Arial; background-color: rgb(242, 242, 242);">\r\n	Được biết, độ cay của loại ớt n&agrave;y l&ecirc;n tới 30.000 tới 50.000 độ cay Scolville, thậm ch&iacute; n&oacute; c&ograve;n cao gấp 4-20 lần ớt jalape&ntilde;o nổi tiếng. Theo m&ocirc; tả, độ cay n&agrave;y thậm ch&iacute; c&oacute; thể &ldquo;l&agrave;m thủng&rdquo; lưỡi bạn.</p>\r\n', 'Admire the world''s most expensive type of chili with a cost of half a ', 'Admire the world''s most expensive type of chili with a cost of half a billion kilograms', 'Admire the world''s most expensive type of chili with a cost of half a billion kilograms', '2016-10-07 03:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int(11) NOT NULL,
  `danhmuc1_id` int(11) NOT NULL,
  `danhmuc2_id` int(11) NOT NULL,
  `highlights` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_sale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_percent` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `num_like` int(11) NOT NULL,
  `description_short` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `img`, `link`, `position`) VALUES
(1, 'Vietnam Family Holiday 14 days', '/mix/view/admin/Themes/kcfinder/upload/images/slide/anh-dep-du-lich-viet-nam-vietnam-travel-ha-long-bay-03.jpg', '', 1),
(2, 'Halong Bay Ginger Cruise 3 days', '/mix/view/admin/Themes/kcfinder/upload/images/slide/du-lich-phu-quoc-1042.jpg', '', 2),
(3, 'Mekong Delta Discover', '/mix/view/admin/Themes/kcfinder/upload/images/slide/kinh-nghiem-du-lich-phu-quoc-bang-may-bay.jpg', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE IF NOT EXISTS `social` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rss` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `facebook`, `twitter`, `youtube`, `google`, `rss`) VALUES
(1, NULL, NULL, NULL, NULL, NULL);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `danhmuc1`
--
ALTER TABLE `danhmuc1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `danhmuc2`
--
ALTER TABLE `danhmuc2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `danhmuc_tintuc`
--
ALTER TABLE `danhmuc_tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
