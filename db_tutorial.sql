-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 05:36 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_sewabarang`
--

CREATE TABLE `tb_sewabarang` (
  `id` int(11) NOT NULL,
  `nomor` varchar(32) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `tgl_ambil` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `barang` varchar(128) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sewabarang`
--

INSERT INTO `tb_sewabarang` (`id`, `nomor`, `nama`, `tgl_ambil`, `tgl_kembali`, `barang`, `jumlah`, `status`) VALUES
(1, '20200901-01', 'Andrian D', '2020-09-02', '2020-09-06', 'PS4 Blank SN9901', 1, 'Y'),
(2, '20201104-01', 'Nianda Prameswari', '2020-11-08', '2020-11-12', 'SELI 20 Orange GT', 2, NULL),
(3, '20201105-02', 'Hary', '2020-11-06', '2020-11-11', 'LED Proyektor HD55', 1, NULL),
(4, '20201105-03', 'Parulian D', '2020-11-09', '2020-11-13', 'PS4 New Blank SN7612', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_sewabarang`
--
ALTER TABLE `tb_sewabarang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_sewabarang`
--
ALTER TABLE `tb_sewabarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
