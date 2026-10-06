-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2026 at 07:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
('', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(100) NOT NULL,
  `qty` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `price`, `qty`) VALUES
('fgavporPHXGqhGc69Gjd', '', '2', 120, 1),
('lwUQwwKjkSMeijPpR8y7', '', '8', 120, 1),
('qLrafVvNIZq3BHbDRgmL', '', '7', 70, 1),
('ya22QgQjY58i08pqXbM2', '', '3', 160, 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `subject`, `message`) VALUES
(5, 'Hitesh Satvara', 'hbsatvara@gmail.com', 'hshwhs', 'fdhdhhf');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `number` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL,
  `payment_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`, `payment_status`) VALUES
('7qt0tEWee8YvXfumybR1', '', 'Hitesh Satvara', 901610414, 'hbsatvara@gmail.com', 'Vishlpur budhrmora, 12, Bhuj, India, 370020', 'home', 'cash on delivery', '2', 120, '1', '2024-10-26', '', ''),
('8FSn8xEOiTjFyRi2u5or', '', 'jadav', 2147483647, 'jadav@gmail.org', 'sd!@#$%%%%%741, dfghj, lili, indui, 123456', 'office', 'UPI or RuPay', '3', 160, '1', '2025-10-05', '', ''),
('8mhqt4B5QrjuoaYcn8J3', '', 'Hitesh Satvara', 1234567890, 'hbsatvara@gmail.com', 'Vishlpur budhrmora, 12, Bhuj, India, 370020', 'home', 'cash on delivery', '2', 120, '1', '2024-10-05', '', ''),
('C2F4EXv8x4J6jFqTgXaE', '', 'Hitesh', 901610414, 'hbsatvara@gmail.com', 'Vishlpur budhrmora, 12, Bhuj, India, 370020', 'home', 'cash on delivery', '1', 200, '1', '2025-09-16', '', ''),
('EbDatx8Uil0XaI6WxjKl', '', 'rakehs', 2147483647, 'rp5924@gmail.com', 'Satvara vidhyarthi bhavan, sanjivani hospital, Pan, rikeke, Ahmedabad, India, 380013', 'home', 'cash on delivery', '1', 200, '1', '2025-09-30', '', ''),
('osYhrjOeNXdmXR6oabzu', '14', 'Rakesh parmar', 2147483647, 'rp6345924@gmail.com', 'Satvara vidhyarthi bhavan, sanjivani hospital, Pan, fiikks, Ahmedabad, India, 380013', 'home', 'cash on delivery', '1', 200, '1', '2025-09-30', '', ''),
('sFfa4zg84usJCnPlLKa0', '', 'Hitesh Satvara', 901610414, 'hbsatvara@gmail.com', 'Vishlpur budhrmora, 12, Bhuj, India, 370020', 'home', 'cash on delivery', '2', 120, '1', '2024-10-19', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` decimal(50,0) NOT NULL,
  `image` blob NOT NULL,
  `product_detail` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `product_detail`, `status`) VALUES
(1, 'Fukamushi Sencha Tea', 200, 0x75706c6f6164732f363662623039663635316164662e6a706567, 'Fukamushi Sencha Tea\r\n', 'active'),
(2, 'Lemon Green Tea', 120, 0x75706c6f6164732f363662623061313061343066632e6a706567, 'Lemon Green Tea\r\n', 'active'),
(3, 'Kabusecha Green Tea', 160, 0x75706c6f6164732f363662623061336138346364322e6a706567, 'Kabusecha Green Tea\r\n', 'active'),
(4, 'Gyokuro Green Tea', 50, 0x75706c6f6164732f363662623061356132363533332e6a706567, 'Gyokuro Green Tea\r\n', 'active'),
(5, 'Sweet Lemon Iced Tea', 80, 0x75706c6f6164732f363662623061376139353365302e6a706567, 'Sweet Lemon Iced Tea\r\n\r\n', 'active'),
(6, ' Lemon Verbena Tea', 80, 0x75706c6f6164732f363662623061623132633463612e6a706567, '\r\nLemon Verbena Tea\r\n', 'active'),
(7, ' Longjing Tea', 70, 0x75706c6f6164732f363662623061643163663564632e6a706567, '\r\nLongjing Tea\r\n', 'active'),
(8, 'Gunpowder Tea', 120, 0x75706c6f6164732f363662623061656639333332632e6a706567, 'Gunpowder Tea\r\n', 'active'),
(9, ' Minty Lemon Iced Tea', 90, 0x75706c6f6164732f363662623062306231386335352e6a706567, '\r\nMinty Lemon Iced Tea', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(100) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(11, 'Hitesh Satvara', 'hbsatvara@gmail.com', '123', 'user'),
(12, 'ankit Satvara', 'ankit@gmail.com', '123', 'user'),
(14, 'Rakesh parmar', 'rp6345924@gmail.com', '123', 'user'),
(15, 'jadav', 'jadav@gmail.com', '123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `price`) VALUES
('astYzJqjtVgtcW13cPvI', '', '9', 90),
('KxDFG7oDMAu9y9DGGf4O', '', '8', 120),
('NkRX2CQ0bCtSILOpRq7u', '', '7', 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
