-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 11:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830', '2020-09-08 20:31:45', '2022-09-24');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'BTH123', 'B.Tech', 'Bachelor  Of Technology', '2020-09-23 00:45:13'),
(2, 'BCOM18', 'B.Com', 'Bachelor Of Commerce ', '2020-09-23 00:45:13'),
(3, 'BSC296', 'BSC', 'Bachelor  of Science', '2020-09-23 00:45:13'),
(4, 'BCOA55', 'BCA', 'Bachelor Of Computer Application', '2020-09-23 00:45:13'),
(5, 'MCA001', 'MCA', 'Master of Computer Application', '2020-09-23 00:47:13'),
(6, 'MBA777', 'MBA', 'Master In Business Administration', '2020-09-23 00:54:13'),
(7, 'BE069', 'BE', 'Bachelor of Engineering', '2020-09-23 00:59:13'),
(8, 'BIT353', 'BIT', 'Bachelors In Information Technology', '2021-03-07 06:59:05'),
(9, 'MIT005', 'MIT', 'Master of Information Technology', '2022-04-03 13:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `regno` int(11)NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `marks` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  -- `roomno` int(11) NOT NULL,
  -- `seater` int(11) NOT NULL,
  -- `feespm` int(11) NOT NULL,
  -- `foodstatus` int(11) NOT NULL,
  -- `stayfrom` date NOT NULL,
  -- `duration` int(11) NOT NULL,
  -- `egycontactno` bigint(11) NOT NULL,
  
  -- `pmnatetState` varchar(500) NOT NULL,
  

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `marks`,`course`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresPincode`,`password`) VALUES
(00,'REG00','ac','bd','fe','male',23114555,'abc@gmail.com',78,'Information Technology','xyz','brother',454545454,'xzx','jalgaon',452005,'pass@123');
-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 1990, '2020-09-20 04:24:06'),
(2, 4, 201, 1650, '2020-09-20 04:24:06'),
(3, 2, 200, 910, '2020-09-20 04:33:06'),
(4, 3, 112, 1300, '2020-09-20 04:33:30'),
(5, 5, 132, 1990, '2020-09-20 04:28:52'),
(6, 4, 11, 1650, '2021-03-07 05:01:02'),
(7, 2, 269, 910, '2022-04-03 14:39:22'),
(8, 1, 310, 750, '2022-04-03 14:41:36'),
(9, 1, 330, 750, '2022-04-03 14:41:53'),
(10, 1, 1000, 7800, '2022-09-24 11:50:52'),
(11, 3, 1001, 9000, '2022-09-24 11:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia'),
(11, 'Hawaii'),
(12, 'Idaho'),
(13, 'Illinois'),
(14, 'Iowa'),
(15, 'Kansas'),
(16, 'Kentucky'),
(17, 'Louisiana'),
(18, 'Maine'),
(19, 'Marryland'),
(20, 'Massachusetts'),
(21, 'Michigan'),
(22, 'Minnesota'),
(23, 'Mississippi'),
(24, 'Missouri'),
(25, 'Nevada'),
(26, 'New Jersey'),
(27, 'New York'),
(28, 'North Carolina'),
(29, 'North Dakota'),
(30, 'Ohio'),
(31, 'Oklahoma'),
(32, 'South Carolina'),
(33, 'South Dakota'),
(34, 'Texas'),
(35, 'Virginia'),
(36, 'Washington');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(9, 10, 'terry@mail.com', 0x3a3a31, '', '', '2021-03-05 04:12:00'),
(10, 10, 'terry@mail.com', 0x3a3a31, '', '', '2021-03-05 04:14:44'),
(11, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-05 04:19:52'),
(12, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-05 08:53:33'),
(13, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-05 17:35:34'),
(14, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-06 02:43:01'),
(15, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-06 15:18:49'),
(16, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-07 09:35:23'),
(17, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-07 09:59:55'),
(18, 22, 'colin@gmail.com', 0x3a3a31, '', '', '2021-06-16 14:51:24'),
(19, 22, 'colin@gmail.com', 0x3a3a31, '', '', '2021-12-12 15:31:50'),
(20, 22, 'colin@gmail.com', 0x3a3a31, '', '', '2022-04-02 16:01:31'),
(21, 21, 'ross@mail.com', 0x3a3a31, '', '', '2022-04-02 16:52:47'),
(22, 20, 'richards@mail.com', 0x3a3a31, '', '', '2022-04-03 13:15:00'),
(23, 24, 'jennifer@mail.com', 0x3a3a31, '', '', '2022-04-03 14:32:09'),
(24, 24, 'jennifer@mail.com', 0x3a3a31, '', '', '2022-04-03 14:34:17'),
(25, 19, 'bruce@mail.com', 0x3a3a31, '', '', '2022-04-03 14:44:31'),
(26, 27, 'nancy@mail.com', 0x3a3a31, '', '', '2022-04-03 15:00:46'),
(27, 32, 'liamoore@mail.com', 0x3a3a31, '', '', '2022-04-03 15:48:35'),
(28, 32, 'liamoore@mail.com', 0x3a3a31, '', '', '2022-04-03 15:51:34'),
(29, 33, 'resress4078@outlook.com', 0x3a3a31, '', '', '2022-09-24 11:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`,`marks`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES

(33, 'CD/2545/21', 'Erick', 'Omundi', 'Omari', 'Male', 785963245, 'resress4078@outlook.com','91', 'e10adc3949ba59abbe56e057f20f883e', '2022-09-24 11:55:42', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
