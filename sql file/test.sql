-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 10:19 AM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id_code` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id_code`, `user_id`, `code`, `created_at`, `expiration`) VALUES
(1, 1, '432675', '2021-04-25 02:01:47', '2021-04-25 02:06:47'),
(2, 1, '897148', '2021-04-25 02:01:56', '2021-04-25 02:06:56'),
(3, 3, '967745', '2021-04-25 22:02:54', '2021-04-25 22:07:54'),
(4, 3, '084836', '2021-04-25 22:02:59', '2021-04-25 22:07:59'),
(5, 1, '954369', '2021-04-25 23:15:00', '2021-04-25 23:20:00'),
(6, 1, '162187', '2021-04-25 23:15:09', '2021-04-25 23:20:09'),
(7, 1, '234811', '2021-04-26 14:18:40', '2021-04-26 14:23:40'),
(8, 1, '369905', '2021-04-26 14:18:49', '2021-04-26 14:23:49'),
(9, 1, '124581', '2021-04-26 14:18:58', '2021-04-26 14:23:58'),
(10, 1, '294451', '2021-04-26 14:19:29', '2021-04-26 14:24:29'),
(11, 1, '102457', '2021-04-26 14:19:31', '2021-04-26 14:24:31'),
(12, 1, '604507', '2021-04-26 14:19:37', '2021-04-26 14:24:37'),
(13, 1, '882242', '2021-04-26 14:20:17', '2021-04-26 14:25:17'),
(14, 1, '746286', '2021-04-26 14:20:20', '2021-04-26 14:25:20'),
(15, 1, '812489', '2021-04-26 14:20:46', '2021-04-26 14:25:46'),
(16, 1, '425745', '2021-04-26 14:20:54', '2021-04-26 14:25:54'),
(17, 1, '363422', '2021-04-26 14:29:09', '2021-04-26 14:34:09'),
(18, 1, '807249', '2021-04-26 14:29:23', '2021-04-26 14:34:23'),
(19, 1, '610014', '2021-04-26 14:29:28', '2021-04-26 14:34:28'),
(20, 1, '967538', '2021-04-26 14:29:40', '2021-04-26 14:34:40'),
(21, 1, '364162', '2021-04-26 14:31:04', '2021-04-26 14:36:04'),
(22, 1, '650814', '2021-04-26 14:31:15', '2021-04-26 14:36:15'),
(23, 1, '018386', '2021-04-26 14:31:25', '2021-04-26 14:36:25'),
(24, 1, '420530', '2021-04-28 20:15:39', '2021-04-28 20:20:39'),
(25, 1, '634687', '2021-04-28 20:15:46', '2021-04-28 20:20:46'),
(26, 1, '510880', '2021-04-29 16:11:36', '2021-04-29 16:16:36'),
(27, 1, '063822', '2021-04-29 16:11:44', '2021-04-29 16:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `logid` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `dateandtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`logid`, `user_id`, `username`, `activity`, `dateandtime`) VALUES
(1, 1, 'jerard03', 'Changed Password', '2021-04-25 01:43:31'),
(2, 1, 'jerard03', 'Logged In', '2021-04-25 02:01:47'),
(3, 1, 'jerard03', 'Entered Successsful Code', '2021-04-25 02:01:56'),
(4, 1, 'jerard03', 'Logged Out', '2021-04-25 02:02:01'),
(5, 3, 'pierce', 'Logged In', '2021-04-25 22:02:53'),
(6, 3, 'pierce', 'Entered Successsful Code', '2021-04-25 22:02:59'),
(7, 3, 'pierce', 'Logged Out', '2021-04-25 22:03:02'),
(8, 1, 'jerard03', 'Logged In', '2021-04-25 23:15:00'),
(9, 1, 'jerard03', 'Entered Successsful Code', '2021-04-25 23:15:09'),
(10, 1, 'jerard03', 'Logged Out', '2021-04-25 23:15:10'),
(11, 1, 'jerard03', 'Logged In', '2021-04-26 14:18:39'),
(12, 1, 'jerard03', 'Entered Expired Code', '2021-04-26 14:18:49'),
(13, 1, 'jerard03', 'Logged In', '2021-04-26 14:19:29'),
(14, 1, 'jerard03', 'Entered Expired Code', '2021-04-26 14:19:31'),
(15, 1, 'jerard03', 'Logged In', '2021-04-26 14:20:17'),
(16, 1, 'jerard03', 'Entered Wrong Code', '2021-04-26 14:20:20'),
(17, 1, 'jerard03', 'Entered Expired Code', '2021-04-26 14:20:46'),
(18, 1, 'jerard03', 'Entered Successsful Code', '2021-04-26 14:20:54'),
(19, 1, 'jerard03', 'Logged Out', '2021-04-26 14:20:56'),
(20, 1, 'jerard03', 'Changed Password', '2021-04-26 14:28:43'),
(21, 1, 'jerard03', 'Logged In', '2021-04-26 14:29:09'),
(22, 1, 'jerard03', 'Entered Wrong Code', '2021-04-26 14:29:23'),
(23, 1, 'jerard03', 'Entered Wrong Code', '2021-04-26 14:29:28'),
(24, 1, 'jerard03', 'Entered Successsful Code', '2021-04-26 14:29:40'),
(25, 1, 'jerard03', 'Logged Out', '2021-04-26 14:29:45'),
(26, 1, 'jerard03', 'Logged In', '2021-04-26 14:31:04'),
(27, 1, 'jerard03', 'Entered Expired Code', '2021-04-26 14:31:16'),
(28, 1, 'jerard03', 'Entered Successsful Code', '2021-04-26 14:31:25'),
(29, 1, 'jerard03', 'Logged Out', '2021-04-26 14:31:30'),
(30, 1, 'jerard03', 'Changed Password', '2021-04-28 20:15:27'),
(31, 1, 'jerard03', 'Logged In', '2021-04-28 20:15:38'),
(32, 1, 'jerard03', 'Entered Successsful Code', '2021-04-28 20:15:47'),
(33, 1, 'jerard03', 'Logged Out', '2021-04-28 20:15:49'),
(34, 1, 'jerard03', 'Logged In', '2021-04-29 16:11:36'),
(35, 1, 'jerard03', 'Entered Successsful Code', '2021-04-29 16:11:44'),
(36, 1, 'jerard03', 'Logged Out', '2021-04-29 16:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'Basti Jerard Trinidad', 'bjtrinidad03@gmail.com', 'jerard03', 'BastiJerard03.', '2021-04-24 21:22:05'),
(2, 'Lyza Marie Murillo', 'lmmurillo09@gmail.com', 'lyza', 'LyzaMarie09.', '2021-04-24 22:49:07'),
(3, 'Pierce William Donato', 'pwdonato31@gmail.com', 'pierce', 'PierceWilliam31.', '2021-04-25 01:43:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id_code`),
  ADD KEY `test` (`user_id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `test1` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `logid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `code`
--
ALTER TABLE `code`
  ADD CONSTRAINT `test` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `userlog`
--
ALTER TABLE `userlog`
  ADD CONSTRAINT `test1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
