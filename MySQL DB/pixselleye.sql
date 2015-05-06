-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2015 at 08:03 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pixselleye`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `Bus No` int(11) NOT NULL,
  `Driver_ID` varchar(100) NOT NULL,
  `Plate No` varchar(10) NOT NULL,
  `Bus Aide's Full Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Bus No`, `Driver_ID`, `Plate No`, `Bus Aide's Full Name`) VALUES
(1, '0987654321', 'ABC-123', 'Wilson Asper'),
(2, '1234567890', 'ABC-124', 'Won Ku');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `Department_ID` int(11) NOT NULL,
  `Department Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_ID`, `Department Name`) VALUES
(909111, 'Math'),
(909112, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `Driver_ID` int(11) NOT NULL,
  `Full Name` varchar(45) NOT NULL,
  `License Serial No` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Contact No` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`Driver_ID`, `Full Name`, `License Serial No`, `Gender`, `Contact No`) VALUES
(20121235, 'Jimmie Morts', '2012-192135', 'Male', '0912345678'),
(987654321, 'Willie Miyo', '2012-192134', 'Male', '0912345678');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `Employee_ID` int(11) NOT NULL,
  `Full Name` varchar(100) NOT NULL,
  `Department ID` int(11) NOT NULL,
  `Bus No` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Birthdate` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ContactNo` varchar(45) NOT NULL,
  `Employee Image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `Full Name`, `Department ID`, `Bus No`, `Age`, `Birthdate`, `Gender`, `Address`, `Email`, `ContactNo`, `Employee Image`) VALUES
(20121234, 'Willie Me', 909111, '1', 24, '1990-11-06', 'Male', 'manila', 'willie@gmail.com', '0912345678', NULL),
(20121235, 'Wang Mie', 909111, '2', 25, '1989-05-05', 'Male', 'Manila', 'wang@gmail.com', '0912345678', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `RFID Serial` varchar(45) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Boarding Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Drop-off Time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Time-In` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Time-Out` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `Student_ID` int(11) NOT NULL,
  `Full Name` varchar(100) NOT NULL,
  `ContactNo` varchar(45) NOT NULL,
  `Grade Level` varchar(45) NOT NULL,
  `Bus No.` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Birthdate` date NOT NULL,
  `Home Address` varchar(200) NOT NULL,
  `Email Address` varchar(100) NOT NULL,
  `Mother's Name` varchar(100) NOT NULL,
  `M_ContactNo` int(11) NOT NULL,
  `M_Email` varchar(100) NOT NULL,
  `Father's Name` varchar(100) NOT NULL,
  `F_ContactNo` int(11) NOT NULL,
  `F_Email` varchar(100) NOT NULL,
  `Guardian's Name` varchar(100) NOT NULL,
  `G_ContactNo` varchar(100) NOT NULL,
  `G_Email` varchar(45) NOT NULL,
  `Siblings` varchar(100) NOT NULL,
  `Student Image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Full Name`, `ContactNo`, `Grade Level`, `Bus No.`, `Age`, `Birthdate`, `Home Address`, `Email Address`, `Mother's Name`, `M_ContactNo`, `M_Email`, `Father's Name`, `F_ContactNo`, `F_Email`, `Guardian's Name`, `G_ContactNo`, `G_Email`, `Siblings`, `Student Image`) VALUES
(20124567, 'Albert John Napa Madrid', '0987654321', '10', '1', 19, '1995-08-11', 'Manila', 'aj@pixsell.sg', 'mom', 987654333, 'mom@gmail.com', 'dad', 987654333, 'dad@gmail.com', 'guardian', '0987654333', 'guardian@gmail.com', 'sibling - 0912345678', NULL),
(20124568, 'Andrew Patrick Flores yap', '09123456789', '10', '1', 19, '1996-03-17', 'manila', 'apy@pixsell.sg', 'mother', 912345678, 'mother@gmail.com', 'father', 912345678, 'father@gmail.com', 'guardian of the galaxy', '0912345678', 'guardianofthegalaxy@gmail.com', 'siblings - 0912356789', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `RFID Serial` varchar(45) NOT NULL,
  `User ID Number` varchar(45) NOT NULL,
  `User Level` varchar(45) NOT NULL,
  `Bus No` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE IF NOT EXISTS `visitor` (
  `Visitor_ID` int(11) NOT NULL,
  `Full Name` varchar(100) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Valid ID` varchar(45) NOT NULL,
  `ID Code` varchar(45) NOT NULL,
  `Purpose of Visit` longtext NOT NULL,
  `Visitor Image` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`Visitor_ID`, `Full Name`, `Gender`, `Valid ID`, `ID Code`, `Purpose of Visit`, `Visitor Image`) VALUES
(12345, 'visitor1', 'female', 'driver''s license', '7612783781263', 'visit', NULL),
(12346, 'visitor2', 'male', 'philhealth', '7612783781264', 'visit', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Bus No`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_ID`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`Driver_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`RFID Serial`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`RFID Serial`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`Visitor_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
