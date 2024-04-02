-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 11:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `webphim` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `webphim`;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webphim`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminaccount`
--

CREATE TABLE `adminaccount` (
  `IDAD` int(11) NOT NULL,
  `UserAD` varchar(50) NOT NULL,
  `PassAD` varchar(50) NOT NULL,
  `Token` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `IDComment` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `IDphim` int(11) NOT NULL,
  `Noidung` text NOT NULL,
  `TimeComment` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phim`
--

CREATE TABLE `phim` (
  `IDPhim` int(11) NOT NULL,
  `TenPhim` varchar(50) NOT NULL,
  `IDTheLoai` int(11) NOT NULL,
  `SoTap` bigint(20) NOT NULL,
  `SoTapDaChieu` bigint(20) NOT NULL,
  `ThoiLuong` time NOT NULL,
  `LuotXem` bigint(20) NOT NULL,
  `NhaSanXuat` varchar(50) NOT NULL,
  `QuocGia` varchar(50) NOT NULL,
  `Nam` year(4) NOT NULL,
  `DienVien` varchar(50) NOT NULL,
  `DaoDien` varchar(50) NOT NULL,
  `Banner` varchar(50) NOT NULL,
  `NoiDung` text NOT NULL,
  `TrangThai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phim`
--

INSERT INTO `phim` (`IDPhim`, `TenPhim`, `IDTheLoai`, `SoTap`, `SoTapDaChieu`, `ThoiLuong`, `LuotXem`, `NhaSanXuat`, `QuocGia`, `Nam`, `DienVien`, `DaoDien`, `Banner`, `NoiDung`, `TrangThai`) VALUES
(46, 'aaa', 20, 22, 0, '00:00:00', 0, '', '', '2023', '', '', '1682111813_135099.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `IDPhim` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tapphim`
--

CREATE TABLE `tapphim` (
  `IDTapPhim` int(11) NOT NULL,
  `IDPhim` int(11) NOT NULL,
  `TapSo` int(11) NOT NULL,
  `SourcePhim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `IDTheLoai` int(11) NOT NULL,
  `TenTheLoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`IDTheLoai`, `TenTheLoai`) VALUES
(23, 'a'),
(20, 'Hanh dongs');

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE `useraccount` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `NgaySinh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`UserID`, `Username`, `Password`, `HoTen`, `Mail`, `NgaySinh`) VALUES
(3, 'bbbbx', 'x', '', 'x', '2023-04-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminaccount`
--
ALTER TABLE `adminaccount`
  ADD PRIMARY KEY (`IDAD`);

--
-- Indexes for table `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`IDPhim`),
  ADD KEY `phimtheloai` (`IDTheLoai`),
  ADD KEY `phimbanner` (`Banner`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`IDPhim`,`UserID`);

--
-- Indexes for table `tapphim`
--
ALTER TABLE `tapphim`
  ADD PRIMARY KEY (`IDTapPhim`),
  ADD KEY `tapphim_phim` (`IDPhim`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`IDTheLoai`),
  ADD UNIQUE KEY `TenTheLoai` (`TenTheLoai`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminaccount`
--
ALTER TABLE `adminaccount`
  MODIFY `IDAD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phim`
--
ALTER TABLE `phim`
  MODIFY `IDPhim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tapphim`
--
ALTER TABLE `tapphim`
  MODIFY `IDTapPhim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `IDTheLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `useraccount`
--
ALTER TABLE `useraccount`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phim`
--
ALTER TABLE `phim`
  ADD CONSTRAINT `phimtheloai` FOREIGN KEY (`IDTheLoai`) REFERENCES `theloai` (`IDTheLoai`);

--
-- Constraints for table `tapphim`
--
ALTER TABLE `tapphim`
  ADD CONSTRAINT `tapphim_phim` FOREIGN KEY (`IDPhim`) REFERENCES `phim` (`IDPhim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
