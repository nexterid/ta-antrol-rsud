/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100903 (10.9.3-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : db_antrian

 Target Server Type    : MySQL
 Target Server Version : 100903 (10.9.3-MariaDB)
 File Encoding         : 65001

 Date: 24/06/2023 12:38:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nama` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `gambar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'default.png',
  `theme` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'sb_admin',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (2, 'admin@admin.com', '$2a$08$6biR9RPtagmYyOsa2ceuk.JX5UBMF.vblALoCXNcUew7dBxmmcjiG', 'admin', 1, 'default.png', 'sb_admin');
INSERT INTO `admin` VALUES (3, 'ander@gmail.com', '$2a$08$ZyjunYJzIT9peyTYtJde7O37j.sYetqwY.MZAa4vBZS10PyFHlupS', 'Ander', 1, 'default.png', 'sb_admin');

-- ----------------------------
-- Table structure for antrian
-- ----------------------------
DROP TABLE IF EXISTS `antrian`;
CREATE TABLE `antrian`  (
  `id_antrian` int NOT NULL AUTO_INCREMENT,
  `tgl_antrian` date NOT NULL,
  `no_antrian` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_antrian`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of antrian
-- ----------------------------
INSERT INTO `antrian` VALUES (1, '2019-07-31', '1');
INSERT INTO `antrian` VALUES (2, '2019-07-31', '2');
INSERT INTO `antrian` VALUES (3, '2019-07-31', '3');
INSERT INTO `antrian` VALUES (4, '2019-07-31', '4');
INSERT INTO `antrian` VALUES (5, '2019-07-31', '5');
INSERT INTO `antrian` VALUES (6, '2019-07-31', '6');
INSERT INTO `antrian` VALUES (7, '2019-07-31', '7');
INSERT INTO `antrian` VALUES (8, '2019-07-31', '8');
INSERT INTO `antrian` VALUES (9, '2019-08-01', '1');
INSERT INTO `antrian` VALUES (10, '2019-08-01', '2');
INSERT INTO `antrian` VALUES (11, '2019-08-07', '1');
INSERT INTO `antrian` VALUES (12, '2019-08-07', '2');
INSERT INTO `antrian` VALUES (13, '2019-08-07', '3');
INSERT INTO `antrian` VALUES (14, '2019-08-07', '4');
INSERT INTO `antrian` VALUES (15, '2019-08-07', '5');
INSERT INTO `antrian` VALUES (16, '2022-08-10', '1');
INSERT INTO `antrian` VALUES (17, '2022-08-10', '2');
INSERT INTO `antrian` VALUES (18, '2022-08-10', '3');

-- ----------------------------
-- Table structure for antrian_poli
-- ----------------------------
DROP TABLE IF EXISTS `antrian_poli`;
CREATE TABLE `antrian_poli`  (
  `id_antrian_poli` int NOT NULL AUTO_INCREMENT,
  `id_antrian` int NOT NULL,
  `id_pasien` int NOT NULL,
  `id_poli` int NOT NULL,
  `no_antrian_poli` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_antrian_poli` date NOT NULL,
  PRIMARY KEY (`id_antrian_poli`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of antrian_poli
-- ----------------------------
INSERT INTO `antrian_poli` VALUES (1, 0, 1, 2, '1', '2019-07-17');
INSERT INTO `antrian_poli` VALUES (2, 0, 1, 2, '2', '2019-07-17');
INSERT INTO `antrian_poli` VALUES (3, 0, 1, 2, '3', '2019-07-17');
INSERT INTO `antrian_poli` VALUES (4, 0, 1, 4, '1', '2019-07-17');
INSERT INTO `antrian_poli` VALUES (5, 0, 1, 3, '1', '2019-07-17');
INSERT INTO `antrian_poli` VALUES (6, 0, 1, 3, '30', '2019-07-17');
INSERT INTO `antrian_poli` VALUES (8, 0, 1, 4, '2', '2019-07-17');
INSERT INTO `antrian_poli` VALUES (9, 0, 1, 2, '1', '2019-07-18');
INSERT INTO `antrian_poli` VALUES (10, 0, 2, 2, '30', '2019-07-18');
INSERT INTO `antrian_poli` VALUES (11, 0, 6, 3, '1', '2019-07-30');
INSERT INTO `antrian_poli` VALUES (12, 0, 1, 1, '1', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (13, 0, 1, 1, '2', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (14, 0, 1, 2, '1', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (15, 0, 1, 3, '1', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (16, 0, 1, 3, '2', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (17, 0, 1, 3, '3', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (18, 0, 14, 1, '3', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (19, 0, 14, 1, '4', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (20, 0, 14, 1, '5', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (21, 0, 14, 2, '2', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (22, 0, 14, 4, '1', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (23, 0, 14, 4, '2', '2019-07-31');
INSERT INTO `antrian_poli` VALUES (24, 0, 14, 2, '1', '2019-08-01');
INSERT INTO `antrian_poli` VALUES (25, 0, 14, 3, '1', '2019-08-01');
INSERT INTO `antrian_poli` VALUES (26, 0, 14, 1, '1', '2019-08-07');
INSERT INTO `antrian_poli` VALUES (27, 0, 14, 2, '1', '2019-08-07');
INSERT INTO `antrian_poli` VALUES (28, 0, 14, 1, '2', '2019-08-07');
INSERT INTO `antrian_poli` VALUES (29, 0, 14, 1, '3', '2019-08-07');
INSERT INTO `antrian_poli` VALUES (30, 0, 14, 4, '1', '2019-08-07');
INSERT INTO `antrian_poli` VALUES (31, 0, 15, 1, '1', '2022-08-10');
INSERT INTO `antrian_poli` VALUES (32, 0, 17, 2, '1', '2022-08-10');
INSERT INTO `antrian_poli` VALUES (33, 0, 18, 2, '2', '2022-08-10');

-- ----------------------------
-- Table structure for dokter
-- ----------------------------
DROP TABLE IF EXISTS `dokter`;
CREATE TABLE `dokter`  (
  `kode_dokter` int NOT NULL AUTO_INCREMENT,
  `no_identitas` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-Laki') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `poli` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kode_dokter`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dokter
-- ----------------------------

-- ----------------------------
-- Table structure for jadwal_dokter
-- ----------------------------
DROP TABLE IF EXISTS `jadwal_dokter`;
CREATE TABLE `jadwal_dokter`  (
  `kode` int NOT NULL AUTO_INCREMENT COMMENT ' ',
  `hari` int NULL DEFAULT NULL,
  `kode_poli` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_dokter` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jam_praktek` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jadwal_dokter
-- ----------------------------

-- ----------------------------
-- Table structure for kategori_poli
-- ----------------------------
DROP TABLE IF EXISTS `kategori_poli`;
CREATE TABLE `kategori_poli`  (
  `id_poli` int NOT NULL AUTO_INCREMENT,
  `kode_poli` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_poli` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah_maksimal` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_poli`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori_poli
-- ----------------------------
INSERT INTO `kategori_poli` VALUES (1, 'PLUM', 'Poli Umum', '30');
INSERT INTO `kategori_poli` VALUES (2, 'PLGG', 'Poli Gigi', '30');
INSERT INTO `kategori_poli` VALUES (3, 'PLIM', 'Poli Imunisasi', '30');
INSERT INTO `kategori_poli` VALUES (4, 'PLTB', 'Poli Tuberculosis', '30');

-- ----------------------------
-- Table structure for pasien
-- ----------------------------
DROP TABLE IF EXISTS `pasien`;
CREATE TABLE `pasien`  (
  `id_pasien` int NOT NULL AUTO_INCREMENT,
  `no_identitas` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-Laki') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pasien`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pasien
-- ----------------------------
INSERT INTO `pasien` VALUES (1, '3318087776665553', 'evi', 'Perempuan', '2000-07-16', '<p>\r\n	Desa kajen</p>\r\n', '082199252530', 'evi', 'evi');
INSERT INTO `pasien` VALUES (4, '3318087776665554', 'rafly', 'Laki-Laki', '1998-04-03', '<p>\r\n	Jl. Merdeka</p>\r\n', '08587654323', 'raff', 'raff');
INSERT INTO `pasien` VALUES (5, '3318087776665555', 'dwi', 'Perempuan', '1999-03-22', '<p>\r\n	Jl Bunga</p>\r\n', '09584433221', 'dwi', 'dwi');
INSERT INTO `pasien` VALUES (6, '3318087776665556', 'Aisyah', 'Perempuan', '2001-06-11', '<p>\r\n	Jl. Manis</p>\r\n', '0838222445', 'aisah', 'aisah');
INSERT INTO `pasien` VALUES (7, '3318087776665557', 'Simon', 'Laki-Laki', '1997-02-06', '<p>\r\n	Jl. Mawar</p>\r\n', '081319898213', 'simon', 'simon');
INSERT INTO `pasien` VALUES (8, '3318087776660002', 'Putri', 'Perempuan', '2003-06-18', '<p>\r\n	Jl. Merpati</p>\r\n', '081994321522', 'putri', 'putri');
INSERT INTO `pasien` VALUES (9, '3318087776660001', 'Violita', 'Perempuan', '2003-09-02', '<p>\r\n	Jl Kuningan</p>\r\n', '08225488006', 'vio', 'vio');
INSERT INTO `pasien` VALUES (10, '3318087776660006', 'Yordan', 'Laki-Laki', '1995-11-02', '<p>\r\n	Jl. Setia</p>\r\n', '081316552245', 'yordan', 'yordan');
INSERT INTO `pasien` VALUES (11, '3318087776660003', 'silva', 'Perempuan', '1998-01-04', '<p>\r\n	Jl. Anggur</p>\r\n', '081654432349', 'silvi', 'silvi');
INSERT INTO `pasien` VALUES (12, '3318087776660001', 'Lutfia', 'Perempuan', '2002-03-05', '<p>\r\n	Jl.merdeka</p>\r\n', '082199252530', 'lutfia', 'lutfia');
INSERT INTO `pasien` VALUES (13, '3318087776660004', 'rafly', 'Laki-Laki', '2019-07-12', '<p>\r\n	jl. Diponegoro</p>\r\n', '087675641321', 'rafli', 'rafli');
INSERT INTO `pasien` VALUES (14, '3318087776660006', 'meli', 'Perempuan', '1997-08-04', '<p>\r\n	jl.merpati</p>\r\n', '081654432349', 'meli', 'meli');
INSERT INTO `pasien` VALUES (15, '3318087776665551', 'Rianto ', 'Laki-Laki', '1991-10-15', '<p>\r\n	Desa Tayu</p>\r\n', '087675641321', 'rianto', 'rianto');
INSERT INTO `pasien` VALUES (16, '3318087776665552', 'Risma', 'Perempuan', '2002-03-02', '<p>\r\n	Desa Tayu</p>\r\n', '081654432341', 'risma', 'risma');
INSERT INTO `pasien` VALUES (17, '3318087776665552', 'Sindy', 'Perempuan', '2002-01-15', 'Desa Keboromo', '081234567890', 'sindy', '3bc54e195911d13a3de5a337b5b3c2d6');
INSERT INTO `pasien` VALUES (18, '3318087776665551', 'Rahmat', 'Laki-Laki', '1992-10-21', 'Desa Karangwotan', '081656765431', 'rahmat', 'af2a4c9d4c4956ec9d6ba62213eed568');
INSERT INTO `pasien` VALUES (19, '0000000000', 'ander', 'Laki-Laki', '1988-03-03', 'Pekalongan', '089565656', 'ander', '161ebd7d45089b3446ee4e0d86dbcf92');

-- ----------------------------
-- Table structure for tjm_menu
-- ----------------------------
DROP TABLE IF EXISTS `tjm_menu`;
CREATE TABLE `tjm_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_menu` int NOT NULL DEFAULT 1,
  `nama_menu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `url_menu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `urutan` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `type` enum('Admin') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Admin',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tjm_menu
-- ----------------------------
INSERT INTO `tjm_menu` VALUES (1, 1, 'root', '/', '', 0, 0, 'Admin');
INSERT INTO `tjm_menu` VALUES (2, 1, 'dashboard', 'admin/dashboard', 'fa fa-fw fa-dashboard', 1, 1, 'Admin');
INSERT INTO `tjm_menu` VALUES (3, 1, 'User Admin', 'admin/useradmin', 'fa fa-users', 99, 0, 'Admin');
INSERT INTO `tjm_menu` VALUES (4, 1, 'Menu', 'admin/menu', 'fa fa-gear', 100, 1, 'Admin');
INSERT INTO `tjm_menu` VALUES (25, 1, 'Master', 'admin/master', 'fa fa-ticket', 2, 0, 'Admin');
INSERT INTO `tjm_menu` VALUES (31, 1, 'Data Pasien', 'admin/pasien', 'glyphicon glyphicon-user', 2, 1, 'Admin');
INSERT INTO `tjm_menu` VALUES (32, 1, 'Poli', 'admin/poli', 'glyphicon glyphicon-list-alt', 3, 1, 'Admin');
INSERT INTO `tjm_menu` VALUES (33, 1, 'Antrian Poli', 'admin/antrian_poli', 'glyphicon glyphicon-list', 4, 1, 'Admin');

SET FOREIGN_KEY_CHECKS = 1;
