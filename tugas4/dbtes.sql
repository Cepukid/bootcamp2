-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2020 at 08:48 AM
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
-- Database: `dbtes`
--

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE `Genre` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`id`, `name`) VALUES
(1, 'pop'),
(2, 'rock'),
(3, 'metal'),
(4, 'jazz');

-- --------------------------------------------------------

--
-- Table structure for table `Music`
--

CREATE TABLE `Music` (
  `id` int(11) NOT NULL,
  `tittle` varchar(25) NOT NULL,
  `durasi` varchar(10) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `id_singer` int(11) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Music`
--

INSERT INTO `Music` (`id`, `tittle`, `durasi`, `id_genre`, `id_singer`, `photo`, `deskripsi`) VALUES
(1, 'april', '03:21', 1, 4, 'https://wikitesti.com/wp-content/uploads/2019/12/april-fiersa-besari.jpg', 'ini adalah lagu'),
(3, 'separuh aku', '03:22', 2, 2, 'https://cdns.klimg.com/kapanlagi.com/wallpaper/img/noah-6198.jpg', 'ini adalah lagu'),
(5, 'wanitaku', '03:22', 2, 2, 'https://cdns.klimg.com/kapanlagi.com/wallpaper/img/noah-6198.jpg', 'ini adalah lagu'),
(6, 'walau habis terang', '03:22', 2, 2, 'https://cdns.klimg.com/kapanlagi.com/wallpaper/img/noah-6198.jpg', 'ini adalah lagu'),
(7, 'pergilah kasih', '03:22', 3, 3, 'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2019/12/03/2617566984.jpg', 'ini adalah lagu'),
(8, 'diantara kalian', '03:22', 3, 3, 'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2019/12/03/2617566984.jpg', 'ini adalah lagu'),
(9, 'jangan menyerah', '03:22', 3, 3, 'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2019/12/03/2617566984.jpg', 'ini adalah lagu'),
(10, 'bidadari tak bersayap', '03:22', 4, 4, 'https://cdns.klimg.com/dream.co.id/resources/news/2017/12/27/73628/664xauto-unggah-kisah-kegagalan-foto-lama-anji-bikin-gagal-fokus-171227b.jpg', 'ini adalah lagu'),
(11, 'dia', '03:22', 4, 4, 'https://cdns.klimg.com/dream.co.id/resources/news/2017/12/27/73628/664xauto-unggah-kisah-kegagalan-foto-lama-anji-bikin-gagal-fokus-171227b.jpg', 'ini adalah lagu'),
(12, 'berhenti di kamu', '03:22', 4, 4, 'https://cdns.klimg.com/dream.co.id/resources/news/2017/12/27/73628/664xauto-unggah-kisah-kegagalan-foto-lama-anji-bikin-gagal-fokus-171227b.jpg', 'ini adalah lagu');

-- --------------------------------------------------------

--
-- Table structure for table `Singers`
--

CREATE TABLE `Singers` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Singers`
--

INSERT INTO `Singers` (`id`, `name`) VALUES
(1, 'anji'),
(2, 'ariel'),
(3, 'ryan'),
(4, 'fiersa bersari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Music`
--
ALTER TABLE `Music`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genre` (`id_genre`) USING BTREE,
  ADD KEY `id_singer` (`id_singer`);

--
-- Indexes for table `Singers`
--
ALTER TABLE `Singers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Music`
--
ALTER TABLE `Music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Singers`
--
ALTER TABLE `Singers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Music`
--
ALTER TABLE `Music`
  ADD CONSTRAINT `id_genre` FOREIGN KEY (`id_genre`) REFERENCES `Genre` (`id`),
  ADD CONSTRAINT `id_singer` FOREIGN KEY (`id_singer`) REFERENCES `Singers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
