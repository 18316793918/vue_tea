-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2022-04-11 15:01:11
-- 服务器版本： 5.6.50-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huo`
--

-- --------------------------------------------------------

--
-- 表的结构 `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `uid` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `county` varchar(100) DEFAULT NULL,
  `addressDetail` varchar(100) DEFAULT NULL,
  `isDefault` varchar(100) DEFAULT NULL,
  `areaCode` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `address`
--

INSERT INTO `address` (`uid`, `name`, `tel`, `province`, `city`, `county`, `addressDetail`, `isDefault`, `areaCode`, `id`) VALUES
('155', '许凯', '18316793918', '广东省', '汕头市', '潮阳区', '铜盂镇', '1', '440513', 19),
('155', '小明', '13415158101', '北京市', '', '', '哈哈好家伙', '0', '110000', 20);

-- --------------------------------------------------------

--
-- 表的结构 `goods_cart`
--

CREATE TABLE IF NOT EXISTS `goods_cart` (
  `uId` int(11) DEFAULT NULL,
  `goods_id` varchar(100) DEFAULT NULL,
  `goods_name` varchar(100) DEFAULT NULL,
  `goods_price` varchar(100) DEFAULT NULL,
  `goods_num` varchar(100) DEFAULT NULL,
  `goods_imgUrl` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods_cart`
--

INSERT INTO `goods_cart` (`uId`, `goods_id`, `goods_name`, `goods_price`, `goods_num`, `goods_imgUrl`, `id`) VALUES
(155, '2', '很好铁观音2', '130', '2', '/images/list1.jpeg', 49),
(155, '1', '很好铁观音1', '0.01', '2', '/images/goods3.jpg', 50),
(155, '4', '红红火火红茶333', '151', '1', '/images/goods2.jpg', 51);

-- --------------------------------------------------------

--
-- 表的结构 `goods_list`
--

CREATE TABLE IF NOT EXISTS `goods_list` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `num` varchar(100) DEFAULT NULL,
  `imgUrl` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods_list`
--

INSERT INTO `goods_list` (`id`, `name`, `content`, `price`, `num`, `imgUrl`) VALUES
(1, '很好铁观音1', NULL, '0.01', '22', '/images/goods3.jpg'),
(2, '很好铁观音12', NULL, '130', '15', '/images/list1.jpeg'),
(3, '红红火火红茶1', NULL, '125', '51', '/images/goods1.jpg'),
(4, '红红火火红茶11', NULL, '151', '61', '/images/goods2.jpg'),
(5, '真绿绿茶1', NULL, '53', '25', '/images/goods4.jpg'),
(6, '真绿绿茶12', NULL, '51', '62', '/images/goods-list1.jpeg'),
(7, '铁观音123', NULL, '120', '1', '/images/goods3.jpg'),
(8, '铁观音1234', NULL, '200', '155', '/images/list1.jpeg'),
(9, '铁观音12345', NULL, '122', '25', '/images/goods3.jpg'),
(10, '真绿绿茶123', NULL, '51', '16', '/images/goods4.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `store_order`
--

CREATE TABLE IF NOT EXISTS `store_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `goods_num` varchar(255) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `uId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `store_order`
--

INSERT INTO `store_order` (`id`, `order_id`, `goods_name`, `goods_price`, `goods_num`, `order_status`, `uId`) VALUES
(48, '20220317213621859482', '红红火火红茶2', '151', '1', '2', '155'),
(49, '2022031721391896346', '很好铁观音1', '0.01', '1', '2', '155'),
(50, '20220318221145391350', '很好铁观音1,很好铁观音2,红红火火红茶1,红红火火红茶333', '406.01', '4', '1', '155'),
(51, '2022031911162380233', '很好铁观音2,很好铁观音1,红红火火红茶333', '411.02', '5', '1', '155'),
(52, '20220320103859667187', '很好铁观音2,很好铁观音1,红红火火红茶333', '411.02', '5', '1', '155');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `imgUrl` varchar(100) DEFAULT NULL,
  `nickName` varchar(100) DEFAULT NULL,
  `token` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `tel`, `pwd`, `imgUrl`, `nickName`, `token`) VALUES
(55, '13415110687', '123123', '/images/user.jpeg', '13415110687', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZWwiOiIxMzQxNTExMDY4NyIsImlhdCI6MTY0ODQzNTcxOCwiZXhwIjoxNjQ4NDM1Nzc4fQ.8JCw2Gpi6yVV-YFBHwDJr9qhdg12Z3aaAGrFAyrJz_Y'),
(155, '18316793918', '666666', '/images/user.jpeg', '18316793918', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZWwiOiIxODMxNjc5MzkxOCIsImlhdCI6MTY0OTQzMDg3NywiZXhwIjoxNjQ5NDMwOTM3fQ.lJUnUVDxLCb0ks4SQM6pGlvNiPjVd9Dd6Z-eICDMtDg'),
(179, '19124330389', '222222', '/images/user.jpeg', '19124330389', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZWwiOiIxOTEyNDMzMDM4OSIsImlhdCI6MTY0NjkwMzYzOSwiZXhwIjoxNjQ2OTAzNjk5fQ.m47Pbn3QQ_RafGjT6UIlHrD9_43onu9nV9sZSEtisI8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods_cart`
--
ALTER TABLE `goods_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `goods_cart`
--
ALTER TABLE `goods_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
