-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 06:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kerudung`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Id_Barang` int(50) NOT NULL,
  `Nama_Barang` varchar(30) NOT NULL,
  `Warna_Barang` varchar(30) NOT NULL,
  `Harga_Barang` varchar(30) NOT NULL,
  `Jumlah_Barang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`Id_Barang`, `Nama_Barang`, `Warna_Barang`, `Harga_Barang`, `Jumlah_Barang`) VALUES
(5, 'Bergo Prisket', 'Hijau', '20000', '78'),
(6, 'Kerudung Anak', 'Putih', '23000', '180'),
(7, 'Bella Square', 'Hijau Terang', '25000', '82'),
(8, 'Rabani', 'Hitam', '45000', '54'),
(9, 'Prisket Ring', 'Kuning', '35000', '26'),
(10, 'Bergo Maryam', 'Merah', '27000', '43'),
(11, 'Kalisa Motif', 'Biru', '26500', '76'),
(12, 'Bergo Maryam Prisket', 'Putih', '36500', '39'),
(13, 'Ruby Diamond', 'Ungu', '32500', '65'),
(14, 'Prisket Renda', 'Hijau', '37500', '41'),
(15, 'Prisket Jambu', 'Biru Muda', '27500', '57'),
(16, 'Segi Empat', 'Merah Muda', '23500', '89'),
(17, 'Segi Empat Saudia', 'Merah Putih', '26500', '12');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Id_Trsk` int(11) NOT NULL,
  `Tanggal_Trsk` date NOT NULL,
  `Id_Barang` int(11) NOT NULL,
  `Nama_Barang` varchar(30) NOT NULL,
  `Warna_Barang` varchar(30) NOT NULL,
  `Harga_Barang` varchar(30) NOT NULL,
  `Jumlah_Barang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Id_Trsk`, `Tanggal_Trsk`, `Id_Barang`, `Nama_Barang`, `Warna_Barang`, `Harga_Barang`, `Jumlah_Barang`) VALUES
(6, '2022-01-10', 5, 'Bergo Prisket', 'Hijau', '20000', '2'),
(7, '2022-01-10', 8, 'Rabani', 'Hitam', '45000', '3'),
(8, '2022-01-11', 17, 'Segi Empat Saudia', 'Merah Putih', '26500', '5'),
(9, '2022-01-11', 13, 'Ruby Diamond', 'Ungu', '32500', '4'),
(10, '2022-01-12', 15, 'Prisket Jambu', 'Biru Muda', '27500', '14'),
(11, '2022-01-12', 6, 'Kerudung Anak', 'Putih', '23000', '32'),
(12, '2022-01-12', 9, 'Prisket Ring', 'Kuning', '35000', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Id_Barang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Id_Trsk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `Id_Barang` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `Id_Trsk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
