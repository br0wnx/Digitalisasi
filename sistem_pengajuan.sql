-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2025 at 09:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pengajuan`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `dokumen` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `tanggal_pengajuan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `nama`, `email`, `alamat`, `dokumen`, `status`, `tanggal_pengajuan`) VALUES
(1, 'Annisa Rachman', 'annisar962@gmail.com', 'Kaliaman RT 01/RW 04, Kembang', 'erd bca.drawio.png', 'Approved', '2025-01-10 08:39:34'),
(2, 'Annisa Rachman', 'annisar962@gmail.com', 'Kaliaman RT 01/RW 04, Kembang', 'Soal Test Code 2025.pdf', 'Pending', '2025-01-10 08:43:57'),
(3, 'Annisa Rachman', 'annisar962@gmail.com', 'Kaliaman RT 01/RW 04, Kembang', 'Soal Test Code 2025.pdf', 'Pending', '2025-01-10 08:45:16'),
(4, 'Annisa Rachman', 'annisar962@gmail.com', 'Kaliaman RT 01/RW 04, Kembang', 'Soal Test Code 2025.pdf', 'Pending', '2025-01-10 08:46:18'),
(5, 'Annisa Rachman', 'annisar962@gmail.com', 'Kaliaman RT 01/RW 04, Kembang', 'Soal Test Code 2025.pdf', 'Pending', '2025-01-10 08:48:30'),
(6, 'Annisa Rachman', 'annisar962@gmail.com', 'Kaliaman RT 01/RW 04, Kembang', 'erd bca.drawio.png', 'Pending', '2025-01-10 08:50:08'),
(7, 'Annisa Rachman', 'annisar962@gmail.com', 'Kaliaman RT 01/RW 04, Kembang', 'erd bca.drawio.png', 'Pending', '2025-01-10 08:51:11'),
(8, 'Annisa Rachman', 'annisar962@gmail.com', 'Kaliaman RT 01/RW 04, Kembang', 'Soal Test Code 2025.pdf', 'Pending', '2025-01-10 08:51:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
