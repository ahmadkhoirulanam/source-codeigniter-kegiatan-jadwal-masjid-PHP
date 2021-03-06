-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 10:58 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_masjid`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_dkm`
--

CREATE TABLE `data_dkm` (
  `id_dkm` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `nama_dkm` varchar(100) NOT NULL,
  `nomor_telepon_dkm` varchar(11) NOT NULL,
  `alamat_dkm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_dkm`
--

INSERT INTO `data_dkm` (`id_dkm`, `id_users`, `nama_dkm`, `nomor_telepon_dkm`, `alamat_dkm`) VALUES
(1, 1, 'Super DKM', '08978696666', 'Jl.Raya pasar kecapi'),
(2, 2, 'DKM', '08971755560', 'Jl.Raya Kendiri III'),
(3, 3, 'DKM 02', '08977564466', 'Jl.Rawa Pedes'),
(4, 4, 'Andi', '08978665544', 'Jl.Raya Ranggi I'),
(5, 5, 'Anam', '08584834789', 'Ds. Kertomulyo RT 05 RW 01 Kecamatan Margoyoso Kabupaten Pati');

-- --------------------------------------------------------

--
-- Table structure for table `data_jadwal`
--

CREATE TABLE `data_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_dkm` int(11) NOT NULL,
  `id_masjid` int(11) NOT NULL,
  `nama_jadwal` varchar(100) NOT NULL,
  `deskripsi_jadwal` text NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `waktu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_jadwal`
--

INSERT INTO `data_jadwal` (`id_jadwal`, `id_dkm`, `id_masjid`, `nama_jadwal`, `deskripsi_jadwal`, `tempat`, `tanggal`, `waktu`) VALUES
(7, 1, 3, 'Buka Puasa Bersama', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 'Lapangan Masjid', '2015-12-31', '10:10'),
(8, 3, 6, 'Halal bi halal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vestibulum enim id sem vulputate, non mattis leo molestie. Suspendisse luctus, enim sed maximus blandit, orci lacus accumsan diam, blandit dignissim risus purus at elit. Aenean a posuere eros. Phasellus turpis ligula, scelerisque eget nibh ac, malesuada condimentum lectus.', 'Lapangan Masjid', '2015-12-29', '22:10'),
(9, 2, 2, 'Pengajian', 'Rutin', 'MAsjid', '2019-12-09', '02:02'),
(10, 5, 7, 'Lelang', 'jkk', 'dd', '2019-01-14', '02:02');

-- --------------------------------------------------------

--
-- Table structure for table `data_masjid`
--

CREATE TABLE `data_masjid` (
  `id_masjid` int(11) NOT NULL,
  `id_dkm` int(11) NOT NULL DEFAULT '0',
  `id_users` int(11) NOT NULL,
  `activated_masjid` varchar(1) NOT NULL DEFAULT '0',
  `nama_masjid` varchar(100) NOT NULL,
  `tahun_berdiri_masjid` varchar(10) NOT NULL,
  `alamat_masjid` text NOT NULL,
  `jenis_masjid` varchar(100) NOT NULL,
  `status_tanah` varchar(100) NOT NULL,
  `deskripsi_masjid` text NOT NULL,
  `nomor_telepon_masjid` varchar(11) NOT NULL DEFAULT '-',
  `image_masjid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_masjid`
--

INSERT INTO `data_masjid` (`id_masjid`, `id_dkm`, `id_users`, `activated_masjid`, `nama_masjid`, `tahun_berdiri_masjid`, `alamat_masjid`, `jenis_masjid`, `status_tanah`, `deskripsi_masjid`, `nomor_telepon_masjid`, `image_masjid`) VALUES
(1, 1, 1, '1', 'Masjid Al-Mukmin', '1994', 'Jl.Raya Kenari III', 'Masjid JAMI', 'Wakaf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vestibulum enim id sem vulputate, non mattis leo molestie. Suspendisse luctus, enim sed maximus blandit, orci lacus accumsan diam, blandit dignissim risus purus at elit. Aenean a posuere eros.', '098997886', 'kWwrOefAJoO6FzW3DdzvTBKu3WeyXb7SkDIO2pV1i9NS4fO7Adw+BJNP3YYdr7bsoGsZhP085gJf0PgGZF4D9mLNBMEshoSfnREzBGbt9W5odMj1znF1OXvy05TRe1.jpg'),
(2, 2, 2, '1', 'Masjid Al-Iman', '1992', 'Jl.Mahakam Raya I', 'Masjid JAMI', 'Wakaf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vestibulum enim id sem vulputate, non mattis leo molestie. Suspendisse luctus, enim sed maximus blandit, orci lacus accumsan diam, blandit dignissim risus purus at elit. Aenean a posuere eros.', '0897765455', 'y6KccetlPz4F08ccUrkDRwu2zcUrT8JzMJpG7gmRZ1zipP7UbDLw9pFo3730mmFXfC2kQTYXo7eOYpKzMNSVg.jpg'),
(3, 1, 1, '1', 'Al-Makmun', '1900', 'Jl.Teratai Raya II', 'Masjid Besar', 'Wakaf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vestibulum enim id sem vulputate, non mattis leo molestie. Suspendisse luctus, enim sed maximus blandit, orci lacus accumsan diam, blandit dignissim risus purus at elit. Aenean a posuere eros.', '', 'cwLMLsGlPJdvMAafVZSboE+Kc8Pzu80FZ7TOT90dm5eQWtTuj83b5ATVaPC28yIZMAsh5EALmhyGOex734d7w.jpg'),
(4, 1, 1, '0', 'Al-Hikmah', '1995', 'Jl.Munir Raya I', 'Masjid di tempat Publik', 'Wakaf', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', '08998877661', 'gW++0rdsalP89+4pR6DcUJTByo2bpRhnXYKsPB86L1K+Mnrig6YjNFiDPQtbAiAO2RwZaNyR+wAI0C9x6CLLg.jpg'),
(5, 1, 1, '2', 'Al-Iqro', '2000', 'Jl.Suro Raya III', 'Masjid Besar', 'Wakaf', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', '', 'edNZH6QT2EWdoFXA8yydy1NOvX3FeBjrHdFVV8D0b33ZM1wO7r7NgzPUnUoZJnSeczNtL+phx66On4XIyg.jpg'),
(6, 3, 3, '1', 'Al-Isya', '2003', 'Jl.Kuning Raya', 'Masjid JAMI', 'SHM', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', '08978596665', '17O7S8jL30Nt8ZNeXdIFtzbqbjVOocyXiEQFhdk6AL0BSHrzUkxMQv5gcdKqg5X9pDd9nqLsodznOkk2actnzTtJRnDA251TZzx4k+p2wI6xT01tTsYpnaEHVZdJ4AS3.jpg'),
(7, 5, 5, '1', 'Baiturrohman', '2013', 'Pati', 'Masjid JAMI', 'Wakaf', 'Masjid Bagus', '08584834789', 'tKJQhECsicWzsgGZoGToG6Y8djMbpaqe4ulpBPBxmCVgSRstTRuSrDf7ql24TdwQd5Np2cInj7oH+0scQv3NA.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `level` enum('1','2','3') COLLATE utf8_bin NOT NULL DEFAULT '2',
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `level`, `username`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`) VALUES
(1, '1', 'super', '$2a$08$0HpYWeibq/WOD0dZ27RuH.9PiYtdvuVppDebnQzs7xILfzjWYXLYq', 'super@masjid.com', 1, 0, NULL, NULL, NULL, NULL, '5972350e97d85e9a3b8ec52bbea3aacc', '127.0.0.1', '2019-01-09 10:41:43', '2015-12-19 05:09:41', '2019-01-09 09:41:43'),
(2, '2', 'dkm1', '$2a$08$MIjNJhJed4ojYZ/J1IpfPedl6qPQmNBwntcslRBROmcPh3U04aRyy', 'dkm1@masjid.com', 1, 0, NULL, NULL, NULL, NULL, 'ef3640b378bc7b8dea1e71719db89375', '::1', '2019-01-09 07:41:43', '2015-12-19 05:53:12', '2019-01-09 06:41:43'),
(3, '2', 'dkm2', '$2a$08$DcHOIBJkyUgj6lVJF6GeD.PC6FWng5KOlCJLsZp.7S5EoierkPoti', 'dkm2@masjid.com', 0, 0, NULL, NULL, NULL, NULL, '7e1ea5b63b5521ff72355e66454414e2', '::1', '2015-12-29 14:12:44', '2015-12-20 13:09:40', '2015-12-29 17:59:04'),
(4, '2', 'dkm3', '$2a$08$shF/RIYYWLkhLOJ.Fhao/u1e5MJnk0wZeXqCI8VIUOyWtzYPHhpg2', 'dkm3@masjid.com', 1, 0, NULL, NULL, NULL, NULL, '4e01859eba15b4c49c89243584a9ddd9', '::1', '2015-12-30 05:38:40', '2015-12-29 18:58:47', '2015-12-30 04:38:40'),
(5, '2', 'anam', '$2a$08$rrOH.iDfk6FEqmQZm2JHQ.oUq4TSXeBLE.Ewf6ex.zAdGEkXBmNI6', 'kanam5999@gmail.com', 1, 0, NULL, NULL, NULL, NULL, 'df8b3360fa12b89b07150c190c121e05', '::1', '2019-01-09 07:53:33', '2019-01-09 07:48:23', '2019-01-09 06:53:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_dkm`
--
ALTER TABLE `data_dkm`
  ADD PRIMARY KEY (`id_dkm`);

--
-- Indexes for table `data_jadwal`
--
ALTER TABLE `data_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `data_masjid`
--
ALTER TABLE `data_masjid`
  ADD PRIMARY KEY (`id_masjid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_dkm`
--
ALTER TABLE `data_dkm`
  MODIFY `id_dkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_jadwal`
--
ALTER TABLE `data_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_masjid`
--
ALTER TABLE `data_masjid`
  MODIFY `id_masjid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
