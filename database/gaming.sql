-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 10:09 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '2017-01-24 16:21:18', '03-05-2021 12:06:36 AM'),
(2, 'tahbib', 'tahbib', '2021-05-02 19:00:15', '2021-05-03 01:00:15'),
(4, 'admin', 'admin1', '2021-05-03 14:03:14', '2021-05-03 20:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Joysticks', 'Joysticks', '2021-05-02 19:17:37', '03-05-2021 12:08:01 AM'),
(4, 'Games', 'All Kinds of Games', '2021-05-02 19:19:32', ''),
(5, 'Accesories', 'Gaming Accesories', '2021-05-02 19:20:54', ''),
(6, 'Posters', 'Gaming Posters', '2021-05-02 19:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', 'Delivered'),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 1, '15', 1, '2021-05-02 14:55:26', 'COD', NULL),
(8, 4, '25', 1, '2021-05-02 20:03:41', 'COD', 'in Process'),
(9, 4, '25', 1, '2021-05-02 20:10:41', 'COD', NULL),
(10, 4, '26', 1, '2021-05-03 14:16:46', 'Debit / Credit card', NULL),
(11, 4, '29', 1, '2021-05-03 19:41:43', 'Debit / Credit card', NULL),
(12, 4, '28', 1, '2021-05-03 19:47:01', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 1, 'Delivered', 'nana\r\n', '2021-05-01 21:03:06'),
(6, 8, 'in Process', 'na', '2021-05-02 20:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(24, 6, 12, 'Spider Man', 'Posterz', 100, 100, 'Spider Man Poster<br>', 'index1.jpg', 'index1 - Copy (2).jpg', 'index1.jpg', 40, 'In Stock', '2021-05-02 19:39:56', NULL),
(25, 6, 12, 'Battlefield 4', 'Posterz', 100, 100, 'Battlefield 4<br>', '.jpeg.jpg', '.jpeg.jpg', '.jpeg.jpg', 20, 'In Stock', '2021-05-02 19:45:17', NULL),
(26, 6, 12, 'Flash ', 'Posterz', 100, 100, 'Flash<br>', '163381073_887369282026233_5756368312647898646_o.jpg', '163381073_887369282026233_5756368312647898646_o.jpg', '163381073_887369282026233_5756368312647898646_o.jpg', 20, 'In Stock', '2021-05-02 19:49:03', NULL),
(27, 6, 12, 'NFS', 'Posterz', 80, 100, 'NFS<br>', 'need_for_speed_payback_2-wallpaper-1920x1080.jpg', 'need_for_speed_payback_2-wallpaper-1920x1080.jpg', 'need_for_speed_payback_2-wallpaper-1920x1080.jpg', 20, 'In Stock', '2021-05-02 19:52:49', NULL),
(28, 3, 17, 'Custom Skin PS4 Joystick', 'Sony', 4500, 5000, 'Custom Skin PS4 Joystick<br>', 'c6779254b40c24ca39f5c3b93917a7cb - Copy (2).jpg', 'c6779254b40c24ca39f5c3b93917a7cb - Copy (2).jpg', 'c6779254b40c24ca39f5c3b93917a7cb - Copy.jpg', 50, 'In Stock', '2021-05-02 20:40:46', NULL),
(29, 3, 17, 'Custom Skin PS4 Joystick', 'Sony', 4800, 5000, 'Custom Skin PS4 Joystick<br>', 'HOMEREALLY-PS4-Controller-Skin-The-Witcher-PVC-HD-PS4-Sticker-Full-Cover-For-PlayStation4-Wireless-Controller.jpg_640x640.jpg', 'HOMEREALLY-PS4-Controller-Skin-The-Witcher-PVC-HD-PS4-Sticker-Full-Cover-For-PlayStation4-Wireless-Controller.jpg_640x640.jpg', 'HOMEREALLY-PS4-Controller-Skin-The-Witcher-PVC-HD-PS4-Sticker-Full-Cover-For-PlayStation4-Wireless-Controller.jpg_640x640.jpg', 40, 'In Stock', '2021-05-02 20:44:13', NULL),
(30, 3, 15, 'XBOX Joystick-Balck', 'XBOX', 3800, 4000, 'XBOX Joystick Black<br>', 'c466aba8-c8f8-4c2e-aad8-7408e7a0647c.jpg', 'c466aba8-c8f8-4c2e-aad8-7408e7a0647c.jpg', 'c466aba8-c8f8-4c2e-aad8-7408e7a0647c.jpg', 50, 'In Stock', '2021-05-02 20:46:44', NULL),
(31, 3, 15, 'XBOX Joystick-White', 'XBOX', 3800, 4000, 'XBOX Joystick-White<br>', '71WX6wVepIL.jpg', '71WX6wVepIL.jpg', '71WX6wVepIL.jpg', 50, 'In Stock', '2021-05-02 20:48:17', NULL),
(32, 5, 9, 'Havit H2168d 3.5mm USB Gaming headphone', 'Havit', 1080, 1150, '<ul><li>Model: Havit H2168d</li><li>Speaker: 40mm\r\n</li><li>Impedance: 32±15%0 \r\n</li><li>Frequency : 2011z to 20KHZ\r\n</li><li>Microphone: ife5.0mm</li></ul>', 'h2168d-2-500x500.jpg', 'h2168d-3-500x500.jpg', 'h2168d-500x500.jpg', 40, 'In Stock', '2021-05-02 20:51:16', NULL),
(33, 5, 9, 'Asus Cerberus V2 3.5mm gaming Headphone', 'ASUS', 4700, 5100, '<ul><li>Model: Asus Cerberus</li><li>3.5mm audio line-in AUX func5on\r\n</li><li>In-line Microphone Sensitivity: -45 dB ± 3 dB\r\n</li><li>Frequency : 20 Hz - 20 kHz\r\n</li><li>Impedance: 32 ?</li></ul>', 'cerberus-v2-3-500x500.jpg', 'cerberus-v2-2-500x500.jpg', 'cerberus-v2-1-500x500.jpg', 50, 'In Stock', '2021-05-02 20:53:36', NULL),
(34, 5, 9, 'Edifier G3 Gaming Headphone Iron Gray', 'Edifier', 5000, 5150, '<ul><li>Model: G3 Engage</li><li>Frequency: 20Hz?20kHz \r\n</li><li>Impedance: 40?\r\n</li><li>Cable Length: 3m</li></ul>', 'g3-500x500.jpg', 'g3-5-500x500.jpg', 'g3-4-500x500.jpg', 40, 'In Stock', '2021-05-02 20:55:22', NULL),
(35, 5, 10, 'Havit HV-MS1012A RGB Backlit Programmable Gaming Mouse', 'Havit', 1000, 1030, '<ul><li>\r\n                                    \r\n                                \r\n                                                                \r\n                                \r\n                                \r\n                                    \r\n                                    <table class=\"product-info-table\"><tbody><tr class=\"product-info-group\"><td class=\"product-info-label\">Price</td><td class=\"product-info-data product-price\">1,000?</td></tr><tr class=\"product-info-group\">\r\n                                    <td class=\"product-info-label\">Regular Price</td>\r\n                                    <td class=\"product-info-data product-regular-price\">1,030?</td>\r\n                                </tr><tr class=\"product-info-group\">\r\n                                    <td class=\"product-info-label\">Status</td>\r\n                                    <td class=\"product-info-data product-status\">In Stock</td>\r\n                                </tr><tr class=\"product-info-group\">\r\n                                    <td class=\"product-info-label\">Product Code</td>\r\n                                    <td class=\"product-info-data product-code\">15142</td>\r\n                                </tr><tr class=\"product-info-group\" itemprop=\"brand\" itemtype=\"http://schema.org/Thing\" itemscope=\"\"><td class=\"product-info-label\">Brand</td><td class=\"product-info-data product-brand\" itemprop=\"name\">Havit</td></tr></tbody></table></li></ul>', 'ms1012a-4-500x500.jpg', 'ms1012a-2-500x500.jpg', 'ms1012a-1-500x500.jpg', 50, 'In Stock', '2021-05-02 21:05:30', NULL),
(36, 5, 10, 'Fantech WG10 Raigor II Wirless Gaming Mouse Black', 'Fantech', 750, 800, '<ul><li>Model: Fantech WG10 Raigor II</li><li>Type: 2.4Ghz Wireless\r\n</li><li>Application: Desktop, Laptop\r\n</li><li>Interface: Nano USB 2.0 Receiver\r\n</li><li>Battery: AA Battery with Power Saver</li></ul>', 'wg10-raigor-ii-500x500.jpg', 'wg10-raigor-ii-2-500x500.jpg', 'wg10-raigor-ii-1-500x500.jpg', 50, 'In Stock', '2021-05-02 21:07:25', NULL),
(37, 5, 10, 'Havit MS1006 RGB Backlit Gaming Mouse', 'Havit', 500, 600, '<ul><li>Model: Havit MS1006</li><li>DPI: 3200 DPI\r\n</li><li>Key number: 7\r\n</li><li>Voltage: 5.0V\r\n</li><li>Interface Type: USB</li></ul>', 'ms1006-1-500x500.jpg', 'ms1006-1-500x500.jpg', 'ms1006-1-500x500.jpg', 50, 'In Stock', '2021-05-02 21:12:02', NULL),
(38, 5, 11, 'Havit GameNote KB500L Multi-Function LED Backlit USB Gaming Keyboard Black', 'Havit', 1050, 1080, '<ul><li>Model: Havit GameNote KB500L</li><li>Article Design\r\n</li><li>Layout: 114 Basic Keys\r\n</li><li>Keys: 10 multimedia keys\r\n</li><li>Operating current: 250mA</li></ul>', 'gamenote -kb500l-500x500.jpg', 'gamenote -kb500l-3-500x500.jpg', 'gamenote -kb500l-2-500x500.jpg', 50, 'In Stock', '2021-05-02 21:15:40', NULL),
(39, 5, 11, 'Rapoo V52 Backlit Gaming Keyboard', 'Rapoo', 1525, 1600, '<ul><li>Model: Rapoo V52</li><li>Full keyboard programmable\r\n</li><li>Onboard memory\r\n</li><li>Adjustable backlight system\r\n</li><li>Anti-splash design</li></ul>', 'v52-keyboard_1-500x500.jpg', 'v52-keyboard_1-500x500.jpg', 'v52-keyboard_1-500x500.jpg', 40, 'In Stock', '2021-05-02 21:43:00', NULL),
(40, 5, 11, 'Fantech K512 Archer One-Handed USB RGB Gaming Keyboard', 'Fantech', 1600, 1600, '<ul><li>Model: K512 Archer RGB</li><li>RGB backlight with 2 modes of operation\r\n</li><li>2 Macro Programmable Buttons\r\n</li><li>Material: high-quality ABS plastic\r\n</li><li>Nylon cable with Ferrite Filter</li></ul>', 'k512-archer-1-500x500.jpg', 'k512-archer-3-500x500.jpg', 'k512-archer-2-500x500.jpg', 50, 'In Stock', '2021-05-02 21:44:54', NULL),
(41, 4, 2, 'Cyberpunk2077', 'Steam', 5000, 5000, 'Cyberpunk2077<br>', 'Cyberpunk_2077_box_art.jpg', 'Cyberpunk_2077_box_art.jpg', 'Cyberpunk_2077_box_art.jpg', 40, 'In Stock', '2021-05-02 21:48:47', NULL),
(42, 4, 3, 'Battlefield 4', 'Activision', 1600, 1600, 'Battlefield 4<br>', 'Battlefield_4_Cover.webp', 'Battlefield_4_Cover.webp', 'Battlefield_4_Cover.webp', 40, 'In Stock', '2021-05-02 21:51:19', NULL),
(43, 4, 2, 'Forza Horizon 4', 'Forza', 1000, 1200, 'Forza Horizon 4<br>', '220px-Forza_Horizon_4_cover.jpg', '220px-Forza_Horizon_4_cover.jpg', '220px-Forza_Horizon_4_cover.jpg', 40, 'In Stock', '2021-05-02 21:52:50', NULL),
(44, 4, 4, 'Cyberpunk2077', 'Activision', 5000, 5000, 'Cyberpunk2077<br>', 'Cyberpunk_2077_box_art.jpg', '', '', 40, 'In Stock', '2021-05-02 21:54:30', NULL),
(45, 4, 5, 'Fifa-2021', 'EA Sports', 4800, 5210, 'Fifa-2021<br>', 'index.jpg', 'index.jpg', 'index.jpg', 50, 'In Stock', '2021-05-02 21:55:50', NULL),
(46, 4, 7, 'The Legend of Zelda Breath of the Wild', 'Zelda', 500, 500, 'The Legend of Zelda Breath of the Wild<br>', '22.jpg', '22.jpg', '22.jpg', 20, 'In Stock', '2021-05-02 22:00:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'PC Games', '2021-05-02 18:39:29', NULL),
(3, 4, 'PS4 Games', '2021-05-02 18:39:36', ''),
(4, 4, 'PS5 Games', '2021-05-02 18:39:44', ''),
(5, 4, 'X-BOX Games', '2021-05-02 18:40:01', ''),
(7, 4, 'Nintendo Games', '2021-05-02 18:40:05', ''),
(9, 5, 'Headphones', '2021-05-02 18:40:09', ''),
(10, 5, 'Gaming Mouse', '2021-05-02 18:40:07', ''),
(11, 5, 'Gaming Keyboard', '2021-05-02 18:40:13', ''),
(12, 6, 'Gaming Posters', '2021-05-02 18:40:11', NULL),
(15, 3, 'XBOX Joystick', '2021-05-02 19:31:24', NULL),
(17, 3, 'PS4 Joystick', '2021-05-02 19:31:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, 'mtahbib@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-02 20:03:14', NULL, 1),
(27, 'mtahbib@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-03 13:39:37', NULL, 1),
(28, 'mtahbib@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-03 14:16:33', NULL, 1),
(29, 'mtahbib@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-03 19:41:30', '04-05-2021 01:16:31 AM', 1),
(30, 'mtahbib@gmail.com', 0x3132372e302e302e3100000000000000, '2021-05-03 19:46:47', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Tahbib', 'mtahbib@gmail.com', 179022125, '827ccb0eea8a706c4c34a16891f84e7b', 'd', 'd', 'd', 0, 'd', 'd', 'd', 0, '2021-05-02 18:46:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 31, '2021-05-03 19:45:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
