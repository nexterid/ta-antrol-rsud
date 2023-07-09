/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_antrian

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-07-09 09:50:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `gambar` varchar(255) NOT NULL DEFAULT 'default.png',
  `theme` varchar(20) NOT NULL DEFAULT 'sb_admin',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2', 'admin@admin.com', '$2a$08$6biR9RPtagmYyOsa2ceuk.JX5UBMF.vblALoCXNcUew7dBxmmcjiG', 'admin', '1', 'default.png', 'sb_admin');
INSERT INTO `admin` VALUES ('3', 'ander@gmail.com', '$2a$08$ZyjunYJzIT9peyTYtJde7O37j.sYetqwY.MZAa4vBZS10PyFHlupS', 'Ander', '1', 'default.png', 'sb_admin');

-- ----------------------------
-- Table structure for `antrian`
-- ----------------------------
DROP TABLE IF EXISTS `antrian`;
CREATE TABLE `antrian` (
  `id_antrian` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_antrian` date NOT NULL,
  `no_antrian` varchar(10) NOT NULL,
  PRIMARY KEY (`id_antrian`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of antrian
-- ----------------------------
INSERT INTO `antrian` VALUES ('1', '2019-07-31', '1');
INSERT INTO `antrian` VALUES ('2', '2019-07-31', '2');
INSERT INTO `antrian` VALUES ('3', '2019-07-31', '3');
INSERT INTO `antrian` VALUES ('4', '2019-07-31', '4');
INSERT INTO `antrian` VALUES ('5', '2019-07-31', '5');
INSERT INTO `antrian` VALUES ('6', '2019-07-31', '6');
INSERT INTO `antrian` VALUES ('7', '2019-07-31', '7');
INSERT INTO `antrian` VALUES ('8', '2019-07-31', '8');
INSERT INTO `antrian` VALUES ('9', '2019-08-01', '1');
INSERT INTO `antrian` VALUES ('10', '2019-08-01', '2');
INSERT INTO `antrian` VALUES ('11', '2019-08-07', '1');
INSERT INTO `antrian` VALUES ('12', '2019-08-07', '2');
INSERT INTO `antrian` VALUES ('13', '2019-08-07', '3');
INSERT INTO `antrian` VALUES ('14', '2019-08-07', '4');
INSERT INTO `antrian` VALUES ('15', '2019-08-07', '5');
INSERT INTO `antrian` VALUES ('16', '2022-08-10', '1');
INSERT INTO `antrian` VALUES ('17', '2022-08-10', '2');
INSERT INTO `antrian` VALUES ('18', '2022-08-10', '3');

-- ----------------------------
-- Table structure for `antrian_poli`
-- ----------------------------
DROP TABLE IF EXISTS `antrian_poli`;
CREATE TABLE `antrian_poli` (
  `id_antrian_poli` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `kode_dokter` int(11) NOT NULL,
  `id_poli` int(11) NOT NULL,
  `no_antrian_poli` int(10) NOT NULL,
  `tgl_antrian_poli` date NOT NULL,
  `waktu` time NOT NULL,
  PRIMARY KEY (`id_antrian_poli`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of antrian_poli
-- ----------------------------
INSERT INTO `antrian_poli` VALUES ('132131', '19', '4', '2', '1', '2023-07-10', '00:00:00');
INSERT INTO `antrian_poli` VALUES ('230702001', '19', '1', '1', '1', '2023-07-02', '15:47:43');

-- ----------------------------
-- Table structure for `dokter`
-- ----------------------------
DROP TABLE IF EXISTS `dokter`;
CREATE TABLE `dokter` (
  `kode_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `no_identitas` varchar(25) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-Laki') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `poli` int(11) NOT NULL,
  PRIMARY KEY (`kode_dokter`) USING BTREE,
  KEY `fk poli` (`poli`),
  CONSTRAINT `fk poli` FOREIGN KEY (`poli`) REFERENCES `kategori_poli` (`id_poli`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dokter
-- ----------------------------
INSERT INTO `dokter` VALUES ('1', '11121212', 'dr. SILVI RISDIA LINA', 'Perempuan', '1994-07-05', 'Pekalongan', '0', '1');
INSERT INTO `dokter` VALUES ('2', '11111', 'drg. Ruth Christine R', 'Perempuan', '1959-06-05', 'Pekalongan', '0', '2');
INSERT INTO `dokter` VALUES ('3', '45454', 'dr. Rosita', 'Perempuan', '1979-04-06', 'Pekalongan', '0', '3');
INSERT INTO `dokter` VALUES ('4', '55555', 'dr. Afiyah, Sp. PD', 'Perempuan', '1983-06-08', 'Pekalongan', '0', '4');

-- ----------------------------
-- Table structure for `hari`
-- ----------------------------
DROP TABLE IF EXISTS `hari`;
CREATE TABLE `hari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_hari` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hari
-- ----------------------------
INSERT INTO `hari` VALUES ('1', 'Senin');
INSERT INTO `hari` VALUES ('2', 'Selasa');
INSERT INTO `hari` VALUES ('3', 'Rabu');
INSERT INTO `hari` VALUES ('4', 'Kamis');
INSERT INTO `hari` VALUES ('5', 'Jumat');
INSERT INTO `hari` VALUES ('6', 'Sabtu');
INSERT INTO `hari` VALUES ('7', 'Minggu');

-- ----------------------------
-- Table structure for `jadwal_dokter`
-- ----------------------------
DROP TABLE IF EXISTS `jadwal_dokter`;
CREATE TABLE `jadwal_dokter` (
  `kode` int(11) NOT NULL AUTO_INCREMENT COMMENT ' ',
  `hari` int(11) DEFAULT NULL COMMENT '1:senin,2:selasa,3:rabu,4:kamis,5:jumat,6:sabtu',
  `kode_poli` int(11) NOT NULL,
  `kode_dokter` int(11) DEFAULT NULL,
  `jam_praktek` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode`) USING BTREE,
  KEY `fk` (`kode_poli`),
  KEY `fk2` (`kode_dokter`),
  CONSTRAINT `fk` FOREIGN KEY (`kode_poli`) REFERENCES `kategori_poli` (`id_poli`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk2` FOREIGN KEY (`kode_dokter`) REFERENCES `dokter` (`kode_dokter`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jadwal_dokter
-- ----------------------------
INSERT INTO `jadwal_dokter` VALUES ('1', '1', '1', '1', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('2', '2', '1', '1', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('3', '3', '1', '1', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('4', '4', '1', '1', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('5', '5', '1', '1', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('6', '6', '1', '1', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('8', '1', '2', '2', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('9', '2', '2', '2', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('10', '3', '2', '2', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('11', '4', '2', '2', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('12', '5', '2', '2', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('13', '6', '2', '2', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('15', '1', '3', '3', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('16', '2', '3', '3', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('17', '3', '3', '3', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('18', '4', '3', '3', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('19', '5', '3', '3', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('20', '6', '3', '3', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('22', '1', '4', '4', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('23', '2', '4', '4', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('24', '3', '4', '4', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('25', '4', '4', '4', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('26', '5', '4', '4', '9.00-12.00');
INSERT INTO `jadwal_dokter` VALUES ('27', '6', '4', '4', '9.00-12.00');

-- ----------------------------
-- Table structure for `kategori_poli`
-- ----------------------------
DROP TABLE IF EXISTS `kategori_poli`;
CREATE TABLE `kategori_poli` (
  `id_poli` int(11) NOT NULL AUTO_INCREMENT,
  `kode_poli` varchar(5) NOT NULL,
  `nama_poli` varchar(100) NOT NULL,
  `jumlah_maksimal` varchar(2) NOT NULL,
  PRIMARY KEY (`id_poli`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of kategori_poli
-- ----------------------------
INSERT INTO `kategori_poli` VALUES ('1', 'PLUM', 'Poli Umum', '30');
INSERT INTO `kategori_poli` VALUES ('2', 'PLGG', 'Poli Gigi', '30');
INSERT INTO `kategori_poli` VALUES ('3', 'PLIM', 'Poli Imunisasi', '30');
INSERT INTO `kategori_poli` VALUES ('4', 'PLTB', 'Poli Tuberculosis', '30');

-- ----------------------------
-- Table structure for `pasien`
-- ----------------------------
DROP TABLE IF EXISTS `pasien`;
CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL AUTO_INCREMENT,
  `no_identitas` varchar(25) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-Laki') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_registrasi` datetime DEFAULT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`id_pasien`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pasien
-- ----------------------------
INSERT INTO `pasien` VALUES ('1', '3318087776665553', 'evi', 'Perempuan', '2000-07-16', null, '<p>\r\n	Desa kajen</p>\r\n', '082199252530', 'evi', 'evi');
INSERT INTO `pasien` VALUES ('4', '3318087776665554', 'rafly', 'Laki-Laki', '1998-04-03', null, '<p>\r\n	Jl. Merdeka</p>\r\n', '08587654323', 'raff', 'raff');
INSERT INTO `pasien` VALUES ('5', '3318087776665555', 'dwi', 'Perempuan', '1999-03-22', null, '<p>\r\n	Jl Bunga</p>\r\n', '09584433221', 'dwi', 'dwi');
INSERT INTO `pasien` VALUES ('6', '3318087776665556', 'Aisyah', 'Perempuan', '2001-06-11', null, '<p>\r\n	Jl. Manis</p>\r\n', '0838222445', 'aisah', 'aisah');
INSERT INTO `pasien` VALUES ('7', '3318087776665557', 'Simon', 'Laki-Laki', '1997-02-06', null, '<p>\r\n	Jl. Mawar</p>\r\n', '081319898213', 'simon', 'simon');
INSERT INTO `pasien` VALUES ('8', '3318087776660002', 'Putri', 'Perempuan', '2003-06-18', null, '<p>\r\n	Jl. Merpati</p>\r\n', '081994321522', 'putri', 'putri');
INSERT INTO `pasien` VALUES ('9', '3318087776660001', 'Violita', 'Perempuan', '2003-09-02', null, '<p>\r\n	Jl Kuningan</p>\r\n', '08225488006', 'vio', 'vio');
INSERT INTO `pasien` VALUES ('10', '3318087776660006', 'Yordan', 'Laki-Laki', '1995-11-02', null, '<p>\r\n	Jl. Setia</p>\r\n', '081316552245', 'yordan', 'yordan');
INSERT INTO `pasien` VALUES ('11', '3318087776660003', 'silva', 'Perempuan', '1998-01-04', null, '<p>\r\n	Jl. Anggur</p>\r\n', '081654432349', 'silvi', 'silvi');
INSERT INTO `pasien` VALUES ('12', '3318087776660001', 'Lutfia', 'Perempuan', '2002-03-05', null, '<p>\r\n	Jl.merdeka</p>\r\n', '082199252530', 'lutfia', 'lutfia');
INSERT INTO `pasien` VALUES ('13', '3318087776660004', 'rafly', 'Laki-Laki', '2019-07-12', null, '<p>\r\n	jl. Diponegoro</p>\r\n', '087675641321', 'rafli', 'rafli');
INSERT INTO `pasien` VALUES ('14', '3318087776660006', 'meli', 'Perempuan', '1997-08-04', null, '<p>\r\n	jl.merpati</p>\r\n', '081654432349', 'meli', 'meli');
INSERT INTO `pasien` VALUES ('15', '3318087776665551', 'Rianto ', 'Laki-Laki', '1991-10-15', null, '<p>\r\n	Desa Tayu</p>\r\n', '087675641321', 'rianto', 'rianto');
INSERT INTO `pasien` VALUES ('16', '3318087776665552', 'Risma', 'Perempuan', '2002-03-02', null, '<p>\r\n	Desa Tayu</p>\r\n', '081654432341', 'risma', 'risma');
INSERT INTO `pasien` VALUES ('17', '3318087776665552', 'Sindy', 'Perempuan', '2002-01-15', null, 'Desa Keboromo', '081234567890', 'sindy', '3bc54e195911d13a3de5a337b5b3c2d6');
INSERT INTO `pasien` VALUES ('18', '3318087776665551', 'Rahmat', 'Laki-Laki', '1992-10-21', null, 'Desa Karangwotan', '081656765431', 'rahmat', 'af2a4c9d4c4956ec9d6ba62213eed568');
INSERT INTO `pasien` VALUES ('19', '0000000000', 'ander', 'Laki-Laki', '1988-03-03', null, 'Pekalongan', '089565656', 'ander', '161ebd7d45089b3446ee4e0d86dbcf92');

-- ----------------------------
-- Table structure for `tjm_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tjm_menu`;
CREATE TABLE `tjm_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_menu` int(11) NOT NULL DEFAULT 1,
  `nama_menu` varchar(50) NOT NULL,
  `url_menu` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `urutan` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` enum('Admin') NOT NULL DEFAULT 'Admin',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tjm_menu
-- ----------------------------
INSERT INTO `tjm_menu` VALUES ('1', '1', 'root', '/', '', '0', '0', 'Admin');
INSERT INTO `tjm_menu` VALUES ('2', '1', 'dashboard', 'admin/dashboard', 'fa fa-fw fa-dashboard', '1', '1', 'Admin');
INSERT INTO `tjm_menu` VALUES ('3', '1', 'User Admin', 'admin/useradmin', 'fa fa-users', '99', '0', 'Admin');
INSERT INTO `tjm_menu` VALUES ('4', '1', 'Menu', 'admin/menu', 'fa fa-gear', '100', '1', 'Admin');
INSERT INTO `tjm_menu` VALUES ('25', '1', 'Master', 'admin/master', 'fa fa-ticket', '2', '0', 'Admin');
INSERT INTO `tjm_menu` VALUES ('31', '1', 'Data Pasien', 'admin/pasien', 'glyphicon glyphicon-user', '2', '1', 'Admin');
INSERT INTO `tjm_menu` VALUES ('32', '1', 'Poli', 'admin/poli', 'glyphicon glyphicon-list-alt', '5', '1', 'Admin');
INSERT INTO `tjm_menu` VALUES ('33', '1', 'Antrian Poli', 'admin/antrian_poli', 'glyphicon glyphicon-list', '6', '1', 'Admin');
INSERT INTO `tjm_menu` VALUES ('34', '1', 'Dokter', 'admin/dokter', 'glyphicon glyphicon-user', '3', '1', 'Admin');
INSERT INTO `tjm_menu` VALUES ('35', '1', 'Jadwal Dokter', 'admin/jadwaldokter', 'fa fa-calendar', '4', '1', 'Admin');
