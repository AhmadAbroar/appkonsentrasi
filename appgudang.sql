-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 02:59 AM
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
-- Database: `appgudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_admin`
--

CREATE TABLE `data_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username_admin` varchar(100) NOT NULL,
  `password_admin` varchar(100) NOT NULL,
  `level_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`id_admin`, `nama_admin`, `username_admin`, `password_admin`, `level_admin`) VALUES
(1, 'ahmad abroar', 'ahmad', 'admin', 1),
(2, 'Alwi', 'user', 'user', 2),
(3, 'Muh. Khairul', 'elu', 'elu', 1),
(4, 'La ode ', 'ode', 'ode', 2),
(5, 'Hasmiralda', 'alda', 'alda', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE `data_barang` (
  `id_barang` int(11) NOT NULL,
  `id_merek` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`id_barang`, `id_merek`, `id_type`, `nama_barang`, `stok_barang`, `foto`) VALUES
(5, 4, 7, 'knalpot rainbow', 10, '1671086709.jpg'),
(6, 4, 3, 'spoiler', 2, '1671036515.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_barang_keluar`
--

CREATE TABLE `data_barang_keluar` (
  `id_barang_keluar` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_keluar` int(11) NOT NULL,
  `tgl_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_barang_keluar`
--

INSERT INTO `data_barang_keluar` (`id_barang_keluar`, `id_admin`, `id_barang`, `jumlah_keluar`, `tgl_keluar`) VALUES
(2, 2, 5, 3, '2022-12-20'),
(3, 4, 5, 5, '2022-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `data_barang_masuk`
--

CREATE TABLE `data_barang_masuk` (
  `id_barang_masuk` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_dist` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_masuk` int(11) NOT NULL,
  `tgl_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_barang_masuk`
--

INSERT INTO `data_barang_masuk` (`id_barang_masuk`, `id_admin`, `id_dist`, `id_barang`, `jumlah_masuk`, `tgl_masuk`) VALUES
(7, 2, 1, 5, 3, '2022-12-19'),
(8, 2, 2, 6, 3, '2022-12-19'),
(9, 4, 3, 5, 10, '2022-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `data_distributor`
--

CREATE TABLE `data_distributor` (
  `id_dist` int(11) NOT NULL,
  `nama_dist` varchar(100) NOT NULL,
  `alamat_dist` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_distributor`
--

INSERT INTO `data_distributor` (`id_dist`, `nama_dist`, `alamat_dist`, `telp`) VALUES
(1, 'Pt. platjaya', 'btp blok c no.11', '082239611295'),
(2, 'bengkel studio', 'btp blok a', '087656453212'),
(3, 'Racing Club', 'Pallangga, gowa', '087654321298');

-- --------------------------------------------------------

--
-- Table structure for table `data_merek`
--

CREATE TABLE `data_merek` (
  `id_merek` int(11) NOT NULL,
  `nama_merek` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_merek`
--

INSERT INTO `data_merek` (`id_merek`, `nama_merek`) VALUES
(2, 'toyota'),
(3, 'mitsubitsi'),
(4, 'HONDA'),
(5, 'suzuki');

-- --------------------------------------------------------

--
-- Table structure for table `data_type`
--

CREATE TABLE `data_type` (
  `id_type` int(11) NOT NULL,
  `id_merek` int(11) NOT NULL,
  `nama_type` varchar(100) NOT NULL,
  `tahun_rilis` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_type`
--

INSERT INTO `data_type` (`id_type`, `id_merek`, `nama_type`, `tahun_rilis`) VALUES
(2, 2, 'Landcrusser', '2015-07-08'),
(3, 4, 'civic', '2022-12-13'),
(4, 3, 'pajero', '2014-12-29'),
(5, 2, 'L300', '2014-05-13'),
(6, 4, 'brio', '2022-12-13'),
(7, 4, 'CRV', '2020-01-13'),
(8, 2, 'fortuner', '2021-07-13'),
(9, 5, 'karimun', '2020-01-13'),
(10, 5, 'ignis', '2020-01-19'),
(11, 3, 'xpander', '2022-12-11'),
(12, 2, 'yaris', '2022-12-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_merek` (`id_merek`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `data_barang_keluar`
--
ALTER TABLE `data_barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `data_barang_masuk`
--
ALTER TABLE `data_barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_dist` (`id_dist`);

--
-- Indexes for table `data_distributor`
--
ALTER TABLE `data_distributor`
  ADD PRIMARY KEY (`id_dist`);

--
-- Indexes for table `data_merek`
--
ALTER TABLE `data_merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `data_type`
--
ALTER TABLE `data_type`
  ADD PRIMARY KEY (`id_type`),
  ADD KEY `id_merek` (`id_merek`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_barang_keluar`
--
ALTER TABLE `data_barang_keluar`
  MODIFY `id_barang_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_barang_masuk`
--
ALTER TABLE `data_barang_masuk`
  MODIFY `id_barang_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data_distributor`
--
ALTER TABLE `data_distributor`
  MODIFY `id_dist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_merek`
--
ALTER TABLE `data_merek`
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_type`
--
ALTER TABLE `data_type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD CONSTRAINT `data_barang_ibfk_1` FOREIGN KEY (`id_merek`) REFERENCES `data_merek` (`id_merek`),
  ADD CONSTRAINT `data_barang_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `data_type` (`id_type`);

--
-- Constraints for table `data_barang_keluar`
--
ALTER TABLE `data_barang_keluar`
  ADD CONSTRAINT `data_barang_keluar_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `data_admin` (`id_admin`),
  ADD CONSTRAINT `data_barang_keluar_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `data_barang` (`id_barang`);

--
-- Constraints for table `data_barang_masuk`
--
ALTER TABLE `data_barang_masuk`
  ADD CONSTRAINT `data_barang_masuk_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `data_admin` (`id_admin`),
  ADD CONSTRAINT `data_barang_masuk_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `data_barang` (`id_barang`),
  ADD CONSTRAINT `data_barang_masuk_ibfk_3` FOREIGN KEY (`id_dist`) REFERENCES `data_distributor` (`id_dist`);

--
-- Constraints for table `data_type`
--
ALTER TABLE `data_type`
  ADD CONSTRAINT `data_type_ibfk_1` FOREIGN KEY (`id_merek`) REFERENCES `data_merek` (`id_merek`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
