-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Sty 2023, 18:38
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `coffee`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'a', 'a');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `menu`
--

INSERT INTO `menu` (`id`, `product_id`, `product_name`, `type`, `price`, `status`) VALUES
(1, 'C1', 'caffe latte', 'Drinks', 12, 'Available'),
(2, 'F1', 'Fish', 'Meals', 21, 'Not available'),
(4, 'S3', 'Sushi', 'Meals', 20, 'Available'),
(5, 'Bah', 'Frytki', 'Meals', 6, 'Available'),
(9, 'HECA-2', 'KEBAB', 'Meals', 36, 'Available'),
(10, 'Siem-123', 'Żubr', 'Drinks', 4, 'Available'),
(11, 'PAT-12', 'Torcik', 'Meals', 30, 'Not available');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `product_id`, `product_name`, `type`, `price`, `quantity`, `date`) VALUES
(40, 1, 'C1', 'caffe latte', 'Drinks', 12, 1, '2022-12-28'),
(41, 1, 'C1', 'caffe latte', 'Drinks', 12, 1, '2022-12-28'),
(42, 1, 'C1', 'caffe latte', 'Drinks', 12, 1, '2022-12-28'),
(43, 2, 'C1', 'caffe latte', 'Drinks', 24, 2, '2022-12-28'),
(44, 2, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-28'),
(45, 3, 'F1', 'Fish', 'Meals', 63, 3, '2022-12-28'),
(46, 4, 'F1', 'Fish', 'Meals', 63, 3, '2022-12-28'),
(47, 5, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-28'),
(48, 6, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-28'),
(49, 7, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-28'),
(52, 8, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-29'),
(53, 8, 'S3', 'Sushi', 'Meals', 20, 1, '2022-12-29'),
(54, 9, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-29'),
(55, 10, 'C1', 'caffe latte', 'Drinks', 24, 2, '2022-12-29'),
(56, 11, 'F1', 'Fish', 'Meals', 63, 3, '2022-12-29'),
(57, 12, 'F1', 'Fish', 'Meals', 63, 3, '2022-12-29'),
(58, 13, 'F1', 'Fish', 'Meals', 63, 3, '2022-12-29'),
(59, 14, 'C1', 'Fish', 'Drinks', 36, 3, '2022-12-29'),
(60, 15, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-29'),
(61, 16, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-29'),
(62, 17, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-29'),
(63, 18, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-29'),
(64, 19, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-29'),
(65, 19, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-29'),
(66, 20, 'F1', 'Fish', 'Meals', 42, 2, '2022-12-29'),
(67, 20, 'Sushi', 'Sushi', 'Meals', 0, 0, '2022-12-30'),
(68, 20, 'Sushi', 'Sushi', 'Meals', 0, 0, '2022-12-30'),
(69, 21, 'Bah', 'Frytki', 'Meals', 12, 2, '2022-12-30'),
(70, 21, 'C1', 'caffe latte', 'Drinks', 12, 1, '2022-12-30'),
(71, 21, 'C1', 'caffe latte', 'Drinks', 24, 2, '2022-12-30'),
(72, 22, 'S3', 'caffe latte', 'Meals', 80, 4, '2022-12-30'),
(73, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(74, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(75, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(76, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(77, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(78, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(79, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(80, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(81, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(82, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(83, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(84, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(85, 22, 'C1', 'caffe latte', 'Drinks', 36, 3, '2022-12-30'),
(86, 23, 'C1', 'caffe latte', 'Drinks', 24, 2, '2023-01-09'),
(87, 23, 'Siem-123', 'Żubr', 'Drinks', 8, 2, '2023-01-09'),
(88, 23, 'C1', 'caffe latte', 'Drinks', 12, 1, '2023-01-09'),
(89, 24, 'C1', 'caffe latte', 'Drinks', 24, 2, '2023-01-09'),
(90, 25, 'C1', 'caffe latte', 'Drinks', 24, 2, '2023-01-09'),
(91, 26, 'C1', 'caffe latte', 'Drinks', 24, 2, '2023-01-09'),
(92, 27, 'Bah', 'Frytki', 'Meals', 12, 2, '2023-01-09'),
(93, 28, 'S3', 'Sushi', 'Meals', 40, 2, '2023-01-09'),
(94, 29, 'C1', 'caffe latte', 'Drinks', 24, 2, '2023-01-09'),
(96, 30, 'C1', 'caffe latte', 'Drinks', 24, 2, '2023-01-09');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders_user`
--

CREATE TABLE `orders_user` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(255) NOT NULL,
  `phone` int(9) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `relase` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `orders_user`
--

INSERT INTO `orders_user` (`id`, `user_id`, `customer_id`, `product_id`, `product_name`, `type`, `price`, `quantity`, `phone`, `address`, `date`, `relase`, `payment`) VALUES
(132, 1, 1, 'C1', 'caffe latte', 'Drinks', 24, 2, 123123123, '123', '2023-01-09', 'In process', 'done');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `product`
--

INSERT INTO `product` (`id`, `customer_id`, `total`, `date`) VALUES
(1, 1, 36, '2022-12-28'),
(2, 2, 60, '2022-12-28'),
(3, 3, 63, '2022-12-28'),
(4, 4, 63, '2022-12-28'),
(5, 5, 42, '2022-12-28'),
(6, 6, 42, '2022-12-28'),
(7, 7, 42, '2022-12-28'),
(8, 8, 36, '2022-12-28'),
(9, 7, 42, '2022-12-28'),
(10, 8, 62, '2022-12-29'),
(11, 9, 42, '2022-12-29'),
(12, 10, 24, '2022-12-29'),
(13, 11, 63, '2022-12-29'),
(14, 12, 63, '2022-12-29'),
(15, 13, 63, '2022-12-29'),
(39, 26, 168, '2022-12-30'),
(40, 27, 72, '2022-12-30'),
(41, 28, 60, '2022-12-30'),
(42, 29, 64, '2022-12-30'),
(43, 30, 58, '2022-12-30'),
(44, 31, 84, '2022-12-30'),
(45, 32, 36, '2022-12-30'),
(46, 33, 36, '2022-12-30'),
(47, 34, 24, '2022-12-30'),
(48, 35, 96, '2022-12-30'),
(49, 36, 112, '2022-12-30'),
(50, 37, 24, '2022-12-30'),
(51, 38, 36, '2022-12-30'),
(52, 39, 24, '2022-12-30'),
(53, 40, 24, '2022-12-30'),
(54, 41, 40, '2022-12-30'),
(55, 42, 24, '2022-12-30'),
(56, 43, 24, '2022-12-30'),
(57, 44, 24, '2022-12-30'),
(58, 45, 24, '2022-12-30'),
(59, 46, 24, '2022-12-30'),
(60, 47, 72, '2022-12-30'),
(61, 48, 42, '2023-01-08'),
(62, 49, 88, '2023-01-08'),
(63, 50, 72, '2023-01-08'),
(64, 22, 548, '2023-01-08'),
(65, 50, 100, '2023-01-08'),
(66, 51, 20, '2023-01-08'),
(67, 52, 96, '2023-01-08'),
(68, 53, 84, '2023-01-08'),
(69, 54, 40, '2023-01-09'),
(70, 55, 8, '2023-01-09'),
(71, 56, 60, '2023-01-09'),
(72, 57, 24, '2023-01-09'),
(73, 58, 88, '2023-01-09'),
(74, 59, 40, '2023-01-09'),
(75, 60, 12, '2023-01-09'),
(76, 61, 24, '2023-01-09'),
(77, 62, 24, '2023-01-09'),
(78, 63, 20, '2023-01-09'),
(79, 64, 12, '2023-01-09'),
(80, 65, 12, '2023-01-09'),
(81, 66, 24, '2023-01-09'),
(82, 22, 548, '2023-01-09'),
(83, 66, 72, '2023-01-09'),
(84, 67, 42, '2023-01-09'),
(85, 22, 548, '2023-01-09'),
(86, 67, 12, '2023-01-09'),
(87, 68, 40, '2023-01-09'),
(88, 23, 44, '2023-01-09'),
(89, 24, 24, '2023-01-09'),
(90, 25, 24, '2023-01-09'),
(91, 26, 24, '2023-01-09'),
(92, 27, 12, '2023-01-09'),
(93, 28, 40, '2023-01-09'),
(94, 29, 24, '2023-01-09'),
(95, 30, 24, '2023-01-09'),
(96, 1, 20, '2023-01-09'),
(97, 2, 8, '2023-01-09'),
(98, 1, 24, '2023-01-09');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `table_number` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_number` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `tables`
--

INSERT INTO `tables` (`id`, `table_number`, `type`, `status`, `user_id`) VALUES
(1, '2', '2 - person', 'Not reserved', 0),
(2, '1', '2 - person', 'Not reserved', 0),
(3, '3', '4 - person', 'Not reserved', 0),
(4, '4', '2 - person', 'Not reserved', 0),
(5, '5', '4 - person', 'Not reserved', 0),
(6, '6', '4 - person', 'Not reserved', 0),
(7, 'XD', '2 - person', 'Not reserved', 0),
(8, '12', '8 - person', 'Not reserved', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `user_id`, `email`, `username`, `password`) VALUES
(2, 1, 's@hotowa.com', 's', 's'),
(4, 2, 'siemanko@gmail.com', 'd', 'd'),
(15, 3, 'mietek@mietek.com', 'Mietek', 'MietekMietek');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `orders_user`
--
ALTER TABLE `orders_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT dla tabeli `orders_user`
--
ALTER TABLE `orders_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT dla tabeli `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT dla tabeli `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT dla tabeli `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
