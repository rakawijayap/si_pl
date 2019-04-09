-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Apr 2019 pada 06.07
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `am`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `am` (
`k` double
,`pl` double
,`rbl` double
,`ch` double
,`cat` double
,`jt` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `ap`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `ap` (
`k` double
,`pl` double
,`rbl` double
,`ch` double
,`cat` double
,`jt` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot`
--

CREATE TABLE `bobot` (
  `nama` varchar(10) NOT NULL,
  `k` varchar(12) NOT NULL,
  `pl` varchar(12) NOT NULL,
  `rbl` varchar(12) NOT NULL,
  `ch` varchar(12) NOT NULL,
  `cat` varchar(12) NOT NULL,
  `jt` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bobot`
--

INSERT INTO `bobot` (`nama`, `k`, `pl`, `rbl`, `ch`, `cat`, `jt`) VALUES
('tpv', '0.172131148', '0.12295082', '0.286885246', '0.172131148', '0.12295082', '0.12295082'),
('lamda', '1.032787', '0.737705', '1.721311', '1.032787', '0.737705', '0.737705');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `d`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `d` (
`nama` varchar(30)
,`dp` double
,`dm` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `hasil`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `hasil` (
`nama` varchar(30)
,`hasil` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi`
--

CREATE TABLE `isi` (
  `id` int(3) NOT NULL,
  `id_kec` int(4) NOT NULL,
  `k` int(11) NOT NULL,
  `pl` int(11) NOT NULL,
  `rbl` int(11) NOT NULL,
  `ch` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `jt` int(11) NOT NULL,
  `edit` varchar(25) NOT NULL,
  `at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `isi`
--

INSERT INTO `isi` (`id`, `id_kec`, `k`, `pl`, `rbl`, `ch`, `cat`, `jt`, `edit`, `at`) VALUES
(1, 100, 0, 4, 0, 2, 1, 3, 'raka', '2019-03-19 10:21:37'),
(2, 107, 1, 0, 1, 1, 1, 1, 'raka', '2019-03-18 14:19:56'),
(3, 113, 1, 0, 2, 1, 1, 2, 'raka', '2019-03-18 14:19:56'),
(4, 101, 1, 4, 2, 2, 1, 0, 'raka', '2019-03-18 14:19:46'),
(5, 103, 0, 2, 0, 2, 2, 3, 'raka', '2019-03-18 14:19:56'),
(6, 110, 1, 3, 2, 0, 1, 2, 'raka', '2019-03-18 14:19:56'),
(7, 106, 0, 3, 0, 2, 2, 3, 'raka', '2019-03-18 14:19:56'),
(8, 104, 0, 3, 0, 2, 2, 3, 'raka', '2019-03-18 14:19:56'),
(9, 111, 3, 2, 2, 1, 4, 0, 'raka', '2019-03-18 14:19:56'),
(10, 108, 2, 0, 2, 1, 1, 1, 'raka', '2019-03-18 14:19:56'),
(11, 105, 0, 3, 0, 2, 0, 3, 'raka', '2019-03-18 14:19:56'),
(12, 102, 0, 1, 0, 2, 3, 3, 'raka', '2019-03-18 14:19:56'),
(13, 109, 1, 3, 0, 1, 1, 2, 'raka', '2019-03-18 14:19:56'),
(14, 112, 4, 0, 2, 0, 1, 2, 'raka', '2019-03-18 14:19:56');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `jumlah`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `jumlah` (
`k` double
,`pl` double
,`rbl` double
,`ch` double
,`cat` double
,`jt` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `jumlk`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `jumlk` (
`k` decimal(27,4)
,`pl` decimal(27,4)
,`rbl` decimal(27,4)
,`ch` decimal(27,4)
,`cat` decimal(27,4)
,`jt` decimal(27,4)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kec` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `add_by` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`id_kec`, `nama`, `add_by`) VALUES
(100, 'Ampelgading', 'raka'),
(101, 'Bodeh', 'raka'),
(102, 'Ulujami', 'raka'),
(103, 'Comal', 'raka'),
(104, 'Petarukan', 'raka'),
(105, 'Taman', 'raka'),
(106, 'Pemalang', 'raka'),
(107, 'Bantarbolang', 'raka'),
(108, 'Randudongkal', 'raka'),
(109, 'Warungpring', 'raka'),
(110, 'Moga', 'raka'),
(111, 'Pulosari', 'raka'),
(112, 'Watukumpul', 'raka'),
(113, 'Belik', 'raka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kri`
--

CREATE TABLE `kri` (
  `nama` varchar(25) NOT NULL,
  `nilai` int(11) NOT NULL,
  `editby` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kri`
--

INSERT INTO `kri` (`nama`, `nilai`, `editby`) VALUES
('Cadangan Air Tanah', 7, 'raka'),
('Curah Hujan', 5, 'raka'),
('Jenis Tanah', 7, 'raka'),
('kriteria', 5, 'raka'),
('Penggunaan lahan', 7, 'raka'),
('Rawan Bencana', 3, 'raka');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `nor`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `nor` (
`nama` varchar(25)
,`k` decimal(13,8)
,`pl` decimal(13,8)
,`rbl` decimal(13,8)
,`ch` decimal(13,8)
,`cat` decimal(13,8)
,`jt` decimal(13,8)
,`jumlah` decimal(18,8)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `normalisasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `normalisasi` (
`nama` varchar(30)
,`k` double
,`pl` double
,`rbl` double
,`ch` double
,`cat` double
,`jt` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `normsk`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `normsk` (
`nama` varchar(25)
,`k` decimal(5,4)
,`pl` decimal(5,4)
,`rbl` decimal(5,4)
,`ch` decimal(5,4)
,`cat` decimal(5,4)
,`jt` decimal(5,4)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `nw`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `nw` (
`nama` varchar(30)
,`k` double
,`pl` double
,`rbl` double
,`ch` double
,`cat` double
,`jt` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `sebagai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `nama`, `pass`, `sebagai`) VALUES
('manager', 'Test M', '$2y$10$VnQdMHQtc8xXtNRKbzFdK.tJAaabWfaQqNr1pq.Q6LIyT0N7lTJ4m', 'Manager'),
('raka', 'Raka W', '$2y$10$S0xd1vhqlD025zzlN9gnyumxPqvgyHe3A6AZKgVNMqfwYlz33NLxi', 'admin'),
('user', 'User baru', '$2y$10$IAJHAlTePMFJXztny8McCePIPKDaDeVwJopyk/R.cZL5tK7HBy6Wa', 'user');

-- --------------------------------------------------------

--
-- Struktur untuk view `am`
--
DROP TABLE IF EXISTS `am`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `am`  AS  select min(`nw`.`k`) AS `k`,min(`nw`.`pl`) AS `pl`,min(`nw`.`rbl`) AS `rbl`,max(`nw`.`ch`) AS `ch`,min(`nw`.`cat`) AS `cat`,max(`nw`.`jt`) AS `jt` from `nw` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `ap`
--
DROP TABLE IF EXISTS `ap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ap`  AS  select max(`nw`.`k`) AS `k`,max(`nw`.`pl`) AS `pl`,max(`nw`.`rbl`) AS `rbl`,min(`nw`.`ch`) AS `ch`,max(`nw`.`cat`) AS `cat`,min(`nw`.`jt`) AS `jt` from `nw` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `d`
--
DROP TABLE IF EXISTS `d`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `d`  AS  select `nw`.`nama` AS `nama`,sqrt((((((((`ap`.`k` - `nw`.`k`) * (`ap`.`k` - `nw`.`k`)) + ((`ap`.`pl` - `nw`.`pl`) * (`ap`.`pl` - `nw`.`pl`))) + ((`ap`.`rbl` - `nw`.`rbl`) * (`ap`.`rbl` - `nw`.`rbl`))) + ((`ap`.`ch` - `nw`.`ch`) * (`ap`.`ch` - `nw`.`ch`))) + ((`ap`.`cat` - `nw`.`cat`) * (`ap`.`cat` - `nw`.`cat`))) + ((`ap`.`jt` - `nw`.`jt`) * (`ap`.`jt` - `nw`.`jt`)))) AS `dp`,sqrt((((((((`am`.`k` - `nw`.`k`) * (`am`.`k` - `nw`.`k`)) + ((`am`.`pl` - `nw`.`pl`) * (`am`.`pl` - `nw`.`pl`))) + ((`am`.`rbl` - `nw`.`rbl`) * (`am`.`rbl` - `nw`.`rbl`))) + ((`am`.`ch` - `nw`.`ch`) * (`am`.`ch` - `nw`.`ch`))) + ((`am`.`cat` - `nw`.`cat`) * (`am`.`cat` - `nw`.`cat`))) + ((`am`.`jt` - `nw`.`jt`) * (`am`.`jt` - `nw`.`jt`)))) AS `dm` from ((`nw` join `ap`) join `am`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `hasil`
--
DROP TABLE IF EXISTS `hasil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hasil`  AS  select `d`.`nama` AS `nama`,(`d`.`dm` / (`d`.`dp` + `d`.`dm`)) AS `hasil` from `d` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `jumlah`
--
DROP TABLE IF EXISTS `jumlah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah`  AS  select sqrt(sum((`isi`.`k` * `isi`.`k`))) AS `k`,sqrt(sum((`isi`.`pl` * `isi`.`pl`))) AS `pl`,sqrt(sum((`isi`.`rbl` * `isi`.`rbl`))) AS `rbl`,sqrt(sum((`isi`.`ch` * `isi`.`ch`))) AS `ch`,sqrt(sum((`isi`.`cat` * `isi`.`cat`))) AS `cat`,sqrt(sum((`isi`.`jt` * `isi`.`jt`))) AS `jt` from `isi` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `jumlk`
--
DROP TABLE IF EXISTS `jumlk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlk`  AS  select sum(`normsk`.`k`) AS `k`,sum(`normsk`.`pl`) AS `pl`,sum(`normsk`.`rbl`) AS `rbl`,sum(`normsk`.`ch`) AS `ch`,sum(`normsk`.`cat`) AS `cat`,sum(`normsk`.`jt`) AS `jt` from `normsk` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `nor`
--
DROP TABLE IF EXISTS `nor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nor`  AS  select `normsk`.`nama` AS `nama`,(`normsk`.`k` / `jumlk`.`k`) AS `k`,(`normsk`.`pl` / `jumlk`.`pl`) AS `pl`,(`normsk`.`rbl` / `jumlk`.`rbl`) AS `rbl`,(`normsk`.`ch` / `jumlk`.`ch`) AS `ch`,(`normsk`.`cat` / `jumlk`.`cat`) AS `cat`,(`normsk`.`jt` / `jumlk`.`jt`) AS `jt`,((((((`normsk`.`jt` / `jumlk`.`jt`) + (`normsk`.`cat` / `jumlk`.`cat`)) + (`normsk`.`ch` / `jumlk`.`ch`)) + (`normsk`.`rbl` / `jumlk`.`rbl`)) + (`normsk`.`pl` / `jumlk`.`pl`)) + (`normsk`.`k` / `jumlk`.`k`)) AS `jumlah` from (`normsk` join `jumlk`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `normalisasi`
--
DROP TABLE IF EXISTS `normalisasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `normalisasi`  AS  select `kecamatan`.`nama` AS `nama`,(`isi`.`k` / `jumlah`.`k`) AS `k`,(`isi`.`pl` / `jumlah`.`pl`) AS `pl`,(`isi`.`rbl` / `jumlah`.`rbl`) AS `rbl`,(`isi`.`ch` / `jumlah`.`ch`) AS `ch`,(`isi`.`cat` / `jumlah`.`cat`) AS `cat`,(`isi`.`jt` / `jumlah`.`jt`) AS `jt` from ((`jumlah` join `isi`) join `kecamatan` on((`kecamatan`.`id_kec` = `isi`.`id_kec`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `normsk`
--
DROP TABLE IF EXISTS `normsk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `normsk`  AS  select `kri`.`nama` AS `nama`,(5 / `kri`.`nilai`) AS `k`,(7 / `kri`.`nilai`) AS `pl`,(3 / `kri`.`nilai`) AS `rbl`,(5 / `kri`.`nilai`) AS `ch`,(7 / `kri`.`nilai`) AS `cat`,(7 / `kri`.`nilai`) AS `jt` from `kri` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `nw`
--
DROP TABLE IF EXISTS `nw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nw`  AS  select `normalisasi`.`nama` AS `nama`,(`normalisasi`.`k` * `bobot`.`k`) AS `k`,(`normalisasi`.`pl` * `bobot`.`pl`) AS `pl`,(`normalisasi`.`rbl` * `bobot`.`rbl`) AS `rbl`,(`normalisasi`.`ch` * `bobot`.`ch`) AS `ch`,(`normalisasi`.`cat` * `bobot`.`cat`) AS `cat`,(`normalisasi`.`jt` * `bobot`.`jt`) AS `jt` from (`normalisasi` join `bobot`) where (`bobot`.`nama` = 'tpv') ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `isi`
--
ALTER TABLE `isi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kec` (`id_kec`),
  ADD KEY `edit` (`edit`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kec`),
  ADD KEY `add_by` (`add_by`);

--
-- Indeks untuk tabel `kri`
--
ALTER TABLE `kri`
  ADD PRIMARY KEY (`nama`),
  ADD KEY `editby` (`editby`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `isi`
--
ALTER TABLE `isi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kec` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `isi`
--
ALTER TABLE `isi`
  ADD CONSTRAINT `isi_ibfk_1` FOREIGN KEY (`id_kec`) REFERENCES `kecamatan` (`id_kec`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `isi_ibfk_2` FOREIGN KEY (`edit`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_2` FOREIGN KEY (`add_by`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kri`
--
ALTER TABLE `kri`
  ADD CONSTRAINT `kri_ibfk_1` FOREIGN KEY (`editby`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
