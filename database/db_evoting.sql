-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 04:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_evoting`
--
CREATE DATABASE IF NOT EXISTS `db_evoting` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_evoting`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_calon`
--

CREATE TABLE `tb_calon` (
  `id_calon` int(11) NOT NULL,
  `nama_calon` varchar(100) DEFAULT NULL,
  `foto_calon` varchar(200) DEFAULT NULL,
  `keterangan` blob DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_calon`
--

INSERT INTO `tb_calon` (`id_calon`, `nama_calon`, `foto_calon`, `keterangan`, `status`) VALUES
(1, 'Anies Baswedan-Muhaimin Iskandar', 'no.1.jpeg', 0x4b616e6469646174205061736c6f6e204e6f2e2055727574203031, '1'),
(2, 'Prabowo Subianto-Gibran Rakabuming', 'no.02.jpg', 0x4b616e6469646174205061736c6f6e204e6f2e2055727574203032, '1'),
(3, 'Ganjar Pranowo-Mahfud MD', 'no.03.jpeg', 0x4b616e6469646174205061736c6f6e204e6f2e2055727574203033, '1'),
(4, 'Azel Fahrezi', 'Ketua Kel.1.webp', 0x43616c6f6e204b65747561204b656c6f6d706f6b, '1'),
(5, 'Daniel Edwardo Manurung', 'Ketua Kel.2.jpeg', 0x43616c6f6e204b65747561204b656c6f6d706f6b, '1'),
(6, 'Yaman', 'kepdes.svg', 0x43616c6f6e204b6570446573204e6f2e2055727574203031, '1'),
(7, 'Suraji', 'kepdes.jpeg', 0x43616c6f6e204b6570446573204e6f2e2055727574203032, '1'),
(8, 'Iskandar', 'kepdes.jpg', 0x43616c6f6e204b6570446573204e6f2e2055727574203033, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftarvote`
--

CREATE TABLE `tb_daftarvote` (
  `daftarvote_id` int(11) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_mulai` datetime DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `status_id` enum('0','1','2') DEFAULT NULL,
  `flag_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_daftarvote`
--

INSERT INTO `tb_daftarvote` (`daftarvote_id`, `nama`, `keterangan`, `tanggal_mulai`, `tanggal_selesai`, `status_id`, `flag_id`) VALUES
(1, 'Pemilihan Capres dan Cawapres 2024', 'Pemilihan Capres dan Cawapres 2024 Indonesia', '2023-12-24 00:00:00', '2024-12-26 23:00:00', '1', 1),
(2, 'Pemilihan Ketua Kelompok', 'Pemilihan Ketua Kelompok', '2023-12-24 17:25:00', '2024-12-02 23:25:00', '1', 9),
(3, 'Pemilihan Kepala Desa', 'Pemilihan Kepala Desa', '2023-12-24 00:00:00', '2024-12-01 23:00:58', '1', 1),
(4, 'test3', 'test3', '2021-03-01 20:51:00', '2021-03-02 20:51:00', '1', 9),
(5, 'Pemilihan Ketua Kelompok', 'Pemilihan Ketua Kelompok', '2023-12-24 20:31:00', '2024-03-24 23:00:00', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(100) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` enum('Administrator','Petugas','Pemilih') DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `jenis` enum('PAN','PST') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`, `status`, `jenis`) VALUES
(1, 'admin', 'admin', '123', 'Administrator', '1', 'PAN'),
(2, 'Zacky Santoso', 'zacky', '1234', 'Pemilih', '1', 'PST'),
(3, 'Azel Fahrezi', 'azel', '1234', 'Pemilih', '1', 'PST'),
(4, 'Petugas Pemilihan', 'petugas', '123', 'Petugas', '1', 'PAN'),
(5, 'Daniel Edwardo Manurung', 'daniel', '1234', 'Pemilih', '1', 'PST'),
(6, 'Annisa Pratiwi', 'annisa', '1234', 'Pemilih', '1', 'PST'),
(35, 'Daffa Yuimujahida', 'daffa', '1234', 'Pemilih', '1', 'PST'),
(36, 'Siska Wulandari', 'siska', '1234', 'Pemilih', '1', 'PST'),
(37, 'Abdul Katsir', 'katsir', '1234', 'Pemilih', '1', 'PST'),
(39, 'Cici', 'cici', '1234', 'Pemilih', '1', 'PST'),
(40, 'Wira', 'wira', '1234', 'Pemilih', '1', 'PST');

-- --------------------------------------------------------

--
-- Table structure for table `tb_vote`
--

CREATE TABLE `tb_vote` (
  `id_vote` int(11) NOT NULL,
  `daftarvote_id` int(11) DEFAULT NULL,
  `id_calon` varchar(2) DEFAULT NULL,
  `id_pemilih` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_vote`
--

INSERT INTO `tb_vote` (`id_vote`, `daftarvote_id`, `id_calon`, `id_pemilih`, `date`) VALUES
(1, 3, '7', 2, '2023-12-24 20:26:04'),
(2, 3, '6', 3, '2023-12-24 20:28:44'),
(3, 3, '8', 5, '2023-12-24 20:29:39'),
(4, 3, '6', 6, '2023-12-24 20:33:12'),
(5, 3, '7', 35, '2023-12-24 20:34:35'),
(6, 3, '8', 36, '2023-12-24 20:35:01'),
(7, 3, '7', 37, '2023-12-24 20:35:51'),
(8, 3, '6', 39, '2023-12-24 20:36:29'),
(9, 3, '8', 40, '2023-12-24 20:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `tb_votekandidat`
--

CREATE TABLE `tb_votekandidat` (
  `votekandidat_id` int(11) NOT NULL,
  `daftarvote_id` int(11) DEFAULT NULL,
  `id_calon` int(11) DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `flag_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_votekandidat`
--

INSERT INTO `tb_votekandidat` (`votekandidat_id`, `daftarvote_id`, `id_calon`, `no_urut`, `flag_id`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 2, 2, 1),
(3, 1, 3, 3, 1),
(4, 2, 4, 1, 1),
(5, 2, 5, 2, 1),
(6, 3, 6, 1, 1),
(7, 3, 7, 2, 1),
(8, 3, 8, 3, 1),
(9, 5, 4, 1, 1),
(10, 5, 5, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_votepemilih`
--

CREATE TABLE `tb_votepemilih` (
  `votepemilih_id` int(11) NOT NULL,
  `daftarvote_id` int(11) DEFAULT NULL,
  `id_pemilih` int(11) DEFAULT NULL,
  `flag_id` tinyint(4) DEFAULT NULL,
  `status_id` enum('1','2') DEFAULT NULL COMMENT '1 = BELUM MEMILIH / 2 = SUDAH MEMILIH'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_votepemilih`
--

INSERT INTO `tb_votepemilih` (`votepemilih_id`, `daftarvote_id`, `id_pemilih`, `flag_id`, `status_id`) VALUES
(1, 2, 2, 1, '1'),
(2, 2, 3, 1, '1'),
(3, 2, 5, 1, '1'),
(4, 2, 6, 1, '1'),
(5, 2, 35, 1, '1'),
(6, 2, 36, 1, '1'),
(7, 2, 37, 1, '1'),
(8, 2, 39, 1, '1'),
(9, 2, 40, 1, '1'),
(16, 3, 2, 1, '2'),
(17, 3, 3, 1, '2'),
(18, 3, 5, 1, '2'),
(19, 3, 6, 1, '2'),
(20, 3, 35, 1, '2'),
(21, 3, 36, 1, '2'),
(22, 3, 37, 1, '2'),
(23, 3, 39, 1, '2'),
(24, 3, 40, 1, '2'),
(31, 1, 2, 1, '1'),
(32, 1, 3, 1, '1'),
(33, 1, 5, 1, '1'),
(34, 1, 6, 1, '1'),
(35, 1, 35, 1, '1'),
(36, 1, 36, 1, '1'),
(37, 1, 37, 1, '1'),
(38, 1, 39, 1, '1'),
(39, 1, 40, 1, '1'),
(46, 5, 2, 1, '1'),
(47, 5, 3, 1, '1'),
(48, 5, 5, 1, '1'),
(49, 5, 6, 1, '1'),
(50, 5, 35, 1, '1'),
(51, 5, 36, 1, '1'),
(52, 5, 37, 1, '1'),
(53, 5, 39, 1, '1'),
(54, 5, 40, 1, '1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_vote`
-- (See below for the actual view)
--
CREATE TABLE `v_vote` (
`id_vote` int(11)
,`daftarvote_id` int(11)
,`id_calon` varchar(2)
,`id_pemilih` int(11)
,`date` datetime
,`nama_calon` varchar(100)
,`foto_calon` varchar(200)
,`keterangan` blob
,`nama_pemilih` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `v_vote`
--
DROP TABLE IF EXISTS `v_vote`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ipay`@`%` SQL SECURITY DEFINER VIEW `v_vote`  AS SELECT `a`.`id_vote` AS `id_vote`, `a`.`daftarvote_id` AS `daftarvote_id`, `a`.`id_calon` AS `id_calon`, `a`.`id_pemilih` AS `id_pemilih`, `a`.`date` AS `date`, `b`.`nama_calon` AS `nama_calon`, `b`.`foto_calon` AS `foto_calon`, `b`.`keterangan` AS `keterangan`, `c`.`nama_pengguna` AS `nama_pemilih` FROM ((`tb_vote` `a` join `tb_calon` `b` on(`a`.`id_calon` = `b`.`id_calon`)) join `tb_pengguna` `c` on(`a`.`id_pemilih` = `c`.`id_pengguna`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_calon`
--
ALTER TABLE `tb_calon`
  ADD PRIMARY KEY (`id_calon`) USING BTREE;

--
-- Indexes for table `tb_daftarvote`
--
ALTER TABLE `tb_daftarvote`
  ADD PRIMARY KEY (`daftarvote_id`) USING BTREE;

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tb_vote`
--
ALTER TABLE `tb_vote`
  ADD PRIMARY KEY (`id_vote`) USING BTREE,
  ADD UNIQUE KEY `daftarvote` (`daftarvote_id`,`id_pemilih`) USING BTREE;

--
-- Indexes for table `tb_votekandidat`
--
ALTER TABLE `tb_votekandidat`
  ADD PRIMARY KEY (`votekandidat_id`) USING BTREE;

--
-- Indexes for table `tb_votepemilih`
--
ALTER TABLE `tb_votepemilih`
  ADD PRIMARY KEY (`votepemilih_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_calon`
--
ALTER TABLE `tb_calon`
  MODIFY `id_calon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_daftarvote`
--
ALTER TABLE `tb_daftarvote`
  MODIFY `daftarvote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tb_vote`
--
ALTER TABLE `tb_vote`
  MODIFY `id_vote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_votekandidat`
--
ALTER TABLE `tb_votekandidat`
  MODIFY `votekandidat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_votepemilih`
--
ALTER TABLE `tb_votepemilih`
  MODIFY `votepemilih_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_evoting\",\"table\":\"tb_pengguna\"},{\"db\":\"db_evoting\",\"table\":\"tb_vote\"},{\"db\":\"db_evoting\",\"table\":\"tb_daftarvote\"},{\"db\":\"db_evoting\",\"table\":\"tb_calon\"},{\"db\":\"db_evoting\",\"table\":\"tb_votepemilih\"},{\"db\":\"db_evoting\",\"table\":\"tb_votekandidat\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-12-25 03:14:46', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
