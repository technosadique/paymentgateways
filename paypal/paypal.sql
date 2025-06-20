-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 08:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paypal`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `price`, `image`) VALUES
(1, 'Angular', '30', 'angular.jpg'),
(2, 'MySQL', '4', 'mysql.jpg'),
(3, 'Rich dad poor dada', '2', 'Rich_Dad_Poor_Dad.jpg'),
(4, 'ANGULAR UP & RUNNING', '14', 'angular_uprunning.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payer_id` varchar(100) NOT NULL,
  `payer_email` varchar(100) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payer_id`, `payer_email`, `amount`, `item_id`, `item_name`, `currency`, `status`, `created_date`) VALUES
(1, 'CAWFYY6TMBFRA', 'sb-ce5c4743959289@personal.example.com', '200.00', '97W60141PT217013C', 'MySQL', 'USD', 'Completed', '2025-06-19 14:28:40'),
(2, 'CAWFYY6TMBFRA', 'sb-ce5c4743959289@personal.example.com', '100.00', '9JN45335UN742094S', 'Angular', 'USD', 'Completed', '2025-06-19 14:29:44'),
(3, 'CAWFYY6TMBFRA', 'sb-ce5c4743959289@personal.example.com', '200.00', '7AN1610075751011L', 'MySQL', 'USD', 'Completed', '2025-06-19 14:35:03'),
(4, 'CAWFYY6TMBFRA', 'sb-ce5c4743959289@personal.example.com', '100.00', '8N3849705A9243514', 'Angular', 'USD', 'Completed', '2025-06-19 14:37:43'),
(5, 'CAWFYY6TMBFRA', 'sb-ce5c4743959289@personal.example.com', '14.00', '30U912406C657364Y', 'ANGULAR UP & RUNNING', 'USD', 'Completed', '2025-06-19 18:28:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
