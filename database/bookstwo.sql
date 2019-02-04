-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2019 at 06:40 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstabla`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookstwo`
--

CREATE TABLE `bookstwo` (
  `id` int(11) NOT NULL,
  `book` text NOT NULL,
  `author` text NOT NULL,
  `setting` text NOT NULL,
  `tvfilm` text NOT NULL,
  `filmsetting` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookstwo`
--

INSERT INTO `bookstwo` (`id`, `book`, `author`, `setting`, `tvfilm`, `filmsetting`) VALUES
(1, 'Harry Potter', 'J.K. Rowling', 'England', 'film', 'London'),
(2, 'GOT: A Song of Ice and Fire', 'George R. R. Martin', 'Westeros', 'television', 'Croatia, Iceland and Spain'),
(3, 'Death on the Nile', 'Agatha Christie', 'Egypt (Nile)', 'film', 'Egypt (Nile)'),
(4, 'Angels & Demons', 'Dan Brown', 'Vatican City, Rome', 'film', 'Vatican City, Rome'),
(5, 'Gone Girl', 'Gillian Flyn', 'NYC, Missouri', 'film', 'Missouri'),
(6, 'Crazy, Rich Asians', 'Kevin Kwan', 'NYC, Singapore', 'film', 'NYC, Singapore'),
(7, 'Wuthering Heights', 'Emily Bronte', 'South England', 'television', 'England'),
(8, 'A Thousand Splendid Suns', 'Khaled Hosseini', 'Afghanistan', 'neither', ''),
(9, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Colombia', 'neither', ''),
(10, 'The Old Man and the Sea', 'Ernest Hemingway', 'Cuba', 'neither', ''),
(11, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Stockholm', 'film', 'Stockholm'),
(12, 'Looking for Alaska', 'John Green', 'Alabama', 'neither', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookstwo`
--
ALTER TABLE `bookstwo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookstwo`
--
ALTER TABLE `bookstwo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
