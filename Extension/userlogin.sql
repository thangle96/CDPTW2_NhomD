-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 01:34 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `diemdanh`
--

CREATE TABLE `diemdanh` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `absent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diemdanh`
--

INSERT INTO `diemdanh` (`id`, `user_id`, `status`, `datetime`, `absent`) VALUES
(1, '3', 0, '2020-11-23 04:27:33', 0),
(2, '2', 0, '2020-11-23 04:28:30', 0),
(3, '1', 0, '2020-11-23 04:29:40', 0),
(247, '4', 0, '2020-11-23 05:51:14', 0),
(248, '5', 0, '2020-11-23 05:54:34', 0),
(308, '6', 0, '2020-11-23 15:30:58', 0),
(309, '7', 0, '2020-11-23 15:31:13', 0),
(310, '8', 0, '2020-11-24 01:00:14', 0),
(311, '9', 0, '2020-11-24 01:06:01', 0),
(312, '10', 0, '2020-11-24 01:06:28', 0),
(313, '11', 0, '2020-11-24 01:06:47', 0),
(314, '12', 0, '2020-11-24 01:32:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `diemdanhgv`
--

CREATE TABLE `diemdanhgv` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `status` int(100) NOT NULL,
  `day` timestamp NOT NULL DEFAULT current_timestamp(),
  `absent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diemdanhgv`
--

INSERT INTO `diemdanhgv` (`id`, `user_id`, `status`, `day`, `absent`) VALUES
(1, 1, 1, '2020-11-23 14:25:34', 0),
(2, 2, 1, '2020-11-23 14:28:16', 0),
(3, 3, 1, '2020-11-23 14:28:31', 0),
(4, 4, 1, '2020-11-23 14:28:40', 0),
(5, 5, 1, '2020-11-23 14:28:47', 0),
(6, 12345, 1, '2020-11-23 14:29:00', 0),
(7, 0, 0, '2020-11-23 15:20:54', 5),
(8, 0, 0, '2020-11-23 15:21:03', 5),
(9, 0, 0, '2020-11-23 15:21:10', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` text DEFAULT NULL,
  `file` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `email`, `user_type`, `password`, `image`, `file`) VALUES
(2, 'admin', 'admin', 'admin@gmail.com', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'images.png', ''),
(3, 'dinhthi1211', 'dinhthi12112222222', 'dinhthi@gmail.com', 'user', '0cc175b9c0f1b6a831c399e269772661', '', ''),
(1, 'admin', 'dinhthi1211', 'dinhthi@gmail.com', 'user', 'c4ca4238a0b923820dcc509a6f75849b', 'public/images/images (1).png', 'C:\\xampp\\htdocs\\Login/public/libs/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diemdanhgv`
--
ALTER TABLE `diemdanhgv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diemdanh`
--
ALTER TABLE `diemdanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
