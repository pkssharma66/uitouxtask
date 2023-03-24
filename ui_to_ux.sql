-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 02:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ui_to_ux`
--

-- --------------------------------------------------------

--
-- Table structure for table `best_seller_products`
--

CREATE TABLE `best_seller_products` (
  `fp_id` int(11) NOT NULL,
  `fp_name` varchar(255) DEFAULT NULL,
  `reviews` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `fp_img_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `best_seller_products`
--

INSERT INTO `best_seller_products` (`fp_id`, `fp_name`, `reviews`, `price`, `fp_img_name`, `created_at`, `updated_at`) VALUES
(1, 'Brandix Engine Block Z4', 0, 452, 'product-12.jpeg', '2023-03-24 12:37:28', '2023-03-24'),
(2, 'Brandix Clutch Disc Z175', 7, 345, 'product-13.jpeg', '2023-03-24 12:38:14', '2023-03-24'),
(3, 'Manual Brandix Five Speed GearBox', 6, 879, 'product-9.jpeg', '2023-03-24 12:38:59', '2023-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `featured_products`
--

CREATE TABLE `featured_products` (
  `fp_id` int(11) NOT NULL,
  `fp_uniq_id` varchar(255) DEFAULT NULL,
  `fp_name` varchar(255) DEFAULT NULL,
  `reviews` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `fp_img_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `featured_products`
--

INSERT INTO `featured_products` (`fp_id`, `fp_uniq_id`, `fp_name`, `reviews`, `price`, `fp_img_name`, `created_at`, `updated_at`) VALUES
(1, 'SKU:A43-44328-8', 'Glossy gray Aluminium wheel AR-19', 26, 589, 'product-1.jpeg', '2023-03-24 11:26:47', '2023-03-24 12:02:06'),
(2, 'SKU:729-515203-B', 'Twin Exhaust Pipe From Barandix Z54', 9, 749, 'product-2.jpeg', '2023-03-24 11:42:37', '2023-03-24 12:03:24'),
(3, 'SKU:573-49386-C', 'Motor Oil Level 5', 2, 23, 'product-3.jpeg', '2023-03-24 11:43:15', '2023-03-24 16:34:17'),
(4, 'SKU:753-3857-B', 'Brandix Engine Block Z4', 0, 452, 'product-4.jpeg', '2023-03-24 11:43:50', '2023-03-24 16:35:01'),
(5, 'SKU:472-67382-Z', 'Brandix Clutch Discs Z175', 7, 345, 'product-5.jpeg', '2023-03-24 11:44:23', '2023-03-24 16:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `special_offer_products`
--

CREATE TABLE `special_offer_products` (
  `fp_id` int(11) NOT NULL,
  `fp_name` varchar(255) DEFAULT NULL,
  `reviews` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `fp_img_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `special_offer_products`
--

INSERT INTO `special_offer_products` (`fp_id`, `fp_name`, `reviews`, `price`, `fp_img_name`, `created_at`, `updated_at`) VALUES
(1, 'Brandix Manual Five Speed Gear Box', 6, 879, 'product-9.jpeg', '2023-03-24 12:34:54', '2023-03-24'),
(2, 'Set Of Car Floor Mats Brandix Z4', 16, 78, 'product-10.jpeg', '2023-03-24 12:35:36', '2023-03-24'),
(3, 'Tail Lights Brandix Z54', 8, 6, 'product-11.jpeg', '2023-03-24 12:36:23', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `top_rated_products`
--

CREATE TABLE `top_rated_products` (
  `fp_id` int(11) NOT NULL,
  `fp_name` varchar(255) DEFAULT NULL,
  `reviews` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `fp_img_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `top_rated_products`
--

INSERT INTO `top_rated_products` (`fp_id`, `fp_name`, `reviews`, `price`, `fp_img_name`, `created_at`, `updated_at`) VALUES
(1, 'Fantastic 12-Strok engine with a Power of 1991 hp', 17, 2579, 'product-6.jpeg', '2023-03-24 12:13:55', '2023-03-24'),
(2, 'Set Four 19 Inch Spiked Tires', 9, 329, 'product-7.jpeg', '2023-03-24 12:15:13', '2023-03-24'),
(3, '40 Megawatt Low Beem Lamp', 14, 4, 'product-8.jpeg', '2023-03-24 12:15:50', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `best_seller_products`
--
ALTER TABLE `best_seller_products`
  ADD PRIMARY KEY (`fp_id`);

--
-- Indexes for table `featured_products`
--
ALTER TABLE `featured_products`
  ADD PRIMARY KEY (`fp_id`);

--
-- Indexes for table `special_offer_products`
--
ALTER TABLE `special_offer_products`
  ADD PRIMARY KEY (`fp_id`);

--
-- Indexes for table `top_rated_products`
--
ALTER TABLE `top_rated_products`
  ADD PRIMARY KEY (`fp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `best_seller_products`
--
ALTER TABLE `best_seller_products`
  MODIFY `fp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `featured_products`
--
ALTER TABLE `featured_products`
  MODIFY `fp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `special_offer_products`
--
ALTER TABLE `special_offer_products`
  MODIFY `fp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `top_rated_products`
--
ALTER TABLE `top_rated_products`
  MODIFY `fp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
