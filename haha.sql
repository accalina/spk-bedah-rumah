-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2019 at 03:53 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haha`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pemohon`
--

CREATE TABLE `data_pemohon` (
  `no` int(3) NOT NULL,
  `penghasilan` int(8) NOT NULL,
  `jml_anak` int(2) NOT NULL,
  `dokumen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pemohon`
--

INSERT INTO `data_pemohon` (`no`, `penghasilan`, `jml_anak`, `dokumen`) VALUES
(1, 6000000, 1, '106248.jpg'),
(2, 4000000, 1, '82015.jpg'),
(3, 2, 4, 'PID2y4f.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kecamatan`
--

CREATE TABLE `tbl_kecamatan` (
  `id` int(11) NOT NULL,
  `nama_kec` varchar(50) NOT NULL,
  `kode_kec` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelurahan`
--

CREATE TABLE `tbl_kelurahan` (
  `id` int(11) NOT NULL,
  `nama_kel` varchar(50) NOT NULL,
  `kode_kel` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kota`
--

CREATE TABLE `tbl_kota` (
  `id` int(11) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `kode_kota` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Claudia Felicia', 'claudia@kitten.com', 'default-profile.png', '77e17d4ca0e230f7ba7eb4b3214302fcb40a5fad1925969fd47ed03d467aebbd12d9a6f87268f92acf4a866b58f867871e2a65ace3ee809ae00f1b556ef7efc7', 2, 1, '2019-05-11 05:13:52'),
(2, 'Liliana Chisa', 'lili@dolphin.com', 'default-profile.png', '3242d5bac68a1617e8f79a6ff86686012ce80312388de7f6b0dff70d06b3bdeafb9a2e4d7f2f76674e955be28030302e4d9cd6c4dcc95f68f95d51891e503480', 3, 1, '2019-05-11 05:13:57'),
(3, 'Asuna Sara', 'asuna@chgs.com', 'default-profile.png', 'efc894f1aede3674fcb56a5ea3458ad62ef385142ac8ef7a7b316f56bb7bf5f5d862e5b24f8cdb62b746952915760f79c25a0b33c99808625eba73459d93fb04', 0, 1, '2019-05-10 18:17:20'),
(4, 'Seth Blackburn', 'seth@chgs.com', 'default-profile.png', '4f81fd2f3a47fa49f200538e71c13f698df09eb4d06aa598a97a89950efb71b13932118d85024dd1b7f826f3d956ef77f2d79ece5d64272424092088a99b8bab', 1, 1, '2019-05-11 05:14:15'),
(5, 'Claire Riku', 'claire@chgs.com', 'default-profile.png', 'eebe7d52819072ea9f546130b163928c1cfd2fc5dbfa84238f2727ea3bc8821c1ab367ed356d0a2e4b9da9f0c402d57053336a11d58dc95c903be1f361390a72', 5, 1, '2019-05-11 05:13:17'),
(6, 'Ako ', 'ako@chgs.com', 'default-profile.png', 'aba03c336d12a2783d212675ee7175abdc07511d3076ab31191ef3a832d3ab3060439c2728855879300a12e7c9727c54ad197648c74d90c71278889e5b0cc6e0', 4, 1, '2019-05-11 05:14:03'),
(8, 'dummy', 'du@du.com', 'default-profile.png', 'cdec6e821965f441eb8b206c00d0dfd92051d048ca6ebe03f5dea2a744e6646b786e9836879f7c44cb5ff22789fdb6f53f8966b5b0c8a3b6ef10e64d18a7d937', 1, 1, '2019-05-10 19:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'User'),
(2, 'RT'),
(3, 'Kelurahan'),
(4, 'Kecamatan'),
(5, 'Kota'),
(99, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pemohon`
--
ALTER TABLE `data_pemohon`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kelurahan`
--
ALTER TABLE `tbl_kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_pemohon`
--
ALTER TABLE `data_pemohon`
  MODIFY `no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kelurahan`
--
ALTER TABLE `tbl_kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
