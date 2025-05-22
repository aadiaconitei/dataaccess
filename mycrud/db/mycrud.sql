-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2025 at 07:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mycrud`
--

-- --------------------------------------------------------

--
-- Table structure for table `jsusers`
--

CREATE TABLE `jsusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `prenume` varchar(50) NOT NULL,
  `nume` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `datanastere` date NOT NULL,
  `telefon` char(10) NOT NULL,
  `cnp` char(13) DEFAULT NULL,
  `dataadaugare` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jsusers`
--

INSERT INTO `jsusers` (`id`, `prenume`, `nume`, `email`, `datanastere`, `telefon`, `cnp`, `dataadaugare`) VALUES
(1, 'Adrian222', 'Adiaconitei222', 'ion@demo.com', '2022-05-01', '0723232323', '9876543212345', '2022-05-24 10:59:59'),
(2, 'DanEditat', 'DobrescuEditat', 'dan@test.ro', '2022-05-09', '0754354323', '1111111111111', '2022-05-24 10:59:59'),
(3, 'Ana', 'Popescu', 'ana@ana.com', '2022-05-11', '0788888434', NULL, '2022-05-24 11:01:44'),
(4, 'Vali', 'Vasilescu', 'vali@vali.eu', '2022-05-15', '0755553333', NULL, '2022-05-24 11:01:44'),
(5, 'Adrian', 'Adiaconitei', 'demo1@example.com', '2025-05-08', '1234545678', NULL, '2025-05-08 19:32:50'),
(6, 'Adrian', 'Adiaconitei', 'demo1222@example.com', '2025-05-08', '1234545678', NULL, '2025-05-08 19:35:10'),
(7, 'Adrian', 'Popescu', 'pop@adrian.com', '2025-05-01', '3334545678', NULL, '2025-05-08 19:37:58'),
(8, 'Adrian33', 'Popescu33', 'demo33@example.com', '2025-05-21', '0723232323', NULL, '2025-05-21 20:43:18'),
(9, 'Adrian55', 'Popescu55', 'demo77777@example.com', '2025-05-21', '0723232323', '123456789123', '2025-05-21 20:48:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jsusers`
--
ALTER TABLE `jsusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_unic` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jsusers`
--
ALTER TABLE `jsusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
