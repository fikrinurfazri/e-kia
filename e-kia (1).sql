-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2025 at 01:05 PM
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
-- Database: `e-kia`
--

-- --------------------------------------------------------

--
-- Table structure for table `asuhan_bbl`
--

CREATE TABLE `asuhan_bbl` (
  `id_asuhan` int(11) DEFAULT NULL,
  `imd` varchar(50) NOT NULL,
  `vitamin_k1` varchar(50) NOT NULL,
  `salep_mata` varchar(50) NOT NULL,
  `imunisasi_hb0` varchar(50) NOT NULL,
  `ket_tambahan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bayi_saat_lahir`
--

CREATE TABLE `bayi_saat_lahir` (
  `id_bayi` int(11) DEFAULT NULL,
  `id_identitas` int(11) NOT NULL,
  `anak_ke` int(5) NOT NULL,
  `bb_lahir` int(10) NOT NULL,
  `panjang_badan` int(10) NOT NULL,
  `lingkar_kepala` int(10) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `kondisi_bayi_saat_lahir` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ibu_bersalin`
--

CREATE TABLE `ibu_bersalin` (
  `id_bersalin` int(11) DEFAULT NULL,
  `id_identitas` int(11) NOT NULL,
  `tgl_persalinan` date NOT NULL,
  `pukul` time NOT NULL,
  `umur_kehamilan` varchar(11) NOT NULL,
  `penolong_kehamilan` varchar(11) NOT NULL,
  `cara_persalinan` varchar(11) NOT NULL,
  `keadaan_ibu` varchar(11) NOT NULL,
  `kb_pascapersalinan` varchar(11) NOT NULL,
  `keterangan_tambahan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ibu_menyusui`
--

CREATE TABLE `ibu_menyusui` (
  `id_nenyusui` int(11) NOT NULL,
  `id_identitas` int(11) NOT NULL,
  `menyusui_dgn_benar` tinyint(1) NOT NULL,
  `posisi_menyusui_benar` tinyint(1) NOT NULL,
  `cara_memerah_asi` tinyint(1) NOT NULL,
  `cara_menyimpan_asi` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ibu_nifas`
--

CREATE TABLE `ibu_nifas` (
  `id_nifas` int(11) DEFAULT NULL,
  `id_identitas` int(11) NOT NULL,
  `kunjungan_nifaske` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `masalah` varchar(20) NOT NULL,
  `tindakan` varchar(20) NOT NULL,
  `keadaan_ibu` varchar(120) NOT NULL,
  `keadaan_bayi` varchar(120) NOT NULL,
  `konpilasi_nifas` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `nik` varchar(120) NOT NULL,
  `goldar` varchar(11) NOT NULL,
  `tempat_lahir` varchar(120) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pendidikan` varchar(12) NOT NULL,
  `alamat_rumah` varchar(120) NOT NULL,
  `telepon` varchar(12) NOT NULL,
  `suami_keluarga` varchar(120) NOT NULL,
  `pembiayaan` varchar(120) NOT NULL,
  `no_jkn` varchar(120) NOT NULL,
  `faskes_tingkat1` varchar(120) NOT NULL,
  `faskes_rujukan` varchar(120) NOT NULL,
  `puskesmas_domisili` varchar(120) NOT NULL,
  `no_kohor` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `id_user`, `nama`, `nik`, `goldar`, `tempat_lahir`, `tanggal_lahir`, `pendidikan`, `alamat_rumah`, `telepon`, `suami_keluarga`, `pembiayaan`, `no_jkn`, `faskes_tingkat1`, `faskes_rujukan`, `puskesmas_domisili`, `no_kohor`) VALUES
(1, 3, 'Mimin', '3278060903760001', 'O', 'Tasikmalaya', '2025-05-07', 'SMA', 'nfghfghfhghjghjgfsdfs', '078675675464', 'Yayan', '-', '-', '-', '-', '-', '-'),
(2, 1, '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `keluarga_berencana`
--

CREATE TABLE `keluarga_berencana` (
  `id_kb` int(11) NOT NULL,
  `id_identitas` int(11) NOT NULL,
  `mengapa_ikut_kb` tinyint(1) NOT NULL,
  `metode_kontrasepsi` tinyint(1) NOT NULL,
  `non_metode_kontrasepsi` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menyambut_persalinan`
--

CREATE TABLE `menyambut_persalinan` (
  `id_menyambut` int(11) NOT NULL,
  `id_identitas` int(11) NOT NULL,
  `penolong_persalinan` enum('bidan','dokter') NOT NULL,
  `nama_penolong` varchar(50) NOT NULL,
  `sumber_dana` varchar(50) NOT NULL,
  `kendaraan` varchar(50) NOT NULL,
  `nohp_kendaraan` varchar(50) NOT NULL,
  `untuk_kb` varchar(50) NOT NULL,
  `sumbangan_darah` varchar(50) NOT NULL,
  `nohp_sumbangan_darah` varchar(50) NOT NULL,
  `goldar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pelayanan_ibu_nifas`
--

CREATE TABLE `pelayanan_ibu_nifas` (
  `id` int(11) NOT NULL,
  `menanyakan_kondisi` tinyint(1) NOT NULL,
  `pengukuran_tekanan_darah` tinyint(1) NOT NULL,
  `pemeriksaan_lokhia` tinyint(1) NOT NULL,
  `kondisi_jalan_lahir` tinyint(1) NOT NULL,
  `kontraksi_rahim` tinyint(1) NOT NULL,
  `pemeriksaan_payudara` tinyint(1) NOT NULL,
  `pemberian_kapsul` tinyint(1) NOT NULL,
  `kontrasepti_pasca_persalinan` tinyint(1) NOT NULL,
  `konseling` tinyint(1) NOT NULL,
  `tatalaksana` tinyint(1) NOT NULL,
  `memberikan_nasihat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `perawatansehari_ibu`
--

CREATE TABLE `perawatansehari_ibu` (
  `id` int(11) NOT NULL,
  `makan_proporsional` tinyint(1) NOT NULL,
  `istirahat_cukup` tinyint(1) NOT NULL,
  `menjaga_kebersihan` tinyint(1) NOT NULL,
  `stimulasi_janin` tinyint(1) NOT NULL,
  `hubungan_sumiistri` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `perawatan_ibu_nifas`
--

CREATE TABLE `perawatan_ibu_nifas` (
  `id` int(11) NOT NULL,
  `pertama` tinyint(1) NOT NULL,
  `kedua` tinyint(1) NOT NULL,
  `ketiga` tinyint(1) NOT NULL,
  `keempat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `periksa_kehamilan`
--

CREATE TABLE `periksa_kehamilan` (
  `id_pk` int(11) NOT NULL,
  `tinggi_badan` tinyint(1) NOT NULL,
  `bbnaik_minimal` tinyint(1) NOT NULL,
  `tekanan_darah` tinyint(1) NOT NULL,
  `ukuran_lila` tinyint(1) NOT NULL,
  `ukur_tinggi_rahim` tinyint(1) NOT NULL,
  `tentukan_djj` tinyint(1) NOT NULL,
  `imunisasi_tetanus` tinyint(1) NOT NULL,
  `beri_ttd` tinyint(1) NOT NULL,
  `periksa_lab` tinyint(1) NOT NULL,
  `penanganan_masalah` tinyint(1) NOT NULL,
  `konseling` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `persiapan_melahirkan`
--

CREATE TABLE `persiapan_melahirkan` (
  `id` int(11) NOT NULL,
  `tanya_tanggal_kehamilan` tinyint(1) NOT NULL,
  `mendampingi_ibu` tinyint(1) NOT NULL,
  `tabungan_dana_cadangan` tinyint(1) NOT NULL,
  `siapkan_kartu_JKN` tinyint(1) NOT NULL,
  `daftar_kartu_JKN` tinyint(1) NOT NULL,
  `rencanakan_pertolongan_melahirkan` tinyint(1) NOT NULL,
  `siapkan_KTP_KK` tinyint(1) NOT NULL,
  `persiapkan_golongan_darah` tinyint(1) NOT NULL,
  `persiapkan_kendaraan` tinyint(1) NOT NULL,
  `menyepakati_amanat_persalinan` tinyint(1) NOT NULL,
  `rencanakan_kb` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pk_ibu`
--

CREATE TABLE `pk_ibu` (
  `id_pk_ibu` int(11) NOT NULL,
  `hpht` date NOT NULL,
  `timbang` varchar(5) NOT NULL,
  `lingkar_lenganatas` varchar(10) NOT NULL,
  `tekanan_darah` varchar(12) NOT NULL,
  `tinggi_rahim` varchar(12) NOT NULL,
  `letak_djj` varchar(12) NOT NULL,
  `status_imunisasi_tetanus` varchar(120) NOT NULL,
  `konseling` varchar(120) NOT NULL,
  `skrining_dokter` varchar(120) NOT NULL,
  `ttd` varchar(12) NOT NULL,
  `test_lab_hb` varchar(120) NOT NULL,
  `test_goldar` varchar(12) NOT NULL,
  `testlab_urine` varchar(120) NOT NULL,
  `testlb_guladarah` varchar(12) NOT NULL,
  `ppia` varchar(12) NOT NULL,
  `tata_laksana_kasus` varchar(12) NOT NULL,
  `ibu_bersalin` date NOT NULL,
  `fasilitas_kesehatan` varchar(120) NOT NULL,
  `rujukan` varchar(120) NOT NULL,
  `periksa_payudaraASI` varchar(12) NOT NULL,
  `periksa_perdarahan` varchar(12) NOT NULL,
  `periksa_jalanlahir` varchar(12) NOT NULL,
  `vitamin_a` varchar(10) NOT NULL,
  `kb_pasca_persalinan` varchar(10) NOT NULL,
  `konseling2` varchar(120) NOT NULL,
  `tata_laksana_kasus2` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `proses_melahirkan`
--

CREATE TABLE `proses_melahirkan` (
  `id_proses_melahirkan` int(11) NOT NULL,
  `mulas_teratur` tinyint(1) NOT NULL,
  `kehamilan_pertama` tinyint(1) NOT NULL,
  `didampingi` tinyint(1) NOT NULL,
  `pilih_posisi` tinyint(1) NOT NULL,
  `ingin_buang_air` tinyint(1) NOT NULL,
  `teknik_nafas` tinyint(1) NOT NULL,
  `inisiasi_menyusu_dini` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rujukan`
--

CREATE TABLE `rujukan` (
  `id_rujukan` int(11) NOT NULL,
  `id_identitas` int(11) NOT NULL,
  `resume_pemeriksaan` varchar(120) NOT NULL,
  `tgl_umpanbalik` varchar(20) NOT NULL,
  `diagnosa` varchar(20) NOT NULL,
  `resume_akhir` varchar(20) NOT NULL,
  `anjuran` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tanda_awal_persalinan`
--

CREATE TABLE `tanda_awal_persalinan` (
  `id` int(11) NOT NULL,
  `perut_mulas` tinyint(1) NOT NULL,
  `keluar_lendir` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ttd`
--

CREATE TABLE `ttd` (
  `id_ttd` int(11) NOT NULL,
  `id_identitas` int(11) NOT NULL,
  `bulan_ke` int(11) NOT NULL,
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `3` int(11) NOT NULL,
  `4` int(11) NOT NULL,
  `5` int(11) NOT NULL,
  `6` int(11) NOT NULL,
  `7` int(11) NOT NULL,
  `8` int(11) NOT NULL,
  `9` int(11) NOT NULL,
  `10` int(11) NOT NULL,
  `11` int(11) NOT NULL,
  `12` int(11) NOT NULL,
  `13` int(11) NOT NULL,
  `14` int(11) NOT NULL,
  `15` int(11) NOT NULL,
  `16` int(11) NOT NULL,
  `17` int(11) NOT NULL,
  `18` int(11) NOT NULL,
  `19` int(11) NOT NULL,
  `20` int(11) NOT NULL,
  `21` int(11) NOT NULL,
  `22` int(11) NOT NULL,
  `23` int(11) NOT NULL,
  `24` int(11) NOT NULL,
  `25` int(11) NOT NULL,
  `26` int(11) NOT NULL,
  `27` int(11) NOT NULL,
  `28` int(11) NOT NULL,
  `29` int(11) NOT NULL,
  `30` int(11) NOT NULL,
  `31` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'admin', '$2y$10$EjWGUrcKgc2s3WYzwakpe.a2fZLDJykGxBy5iCuqsuFEkEELEvoHS', '2025-05-12 16:18:46', 1, 'Fikri Nurpazri'),
(2, '123', '$2y$10$qmQtqa7H0uu5Sc23y5EkKuX9/sWGlMD516f0HaYWFny3U.P80u48G', '2024-03-01 01:34:51', 2, 'Fikri Nuganteng'),
(3, 'mimin', '$2y$10$BWc2W4osyMWYyAo7O/qQyeNFSUn6Ig9DUEfTbP61laFMYjDOkaUk.', '2025-05-12 10:02:59', 2, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ibu_menyusui`
--
ALTER TABLE `ibu_menyusui`
  ADD PRIMARY KEY (`id_nenyusui`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `keluarga_berencana`
--
ALTER TABLE `keluarga_berencana`
  ADD PRIMARY KEY (`id_kb`);

--
-- Indexes for table `menyambut_persalinan`
--
ALTER TABLE `menyambut_persalinan`
  ADD PRIMARY KEY (`id_menyambut`);

--
-- Indexes for table `pelayanan_ibu_nifas`
--
ALTER TABLE `pelayanan_ibu_nifas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perawatansehari_ibu`
--
ALTER TABLE `perawatansehari_ibu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perawatan_ibu_nifas`
--
ALTER TABLE `perawatan_ibu_nifas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periksa_kehamilan`
--
ALTER TABLE `periksa_kehamilan`
  ADD PRIMARY KEY (`id_pk`);

--
-- Indexes for table `persiapan_melahirkan`
--
ALTER TABLE `persiapan_melahirkan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pk_ibu`
--
ALTER TABLE `pk_ibu`
  ADD PRIMARY KEY (`id_pk_ibu`);

--
-- Indexes for table `proses_melahirkan`
--
ALTER TABLE `proses_melahirkan`
  ADD PRIMARY KEY (`id_proses_melahirkan`);

--
-- Indexes for table `rujukan`
--
ALTER TABLE `rujukan`
  ADD PRIMARY KEY (`id_rujukan`);

--
-- Indexes for table `tanda_awal_persalinan`
--
ALTER TABLE `tanda_awal_persalinan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ibu_menyusui`
--
ALTER TABLE `ibu_menyusui`
  MODIFY `id_nenyusui` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keluarga_berencana`
--
ALTER TABLE `keluarga_berencana`
  MODIFY `id_kb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menyambut_persalinan`
--
ALTER TABLE `menyambut_persalinan`
  MODIFY `id_menyambut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelayanan_ibu_nifas`
--
ALTER TABLE `pelayanan_ibu_nifas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perawatansehari_ibu`
--
ALTER TABLE `perawatansehari_ibu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perawatan_ibu_nifas`
--
ALTER TABLE `perawatan_ibu_nifas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `periksa_kehamilan`
--
ALTER TABLE `periksa_kehamilan`
  MODIFY `id_pk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persiapan_melahirkan`
--
ALTER TABLE `persiapan_melahirkan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_ibu`
--
ALTER TABLE `pk_ibu`
  MODIFY `id_pk_ibu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proses_melahirkan`
--
ALTER TABLE `proses_melahirkan`
  MODIFY `id_proses_melahirkan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rujukan`
--
ALTER TABLE `rujukan`
  MODIFY `id_rujukan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tanda_awal_persalinan`
--
ALTER TABLE `tanda_awal_persalinan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
