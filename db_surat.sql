-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2022 pada 05.18
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2022-05-28 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `email`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`) VALUES
(1, 'admin', '$2y$10$pIbVa4ALf3VFR35A3.8kHu.cQ/iq7eBrUcjifahMnLUEKmmLRqVIy', 'admin@gmail.com', 'http://localhost/appsurat/uploads/files/8z29tolqbh_pk4s.jpg', NULL, NULL, '2022-05-28 00:00:00', NULL),
(3, 'user', '$2y$10$g.Ig.UAQgUdK437j5.ft1upQgX4pgn6ZuUDs9fFNU6Iw8pZbBBkgG', 'user@123.com', 'http://localhost/appsurat/uploads/files/aj2zuowy3trmh5k.jpg', NULL, NULL, '2022-05-28 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `No_Agenda` int(11) NOT NULL,
  `Tanggal_Surat` date NOT NULL,
  `Tujuan_Surat` varchar(255) NOT NULL,
  `Nomor_Surat` varchar(255) NOT NULL,
  `Perihal` varchar(255) NOT NULL,
  `File_Surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`No_Agenda`, `Tanggal_Surat`, `Tujuan_Surat`, `Nomor_Surat`, `Perihal`, `File_Surat`) VALUES
(2, '2022-07-11', 'Undangan Rapat', '999', 'Undangan', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `No_Agenda` int(11) NOT NULL,
  `Nomor_Surat` varchar(255) NOT NULL,
  `Tanggal_Surat` date NOT NULL,
  `Tanggal_Terima` datetime NOT NULL,
  `Asal_Surat` varchar(255) NOT NULL,
  `Perihal` varchar(255) NOT NULL,
  `File_Surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`No_Agenda`, `Nomor_Surat`, `Tanggal_Surat`, `Tanggal_Terima`, `Asal_Surat`, `Perihal`, `File_Surat`) VALUES
(1, 'MK', '2022-02-09', '2022-02-22 12:00:00', 'Makot', 'kerjasama', 'http://localhost/appsurat/uploads/files/prw725z1avlcgf_.pdf'),
(2, '666', '2022-05-03', '2022-05-05 12:00:00', 'dishub magelang', '', ''),
(3, '9990', '2022-06-07', '2022-06-10 23:45:00', 'temanggung', '', ''),
(4, '028/394/23/2020', '2020-12-17', '2020-12-22 12:00:00', 'Sekretariat Daerah', 'Permintaan Laporan BMD Tahun 2020', ''),
(5, '6', '2022-07-04', '2022-07-15 12:00:00', 'parakan', 'studytour', 'http://localhost/appsurat/uploads/files/94wvfc6b185y3tr.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `No_Agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `No_Agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
