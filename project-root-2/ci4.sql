-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2024 pada 12.51
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Abu Nawas', 'abu-nawas', 'Abu Nawas', 'Gramedia', '1717070095_8cc4363fe0064f0df8e6.jpg', '2024-03-26 13:59:59', '2024-05-30 11:54:55'),
(2, 'Al-Khwarizmi', 'al-khwarizmi', 'Corona Brezina', 'Gramedia', '1717070103_3bc22704dd34921379e3.jpg', '2024-03-26 22:31:34', '2024-05-30 11:55:03'),
(23, 'awan', 'awan', 'bulan', 'Bintang', 'no-cover.jpg', '2024-05-29 14:28:22', '2024-05-30 12:06:49'),
(24, 'madilog', 'madilog', 'Tan Malaka', 'Widjaya', '1717070481_e4b042330511205b85c2.jpg', '2024-05-30 11:57:58', '2024-05-30 12:01:21'),
(25, 'as', 'as', 'sad', 'a', '1717084369_3191bf8926bdfb80d713.jpg', '2024-05-30 15:52:49', '2024-05-30 15:52:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-06-04-233458', 'App\\Database\\Migrations\\Penulis', 'default', 'App', 1717544876, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`id`, `name`, `phone`, `address`, `email`, `created_at`, `updated_at`) VALUES
(9, 'Tomy Syarifudin', '089806211111', 'Jl Gus Dur no 150 Jombang', 'tomy123@gmail.com', '2024-06-05 10:23:55', '2024-06-05 10:23:55'),
(10, 'Tomy Syarifudin', '089806211111', 'Jl Gus Dur no 150 Jombang', 'tomy123@gmail.com', '2024-06-05 10:23:55', '2024-06-05 10:23:55'),
(11, 'Tomy Syarifudin', '089806211111', 'Jl Gus Dur no 150 Jombang', 'tomy123@gmail.com', '2024-06-05 10:26:48', '2024-06-05 10:26:48'),
(12, 'Agus Setiawan', '089806222222', 'Jl Gus Dur no 150 Jombang', 'agus@gmail.com', '2024-06-05 10:26:48', '2024-06-05 10:26:48'),
(13, 'kang Dedi', '089806233333', 'Jl Gus Dur no 150 Jombang', 'dedi@gmail.com', '2024-06-05 10:26:48', '2024-06-05 10:26:48'),
(15, 'Gina Septi Pratiwi', '027 1919 5888', 'Ds. Abdul Rahmat No. 573, Ambon 86244, Jatim', 'chelsea.natsir@gmail.com', '1998-03-07 01:23:00', '2024-06-05 10:34:59'),
(16, 'Hairyanto Ghani Adriansyah S.H.', '(+62) 843 8617 465', 'Kpg. Ters. Pasir Koja No. 102, Yogyakarta 98328, Sulsel', 'luluh06@hutagalung.my.id', '2006-11-11 00:42:41', '2024-06-05 10:34:59'),
(17, 'Kezia Kezia Purnawati', '(+62) 888 628 420', 'Kpg. Gajah No. 268, Tasikmalaya 80434, Lampung', 'rahayu.siti@gmail.com', '2018-12-02 21:27:21', '2024-06-05 10:34:59'),
(18, 'Vicky Anastasia Yolanda', '0404 3084 7193', 'Jr. Imam No. 324, Jambi 38318, Jabar', 'hakim.wakiman@gmail.co.id', '2023-08-20 21:07:23', '2024-06-05 10:34:59'),
(19, 'Nasim Gatra Nashiruddin S.Psi', '0599 5749 713', 'Dk. Lumban Tobing No. 947, Pontianak 21678, Bali', 'halimah.salwa@hariyah.biz.id', '2021-02-14 03:05:44', '2024-06-05 10:34:59'),
(20, 'Marwata Maulana M.TI.', '0979 5323 832', 'Jr. Taman No. 488, Salatiga 89810, Kalsel', 'gsiregar@haryanto.info', '1995-10-09 23:31:30', '2024-06-05 10:34:59'),
(21, 'Gangsa Daryani Hutasoit S.I.Kom', '0689 6605 443', 'Psr. Abdullah No. 523, Pekanbaru 11152, Sulteng', 'ksudiati@yahoo.co.id', '1991-09-25 17:49:14', '2024-06-05 10:34:59'),
(22, 'Maimunah Kamila Andriani S.Ked', '(+62) 479 0926 278', 'Dk. Dipatiukur No. 28, Ternate 18290, Lampung', 'hakim.koko@yahoo.co.id', '1999-05-31 20:22:58', '2024-06-05 10:34:59'),
(23, 'Pandu Iswahyudi S.H.', '0524 7557 5760', 'Kpg. B.Agam Dlm No. 865, Cimahi 88944, Aceh', 'nasyiah.puti@farida.id', '2017-03-16 16:11:03', '2024-06-05 10:34:59'),
(24, 'Sabar Hidayanto', '(+62) 477 6539 7298', 'Psr. Wahidin Sudirohusodo No. 721, Bima 18843, Babel', 'suartini.gada@gmail.co.id', '2000-11-23 03:56:56', '2024-06-05 10:34:59'),
(25, 'Yunita Lidya Zulaika', '(+62) 307 7994 2710', 'Ds. Gajah No. 797, Administrasi Jakarta Timur 74829, NTT', 'kayun.tarihoran@hassanah.org', '2010-08-20 21:11:02', '2024-06-05 10:34:59'),
(26, 'Umaya Suwarno', '0691 7512 6718', 'Ds. Ters. Jakarta No. 944, Depok 65300, Kaltara', 'farida.ida@nashiruddin.sch.id', '1997-04-26 22:10:29', '2024-06-05 10:34:59'),
(27, 'Endah Maryati S.Psi', '0237 6614 8263', 'Jr. Achmad Yani No. 90, Salatiga 31430, Kaltara', 'laksita.usyi@yahoo.co.id', '1989-06-21 22:54:38', '2024-06-05 10:34:59'),
(28, 'Tami Suartini S.Ked', '(+62) 293 3773 063', 'Jln. Cemara No. 610, Probolinggo 37715, Jatim', 'sakti15@yahoo.co.id', '1980-06-02 04:04:03', '2024-06-05 10:34:59'),
(29, 'Cemeti Lasmanto Hakim M.Kom.', '(+62) 29 6491 420', 'Gg. Cemara No. 521, Jayapura 19674, Banten', 'okta44@yahoo.co.id', '2015-10-31 20:02:24', '2024-06-05 10:34:59'),
(30, 'Ibrahim Salahudin S.Pt', '(+62) 333 8639 2746', 'Ds. Asia Afrika No. 621, Binjai 32119, Bengkulu', 'gandewa28@gmail.co.id', '1979-07-14 11:15:23', '2024-06-05 10:34:59'),
(31, 'Legawa Permadi S.IP', '(+62) 897 531 725', 'Gg. Salatiga No. 905, Pontianak 27332, Kepri', 'alika.haryanto@gmail.com', '2004-04-11 13:30:31', '2024-06-05 10:34:59'),
(32, 'Panji Gunarto', '0653 0894 2565', 'Dk. Bak Mandi No. 196, Kendari 41896, Malut', 'anom24@situmorang.asia', '1972-12-22 12:40:21', '2024-06-05 10:34:59'),
(33, 'Kayla Fitriani Riyanti S.Gz', '(+62) 934 9563 3598', 'Psr. Achmad Yani No. 797, Kediri 61488, DKI', 'mansur.farhunnisa@gmail.co.id', '1975-02-20 20:28:03', '2024-06-05 10:34:59'),
(34, 'Salsabila Yolanda', '(+62) 210 8858 6687', 'Kpg. Mulyadi No. 137, Batam 85293, Sumsel', 'kenzie26@suwarno.com', '1978-07-10 05:08:06', '2024-06-05 10:34:59'),
(35, 'Hamima Riyanti', '0779 5747 515', 'Gg. Ahmad Dahlan No. 426, Gunungsitoli 51736, Kepri', 'taswir.latupono@marpaung.or.id', '2023-10-12 05:26:47', '2024-06-05 10:34:59'),
(36, 'Baktiono Caraka Simbolon M.M.', '0634 8704 223', 'Ki. PHH. Mustofa No. 192, Pariaman 71165, Sulbar', 'ade29@maryati.id', '1972-04-29 20:54:20', '2024-06-05 10:34:59'),
(37, 'Gangsar Sitompul S.Ked', '0686 6794 681', 'Kpg. Katamso No. 615, Tual 23265, Gorontalo', 'maulana.uda@yahoo.com', '1993-12-22 02:09:47', '2024-06-05 10:34:59'),
(38, 'Gina Vicky Permata', '0888 5501 842', 'Jr. Tambak No. 793, Singkawang 99844, Maluku', 'irma87@oktaviani.desa.id', '2021-09-08 13:12:39', '2024-06-05 10:34:59'),
(39, 'Kenari Megantara S.Kom', '029 9141 7970', 'Gg. Baja No. 23, Yogyakarta 69351, Kaltara', 'dewi34@yahoo.com', '1999-10-30 13:44:56', '2024-06-05 10:34:59'),
(40, 'Hesti Calista Winarsih S.Kom', '(+62) 818 6988 8859', 'Jr. Sutan Syahrir No. 749, Kotamobagu 35213, Banten', 'znainggolan@gmail.com', '1996-02-23 08:45:56', '2024-06-05 10:34:59'),
(41, 'Balamantri Wahyudin', '0213 1778 4098', 'Ds. Tambak No. 155, Bima 88105, Jatim', 'paulin85@yahoo.co.id', '2008-03-21 09:29:28', '2024-06-05 10:34:59'),
(42, 'Gina Yuniar', '(+62) 848 4745 039', 'Gg. Sentot Alibasa No. 799, Palembang 85937, Babel', 'andriani.juli@yahoo.com', '1975-02-11 10:10:30', '2024-06-05 10:34:59'),
(43, 'Adika Marpaung', '(+62) 862 318 358', 'Ki. Batako No. 518, Banjarmasin 55924, Aceh', 'jagaraga.sirait@gmail.co.id', '2016-12-16 01:11:31', '2024-06-05 10:34:59'),
(44, 'Lili Kiandra Namaga M.Ak', '(+62) 923 9513 1989', 'Kpg. Ciumbuleuit No. 959, Dumai 97073, NTT', 'chastuti@manullang.in', '2022-03-07 23:27:58', '2024-06-05 10:34:59'),
(45, 'Saiful Maheswara', '(+62) 320 9804 083', 'Kpg. Gedebage Selatan No. 86, Palu 75349, Sulbar', 'vino.wulandari@gmail.co.id', '1978-06-13 17:38:43', '2024-06-05 10:34:59'),
(46, 'Puput Genta Wulandari S.Pd', '(+62) 719 0447 9886', 'Dk. Gambang No. 100, Payakumbuh 32526, Gorontalo', 'xsaragih@yahoo.com', '1972-06-26 21:49:52', '2024-06-05 10:34:59'),
(47, 'Asman Siregar', '(+62) 285 7522 801', 'Jr. Eka No. 579, Tidore Kepulauan 47292, Jabar', 'fujiati.laila@yahoo.co.id', '1971-02-15 23:11:20', '2024-06-05 10:34:59'),
(48, 'Irma Mandasari', '0232 1888 1410', 'Ki. Tambak No. 327, Banjar 92505, Papua', 'qlestari@gmail.co.id', '2018-12-19 04:55:37', '2024-06-05 10:34:59'),
(49, 'Latif Mansur', '(+62) 546 6863 231', 'Gg. Bacang No. 881, Sukabumi 66469, Gorontalo', 'eva.haryanto@maulana.go.id', '1983-11-17 04:56:24', '2024-06-05 10:34:59'),
(50, 'Irma Bella Novitasari', '(+62) 253 6843 8725', 'Kpg. Jend. A. Yani No. 582, Singkawang 37698, Sulteng', 'hartati.capa@gmail.co.id', '2017-12-21 16:20:41', '2024-06-05 10:34:59'),
(51, 'Hilda Usamah', '(+62) 910 1574 718', 'Ki. Dago No. 999, Sibolga 57769, Sultra', 'alika92@gmail.com', '1973-11-03 22:31:03', '2024-06-05 10:34:59'),
(52, 'Nasab Nrima Saragih M.Kom.', '(+62) 634 8452 4036', 'Ki. Pintu Besar Selatan No. 761, Administrasi Jakarta Selatan 42740, Sultra', 'cinta75@gmail.co.id', '2016-03-29 12:06:26', '2024-06-05 10:34:59'),
(53, 'Wulan Lestari', '0622 2894 7420', 'Jr. Bakhita No. 112, Administrasi Jakarta Pusat 99851, Riau', 'yulianti.gasti@yahoo.co.id', '2005-03-26 00:28:01', '2024-06-05 10:34:59'),
(54, 'Widya Mulyani', '0461 3951 2819', 'Dk. Rajawali Barat No. 620, Samarinda 59090, DIY', 'varyani@gmail.com', '2005-04-26 13:33:57', '2024-06-05 10:34:59'),
(55, 'Bakiadi Dabukke M.Pd', '025 7822 0280', 'Jr. Gegerkalong Hilir No. 539, Surabaya 45939, Lampung', 'bahuwirya78@yahoo.com', '2009-03-31 19:49:19', '2024-06-05 10:34:59'),
(56, 'Paris Fitriani Handayani', '(+62) 668 8818 6106', 'Kpg. Bawal No. 875, Administrasi Jakarta Utara 11714, Pabar', 'wijayanti.gina@yahoo.com', '2009-08-24 17:27:00', '2024-06-05 10:34:59'),
(57, 'Natalia Farida S.Ked', '(+62) 667 8633 887', 'Psr. Achmad No. 290, Padangsidempuan 51467, Sulsel', 'sarah62@maryadi.sch.id', '1983-08-18 10:03:58', '2024-06-05 10:34:59'),
(58, 'Halima Tira Wastuti S.H.', '0761 8535 687', 'Ki. Teuku Umar No. 258, Palembang 37014, Pabar', 'mustofa.leo@yahoo.com', '1990-02-20 22:55:25', '2024-06-05 10:34:59'),
(59, 'Wadi Pradana', '0897 5434 995', 'Ki. Katamso No. 435, Bekasi 63048, NTB', 'waskita.caket@lestari.com', '2008-08-27 16:43:20', '2024-06-05 10:34:59'),
(60, 'Martaka Setiawan', '(+62) 509 6765 2817', 'Kpg. Rajawali Timur No. 684, Tasikmalaya 90640, Kalsel', 'mahmud.hastuti@gmail.com', '2023-06-15 12:26:49', '2024-06-05 10:34:59'),
(61, 'Aisyah Laksita', '(+62) 337 7121 974', 'Gg. Merdeka No. 353, Bima 41334, Kalbar', 'usihombing@gmail.com', '2015-12-09 15:46:19', '2024-06-05 10:34:59'),
(62, 'Usman Saefullah', '0444 7096 075', 'Psr. Pasirkoja No. 932, Administrasi Jakarta Selatan 43716, Riau', 'wardi.pratiwi@yahoo.com', '1978-01-26 01:40:48', '2024-06-05 10:34:59'),
(63, 'Kamila Safitri', '0235 3510 915', 'Jln. Gotong Royong No. 521, Lhokseumawe 32466, Kalteng', 'isirait@aryani.co', '1998-12-07 04:44:38', '2024-06-05 10:34:59'),
(64, 'Jane Ayu Rahimah', '0870 954 643', 'Jr. Peta No. 119, Tangerang Selatan 47334, Kaltara', 'rahimah.samiah@rahayu.com', '1996-03-27 18:54:34', '2024-06-05 10:34:59'),
(65, 'Gada Winarno', '0318 1358 9434', 'Jln. Perintis Kemerdekaan No. 334, Parepare 10565, Papua', 'rahimah.digdaya@yahoo.co.id', '1997-03-17 08:41:32', '2024-06-05 10:34:59'),
(66, 'Lalita Mardhiyah', '0553 6412 4134', 'Jr. B.Agam Dlm No. 816, Tanjung Pinang 49700, Bali', 'aisyah.utami@yahoo.co.id', '1994-08-04 18:57:25', '2024-06-05 10:34:59'),
(67, 'Yuliana Rahimah', '0235 0512 6607', 'Jln. Baladewa No. 184, Banjarbaru 76603, Malut', 'gaduh35@gmail.co.id', '1976-04-10 15:59:10', '2024-06-05 10:34:59'),
(68, 'Salsabila Mandasari', '(+62) 982 7486 643', 'Gg. Raden Saleh No. 224, Palopo 92706, Kepri', 'ulva19@tampubolon.asia', '2008-03-08 17:04:00', '2024-06-05 10:34:59'),
(69, 'Hamima Susanti', '0967 5194 3543', 'Dk. Surapati No. 602, Manado 42037, Babel', 'rika.laksmiwati@waluyo.com', '2004-05-18 02:13:05', '2024-06-05 10:34:59'),
(70, 'Oni Laila Yulianti S.Sos', '0414 7563 160', 'Ki. Thamrin No. 588, Tanjung Pinang 98811, Sumsel', 'novi.wastuti@suwarno.tv', '2021-06-04 04:06:49', '2024-06-05 10:34:59'),
(71, 'Devi Astuti', '0483 3099 9868', 'Jr. Bayan No. 725, Bau-Bau 11840, Kalbar', 'wasita.karya@yahoo.co.id', '2012-10-06 05:53:07', '2024-06-05 10:34:59'),
(72, 'Eka Lailasari S.IP', '(+62) 816 069 319', 'Jr. Tambak No. 980, Surakarta 87533, DIY', 'prasetyo56@siregar.org', '1999-05-07 16:16:01', '2024-06-05 10:34:59'),
(73, 'Balangga Firgantoro', '(+62) 24 0302 0666', 'Psr. Moch. Yamin No. 544, Solok 89408, Sulut', 'eharyanto@aryani.org', '2022-01-01 23:11:51', '2024-06-05 10:34:59'),
(74, 'Bakda Suryono', '(+62) 914 6361 724', 'Gg. Adisumarmo No. 126, Medan 48269, NTB', 'daruna.astuti@yahoo.com', '2003-06-04 21:06:11', '2024-06-05 10:34:59'),
(75, 'Yani Yulianti', '(+62) 709 7523 847', 'Ki. Tangkuban Perahu No. 656, Batu 88028, Bengkulu', 'nashiruddin.paris@manullang.web.id', '1992-09-05 05:49:59', '2024-06-05 10:34:59'),
(76, 'Lintang Wijayanti S.I.Kom', '0491 1617 802', 'Jln. Haji No. 499, Magelang 48013, Malut', 'ghartati@gmail.com', '2018-08-26 18:14:13', '2024-06-05 10:34:59'),
(77, 'Prabowo Saefullah M.Ak', '(+62) 964 8861 623', 'Psr. Sutan Syahrir No. 207, Prabumulih 11698, DIY', 'rahimah.vicky@siregar.co', '2006-06-15 17:05:11', '2024-06-05 10:34:59'),
(78, 'Violet Ina Hassanah', '(+62) 426 4655 904', 'Psr. Laswi No. 135, Bekasi 93480, Kalbar', 'tira33@gmail.com', '1985-01-24 05:00:33', '2024-06-05 10:34:59'),
(79, 'Paulin Nasyidah', '(+62) 268 2647 5821', 'Ki. Monginsidi No. 945, Langsa 90538, Malut', 'suryatmi.hafshah@yahoo.co.id', '1994-11-25 06:50:48', '2024-06-05 10:34:59'),
(80, 'Laksana Haryanto', '0496 9026 845', 'Jln. Flores No. 549, Banjarbaru 44314, Malut', 'rahmi.prasetya@gmail.com', '2013-09-12 09:00:33', '2024-06-05 10:34:59'),
(81, 'Balijan Budi Firgantoro M.Ak', '(+62) 844 0188 7864', 'Ki. Astana Anyar No. 780, Palangka Raya 69118, Pabar', 'wawan.suryatmi@lazuardi.com', '1982-02-11 05:25:11', '2024-06-05 10:34:59'),
(82, 'Uli Yolanda S.Ked', '0427 4009 959', 'Dk. Hasanuddin No. 863, Surakarta 93682, Sumsel', 'maryadi.paulin@gmail.com', '1982-11-05 23:01:14', '2024-06-05 10:34:59'),
(83, 'Yahya Rangga Prasetya', '(+62) 306 0628 4235', 'Dk. Lembong No. 707, Madiun 60844, Kalsel', 'qrahmawati@gmail.com', '2018-09-27 14:02:41', '2024-06-05 10:34:59'),
(84, 'Mustofa Bagas Nugroho S.E.', '(+62) 889 2659 891', 'Psr. Raden Saleh No. 767, Bogor 18086, Gorontalo', 'tarihoran.winda@napitupulu.biz', '2005-11-27 21:08:24', '2024-06-05 10:34:59'),
(85, 'Umi Patricia Hasanah', '0497 7822 643', 'Dk. Ahmad Dahlan No. 200, Sabang 19645, Sumut', 'karna.sitorus@gmail.com', '1995-10-11 08:17:07', '2024-06-05 10:34:59'),
(86, 'Sarah Titi Pudjiastuti', '(+62) 23 2312 6679', 'Ds. Veteran No. 536, Salatiga 53560, Kalsel', 'ddongoran@puspasari.org', '1996-05-26 00:23:21', '2024-06-05 10:34:59'),
(87, 'Ajiono Anom Salahudin M.Ak', '(+62) 253 1667 687', 'Dk. Rajiman No. 477, Banda Aceh 27569, Pabar', 'cagak70@yahoo.co.id', '2024-01-06 07:38:27', '2024-06-05 10:34:59'),
(88, 'Zahra Nuraini S.T.', '0879 409 305', 'Dk. Bacang No. 978, Kupang 29556, Jateng', 'sakura63@gmail.co.id', '2007-05-16 20:23:39', '2024-06-05 10:34:59'),
(89, 'Irma Laksmiwati S.H.', '0702 6910 0732', 'Jr. Setiabudhi No. 332, Cimahi 68501, Sumbar', 'lega.latupono@prasasta.web.id', '1987-09-09 03:20:34', '2024-06-05 10:34:59'),
(90, 'Salwa Kusmawati M.TI.', '(+62) 330 2277 5715', 'Jr. Baja No. 511, Bontang 10666, Sulteng', 'arsipatra.hariyah@gmail.co.id', '1971-09-05 16:08:23', '2024-06-05 10:34:59'),
(91, 'Nasab Santoso', '0385 4372 438', 'Ki. Bakin No. 258, Kupang 85909, NTT', 'xzulaika@yahoo.co.id', '1980-04-24 10:42:00', '2024-06-05 10:34:59'),
(92, 'Naradi Tarihoran S.IP', '(+62) 750 8723 334', 'Dk. Cikutra Timur No. 942, Bogor 19385, Maluku', 'amalia.pudjiastuti@gunawan.net', '1991-09-03 14:49:28', '2024-06-05 10:34:59'),
(93, 'Harimurti Usman Iswahyudi M.Ak', '(+62) 989 8298 410', 'Kpg. Ciwastra No. 684, Palu 20143, Kaltara', 'siti.prasasta@yahoo.co.id', '1980-09-16 10:07:29', '2024-06-05 10:34:59'),
(94, 'Uchita Nadia Zulaika', '(+62) 426 4258 217', 'Jr. Yoga No. 519, Depok 33077, Kepri', 'kpertiwi@gmail.co.id', '1975-07-16 21:01:21', '2024-06-05 10:34:59'),
(95, 'Nadine Handayani', '0954 6661 548', 'Jln. Lumban Tobing No. 494, Probolinggo 49131, Riau', 'yosef35@yahoo.com', '1976-05-06 23:48:33', '2024-06-05 10:34:59'),
(96, 'Dwi Darijan Siregar S.Psi', '0601 4231 7022', 'Dk. Setia Budi No. 191, Bandung 64514, Sumbar', 'nnasyiah@rajata.in', '2000-10-28 17:05:15', '2024-06-05 10:34:59'),
(97, 'Ilsa Faizah Mandasari S.E.I', '0996 2644 780', 'Kpg. Achmad Yani No. 295, Pagar Alam 81717, Sulbar', 'dina.yuliarti@suryatmi.biz.id', '2023-10-21 22:17:28', '2024-06-05 10:34:59'),
(98, 'Padma Zahra Rahmawati', '(+62) 595 9832 507', 'Jr. Tubagus Ismail No. 672, Administrasi Jakarta Utara 76765, Kepri', 'elvina.saptono@pratama.or.id', '2018-10-26 21:17:31', '2024-06-05 10:34:59'),
(99, 'Wisnu Saefullah', '(+62) 923 6323 5543', 'Dk. Baabur Royan No. 987, Pasuruan 16463, Jabar', 'saefullah.septi@yahoo.com', '1979-09-15 17:15:55', '2024-06-05 10:34:59'),
(100, 'Olivia Hassanah', '0503 6224 945', 'Jln. Bah Jaya No. 839, Pontianak 90131, NTT', 'asitompul@gmail.co.id', '2003-04-16 14:02:13', '2024-06-05 10:34:59'),
(101, 'Betania Suryatmi', '0928 1913 8954', 'Gg. Baranang Siang No. 715, Jayapura 19723, Sumbar', 'karen.wasita@gmail.com', '1987-11-20 12:02:44', '2024-06-05 10:34:59'),
(102, 'Kamal Sihombing', '0635 6429 4910', 'Dk. Imam No. 132, Pematangsiantar 48157, Sulbar', 'fujiati.pia@gmail.com', '1983-10-11 11:20:55', '2024-06-05 10:34:59'),
(103, 'Oman Latif Halim', '(+62) 283 4730 9572', 'Dk. Achmad No. 709, Bukittinggi 40790, Bengkulu', 'setiawan.hasan@wijaya.or.id', '1975-07-06 22:25:53', '2024-06-05 10:34:59'),
(104, 'Umaya Luhung Jailani', '0545 4873 3479', 'Kpg. Nakula No. 804, Cirebon 36689, Sumbar', 'euyainah@gmail.com', '2001-06-24 23:28:07', '2024-06-05 10:34:59'),
(105, 'Nadine Sari Maryati', '027 3878 253', 'Psr. Bayan No. 447, Bima 87103, Malut', 'ramadan.gina@mansur.com', '1979-01-14 16:08:27', '2024-06-05 10:34:59'),
(106, 'Ghaliyati Yuliarti', '(+62) 453 0383 305', 'Psr. Bah Jaya No. 269, Pariaman 28092, Jatim', 'devi97@gmail.com', '1982-10-12 15:19:35', '2024-06-05 10:34:59'),
(107, 'Bancar Firgantoro', '0449 1153 0010', 'Jln. Gading No. 44, Prabumulih 28334, Aceh', 'jhidayat@lailasari.biz.id', '1973-05-12 13:16:15', '2024-06-05 10:34:59'),
(108, 'Karen Vanya Wahyuni S.Pd', '0459 7079 1276', 'Jln. Raden Saleh No. 420, Administrasi Jakarta Pusat 92871, NTT', 'hastuti.tina@yahoo.co.id', '1984-02-20 15:21:51', '2024-06-05 10:34:59'),
(109, 'Puspa Fujiati S.E.I', '(+62) 338 2783 3435', 'Psr. Basoka No. 836, Kotamobagu 25763, Sumut', 'ozy56@puspita.name', '1975-05-03 19:07:25', '2024-06-05 10:34:59'),
(110, 'Diana Kuswandari', '0582 8650 400', 'Gg. Babadan No. 596, Balikpapan 36520, DIY', 'dwibowo@gmail.co.id', '2020-08-02 23:07:53', '2024-06-05 10:34:59'),
(111, 'Baktianto Utama', '0476 6983 7970', 'Jr. BKR No. 881, Mojokerto 85898, Pabar', 'vramadan@yahoo.co.id', '2010-02-20 01:59:10', '2024-06-05 10:34:59'),
(112, 'Among Adriansyah', '(+62) 725 9481 7795', 'Ds. Baja No. 908, Tegal 57232, Gorontalo', 'irahayu@melani.com', '1973-07-18 20:24:41', '2024-06-05 10:34:59'),
(113, 'Timbul Cecep Kuswoyo S.Farm', '(+62) 308 2344 358', 'Jr. Tentara Pelajar No. 305, Administrasi Jakarta Selatan 12290, Gorontalo', 'bhidayanto@widiastuti.co.id', '1978-03-14 07:09:51', '2024-06-05 10:34:59'),
(114, 'Wani Haryanti', '(+62) 278 6490 579', 'Jln. Baan No. 449, Banjar 73794, Papua', 'raden86@gmail.co.id', '2020-08-19 20:12:58', '2024-06-05 10:34:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
