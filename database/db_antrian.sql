-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 06:00 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_antrian`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `gambar` varchar(255) NOT NULL DEFAULT 'default.png',
  `theme` varchar(20) NOT NULL DEFAULT 'sb_admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `nama`, `status`, `gambar`, `theme`) VALUES
(2, 'admin@admin.com', 'admin', 'admin', 1, 'default.png', 'sb_admin');

-- --------------------------------------------------------

--
-- Table structure for table `antrian`
--

CREATE TABLE `antrian` (
  `id_antrian` int(4) NOT NULL,
  `tgl_antrian` date NOT NULL,
  `no_antrian` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antrian`
--

INSERT INTO `antrian` (`id_antrian`, `tgl_antrian`, `no_antrian`) VALUES
(1, '2019-07-31', '1'),
(2, '2019-07-31', '2'),
(3, '2019-07-31', '3'),
(4, '2019-07-31', '4'),
(5, '2019-07-31', '5'),
(6, '2019-07-31', '6'),
(7, '2019-07-31', '7'),
(8, '2019-07-31', '8'),
(9, '2019-08-01', '1'),
(10, '2019-08-01', '2'),
(11, '2019-08-07', '1'),
(12, '2019-08-07', '2'),
(13, '2019-08-07', '3'),
(14, '2019-08-07', '4'),
(15, '2019-08-07', '5'),
(16, '2022-08-10', '1'),
(17, '2022-08-10', '2'),
(18, '2022-08-10', '3');

-- --------------------------------------------------------

--
-- Table structure for table `antrian_poli`
--

CREATE TABLE `antrian_poli` (
  `id_antrian_poli` int(4) NOT NULL,
  `id_antrian` int(4) NOT NULL,
  `id_pasien` int(4) NOT NULL,
  `id_poli` int(2) NOT NULL,
  `no_antrian_poli` varchar(10) NOT NULL,
  `tgl_antrian_poli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antrian_poli`
--

INSERT INTO `antrian_poli` (`id_antrian_poli`, `id_antrian`, `id_pasien`, `id_poli`, `no_antrian_poli`, `tgl_antrian_poli`) VALUES
(1, 0, 1, 2, '1', '2019-07-17'),
(2, 0, 1, 2, '2', '2019-07-17'),
(3, 0, 1, 2, '3', '2019-07-17'),
(4, 0, 1, 4, '1', '2019-07-17'),
(5, 0, 1, 3, '1', '2019-07-17'),
(6, 0, 1, 3, '30', '2019-07-17'),
(8, 0, 1, 4, '2', '2019-07-17'),
(9, 0, 1, 2, '1', '2019-07-18'),
(10, 0, 2, 2, '30', '2019-07-18'),
(11, 0, 6, 3, '1', '2019-07-30'),
(12, 0, 1, 1, '1', '2019-07-31'),
(13, 0, 1, 1, '2', '2019-07-31'),
(14, 0, 1, 2, '1', '2019-07-31'),
(15, 0, 1, 3, '1', '2019-07-31'),
(16, 0, 1, 3, '2', '2019-07-31'),
(17, 0, 1, 3, '3', '2019-07-31'),
(18, 0, 14, 1, '3', '2019-07-31'),
(19, 0, 14, 1, '4', '2019-07-31'),
(20, 0, 14, 1, '5', '2019-07-31'),
(21, 0, 14, 2, '2', '2019-07-31'),
(22, 0, 14, 4, '1', '2019-07-31'),
(23, 0, 14, 4, '2', '2019-07-31'),
(24, 0, 14, 2, '1', '2019-08-01'),
(25, 0, 14, 3, '1', '2019-08-01'),
(26, 0, 14, 1, '1', '2019-08-07'),
(27, 0, 14, 2, '1', '2019-08-07'),
(28, 0, 14, 1, '2', '2019-08-07'),
(29, 0, 14, 1, '3', '2019-08-07'),
(30, 0, 14, 4, '1', '2019-08-07'),
(31, 0, 15, 1, '1', '2022-08-10'),
(32, 0, 17, 2, '1', '2022-08-10'),
(33, 0, 18, 2, '2', '2022-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_poli`
--

CREATE TABLE `kategori_poli` (
  `id_poli` int(2) NOT NULL,
  `kode_poli` varchar(5) NOT NULL,
  `nama_poli` varchar(100) NOT NULL,
  `jumlah_maksimal` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_poli`
--

INSERT INTO `kategori_poli` (`id_poli`, `kode_poli`, `nama_poli`, `jumlah_maksimal`) VALUES
(1, 'PLUM', 'Poli Umum', '30'),
(2, 'PLGG', 'Poli Gigi', '30'),
(3, 'PLIM', 'Poli Imunisasi', '30'),
(4, 'PLTB', 'Poli Tuberculosis', '30');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(4) NOT NULL,
  `no_identitas` varchar(25) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-Laki') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `no_identitas`, `nama`, `jenis_kelamin`, `tgl_lahir`, `alamat`, `no_telp`, `username`, `password`) VALUES
(1, '3318087776665553', 'evi', 'Perempuan', '2000-07-16', '<p>\r\n	Desa kajen</p>\r\n', '082199252530', 'evi', 'evi'),
(4, '3318087776665554', 'rafly', 'Laki-Laki', '1998-04-03', '<p>\r\n	Jl. Merdeka</p>\r\n', '08587654323', 'raff', 'raff'),
(5, '3318087776665555', 'dwi', 'Perempuan', '1999-03-22', '<p>\r\n	Jl Bunga</p>\r\n', '09584433221', 'dwi', 'dwi'),
(6, '3318087776665556', 'Aisyah', 'Perempuan', '2001-06-11', '<p>\r\n	Jl. Manis</p>\r\n', '0838222445', 'aisah', 'aisah'),
(7, '3318087776665557', 'Simon', 'Laki-Laki', '1997-02-06', '<p>\r\n	Jl. Mawar</p>\r\n', '081319898213', 'simon', 'simon'),
(8, '3318087776660002', 'Putri', 'Perempuan', '2003-06-18', '<p>\r\n	Jl. Merpati</p>\r\n', '081994321522', 'putri', 'putri'),
(9, '3318087776660001', 'Violita', 'Perempuan', '2003-09-02', '<p>\r\n	Jl Kuningan</p>\r\n', '08225488006', 'vio', 'vio'),
(10, '3318087776660006', 'Yordan', 'Laki-Laki', '1995-11-02', '<p>\r\n	Jl. Setia</p>\r\n', '081316552245', 'yordan', 'yordan'),
(11, '3318087776660003', 'silva', 'Perempuan', '1998-01-04', '<p>\r\n	Jl. Anggur</p>\r\n', '081654432349', 'silvi', 'silvi'),
(12, '3318087776660001', 'Lutfia', 'Perempuan', '2002-03-05', '<p>\r\n	Jl.merdeka</p>\r\n', '082199252530', 'lutfia', 'lutfia'),
(13, '3318087776660004', 'rafly', 'Laki-Laki', '2019-07-12', '<p>\r\n	jl. Diponegoro</p>\r\n', '087675641321', 'rafli', 'rafli'),
(14, '3318087776660006', 'meli', 'Perempuan', '1997-08-04', '<p>\r\n	jl.merpati</p>\r\n', '081654432349', 'meli', 'meli'),
(15, '3318087776665551', 'Rianto ', 'Laki-Laki', '1991-10-15', '<p>\r\n	Desa Tayu</p>\r\n', '087675641321', 'rianto', 'rianto'),
(16, '3318087776665552', 'Risma', 'Perempuan', '2002-03-02', '<p>\r\n	Desa Tayu</p>\r\n', '081654432341', 'risma', 'risma'),
(17, '3318087776665552', 'Sindy', 'Perempuan', '2002-01-15', 'Desa Keboromo', '081234567890', 'sindy', '3bc54e195911d13a3de5a337b5b3c2d6'),
(18, '3318087776665551', 'Rahmat', 'Laki-Laki', '1992-10-21', 'Desa Karangwotan', '081656765431', 'rahmat', 'af2a4c9d4c4956ec9d6ba62213eed568');

-- --------------------------------------------------------

--
-- Table structure for table `tjm_menu`
--

CREATE TABLE `tjm_menu` (
  `id` int(11) NOT NULL,
  `parent_menu` int(11) NOT NULL DEFAULT 1,
  `nama_menu` varchar(50) NOT NULL,
  `url_menu` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `urutan` tinyint(3) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` enum('Admin') NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tjm_menu`
--

INSERT INTO `tjm_menu` (`id`, `parent_menu`, `nama_menu`, `url_menu`, `icon`, `urutan`, `status`, `type`) VALUES
(1, 1, 'root', '/', '', 0, 0, 'Admin'),
(2, 1, 'dashboard', 'admin/dashboard', 'fa fa-fw fa-dashboard', 1, 1, 'Admin'),
(3, 1, 'User Admin', 'admin/useradmin', 'fa fa-users', 99, 0, 'Admin'),
(4, 1, 'Menu', 'admin/menu', 'fa fa-gear', 100, 1, 'Admin'),
(25, 1, 'Master', 'admin/master', 'fa fa-ticket', 2, 0, 'Admin'),
(31, 1, 'Data Pasien', 'admin/pasien', 'glyphicon glyphicon-user', 2, 1, 'Admin'),
(32, 1, 'Poli', 'admin/poli', 'glyphicon glyphicon-list-alt', 3, 1, 'Admin'),
(33, 1, 'Antrian Poli', 'admin/antrian_poli', 'glyphicon glyphicon-list', 4, 1, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antrian`
--
ALTER TABLE `antrian`
  ADD PRIMARY KEY (`id_antrian`);

--
-- Indexes for table `antrian_poli`
--
ALTER TABLE `antrian_poli`
  ADD PRIMARY KEY (`id_antrian_poli`);

--
-- Indexes for table `kategori_poli`
--
ALTER TABLE `kategori_poli`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `antrian`
--
ALTER TABLE `antrian`
  MODIFY `id_antrian` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `antrian_poli`
--
ALTER TABLE `antrian_poli`
  MODIFY `id_antrian_poli` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `kategori_poli`
--
ALTER TABLE `kategori_poli`
  MODIFY `id_poli` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
