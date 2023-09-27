-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 05, 2022 at 02:15 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `room_no` int(255) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date DEFAULT NULL,
  `adults_num` int(11) NOT NULL,
  `children_num` int(11) NOT NULL,
  `clear_bill` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_email`, `room_no`, `check_in`, `check_out`, `adults_num`, `children_num`, `clear_bill`) VALUES
(1, 'admin@gmail.com', 1, '2022-05-22', '2022-05-23', 4, 1, 0),
(2, 'batman@gmail.com', 4, '2022-05-25', '2022-05-26', 2, 0, 0),

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `type`, `price`, `description`, `image`) VALUES
(1, 'Standard', 600, 'TV, Free Wifi 1 Rooms 1 Bathrooms 1 Balcony 1 Sofa', 'standard.jpg'),
(3, 'Deluxe', 1000, 'Breakfast, TV, Wifi, Massage 1 Rooms 1 Bathrooms 1 Balcony 2 Sofa', 'deluxe.jpg'),
(4, 'Super Deluxe', 1500, 'City View, Deluxe Features, Dinner 1 Rooms 2 Bathrooms 1 Balcony 2 Sofa', 'super-deluxe.jpg'),
(5, 'Luxury', 2000, 'Super Deluxe Cool Breeze and Paradise View, Dance Party Massage 2 Rooms 2 Bathrooms 2 Balcony 3 Sofa', 'luxury.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$eIUI0tDGqwqqUIJsH2neFeqd9yG.FoqUw/xC7xHGzpzZGtYHibNh6', 'admin'),
(2, '', 'batman@gmail.com', '$2y$10$qFQG36lqwrWBv8KqcLRyVe4nujK/89KmbbMEsudo/39DbNiWVbfnC', 'customer');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
