-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 09:13 AM
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
-- Database: `dsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `practical`
--

CREATE TABLE `practical` (
  `Practical_No` int(11) NOT NULL,
  `Practicals` varchar(20) NOT NULL,
  `Subjects` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `practical`
--

INSERT INTO `practical` (`Practical_No`, `Practicals`, `Subjects`) VALUES
(19, 'S. PRACTICAL 1', 'SAD'),
(20, 'DB. PRACTICAL 1', 'DATABASE'),
(21, 'DB. PRACTICAL 5', 'DATABASE'),
(22, 'DB. PRACTICAL 6', 'DATABASE'),
(23, 'S. PRACTICAL 2', 'SAD'),
(24, 'S. PRACTICAL 3', 'SAD'),
(26, 'P.PRACTICAL 1', 'PROGRAMMING'),
(28, 'P.PRACTICAL 3', 'PROGRAMMING'),
(29, 'S. PRACTICAL 1', 'SAD');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subject_ID` int(4) NOT NULL,
  `Subjects` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subject_ID`, `Subjects`) VALUES
(2, 'DATABASE'),
(3, 'PROGRAMMING'),
(1, 'SAD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `practical`
--
ALTER TABLE `practical`
  ADD PRIMARY KEY (`Practical_No`),
  ADD KEY `Test` (`Subjects`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subjects`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `practical`
--
ALTER TABLE `practical`
  MODIFY `Practical_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `practical`
--
ALTER TABLE `practical`
  ADD CONSTRAINT `Test` FOREIGN KEY (`Subjects`) REFERENCES `subject` (`Subjects`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
