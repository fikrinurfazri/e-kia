-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 08:52 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apns`
--

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int(11) NOT NULL,
  `nomor` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` text NOT NULL,
  `pemohon` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id_surat`, `nomor`, `tanggal`, `perihal`, `pemohon`, `penerima`, `active`) VALUES
(1, '12/67/Kep/2024', '2024-01-10', 'Permohonan data statistik', 'Fikri', 'Mandas', 1),
(3, '13/67/Kep/2024', '2024-01-10', 'Permohonan peerimaan bantuan dana', 'Umpeg', 'Walikota', 1),
(4, '14/67/Kep/2024', '2024-01-10', 'Permohonan peserta rapat paripurna', 'Kabid', 'Dinas Pendidikan', 1),
(6, '02/01/Sekre/2024', '2024-01-11', 'Permohonan jungler', 'Muhammad Asril Munafa', 'Sekretariat', 1),
(7, '03/01/Sekre/2024', '2024-01-11', 'Pengajuan menjadi pro player RRQ', 'Ifix', 'RRQ Hoshi', 1),
(9, '-', '2024-01-25', '-', 'Muhammad Asril Munafa', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suratmasuk`
--

CREATE TABLE `suratmasuk` (
  `id_suratmasuk` int(11) NOT NULL,
  `nomor` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` text NOT NULL,
  `dari` varchar(50) NOT NULL,
  `tujuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suratmasuk`
--

INSERT INTO `suratmasuk` (`id_suratmasuk`, `nomor`, `tanggal`, `perihal`, `dari`, `tujuan`) VALUES
(1, '01/01/Sekre/2024', '2024-01-10', ' Permintaan THR', 'Pemuda Pancaindra', 'Bidang KiPas');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(130) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `level` int(1) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `last_login`, `level`, `nama`) VALUES
(1, 'fikri', '$2y$10$edfgmRhGNSqocKB59rKvyu0N6wsSxxKTuRZSHG3uYs4t3M5frRIZq', '2024-01-11 01:49:26', 1, 'Fikri Nurpazri'),
(2, '123456', '$2y$10$qmQtqa7H0uu5Sc23y5EkKuX9/sWGlMD516f0HaYWFny3U.P80u48G', '2024-01-10 22:51:19', 2, 'Muhammad Asril Munafa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `suratmasuk`
--
ALTER TABLE `suratmasuk`
  ADD PRIMARY KEY (`id_suratmasuk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `suratmasuk`
--
ALTER TABLE `suratmasuk`
  MODIFY `id_suratmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
