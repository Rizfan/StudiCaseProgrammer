-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2025 pada 16.08
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_puskesmas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(50) DEFAULT NULL,
  `doctor_gender` enum('L','P') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `doctor_name`, `doctor_gender`) VALUES
(1, 'Gage Osborne', 'L'),
(2, 'Dara Buckner', 'L'),
(3, 'Bevis Sanford', 'P'),
(4, 'Declan Blackwell', 'P'),
(5, 'Raven Heath', 'L'),
(6, 'Sonya Wong', 'L'),
(7, 'Josiah Gibson', 'P'),
(8, 'Harding William', 'P'),
(9, 'Amy Faulkner', 'L'),
(10, 'Hector Lara', 'L'),
(11, 'Paul Underwood', 'P'),
(12, 'Micah Ramos', 'P'),
(13, 'Stone Hernandez', 'L'),
(14, 'Josiah Cervantes', 'L'),
(15, 'Odette Murray', 'P'),
(16, 'Indira Barlow', 'P'),
(17, 'Warren Barber', 'L'),
(18, 'Violet Bray', 'L'),
(19, 'Aidan Forbes', 'P'),
(20, 'Simon Cortez', 'P'),
(21, 'Herman Hunt', 'L'),
(22, 'Nina Barlow', 'L'),
(23, 'Miranda Glover', 'P'),
(24, 'Tanya Tucker', 'P'),
(25, 'Zephr Vasquez', 'L'),
(26, 'Noah Aguirre', 'L'),
(27, 'Imogene Tucker', 'P'),
(28, 'Macy Stanley', 'P'),
(29, 'Mira Hammond', 'L'),
(30, 'Ulla Thornton', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `patient_gender` enum('L','P') DEFAULT NULL,
  `patient_age` int(11) DEFAULT NULL,
  `patient_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `patients`
--

INSERT INTO `patients` (`patient_id`, `patient_name`, `patient_gender`, `patient_age`, `patient_address`) VALUES
(1, 'Kareem O\'connor', 'L', 28, '382-3873 Turpis. Rd.'),
(2, 'Macon Colon', 'L', 16, '6049 Quis, Street'),
(3, 'Regina Orr', 'P', 23, '123-2137 Faucibus Rd.'),
(4, 'Quentin Diaz', 'P', 25, 'Ap #447-9228 Lorem St.'),
(5, 'Megan Simon', 'L', 37, 'P.O. Box 438, 8171 Leo. St.'),
(6, 'Raja Lopez', 'L', 23, '683-6667 Egestas Avenue'),
(7, 'Ciaran Donaldson', 'P', 33, '505-5233 Pharetra. Road'),
(8, 'Ahmed Lane', 'P', 20, '6625 Odio Ave'),
(9, 'Ahmed Clements', 'P', 21, '244-7793 Duis Avenue'),
(10, 'Connor Fitzpatrick', 'L', 22, 'P.O. Box 259, 5628 Ligula. Rd.'),
(11, 'Marsden Mcintyre', 'P', 23, 'P.O. Box 682, 6358 Augue Avenue'),
(12, 'Rina Leonard', 'P', 31, 'Ap #719-9448 Consequat Rd.'),
(13, 'Ignacia Watson', 'L', 17, 'P.O. Box 757, 1358 Faucibus St.'),
(14, 'Petra Wooten', 'L', 21, '339-2879 Consectetuer St.'),
(15, 'Brent King', 'P', 36, 'Ap #426-9153 Magna Road'),
(16, 'Breanna Harding', 'P', 38, '8756 Duis St.'),
(17, 'Liberty England', 'P', 28, '186-1893 Parturient Rd.'),
(18, 'Deirdre Forbes', 'L', 29, '175-5203 Auctor, Rd.'),
(19, 'Myles Hill', 'P', 34, 'Ap #676-6814 Suspendisse St.'),
(20, 'Samuel Pace', 'P', 12, '350-9808 Ipsum Street'),
(21, 'Gil Charles', 'L', 17, '476-3295 Pellentesque Avenue'),
(22, 'Herman Pace', 'L', 25, 'Ap #688-7206 Inceptos St.'),
(23, 'Howard Wall', 'P', 15, 'Ap #137-7179 Orci Ave'),
(24, 'Gail Key', 'P', 27, '837-8736 Laoreet St.'),
(25, 'Venus Cabrera', 'L', 21, 'Ap #647-948 Ipsum. St.'),
(26, 'Reed Conley', 'L', 30, '3748 Mattis Street'),
(27, 'Dale Chapman', 'P', 20, 'P.O. Box 779, 9031 Vivamus St.'),
(28, 'Stella Whitney', 'P', 28, '329-766 Posuere, Av.'),
(29, 'Herman Frost', 'L', 44, 'Ap #172-7263 Fermentum Street'),
(30, 'Irene Henry', 'L', 43, '570-8696 Sem Rd.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(100) DEFAULT NULL,
  `service_category` enum('Layanan','Obat') DEFAULT NULL,
  `service_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_category`, `service_price`) VALUES
(1, 'Pemeriksaan', 'Layanan', 10000),
(2, 'Rontgen Paru', 'Layanan', 76000),
(3, 'Paracetamol 500MG', 'Obat', 250),
(4, 'amoxicillin 500MG', 'Obat', 400),
(5, 'Vitamin C 500MG', 'Obat', 600),
(6, 'Tamsulosin HCl', 'Obat', 400),
(7, 'Cymbalta', 'Obat', 400),
(8, 'Diazepam', 'Obat', 400),
(9, 'Lidoderm', 'Obat', 400),
(10, 'Azithromycin', 'Obat', 800),
(11, 'Tri-Sprintec', 'Obat', 800),
(12, 'Levoxyl', 'Obat', 800),
(13, 'Benicar HCT', 'Obat', 800),
(14, 'Famotidine', 'Obat', 500),
(15, 'Cymbalta', 'Obat', 500),
(16, 'Tri-Sprintec', 'Obat', 500),
(17, 'Hydrocodone/APAP', 'Obat', 500),
(18, 'Advair Diskus', 'Obat', 650),
(19, 'Lantus', 'Obat', 650),
(20, 'Zyprexa', 'Obat', 650),
(21, 'Penicillin VK', 'Obat', 650),
(22, 'Methylprednisolone', 'Obat', 200),
(23, 'Amitriptyline HCl', 'Obat', 200),
(24, 'Pantoprazole Sodium', 'Obat', 200),
(25, 'Ibuprofen (Rx)', 'Obat', 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `transaction_number` varchar(15) DEFAULT NULL,
  `transaction_insurer` varchar(50) DEFAULT NULL,
  `transation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `patient_id`, `doctor_id`, `transaction_number`, `transaction_insurer`, `transation_date`) VALUES
(1, 11, 17, '2015 08-B2', 'Adara Bird', '2015-08-22'),
(2, 11, 12, '2014 04-A4', 'Ivy Bruce', '2014-04-20'),
(3, 13, 12, '2013 05-C1', 'Mara Parker', '2013-05-01'),
(4, 17, 12, '2015 03-B1', 'Larissa Dodson', '2015-03-05'),
(5, 17, 20, '2015 08-A1', 'Ivana Kramer', '2015-08-15'),
(6, 28, 8, '2013 09-C12', 'Rina Bailey', '2013-09-21'),
(7, 16, 5, '2016 02-B11', 'Gannon Langley', '2016-02-06'),
(8, 3, 15, '2014 05-A15', 'Randall Conway', '2014-05-08'),
(9, 6, 4, '2014 01-C21', 'Janna Lowe', '2014-01-24'),
(10, 28, 15, '2014 08-D1', 'Mary Barron', '2014-08-14'),
(11, 6, 16, '2015 03-D3', 'Juliet Rojas', '2015-03-25'),
(12, 12, 17, '2015 06-D10', 'Perry Melton', '2015-06-25'),
(13, 18, 9, '2013 11-B9', 'Lacota Henson', '2013-11-13'),
(14, 4, 17, '2014 11-A13', 'Alisa Combs', '2014-11-24'),
(15, 24, 10, '2014 03-C7', 'Orlando Burns', '2014-03-04'),
(16, 9, 16, '2015 06-A14', 'Desirae Hardy', '2015-06-22'),
(17, 27, 19, '2013 08-B17', 'Chaney Lawson', '2013-08-08'),
(18, 14, 5, '2014 09-C29', 'Sonya Carpenter', '2014-09-10'),
(19, 25, 4, '2016 02-A18', 'Merrill Knapp', '2016-02-12'),
(20, 12, 17, '2015 02-A19', 'Arsenio Pope', '2015-02-06'),
(21, 30, 18, '2014 11-B31', 'Ocean Nash', '2014-11-01'),
(22, 30, 20, '2014 12-B5', 'Venus Lawson', '2014-12-03'),
(23, 27, 13, '2015 08-D19', 'Alexander Allen', '2015-08-05'),
(24, 14, 20, '2014 07-D35', 'Felicia Barr', '2014-07-04'),
(25, 21, 17, '2013 03-D16', 'Imogene Burt', '2013-03-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions_detail`
--

CREATE TABLE `transactions_detail` (
  `transaction_detail_id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transactions_detail`
--

INSERT INTO `transactions_detail` (`transaction_detail_id`, `transaction_id`, `service_id`, `qty`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 15),
(5, 2, 1, 6),
(6, 2, 3, 12),
(7, 3, 1, 1),
(8, 3, 5, 5),
(9, 4, 1, 1),
(10, 4, 3, 12),
(11, 5, 1, 1),
(12, 5, 3, 9),
(13, 6, 1, 1),
(14, 6, 5, 5),
(15, 7, 1, 1),
(16, 7, 3, 12),
(17, 8, 1, 1),
(18, 8, 4, 4),
(19, 9, 1, 1),
(20, 9, 3, 12),
(21, 10, 1, 1),
(22, 10, 4, 6),
(23, 10, 3, 15),
(24, 11, 1, 1),
(25, 11, 4, 6),
(26, 12, 1, 1),
(27, 12, 3, 12),
(28, 13, 1, 1),
(29, 13, 2, 1),
(30, 13, 3, 9),
(31, 14, 1, 1),
(32, 14, 4, 6),
(33, 15, 1, 1),
(34, 15, 2, 1),
(35, 16, 1, 1),
(36, 16, 3, 9),
(37, 17, 1, 1),
(38, 17, 3, 9),
(39, 18, 1, 1),
(40, 18, 4, 5),
(41, 19, 1, 1),
(42, 19, 5, 5),
(43, 20, 1, 1),
(44, 20, 4, 5),
(45, 21, 1, 1),
(46, 21, 3, 9),
(47, 22, 1, 1),
(48, 22, 3, 12),
(49, 23, 1, 1),
(50, 23, 3, 9),
(51, 24, 1, 1),
(52, 24, 2, 1),
(53, 24, 3, 15),
(54, 25, 1, 1),
(55, 25, 3, 12),
(56, 25, 4, 5),
(57, 1, 10, 6),
(58, 23, 22, 4),
(59, 23, 15, 5),
(60, 12, 2, 9),
(61, 16, 18, 6),
(62, 11, 11, 4),
(63, 12, 22, 6),
(64, 1, 21, 5),
(65, 11, 24, 5),
(66, 1, 22, 5),
(67, 22, 12, 3),
(68, 18, 22, 5),
(69, 12, 10, 5),
(70, 20, 14, 8);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indeks untuk tabel `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indeks untuk tabel `transactions_detail`
--
ALTER TABLE `transactions_detail`
  ADD PRIMARY KEY (`transaction_detail_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `service_id` (`service_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `transactions_detail`
--
ALTER TABLE `transactions_detail`
  MODIFY `transaction_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`);

--
-- Ketidakleluasaan untuk tabel `transactions_detail`
--
ALTER TABLE `transactions_detail`
  ADD CONSTRAINT `transactions_detail_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`),
  ADD CONSTRAINT `transactions_detail_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
