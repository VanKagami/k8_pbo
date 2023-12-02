-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Okt 2019 pada 16.45
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$qtV7KnOIcj9vO3wEzwsB2.EFMSTNXcYV4z.sCGHAOrt3jCcxmqj5a', 'Admin', 'Bugabagi', 'profile.jpg', '2019-07-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(21, 10, 'Yoga', 'Permana', 'profile.jpg', 'Pilih saya agar mahasiswa dimudahkan lulus AIK'),
(22, 10, 'Afrizal', 'Dwiwana', 'user2-160x160.jpg', 'Mari membangun bersama menjadi lebih baik '),
(23, 10, 'Lastri', 'Lastrike', 'user4-128x128.jpg', 'Ngopi udud gratis'),
(24, 11, 'Desta', 'Hartawan', 'user3-128x128.jpg', 'Mengusahakan biaya kosan murah'),
(25, 11, 'Nadya', 'Putri', 'user5-128x128.jpg', 'Mengusahakan Dosen Pembingbing harus mudah ditemui'),
(26, 12, 'Deni', 'Daarko', 'user6-128x128.jpg', 'Menciptakan SDM yang suka ngopi ditrotoar'),
(27, 12, 'Selvi', 'Lestari', 'user7-128x128.jpg', 'Menciptakan SDM mahasiswi yang cantik-cantik'),
(28, 12, 'Rendi', 'Pujilaksono', 'user8-128x128.jpg', 'Membangun SDM yang ceria have fun terus'),
(29, 13, 'Jamal', 'Kamal', 'avatar04.png', 'Menjalin hubungan dengan mahasiswa hedon biar yg misqueen gk mkan indomie teros'),
(30, 13, 'Siti', 'Hindun', 'avatar2.png', 'Membangun silaturahmi dengan ibu warteg biar bisa ngutang'),
(31, 13, 'Firman', 'Beriman', 'avatar.png', 'Menjalin hubungan yang baik dengan dosen killer'),
(32, 13, 'Hilda', 'Belanda', 'avatar3.png', 'Menciptakan huubngan romantis dengan selebgram kampus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(10, 'Presiden Mahasiswa', 1, 1),
(11, 'Wakil PRESMA', 1, 2),
(12, 'Kementrian SDM', 2, 3),
(13, 'Kementrian HUMAS', 3, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(15, 'Putri-SV-57318', '$2y$10$UkwmuViX4XawK9NfyE8L0eCjbuRu.tshNCQZn4lGzHTuo7MIo3NTy', 'Putri', 'Rahayu', 'profile.png'),
(16, 'Hilda-SV-84629', '$2y$10$S7w.dD5v54fG7Q0bSOhXB.Zd1omwCHFqxi/6eyHJPjMmc7mc8awEi', 'Hilda', 'Herdalda', 'profile.png'),
(17, 'Nurman-SV-17628', '$2y$10$i9/BagTkdUdeI507c4D3F.89S1FY0corxp7Y9CbScq/mbIM9mqoNm', 'Nurman', 'Seiman', 'profile.png'),
(18, 'Ucup-SV-25846', '$2y$10$EJuzCr4OE8Ebsnp1buqLxe3WniwfoR3ZvG5eaBxfUUq/w/uRr62Oy', 'Ucup', 'Dikecup', 'profile.png'),
(19, 'voter-SV-53218', '$2y$10$lnKz0wpypJtddredjLE/ROKIAHnTmehYRs1xaSiv5.IQ1gjwBKtxm', 'voter', 'voting', 'profile.png'),
(20, 'Nia-SV-27543', '$2y$10$UUV7EQccCgb7zHxZBdxWIu9s0SF4OY/d2Pcs8c1/oLIeJ.bGQ.6c.', 'Nia', 'Kuniawati', 'profile.png'),
(21, 'Robby-SV-12375', '$2y$10$WUQWwJ5phxrlifzi.8cufOqoiLbmldFVSRHWhQHOnZCNermkoG6GK', 'Robby', 'Takdirillah', 'profile.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(90, 18, 21, 10),
(91, 18, 24, 11),
(92, 18, 26, 12),
(93, 18, 27, 12),
(94, 18, 29, 13),
(95, 18, 32, 13),
(96, 16, 23, 10),
(97, 16, 24, 11),
(98, 16, 27, 12),
(99, 16, 28, 12),
(100, 16, 29, 13),
(101, 16, 30, 13),
(102, 16, 31, 13),
(103, 15, 21, 10),
(104, 15, 25, 11),
(105, 15, 27, 12),
(106, 15, 28, 12),
(107, 15, 29, 13),
(108, 15, 30, 13),
(109, 17, 22, 10),
(110, 17, 24, 11),
(111, 17, 26, 12),
(112, 17, 27, 12),
(113, 17, 29, 13),
(114, 17, 30, 13),
(115, 17, 32, 13),
(116, 20, 21, 10),
(117, 20, 25, 11),
(118, 20, 26, 12),
(119, 20, 28, 12),
(120, 20, 29, 13),
(121, 20, 30, 13),
(122, 21, 23, 10),
(123, 21, 24, 11),
(124, 21, 26, 12),
(125, 21, 27, 12),
(126, 21, 29, 13),
(127, 21, 30, 13);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
