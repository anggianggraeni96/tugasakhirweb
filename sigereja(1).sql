-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2021 pada 20.51
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigereja`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'anggi', '202cb962ac59075b964b07152d234b70'),
(2, 'stefanus', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jemaat`
--

CREATE TABLE `jemaat` (
  `id_jemaat` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jemaat`
--

INSERT INTO `jemaat` (`id_jemaat`, `username`, `password`) VALUES
(1, 'anggi', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'stefanus', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'jemaat', '6ae36186a6c97b017319bc5ec47fe5d0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sesi_1`
--

CREATE TABLE `sesi_1` (
  `nomor` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sesi_1`
--

INSERT INTO `sesi_1` (`nomor`, `nama`, `no_hp`, `jumlah`) VALUES
(39, 'anggi', '085736808251', 2),
(40, 'anggi', '085736808251', 5),
(41, 'Deddy', '085744544545', 2),
(42, 'nessa', '085708570857', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sesi_2`
--

CREATE TABLE `sesi_2` (
  `nomor` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sesi_2`
--

INSERT INTO `sesi_2` (`nomor`, `nama`, `no_hp`, `jumlah`) VALUES
(36, 'anggi', '085736808251', 2),
(37, 'nessaa', '085744544545', 5),
(38, 'yohan', '085744544545', 2),
(39, 'Anggi', '085708977757', 1),
(40, 'anggi', '085744544545', 4),
(41, 'anggi', '085085085085', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sesi_3`
--

CREATE TABLE `sesi_3` (
  `nomor` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sesi_3`
--

INSERT INTO `sesi_3` (`nomor`, `nama`, `no_hp`, `jumlah`) VALUES
(36, 'anggi', '085736808251', 2),
(38, 'stefanus', '085736808251', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `jemaat`
--
ALTER TABLE `jemaat`
  ADD PRIMARY KEY (`id_jemaat`);

--
-- Indeks untuk tabel `sesi_1`
--
ALTER TABLE `sesi_1`
  ADD PRIMARY KEY (`nomor`);

--
-- Indeks untuk tabel `sesi_2`
--
ALTER TABLE `sesi_2`
  ADD PRIMARY KEY (`nomor`);

--
-- Indeks untuk tabel `sesi_3`
--
ALTER TABLE `sesi_3`
  ADD PRIMARY KEY (`nomor`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jemaat`
--
ALTER TABLE `jemaat`
  MODIFY `id_jemaat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sesi_1`
--
ALTER TABLE `sesi_1`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `sesi_2`
--
ALTER TABLE `sesi_2`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `sesi_3`
--
ALTER TABLE `sesi_3`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
