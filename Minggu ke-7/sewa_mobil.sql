-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2020 at 07:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewa mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `no_plat` char(10) NOT NULL,
  `tahun_kendaraan` int(4) NOT NULL,
  `tarif_kendaraan` int(10) NOT NULL,
  `status_kendaraan` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `no_ktp` int(16) NOT NULL,
  `nama_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` varchar(50) NOT NULL,
  `telepon_pelanggan` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supir`
--

CREATE TABLE `supir` (
  `id_supir` char(5) NOT NULL,
  `nama_supir` varchar(25) NOT NULL,
  `alamat_supir` varchar(50) NOT NULL,
  `telepon_supir` int(15) NOT NULL,
  `sim_supir` int(12) NOT NULL,
  `tarif_supir` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipe kendaraan`
--

CREATE TABLE `tipe kendaraan` (
  `id_tipe` char(5) NOT NULL,
  `tipe` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(5) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_rencanakembali` date NOT NULL,
  `jam_rencanakembali` time(4) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `jam_kembali` time(4) NOT NULL,
  `denda_transaksi` int(10) NOT NULL,
  `km_pinjam` int(4) NOT NULL,
  `km_kembali` int(4) NOT NULL,
  `bbm_pinjam` int(3) NOT NULL,
  `bbm_kembali` int(3) NOT NULL,
  `kondisi_pinjam` char(10) NOT NULL,
  `kondisi_kembali` char(10) NOT NULL,
  `kerusakan_mobil` varchar(50) NOT NULL,
  `biaya_kerusakan` int(10) NOT NULL,
  `biaya_bbm` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`no_plat`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`no_ktp`);

--
-- Indexes for table `supir`
--
ALTER TABLE `supir`
  ADD PRIMARY KEY (`id_supir`);

--
-- Indexes for table `tipe kendaraan`
--
ALTER TABLE `tipe kendaraan`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD CONSTRAINT `kendaraan_ibfk_1` FOREIGN KEY (`no_plat`) REFERENCES `tipe kendaraan` (`id_tipe`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`no_transaksi`) REFERENCES `pelanggan` (`no_ktp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
