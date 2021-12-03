-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 09:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `jk` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nip`, `name`, `jk`) VALUES
('202101001', 'Soedjatmiko', 'L'),
('202101002', 'Soelastri', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama`) VALUES
(1, 'Informatika'),
(2, 'Desain');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id`, `email`, `nama`, `password`) VALUES
(1, 'admin@jongkoding.id', 'Administrator', 'a530970e102d345dab67fc19049aa2aecf1189834de1702b3b2fc53cbe459106');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(1) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nilai` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jk`, `alamat`, `tmp_lahir`, `tgl_lahir`, `telepon`, `id_jurusan`, `nilai`, `foto`) VALUES
('2021010001', 'Sugeng', 'L', 'Jalan Depan', 'Bandung', '2000-02-28', '08123456789', 1, 80, NULL),
('20210100010', 'Sumiati', 'P', 'Jalan Mawar', 'Jakarta', '1997-01-02', '08123456789', 1, 80, NULL),
('2021010002', 'Susi Susanti', 'P', 'Jalan Sendiri', 'Jakarta', '1997-01-02', '08123456789', 2, 70, NULL),
('2021010003', 'Taufik Hidayat', 'L', 'Jalan Bareng', 'Jakarta', '1997-01-02', '08123456789', 1, 80, NULL),
('2021010004', 'Khong Guan', 'L', 'Jalan Kembar', 'Jakarta', '1997-01-02', '08123456789', 2, 90, NULL),
('2021010005', 'Sony dwi', 'L', 'Jalan Buntu', 'Jakarta', '1997-01-02', '08123456789', 1, 80, NULL),
('2021010006', 'Eka Purnama', 'P', 'Jalan Sempit', 'Jakarta', '1997-01-02', '08123456789', 2, 50, NULL),
('2021010007', 'Susanto', 'L', 'Jalan Masjid', 'Jakarta', '1997-01-02', '08123456789', 1, 70, NULL),
('2021010008', 'Bambang Suseno', 'L', 'Jalan Masjid', 'Jakarta', '1997-01-02', '08123456789', 2, 70, NULL),
('2021010009', 'Sutikno', 'L', 'Jalan Jalan', 'Jakarta', '1997-01-02', '08123456789', 1, 90, NULL),
('2021010011', 'Sebut Saja Bunga', 'P', 'Jalan Sendiri', 'Jakarta', '1997-01-02', '08123456789', 2, 90, NULL),
('2021010099', 'Gper', 'L', 'Terara', 'Lando', '2013-11-24', '083129106183', 0, NULL, 'penyimpanan/defaultmale.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `spp_siswa`
--

CREATE TABLE `spp_siswa` (
  `id_pembayaran` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `tgl_pembayaran` datetime NOT NULL,
  `bulan` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp_siswa`
--

INSERT INTO `spp_siswa` (`id_pembayaran`, `nis`, `tgl_pembayaran`, `bulan`, `nominal`) VALUES
(1, '2021010001', '2021-01-08 08:00:00', 1, 50000),
(2, '2021010001', '2021-02-08 08:00:00', 2, 50000),
(3, '2021010001', '2021-03-08 08:00:00', 3, 50000),
(4, '2021010001', '2021-04-08 08:00:00', 4, 50000),
(5, '2021010001', '2021-05-08 08:00:00', 5, 50000),
(6, '2021010001', '2021-06-08 08:00:00', 6, 50000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `spp_siswa`
--
ALTER TABLE `spp_siswa`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spp_siswa`
--
ALTER TABLE `spp_siswa`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
