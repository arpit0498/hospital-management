-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2019 at 06:24 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'arpit', 'arpit123', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Dentist', 1, 1, 500, '2016-12-31', '09:25', '2017-01-01 00:29:02', 1, 0, ''),
(2, 'Homeopath', 4, 5, 700, '2017-01-11', '14:10', '2017-01-07 08:02:58', 0, 1, ''),
(3, 'Ayurveda', 8, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 1, ''),
(4, 'Dentist', 1, 8, 500, '2019-11-10', '3:15 PM', '2019-11-05 14:32:46', 1, 0, ''),
(5, 'Ayurveda', 5, 9, 8050, '2019-11-13', '11:15 PM', '2019-11-06 17:37:37', 1, 1, ''),
(6, 'Dentist', 1, 10, 500, '2019-11-20', '12:30 PM', '2019-11-07 06:48:40', 1, 1, ''),
(7, 'General Physician', 3, 11, 1200, '2019-11-29', '9:30 AM', '2019-11-07 06:52:38', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2019-11-06 17:28:02'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '0000-00-00 00:00:00'),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '0000-00-00 00:00:00'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '2019-11-06 17:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'sarita@gmail.com', 0x30000000000000000000000000000000, '2017-01-06 05:53:31', '', 1),
(2, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:07', '', 0),
(3, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:37', '06/01/2017 07:36:45', 1),
(4, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:41:33', '12:11:46', 1),
(5, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:55:16', '06-01-2017 12:27:47 PM', 1),
(6, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:12', '', 0),
(7, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:42', '', 0),
(8, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:55', '', 0),
(9, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:05:54', '07-01-2017 01:36:28 PM', 1),
(10, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2019-06-23 18:15:31', '23-06-2019 11:47:36 PM', 1),
(11, NULL, 'arpitpachaila@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-05 14:33:34', NULL, 0),
(12, NULL, 'anuj', 0x3a3a3100000000000000000000000000, '2019-11-05 14:34:12', NULL, 0),
(13, NULL, 'anuj', 0x3a3a3100000000000000000000000000, '2019-11-05 14:36:19', NULL, 0),
(14, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2019-11-05 14:37:51', '05-11-2019 08:09:10 PM', 1),
(15, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-05 14:41:01', NULL, 1),
(16, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:24:23', NULL, 1),
(17, NULL, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:27:20', NULL, 0),
(18, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:27:37', '06-11-2019 10:58:38 PM', 1),
(19, 1, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:29:31', '06-11-2019 10:59:59 PM', 1),
(20, 5, 'sanjeev@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:38:14', '06-11-2019 11:12:48 PM', 1),
(21, 6, 'amrita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:43:24', '06-11-2019 11:13:51 PM', 1),
(22, 6, 'amrita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:44:20', '06-11-2019 11:14:46 PM', 1),
(23, 3, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:45:02', '06-11-2019 11:23:52 PM', 1),
(24, 3, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:54:13', NULL, 1),
(25, 6, 'amrita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:54:34', NULL, 1),
(26, 1, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:57:31', '06-11-2019 11:28:31 PM', 1),
(27, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:58:49', '06-11-2019 11:28:58 PM', 1),
(28, 3, 'nitesh@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:59:13', '06-11-2019 11:29:29 PM', 1),
(29, 4, 'vijay@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:59:47', '06-11-2019 11:31:38 PM', 1),
(30, 5, 'sanjeev@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 18:01:56', '06-11-2019 11:32:08 PM', 1),
(31, 6, 'amrita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 18:02:21', '06-11-2019 11:32:49 PM', 1),
(32, 6, 'amrita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-07 06:12:05', NULL, 1),
(33, 1, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-07 06:30:30', NULL, 1),
(34, 5, 'sanjeev@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-07 06:34:51', NULL, 1),
(35, 1, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-07 06:50:23', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 88447844789, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-11-06 17:22:31', 1),
(2, 'Anuj kumar', 'anuj@gmail.com', 990694568, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, '2019-11-06 17:22:21', NULL),
(3, 'Arpit Gupta', 'arpitpachaila@gmail.com', 6005102780, ' do you sent doctor for home checkup?', '2019-11-06 17:20:08', 'NO, but we will start this soon.', '2019-11-06 17:21:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', 0x3a3a3100000000000000000000000000, '2017-01-06 07:02:28', '', 1),
(7, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:04:28', '', 1),
(8, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:08:01', '', 1),
(10, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:10:09', '06-01-2017 12:41:43 PM', 1),
(11, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:18', '07-01-2017 01:27:34 PM', 1),
(12, 0, 'asdad', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:44', '', 0),
(13, 0, 'xyz@test.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:59:43', '', 0),
(14, 5, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:00:44', '07-01-2017 01:34:19 PM', 1),
(15, 6, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-23 18:30:16', '24-06-2019 12:10:17 AM', 1),
(16, NULL, 'arpitpachaila@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-05 14:32:11', NULL, 0),
(17, 8, 'arpitpachaila@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-05 14:32:21', NULL, 1),
(18, 8, 'arpitpachaila@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-05 14:49:11', NULL, 1),
(19, 9, 'pryanshi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 17:35:25', '06-11-2019 11:07:50 PM', 1),
(20, 9, 'pryanshi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 18:03:33', NULL, 1),
(21, 10, 'arun@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-07 06:16:08', NULL, 1),
(22, 10, 'arun@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-07 06:31:09', NULL, 1),
(23, 10, 'arun@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-07 06:48:05', NULL, 1),
(24, 11, 'arpitpachaila@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-07 06:51:57', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Anuj kumar', 'Test address', 'Aligarh', 'Males', 'info@w3gang.com', '5c428d8875d2948607f3e3fe134d71b4', '2016-12-26 07:03:09', '2019-06-30 11:59:05'),
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', '0000-00-00 00:00:00'),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '0000-00-00 00:00:00'),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '0000-00-00 00:00:00'),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '0000-00-00 00:00:00'),
(8, 'Arpit Gupta', 'mens hostel sir mvit, yehlanka', 'banglore', 'male', 'arpit@gmail.com', '3599a65b7f473f2377441a897dfec5a4', '2019-11-05 14:27:37', '2019-11-06 17:33:33'),
(9, 'Pryanshi', 'udhampur,182101', 'udhampur', 'female', 'pryanshi@gmail.com', '7547d70e59cafed905533b93102cfb93', '2019-11-06 17:35:01', NULL),
(10, 'Arun Singh', 'bangalore', 'bangalore', 'male', 'arun@gmail.com', 'a10372605b860035a32286c3fa356e8e', '2019-11-07 06:15:43', NULL),
(11, 'aditi', 'banglore', 'banglore', 'female', 'arpitpachaila@gmail.com', '2b6af4c5a1a6387fd6fbff6c7089a76d', '2019-11-07 06:51:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
