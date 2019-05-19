-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 03:10 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bedah_rumah`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pemohon`
--

CREATE TABLE `data_pemohon` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `usia` int(11) NOT NULL,
  `penghasilan` int(11) NOT NULL,
  `luas_tanah` int(11) NOT NULL,
  `hak_tanah` varchar(5) NOT NULL,
  `bayar_pbb` varchar(5) NOT NULL,
  `id_digital` varchar(5) NOT NULL,
  `lokal` varchar(5) NOT NULL,
  `kondisi_rumah` varchar(25) NOT NULL,
  `berkas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pemohon`
--

INSERT INTO `data_pemohon` (`id`, `nama`, `alamat`, `usia`, `penghasilan`, `luas_tanah`, `hak_tanah`, `bayar_pbb`, `id_digital`, `lokal`, `kondisi_rumah`, `berkas`) VALUES
(1, 'Archie', 'Ds. Ketandan No. 66, Balikpapan 61349, KalUt', 9, 3, 6, '1', '1', '5', '5', '9', ''),
(2, 'Duggins', 'Kpg. Bhayangkara No. 922, Serang 38435, SulSel', 7, 7, 8, '7', '5', '5', '5', '9', ''),
(3, 'Joye', 'Gg. Sukajadi No. 602, Sorong 40293, Maluku', 9, 3, 3, '7', '5', '5', '1', '1', ''),
(4, 'Divito', 'Jr. Kartini No. 567, Makassar 59864, BaBel', 9, 3, 3, '7', '1', '5', '1', '1', ''),
(5, 'Francesco', 'Kpg. B.Agam Dlm No. 558, Depok 14197, Aceh', 7, 7, 3, '1', '5', '5', '1', '4', ''),
(6, 'Bolduc', 'Jr. Astana Anyar No. 479, Tangerang Selatan 83386, SulSel', 9, 7, 8, '1', '1', '1', '5', '9', ''),
(7, 'Ka', 'Gg. Yogyakarta No. 966, Balikpapan 30093, SulSel', 3, 3, 8, '1', '1', '1', '5', '4', ''),
(8, 'Rickett', 'Gg. Casablanca No. 939, Lubuklinggau 91935, KalUt', 7, 7, 3, '1', '1', '5', '5', '1', ''),
(9, 'Reed', 'Ds. Bambon No. 534, Tomohon 53312, JaTim', 7, 5, 6, '1', '1', '1', '1', '9', ''),
(10, 'Hebel', 'Kpg. Surapati No. 624, Malang 62041, Bengkulu', 7, 5, 9, '1', '5', '5', '1', '1', ''),
(11, 'Kathyrn', 'Psr. Qrisdoren No. 592, Binjai 73469, JaBar', 3, 9, 8, '7', '5', '5', '5', '9', ''),
(12, 'Hilaire', 'Kpg. K.H. Maskur No. 103, Cirebon 98465, SulUt', 7, 3, 9, '7', '5', '5', '1', '9', ''),
(13, 'Laci', 'Gg. Abdul Rahmat No. 947, Padangsidempuan 64687, KalTim', 9, 3, 3, '1', '5', '1', '5', '7', ''),
(14, 'Latson', 'Ds. Radio No. 580, Sorong 87447, SumUt', 3, 3, 8, '7', '1', '1', '5', '7', ''),
(15, 'Martin', 'Ds. Jend. Sudirman No. 968, Batu 38602, KepR', 9, 7, 3, '7', '1', '5', '5', '1', ''),
(16, 'Febres', 'Ki. Jakarta No. 94, Magelang 89895, Maluku', 7, 5, 9, '1', '1', '1', '1', '7', ''),
(17, 'Mireille', 'Ds. Moch. Toha No. 385, Lhokseumawe 54872, KalTeng', 9, 7, 3, '1', '1', '1', '1', '9', ''),
(18, 'Yeoman', 'Ki. Cikutra Barat No. 966, Pontianak 10648, SulBar', 7, 9, 8, '7', '1', '5', '1', '1', ''),
(19, 'Lawana', 'Jr. Bakau No. 492, Tangerang Selatan 73274, Lampung', 3, 3, 6, '1', '1', '1', '1', '7', ''),
(20, 'Dartez', 'Kpg. BKR No. 940, Binjai 52505, JaBar', 3, 7, 6, '1', '5', '1', '1', '4', ''),
(21, 'Macy', 'Jr. Cihampelas No. 320, Sukabumi 29020, Jambi', 7, 5, 9, '7', '5', '1', '1', '1', ''),
(22, 'Durfee', 'Jr. Lumban Tobing No. 353, Kendari 70847, KalUt', 9, 9, 8, '1', '1', '1', '1', '9', ''),
(23, 'Cristen', 'Jr. Cut Nyak Dien No. 297, Kediri 29596, JaTeng', 3, 5, 9, '7', '5', '1', '5', '4', ''),
(24, 'Piggott', 'Jr. Supono No. 783, Bekasi 12634, JaTim', 7, 7, 3, '1', '1', '1', '5', '4', ''),
(25, 'Georgette', 'Kpg. Karel S. Tubun No. 780, Salatiga 51571, JaTeng', 7, 5, 9, '7', '1', '1', '1', '4', ''),
(26, 'Hoskin', 'Jln. Lembong No. 225, Banjarmasin 86129, DKI', 9, 5, 6, '1', '5', '1', '5', '4', ''),
(27, 'Doreatha', 'Jr. Salam No. 780, Tasikmalaya 66829, SulBar', 7, 3, 6, '7', '5', '5', '5', '7', ''),
(28, 'Danner', 'Ki. B.Agam Dlm No. 671, Singkawang 15850, Gorontalo', 3, 7, 3, '1', '1', '5', '1', '9', ''),
(29, 'Danae', 'Jr. Bahagia  No. 606, Tanjung Pinang 11377, PapBar', 9, 5, 8, '1', '5', '1', '5', '7', ''),
(30, 'Harned', 'Ki. Flora No. 459, Banjarmasin 31378, Riau', 9, 5, 8, '7', '5', '5', '1', '9', ''),
(31, 'Rebeca', 'Gg. Suryo No. 686, Blitar 44538, Papua', 9, 9, 6, '1', '5', '1', '1', '4', ''),
(32, 'Mcgahan', 'Ki. K.H. Wahid Hasyim (Kopo) No. 452, Sawahlunto 43216, Lampung', 7, 7, 8, '1', '1', '5', '5', '9', ''),
(33, 'Elizbeth', 'Psr. Bara No. 580, Depok 10882, Maluku', 9, 9, 6, '7', '1', '5', '5', '4', ''),
(34, 'Hadden', 'Gg. Abdul Muis No. 598, Kupang 97645, Bali', 7, 9, 3, '7', '1', '1', '1', '1', ''),
(35, 'Ramonita', 'Ki. Yogyakarta No. 980, Bontang 45455, SulTeng', 7, 9, 9, '1', '1', '5', '1', '7', ''),
(36, 'Hysell', 'Psr. Sugiyopranoto No. 570, Denpasar 89101, KalSel', 7, 3, 9, '7', '5', '1', '1', '4', ''),
(37, 'Siu', 'Kpg. K.H. Maskur No. 80, Parepare 10810, SulTra', 3, 7, 9, '1', '1', '5', '5', '9', ''),
(38, 'Zak', 'Jln. Batako No. 650, Payakumbuh 24555, SumSel', 3, 5, 8, '1', '5', '5', '5', '9', ''),
(39, 'Mui', 'Dk. Sudirman No. 977, Sibolga 20725, JaBar', 7, 7, 8, '1', '1', '5', '1', '4', ''),
(40, 'Rezac', 'Jln. Untung Suropati No. 776, Surabaya 88242, SulSel', 9, 7, 6, '1', '1', '5', '5', '1', ''),
(41, 'Particia', 'Dk. Flora No. 527, Metro 21420, BaBel', 9, 3, 9, '7', '1', '5', '1', '1', ''),
(42, 'Beckstead', 'Ki. Nakula No. 476, Tarakan 87726, KalSel', 9, 7, 9, '1', '5', '5', '1', '9', ''),
(43, 'Violeta', 'Kpg. Katamso No. 836, Depok 72171, JaTeng', 9, 3, 6, '7', '5', '1', '1', '7', ''),
(44, 'Pellot', 'Kpg. Setia Budi No. 299, Gunungsitoli 71654, KalSel', 9, 5, 6, '7', '5', '5', '1', '9', ''),
(45, 'Epifania', 'Ds. Ikan No. 133, Bima 27917, KepR', 7, 7, 6, '7', '1', '1', '1', '1', ''),
(46, 'Mosca', 'Psr. Bak Mandi No. 563, Blitar 95537, Jambi', 3, 9, 8, '1', '1', '5', '5', '1', ''),
(47, 'Marianela', 'Dk. Bahagia No. 866, Bengkulu 67569, SumBar', 3, 5, 9, '1', '5', '5', '5', '9', ''),
(48, 'Emerick', 'Gg. Pasirkoja No. 487, Batam 57653, SumSel', 3, 5, 3, '1', '1', '5', '5', '7', ''),
(49, 'Lenard', 'Ds. Basuki Rahmat  No. 972, Dumai 67021, SulSel', 3, 5, 9, '7', '1', '5', '5', '1', ''),
(50, 'Contos', 'Jr. Bah Jaya No. 600, Subulussalam 40278, DIY', 7, 9, 3, '1', '5', '1', '1', '1', ''),
(51, 'Allie', 'Kpg. Bagonwoto  No. 329, Pekalongan 83386, NTT', 3, 5, 8, '1', '1', '5', '1', '9', ''),
(52, 'Nazzaro', 'Jr. Juanda No. 838, Sorong 50552, NTB', 3, 7, 9, '7', '1', '5', '5', '4', ''),
(53, 'Hilton', 'Kpg. Lada No. 249, Bandung 17021, SumBar', 9, 3, 9, '7', '5', '5', '5', '9', ''),
(54, 'Baity', 'Jln. Untung Suropati No. 879, Pekanbaru 78072, BaBel', 7, 9, 8, '1', '1', '5', '5', '9', ''),
(55, 'Cheryll', 'Gg. Kyai Gede No. 749, Tegal 64215, KalTeng', 9, 3, 9, '7', '1', '5', '1', '9', ''),
(56, 'Gregerson', 'Jr. Bakau Griya Utama No. 930, Salatiga 44176, BaBel', 9, 9, 9, '1', '1', '5', '1', '7', ''),
(57, 'Magali', 'Ki. Madrasah No. 995, Bau-Bau 20306, Bengkulu', 7, 5, 8, '1', '5', '5', '1', '9', ''),
(58, 'Klimek', 'Jln. Perintis Kemerdekaan No. 834, Manado 16909, KalBar', 7, 7, 8, '1', '5', '1', '5', '4', ''),
(59, 'Miki', 'Ds. Merdeka No. 455, Cilegon 85022, JaTeng', 9, 5, 8, '1', '5', '5', '1', '1', ''),
(60, 'Steinhauser', 'Kpg. Urip Sumoharjo No. 910, Samarinda 23835, SulBar', 7, 9, 6, '1', '5', '1', '5', '1', ''),
(61, 'Warner', 'Dk. Tangkuban Perahu No. 969, Serang 43045, KalTim', 7, 5, 8, '7', '1', '1', '5', '1', ''),
(62, 'Washburn', 'Ds. Moch. Yamin No. 297, Yogyakarta 46087, JaBar', 3, 3, 9, '1', '5', '5', '5', '4', ''),
(63, 'Kirsten', 'Ds. Sudiarto No. 902, Bengkulu 86468, KalTim', 7, 7, 3, '1', '5', '5', '5', '4', ''),
(64, 'Hittle', 'Kpg. Bakau No. 149, Bogor 30207, KalTim', 3, 9, 3, '1', '5', '1', '5', '7', ''),
(65, 'Kiara', 'Psr. Gajah Mada No. 819, Pariaman 91623, SulTeng', 9, 7, 8, '7', '1', '1', '5', '7', ''),
(66, 'Parillo', 'Jln. K.H. Wahid Hasyim (Kopo) No. 481, Gorontalo 80418, Bali', 9, 9, 6, '1', '5', '5', '5', '7', ''),
(67, 'Melissia', 'Dk. Setia Budi No. 914, Mojokerto 96186, PapBar', 9, 9, 6, '7', '1', '1', '5', '1', ''),
(68, 'Rackham', 'Ki. Orang No. 919, Samarinda 73995, SumSel', 9, 9, 6, '7', '5', '5', '5', '1', ''),
(69, 'Chantal', 'Psr. Supomo No. 46, Kendari 88596, SulBar', 3, 3, 6, '1', '1', '5', '5', '7', ''),
(70, 'Beckles', 'Ds. Lada No. 994, Tangerang 56811, KepR', 7, 3, 6, '1', '1', '5', '1', '1', ''),
(71, 'Louisa', 'Kpg. Ikan No. 545, Palu 20129, KalTeng', 9, 7, 9, '1', '5', '5', '5', '7', ''),
(72, 'Smothers', 'Ki. Abdullah No. 763, Bau-Bau 79707, Maluku', 7, 7, 3, '7', '1', '1', '1', '7', ''),
(73, 'Galen', 'Dk. Padma No. 833, Padangpanjang 64148, NTT', 3, 5, 9, '1', '5', '1', '5', '1', ''),
(74, 'Koehl', 'Gg. Sentot Alibasa No. 140, Solok 93304, JaTim', 3, 9, 6, '1', '1', '5', '5', '7', ''),
(75, 'Rico', 'Psr. Padma No. 3, Tasikmalaya 89124, Jambi', 3, 7, 3, '1', '1', '1', '1', '7', ''),
(76, 'Putney', 'Jr. Cemara No. 382, Prabumulih 53796, NTB', 3, 3, 9, '1', '1', '5', '5', '7', ''),
(77, 'Doug', 'Jln. B.Agam Dlm No. 978, Tasikmalaya 87376, KalTeng', 3, 3, 6, '1', '1', '1', '5', '7', ''),
(78, 'Mahmood', 'Kpg. Bakit  No. 746, Banjar 57479, NTB', 3, 3, 8, '7', '1', '1', '5', '1', ''),
(79, 'Leila', 'Jln. Ketandan No. 138, Kediri 16013, Papua', 9, 5, 8, '7', '5', '1', '1', '9', ''),
(80, 'Cox', 'Ki. Suniaraja No. 43, Gorontalo 55984, KalSel', 3, 7, 6, '7', '5', '1', '5', '9', ''),
(81, 'Maira', 'Psr. Perintis Kemerdekaan No. 606, Binjai 49294, Lampung', 9, 3, 6, '1', '5', '5', '5', '1', ''),
(82, 'Giel', 'Ki. Bakit  No. 122, Pekanbaru 50693, JaTeng', 9, 7, 6, '7', '5', '1', '1', '7', ''),
(83, 'Jackqueline', 'Gg. Ir. H. Juanda No. 179, Bitung 42943, Banten', 9, 5, 6, '7', '1', '5', '1', '1', ''),
(84, 'Silcox', 'Jln. Salam No. 38, Blitar 59963, Bali', 9, 9, 9, '7', '1', '5', '1', '7', ''),
(85, 'Madie', 'Jr. Bakau Griya Utama No. 32, Kotamobagu 28580, SulTra', 3, 3, 8, '1', '1', '1', '5', '7', ''),
(86, 'Cajigas', 'Dk. Pasteur No. 555, Surabaya 75043, Papua', 7, 9, 8, '7', '1', '5', '5', '7', ''),
(87, 'Serena', 'Gg. Kyai Gede No. 197, Denpasar 99480, SumSel', 3, 5, 6, '1', '5', '5', '5', '1', ''),
(88, 'Paylor', 'Ki. Reksoninten No. 274, Subulussalam 70519, SumSel', 7, 9, 3, '7', '5', '1', '5', '7', ''),
(89, 'Roseanna', 'Ds. Orang No. 260, Banjarbaru 11584, DKI', 3, 7, 8, '7', '1', '1', '5', '4', ''),
(90, 'Mortensen', 'Kpg. Yoga No. 413, Lubuklinggau 54166, KalTeng', 3, 3, 6, '1', '1', '5', '5', '7', ''),
(91, 'Lashonda', 'Kpg. Bah Jaya No. 590, Bontang 73628, KepR', 9, 9, 9, '7', '1', '5', '5', '1', ''),
(92, 'Crigger', 'Jln. Kebonjati No. 512, Pekanbaru 68403, BaBel', 7, 3, 9, '7', '5', '1', '5', '7', ''),
(93, 'Maryann', 'Kpg. Banceng Pondok No. 152, Samarinda 45431, PapBar', 9, 9, 6, '1', '5', '5', '1', '4', ''),
(94, 'Halliwell', 'Kpg. Kebangkitan Nasional No. 813, Pematangsiantar 91750, Banten', 9, 7, 8, '1', '5', '5', '1', '1', ''),
(95, 'Anika', 'Ki. Bahagia No. 844, Ambon 90541, Lampung', 7, 9, 8, '1', '5', '1', '5', '1', ''),
(96, 'Minick', 'Gg. Gading No. 626, Binjai 14503, KalTeng', 9, 7, 8, '1', '1', '1', '5', '9', ''),
(97, 'Edythe', 'Ds. HOS. Cjokroaminoto (Pasirkaliki) No. 849, Pangkal Pinang 87341, KepR', 3, 9, 3, '1', '1', '1', '1', '7', ''),
(98, 'Provencal', 'Ds. Baja No. 877, Madiun 71668, Papua', 3, 7, 9, '1', '1', '5', '1', '4', ''),
(99, 'Fausto', 'Dk. Elang No. 64, Denpasar 46188, Riau', 9, 7, 3, '7', '1', '1', '1', '7', ''),
(100, 'Scalf', 'Jr. Labu No. 128, Sungai Penuh 14621, KalUt', 9, 5, 3, '1', '1', '5', '5', '4', '');

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
(1, 'Claudia Felicia', 'claudia@kitten.com', 'default-profile.png', '77e17d4ca0e230f7ba7eb4b3214302fcb40a5fad1925969fd47ed03d467aebbd12d9a6f87268f92acf4a866b58f867871e2a65ace3ee809ae00f1b556ef7efc7', 5, 1, '2019-05-18 14:04:01'),
(2, 'Liliana Chisa', 'lili@dolphin.com', 'default-profile.png', '3242d5bac68a1617e8f79a6ff86686012ce80312388de7f6b0dff70d06b3bdeafb9a2e4d7f2f76674e955be28030302e4d9cd6c4dcc95f68f95d51891e503480', 3, 1, '2019-05-11 05:13:57'),
(3, 'Asuna Sara', 'asuna@chgs.com', 'default-profile.png', 'efc894f1aede3674fcb56a5ea3458ad62ef385142ac8ef7a7b316f56bb7bf5f5d862e5b24f8cdb62b746952915760f79c25a0b33c99808625eba73459d93fb04', 0, 1, '2019-05-10 18:17:20'),
(4, 'Seth Blackburn', 'seth@chgs.com', 'default-profile.png', '4f81fd2f3a47fa49f200538e71c13f698df09eb4d06aa598a97a89950efb71b13932118d85024dd1b7f826f3d956ef77f2d79ece5d64272424092088a99b8bab', 1, 1, '2019-05-11 05:14:15'),
(5, 'Claire Riku', 'claire@chgs.com', 'default-profile.png', 'eebe7d52819072ea9f546130b163928c1cfd2fc5dbfa84238f2727ea3bc8821c1ab367ed356d0a2e4b9da9f0c402d57053336a11d58dc95c903be1f361390a72', 5, 1, '2019-05-11 05:13:17'),
(6, 'Ako ', 'ako@chgs.com', 'default-profile.png', 'aba03c336d12a2783d212675ee7175abdc07511d3076ab31191ef3a832d3ab3060439c2728855879300a12e7c9727c54ad197648c74d90c71278889e5b0cc6e0', 5, 1, '2019-05-18 14:03:51'),
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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
