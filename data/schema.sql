-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2026 at 01:53 AM
-- Server version: 11.8.5-MariaDB-log
-- PHP Version: 8.5.1

CREATE DATABASE forever_home;
USE forever_home;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forever_home`
--

-- --------------------------------------------------------

--
-- Table structure for table `breeds`
--

CREATE TABLE `breeds` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `species` varchar(50) NOT NULL,
  `average_size` varchar(20) NOT NULL DEFAULT 'medium',
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `breeds`
--

INSERT INTO `breeds` (`id`, `name`, `species`, `average_size`, `description`) VALUES
(1, 'Golden Retriever', 'dog', 'large', 'Friendly, intelligent, and devoted family companion.'),
(2, 'Domestic Shorthair', 'cat', 'small', 'The most common cat — endlessly varied in personality.'),
(3, 'Beagle', 'dog', 'small', 'Curious, energetic, and great with kids and other pets.'),
(4, 'Maine Coon', 'cat', 'large', 'Gentle giants with a playful, dog-like temperament.'),
(5, 'Harry', 'dog', 'small', 'very nuce'),
(6, 'Harry', 'dog', 'small', 's'),
(7, 'George', 'rabbit', 'medium', 'Cute rabbit'),
(8, 'George', 'rabbit', 'medium', 'Cute rabbit'),
(9, 'Alex', 'dog', 'small', 'Small red dog'),
(10, 'Lucas', 'cat', 'medium', 'Good cat'),
(11, 'Lucas', 'cat', 'medium', 'Good cat'),
(12, 'Harry2', 'dog', 'small', 'the seconds cutes dog'),
(13, 'g', 'dog', 'small', 'f'),
(14, 'joe', 'cat', 'small', 'joy the cat'),
(15, 'bob', 'dog', 'small', ''),
(16, 'f', 'dog', 'small', '');

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `species` varchar(50) NOT NULL,
  `age_months` int(11) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'available',
  `image_path` varchar(255) DEFAULT NULL,
  `breed_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `name`, `species`, `age_months`, `status`, `image_path`, `breed_id`) VALUES
(1, 'Buddy', 'dog', 24, 'available', 'assets/images/pets/buddy.jpg', 1),
(2, 'Whiskers', 'cat', 8, 'available', 'assets/images/pets/whiskers.jpg', 2),
(3, 'Max', 'dog', 36, 'available', 'assets/images/pets/max.jpg', 3),
(4, 'Luna', 'cat', 14, 'available', 'assets/images/pets/luna.jpg', 4),
(5, 'Charlie', 'dog', 6, 'available', 'assets/images/pets/charlie.jpg', 1),
(6, 'Milo', 'cat', 20, 'available', 'assets/images/pets/milo.jpg', 2),
(7, 'Rocky', 'dog', 48, 'adopted', 'assets/images/pets/rocky.jpg', 3),
(8, 'Bella', 'cat', 3, 'available', 'assets/images/pets/bella.jpg', NULL),
(9, 'Cooper', 'dog', 12, 'available', 'assets/images/pets/cooper.jpg', 1),
(10, 'Cleo', 'cat', 60, 'adopted', 'assets/images/pets/cleo.jpg', 4),
(11, 'Daisy', 'dog', 18, 'available', 'assets/images/pets/daisy.jpg', NULL),
(12, 'Oliver', 'cat', 9, 'available', 'assets/images/pets/oliver.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breeds`
--
ALTER TABLE `breeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `breed_id` (`breed_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breeds`
--
ALTER TABLE `breeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`breed_id`) REFERENCES `breeds` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
