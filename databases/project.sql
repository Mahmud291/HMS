-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 08:28 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoint`
--

CREATE TABLE `appoint` (
  `id` int(11) NOT NULL,
  `dname` varchar(100) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Problem` varchar(200) DEFAULT NULL,
  `visibility` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appoint`
--

INSERT INTO `appoint` (`id`, `dname`, `pname`, `date`, `Problem`, `visibility`) VALUES
(2, 'Dipoon', 'silla ', '2021-05-04', 'N/A', '1'),
(6, 'DR sk sreuk', 'RainA RANI', '2021-01-11', 'Fractured', '1'),
(7, 'DR animesh halder', 'kijar tuinna', '2021-01-07', 'Fractured', '1'),
(18, 'DR NAHIAN', 'RainA  Raaaaaaa', '2021-05-10', 'Migraine', '1'),
(19, 'Ferdusi Begum', 'RainA  Raaaa', '2021-04-26', 'N/A', '1'),
(20, 'Md. Zakir', 'Nahian M', '2021-01-21', 'Mental', '1');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `Specialist` varchar(40) NOT NULL,
  `visiblity` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `email`, `mobile`, `Specialist`, `visiblity`) VALUES
(24, 'Mehedi', 'rahul2345@gmail.com', 1237474747, 'asddwa', 1),
(25, 'rina patellllala', 'rina@gmail.com', 1760791663, 'ssss', 1),
(30, 'ripon', 'ripon@gmail.com', 12548799, '', 1),
(228, 'Md Abul kalam', 'gazi.mehedi@gmail.com', 1859426070, '', 1),
(229, 'NAHIAN', 'gazi.mehedi@gmail.com', 1373738883, 'asd', 1),
(230, 'Ferdusi Begum', 'sjajhdhd@gmail.com', 1283747483, '', 1),
(231, 'MERAZ', 'gazi.mehedi@northsouth.edu', 1837646373, '', 1),
(285, 'Nafia Sultana', 'nafia@gmail.com', 2147483647, 'N/A', 1),
(286, 'DR Nahin', 'nafia1234@gmail.com', 1859424438, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `id` int(11) NOT NULL,
  `userName` varchar(40) DEFAULT NULL,
  `password` int(20) DEFAULT NULL,
  `visibility` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`id`, `userName`, `password`, `visibility`, `timestamp`) VALUES
(1, 'MNN_ADMIN', 123456, 10, '2021-05-19 16:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `visibility` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `address`, `date`, `mobile`, `visibility`) VALUES
(10, 'NAHIAN', 'DHAKA, BANGLADESH', '2021-04-22', 1859424433, 1),
(101, 'Russel Andru', 'Cumilla, BANGLADESH', '2021-03-12', 1859424531, 1),
(102, 'Ferdusi ', 'DHAKA, BANGLADESH', '2021-01-21', 1859334530, 1),
(103, 'Sara', 'DHAKA, BANGLADESH', '2021-02-27', 1859334565, 1),
(104, 'Raisa', 'DHAKA, BANGLADESH', '2021-01-16', 134334565, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_no` int(11) NOT NULL,
  `patient` varchar(100) NOT NULL,
  `nurse` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `roomtype` varchar(200) NOT NULL,
  `visibility` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_no`, `patient`, `nurse`, `date`, `roomtype`, `visibility`) VALUES
(102, 'AFRIDI', 'Nafia', '2021-04-27', 'ICU', '1'),
(104, 'Panna', 'Nafia', '2021-04-10', 'ICU', '1'),
(105, 'Tania ', 'Nabila', '2021-03-21', 'General', '1'),
(106, 'Rahul', 'Nafi', '2021-06-12', 'ICU', '1'),
(107, 'Raktim', 'Prova', '2021-01-12', 'ICU', '1'),
(108, 'Meraz', 'Mehedi', '2021-02-21', 'General', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `visible` varchar(10) DEFAULT NULL,
  `ct` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `visible`, `ct`) VALUES
(1, 'Meraz Mehedi', 'MNN_ADMIN', '123456', '1', '2021-05-19 16:32:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoint`
--
ALTER TABLE `appoint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoint`
--
ALTER TABLE `appoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `login_info`
--
ALTER TABLE `login_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
