-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 01:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'manas jss', 'admin', 8601896996, 'tester1@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-12-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '261064124', 'Komal', 'komal@gmail.com', 7798797897, '7/27/2021', '4:00pm', '1', '2021-12-26 04:48:25', 'Accepted', '1', '2022-01-10 08:50:52'),
(2, '985645887', 'Kashish', 'Kash@gmail.com', 4654654654, '12/29/2021', '4:30pm', 'Deluxe Pedicure', '2021-12-26 05:04:38', 'ACCEPTED', '2', '2021-12-26 06:47:04'),
(3, '965887988', 'Sanjeeta Jain', 'sna@gmail.com', 5646464646, '12/20/2021', '2:30pm', 'Loreal Hair Color(Full)', '2021-12-19 12:35:30', 'we will wait', '1', '2021-12-19 13:37:39'),
(4, '578797544', 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 123456789, '12/30/2021', '1:30am', 'Test', '2021-12-20 16:13:13', 'yes you can visit', '1', '2021-12-21 12:40:20'),
(5, '899118550', 'bb', 'bgfdh@fdfdsf.com', 4234235423, '12/27/2021', '1:30am', 'Loreal Hair Color(Full)', '2021-12-21 16:14:14', 'its been old ', '2', '2021-12-21 13:35:14'),
(6, '621107928', 'ABC', 'abc@gmail.com', 1234567890, '12/27/2021', '1:30am', 'Rebonding', '0000-00-00 00:00:00', 'Testing', '2', '2021-12-21 16:24:10'),
(7, '100014234', 'Manish Shrestha', 'maneesmanish@gmail.com', 9827190091, '9/11/2021', '10:00am', 'O3 Facial', '2021-12-10 12:39:20', 'yes', '1', '2021-09-10 12:40:37'),
(8, '884949123', 'Racheal', 'rach@gmail.com', 984547485, '12/19/2021', '10:30am', 'Deluxe Pedicure', '2021-12-12 13:34:05', 'deluxe pedicure accepted', '1', '2022-01-10 08:50:31'),
(9, '726703075', 'Manas khetan', 'manaskhetan@gmail.com', 8601896996, '1/17/2022', '1:00am', 'O3 Facial', '2022-01-10 08:11:48', 'ACCEPTED', '1', '2022-01-10 08:55:05'),
(10, '515567370', 'khushi', 'askdkada@gmail.com', 8989745455, '1/17/2022', '12:00am', 'O3 Facial', '2022-01-10 09:15:14', 'ugu\r\n\r\n', '2', '2022-01-11 15:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'amisha', 'ams@gmail.com', 5546464646, 'Female', 'Taking Hair Spa', '2021-12-26 11:09:10', '2022-01-10 08:42:34'),
(2, 'Rahul Singh', 'singh@gmail.com', 5565565656, 'Male', 'Taken haircut by him', '2021-12-26 11:10:02', NULL),
(3, 'Khusbu', 'saini@gmail.com', 4646445464, 'Transgender', 'khjhhkjkjkuhj', '2021-12-26 11:10:28', NULL),
(4, 'Sanjeeta Jain', 'san@gmail.com', 5646464646, 'Female', 'Taking Body Spa', '2021-12-19 13:38:58', NULL),
(5, 'Test user', 'testuser@gmail.com', 1234567890, 'Female', 'Test', '2021-12-21 16:24:53', '2022-01-10 08:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 2, 2, 621839533, '2021-12-30 15:33:22'),
(2, 2, 5, 621839533, '2021-12-04 15:33:22'),
(3, 2, 6, 621839533, '2021-12-30 15:33:22'),
(4, 2, 7, 621839533, '2021-12-30 15:33:22'),
(5, 1, 1, 904156433, '2021-12-30 15:40:42'),
(6, 1, 2, 904156433, '2021-12-30 15:40:42'),
(7, 1, 3, 904156433, '2021-12-30 15:40:42'),
(8, 1, 4, 904156433, '2021-12-30 15:40:42'),
(9, 3, 1, 225057023, '2021-12-30 16:03:32'),
(10, 3, 8, 225057023, '2021-12-30 16:03:32'),
(11, 3, 1, 970548035, '2021-12-31 04:42:45'),
(12, 3, 6, 970548035, '2021-12-31 04:42:45'),
(13, 3, 9, 970548035, '2021-12-31 04:42:45'),
(14, 4, 2, 942476283, '2021-12-19 13:39:13'),
(15, 4, 12, 942476283, '2021-12-19 13:39:13'),
(16, 5, 3, 297018570, '2021-12-21 16:25:27'),
(17, 5, 4, 297018570, '2021-12-21 16:25:27'),
(18, 5, 8, 297018570, '2021-12-21 16:25:27'),
(19, 5, 1, 811968313, '2021-12-10 13:47:07'),
(20, 5, 11, 811968313, '2021-12-10 13:47:07'),
(21, 5, 12, 811968313, '2021-12-10 13:47:07'),
(22, 5, 14, 811968313, '2021-12-10 13:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'BANGLORE,INDIA', 'manaskhetan@gmail.com', 8601896996, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'O3 Facial', 1200, '2021-12-30 11:22:38'),
(2, 'Fruit Facial', 500, '2021-12-25 11:22:53'),
(3, 'Charcol Facial', 1000, '2021-12-25 11:23:10'),
(4, 'Deluxe Menicure', 500, '2021-12-25 11:23:34'),
(5, 'Deluxe Pedicure', 600, '2021-12-25 11:23:47'),
(6, 'Normal Menicure', 300, '2021-12-26 11:24:01'),
(7, 'Normal Pedicure', 400, '2021-12-25 11:24:19'),
(8, 'U-Shape Hair Cut', 250, '2021-12-25 11:24:38'),
(9, 'Layer Haircut', 550, '2021-12-25 11:24:53'),
(10, 'Rebonding', 3999, '2021-12-25 11:25:08'),
(11, 'Loreal Hair Color(Full)', 1200, '2021-12-25 11:25:35'),
(12, 'Body Spa', 1500, '2021-12-19 13:36:27'),
(14, 'Test', 100, '2021-12-21 15:45:50'),
(15, 'ABC', 200, '2021-12-21 16:23:23'),
(16, 'Curly Hair Treatment', 2000, '2021-12-20 13:36:07'),
(17, 'men hair cut\r\n', 200, '2022-01-10 08:36:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
