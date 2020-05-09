-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2020 at 08:16 AM
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
-- Database: `dbtes2`
--

-- --------------------------------------------------------

--
-- Table structure for table `Director`
--

CREATE TABLE `Director` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Director`
--

INSERT INTO `Director` (`id`, `name`) VALUES
(1, 'alfin'),
(2, 'nur');

-- --------------------------------------------------------

--
-- Table structure for table `Film`
--

CREATE TABLE `Film` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `durasi` varchar(50) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `id_writer` int(11) NOT NULL,
  `id_director` int(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Film`
--

INSERT INTO `Film` (`id`, `title`, `durasi`, `id_genre`, `id_writer`, `id_director`, `photo`, `rating`, `deskripsi`) VALUES
(1, 'film komedi', '20 menit', 2, 1, 1, 'foto.jpg', '5', 'ini film'),
(2, 'film horor', '20 menit', 1, 2, 1, 'foto.jpg', '4.5', 'ini film');

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE `Genre` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`id`, `name`) VALUES
(1, 'horor'),
(2, 'comedy');

-- --------------------------------------------------------

--
-- Table structure for table `Writer`
--

CREATE TABLE `Writer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Writer`
--

INSERT INTO `Writer` (`id`, `name`) VALUES
(1, 'babe'),
(2, 'papa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Director`
--
ALTER TABLE `Director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Writer`
--
ALTER TABLE `Writer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Director`
--
ALTER TABLE `Director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Film`
--
ALTER TABLE `Film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Writer`
--
ALTER TABLE `Writer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
