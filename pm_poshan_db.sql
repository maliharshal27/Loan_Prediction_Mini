-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 07:20 AM
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
-- Database: `pm_poshan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence_info`
--

CREATE TABLE `attendence_info` (
  `id` int(100) NOT NULL,
  `rno` int(100) NOT NULL,
  `present` varchar(100) NOT NULL,
  `absent` varchar(100) NOT NULL,
  `newdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendence_info`
--

INSERT INTO `attendence_info` (`id`, `rno`, `present`, `absent`, `newdate`) VALUES
(1, 4, 'present', 'absent', '2023-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_info`
--

CREATE TABLE `complaint_info` (
  `id` int(100) NOT NULL,
  `sid` int(50) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `semail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_info`
--

INSERT INTO `complaint_info` (`id`, `sid`, `sname`, `complaint`, `date`, `semail`) VALUES
(4, 1001, 'PBM  Municipal HighSchool', 'Bad Material', '2023-07-20', 'pmbmh@gmail.com'),
(5, 1002, 'PBM  Municipal HighSchool', 'Bad Material ', '2023-07-21', 'pmbmh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gov_db`
--

CREATE TABLE `gov_db` (
  `id` int(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gov_db`
--

INSERT INTO `gov_db` (`id`, `email`, `pwd`) VALUES
(1, 'govadmin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `meal_info`
--

CREATE TABLE `meal_info` (
  `id` int(100) NOT NULL,
  `mt` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `Unit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal_info`
--

INSERT INTO `meal_info` (`id`, `mt`, `quantity`, `Unit`) VALUES
(1, 'Wheat', 30, 'kg'),
(2, 'Oil', 1, 'kg'),
(3, 'Eggs', 30, 'pieces'),
(4, 'Rice', 20, 'kg'),
(5, 'Bisciut', 6, 'Packets'),
(6, 'Banana', 2, 'Dozen');

-- --------------------------------------------------------

--
-- Table structure for table `requirement_info`
--

CREATE TABLE `requirement_info` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `delivarystatus` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `semail` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requirement_info`
--

INSERT INTO `requirement_info` (`id`, `name`, `quantity`, `unit`, `delivarystatus`, `status`, `semail`, `date`) VALUES
(9, 'Biscuit', 180, 'packets', 'Delivered', 'Approved', 'pmbmh@gmail.com', '2023-07-21'),
(10, 'Oil', 100, 'kg', 'Delivered', 'Approved', 'pmbmh@gmail.com', '2023-07-21'),
(11, 'Eggs', 900, 'pieces', 'Delivered', 'Approved', 'pmbmh@gmail.com', '2023-07-21'),
(12, 'Wheat', 4200, 'kg', 'Delivered', 'Approved', 'pmbmh@gmail.com', '2023-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `school_info`
--

CREATE TABLE `school_info` (
  `id` int(12) NOT NULL,
  `sid` int(50) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `sadd` varchar(50) NOT NULL,
  `scity` varchar(20) NOT NULL,
  `sstate` varchar(20) NOT NULL,
  `spin` int(6) NOT NULL,
  `smob` varchar(100) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_info`
--

INSERT INTO `school_info` (`id`, `sid`, `sname`, `sadd`, `scity`, `sstate`, `spin`, `smob`, `semail`, `pwd`) VALUES
(1, 1001, 'PBM  Municipal HighS', 'Near Bhavani Take', 'Shirpur', 'Maharashtra', 425405, '9087654336', 'pmbmh@gmail.com', '12345'),
(3, 1002, 'ZP  Municipal HighSc', 'Nimazari naka', 'Dhule', 'Maharashtra', 425405, '9877665544', 'zpmunicipal@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `school_login`
--

CREATE TABLE `school_login` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_login`
--

INSERT INTO `school_login` (`id`, `email`, `pwd`) VALUES
(1, 'school@gmail.com', '12345'),
(2, 'zp@gmail.com\r\n', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--
-- Error reading structure for table pm_poshan_db.student_info: #1932 - Table &#039;pm_poshan_db.student_info&#039; doesn&#039;t exist in engine
-- Error reading data for table pm_poshan_db.student_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `pm_poshan_db`.`student_info`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `student_info1`
--

CREATE TABLE `student_info1` (
  `id` int(100) NOT NULL,
  `rno` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `semail` varchar(100) NOT NULL,
  `day` int(100) NOT NULL,
  `month` int(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info1`
--

INSERT INTO `student_info1` (`id`, `rno`, `name`, `age`, `gender`, `class`, `height`, `weight`, `date`, `semail`, `day`, `month`, `status`) VALUES
(1, 1001, 'Yugandhar Borse', 15, 'male', 'X', '155', '50', '2023-07-19', 'pmbmh@gmail.com', 25, 1, 'present'),
(2, 1002, 'Nayan V mali', 14, 'male', 'VIII', '150', '45', '2023-07-20', 'pmbmh@gmail.com', 15, 1, 'present'),
(3, 1003, 'Shubham Chaudhari', 12, 'male', 'VI', '136', '40', '2023-07-17', 'pmbmh@gmail.com', 17, 1, 'present'),
(4, 1004, 'Jidnyesh D Deore', 9, 'male', 'IV', '130', '36', '2023-07-21', 'pmbmh@gmail.com', 0, 0, 'present'),
(5, 1005, 'Monoj Patil', 11, 'male', 'VI', '145', '56', '2023-07-21', 'pmbmh@gmail.com', 0, 0, 'present'),
(6, 1006, 'Nikhil', 13, 'male', 'V', '157', '56', '2023-07-22', 'pmbmh@gmail.com', 0, 0, 'present');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_info`
--

CREATE TABLE `supplier_info` (
  `id` int(50) NOT NULL,
  `sid` int(50) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `sshop` varchar(100) NOT NULL,
  `semail` varchar(100) NOT NULL,
  `smob` varchar(10) NOT NULL,
  `sadd` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_info`
--

INSERT INTO `supplier_info` (`id`, `sid`, `sname`, `sshop`, `semail`, `smob`, `sadd`, `pwd`) VALUES
(2, 12345678, 'Jidnyesh Deore', 'Tarun Food Shop', 'jidnyesh@gmail.com', '8998876865', 'Nimazari  Road', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `update_info`
--

CREATE TABLE `update_info` (
  `id` int(100) NOT NULL,
  `rno` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `height` int(100) NOT NULL,
  `weight` int(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `semail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `update_info`
--

INSERT INTO `update_info` (`id`, `rno`, `name`, `class`, `height`, `weight`, `date`, `semail`) VALUES
(1, 4, 'Nayan V mali', 'VII', 160, 50, '2023-07-21', 'pmbmh@gmail.com'),
(2, 7, 'Shubham Chaudhari', 'VI', 157, 57, '2023-07-21', 'zpmunicipal@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence_info`
--
ALTER TABLE `attendence_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_info`
--
ALTER TABLE `complaint_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gov_db`
--
ALTER TABLE `gov_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_info`
--
ALTER TABLE `meal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirement_info`
--
ALTER TABLE `requirement_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_info`
--
ALTER TABLE `school_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_login`
--
ALTER TABLE `school_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info1`
--
ALTER TABLE `student_info1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_info`
--
ALTER TABLE `supplier_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_info`
--
ALTER TABLE `update_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence_info`
--
ALTER TABLE `attendence_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint_info`
--
ALTER TABLE `complaint_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gov_db`
--
ALTER TABLE `gov_db`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meal_info`
--
ALTER TABLE `meal_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `requirement_info`
--
ALTER TABLE `requirement_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `school_info`
--
ALTER TABLE `school_info`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `school_login`
--
ALTER TABLE `school_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_info1`
--
ALTER TABLE `student_info1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier_info`
--
ALTER TABLE `supplier_info`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `update_info`
--
ALTER TABLE `update_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
