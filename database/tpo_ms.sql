-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2020 at 08:55 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpo_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `questionId` int(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `question` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`questionId`, `dateTime`, `question`, `userId`) VALUES
(11, '2020-01-24 21:26:45', 'What is Java', 1),
(12, '2020-01-24 21:33:13', 'What is Array and it\'s data elements', 1),
(13, '2020-01-24 21:54:39', 'What is Stack OverflowException in Java', 1),
(14, '2020-01-24 22:49:46', 'Tell me about yourself in a brief', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '3',
  `verified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `email`, `mobile`, `name`, `password`, `type`, `verified`) VALUES
(1, 'recoonie.ritesh@gmail.com', '9713891029', 'Ritesh Verma', '123', 3, 1),
(5, 'griffinritesh11@gmail.com', '982884750', 'Griffin Ritesh', '123', 2, 1),
(6, 'ankit@gmail.com', '789534985', 'Ankit Joshi', '123', 2, 1),
(7, 'aniketverma@gmail.com', '8982884750', 'Aniket Verma', '123', 3, 1),
(8, 'k@gmail.com', '843984783', 'Kaalu', '123', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`questionId`),
  ADD KEY `FK_22l3pgtotlmhquvo3ke6fnfhh` (`userId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  ADD UNIQUE KEY `UK_cnjwxx5favk5ycqajjt17fwy1` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `questionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_22l3pgtotlmhquvo3ke6fnfhh` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
