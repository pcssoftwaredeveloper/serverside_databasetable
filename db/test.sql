-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 12:34 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `profile_pic` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `dob` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `profile_pic`, `father_name`, `mother_name`, `dob`, `created_at`) VALUES
(1, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(2, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(3, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(4, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(5, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(6, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(7, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(8, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(9, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(10, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(11, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(12, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(13, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(14, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(15, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(16, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(17, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(18, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(19, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(20, 'Radha Kumari', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(21, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(22, 'Krishna Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(23, 'Raveena Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(24, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(25, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(26, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(27, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(28, 'Rahul Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(29, 'Kuldeep Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(30, 'Pradeep Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(31, 'Ram Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30'),
(32, 'Shaym Kumar', 'finance@appexigotech.com', '8cb2237d0679ca88db6464eac60da96345513964', 'http://localhost/serverside_datatables/assets/images/user.jpg', 'Rajesh Kumar', 'Rajni Kumari', '2022-10-12', '2022-10-19 16:22:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
