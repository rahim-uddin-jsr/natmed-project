-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2025 at 06:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `natmed`
--

-- --------------------------------------------------------

--
-- Table structure for table `advice_requests`
--

CREATE TABLE `advice_requests` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `care_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advice_requests`
--

INSERT INTO `advice_requests` (`id`, `name`, `email`, `care_type`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'example@mail.com', 'service2', '2025-07-27 08:38:48', '2025-07-27 08:38:48'),
(2, 'test', 'test@gmail.com', 'service2', '2025-07-27 08:43:53', '2025-07-27 08:43:53'),
(3, 'Keelie Mcintosh', 'cehuve@mailinator.com', 'service1', '2025-07-27 08:46:21', '2025-07-27 08:46:21'),
(4, 'Susan Kane', 'dakupabe@mailinator.com', 'service3', '2025-07-27 08:48:54', '2025-07-27 08:48:54'),
(5, 'Wyatt Warren', 'memimesif@mailinator.com', 'service2', '2025-07-27 08:51:24', '2025-07-27 08:51:24'),
(6, 'Wyatt Warren', 'memimesif@mailinator.com', 'service2', '2025-07-27 08:51:41', '2025-07-27 08:51:41'),
(7, 'Graham Lamb', 'wememaze@mailinator.com', 'service1', '2025-07-27 08:53:25', '2025-07-27 08:53:25'),
(8, 'Fredericka Zimmerman', 'vuvynyci@mailinator.com', 'service2', '2025-07-27 09:01:33', '2025-07-27 09:01:33'),
(9, 'Driscoll Jensen', 'xoxovady@mailinator.com', 'service2', '2025-07-27 09:16:02', '2025-07-27 09:16:02'),
(10, 'Shelly Mullins', 'nunoqemuly@mailinator.com', 'service3', '2025-07-27 09:17:24', '2025-07-27 09:17:24'),
(11, 'Cecilia Mullins', 'kanebav@mailinator.com', 'service2', '2025-07-27 09:18:57', '2025-07-27 09:18:57'),
(12, 'Ashton Ryan', 'lekolyc@mailinator.com', 'service1', '2025-07-27 09:24:26', '2025-07-27 09:24:26'),
(13, 'Quinlan Mcmillan', 'zeniwihari@mailinator.com', 'service3', '2025-07-27 09:29:49', '2025-07-27 09:29:49'),
(14, 'Zephania Powell', 'pudo@mailinator.com', 'service3', '2025-07-27 09:30:02', '2025-07-27 09:30:02'),
(15, 'Griffith Ballard', 'cedize@mailinator.com', 'service2', '2025-07-27 22:10:52', '2025-07-27 22:10:52'),
(16, 'Ignatius Peters', 'hedu@mailinator.com', 'service1', '2025-07-27 22:31:54', '2025-07-27 22:31:54'),
(17, 'Octavia Irwin', 'voqapo@mailinator.com', 'service3', '2025-07-27 22:33:47', '2025-07-27 22:33:47'),
(18, 'Yeo Small', 'wetiwibero@mailinator.com', 'service2', '2025-07-27 22:34:00', '2025-07-27 22:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(20) NOT NULL,
  `appointment_date` date NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `name`, `email`, `number`, `appointment_date`, `message`, `created_at`) VALUES
(1, 'Christopher Key', 'gedewoqego@mailinator.com', '112', '1997-09-22', 'Repellendus Ex vero', '2025-07-27 13:52:39'),
(2, 'Acton Bernard', 'jajeboq@mailinator.com', '400', '1982-03-26', 'In quo veniam tenet', '2025-07-27 13:58:25'),
(3, 'Phelan Valentine', 'wato@mailinator.com', '210', '2004-11-14', 'Aut magni illo ad ne', '2025-07-27 13:58:47'),
(4, 'Lillian Harris', 'rajygog@mailinator.com', '+1 (194) 668-8423', '2025-07-28', 'Dolorum quia maxime ', '2025-07-28 04:13:53'),
(5, 'Francesca Lewis', 'zyxob@mailinator.com', '+1 (796) 627-6241', '2025-07-28', 'Ad quam est reiciend', '2025-07-28 04:32:01'),
(6, 'Kyle Wise', 'locinog@mailinator.com', '+1 (199) 814-4904', '2025-07-28', 'Qui in dolor officia', '2025-07-28 04:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_profiles`
--

CREATE TABLE `doctor_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(100) NOT NULL,
  `social_links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`social_links`)),
  `profile_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_profiles`
--

INSERT INTO `doctor_profiles` (`id`, `name`, `designation`, `social_links`, `profile_image`, `created_at`, `updated_at`) VALUES
(1, 'Dr.Chirs Bekham\n', 'Cardiologist', '{\"facebook\": \"www.face.com\", \"x\": \"www.x.com\", \"linkedin\": \"www.linkedin.com\", \"pinterest\": \"www.pinterest.com\"}', 'assets/images/doctors/doctor-3.jpg', '2025-07-27 14:07:53', '2025-07-28 04:34:51'),
(2, NULL, 'Neurologist', '{\"facebook\": \"www.neuroface.com\", \"x\": \"www.neurox.com\", \"linkedin\": \"www.neurolinkedin.com\", \"pinterest\": \"www.neuropinterest.com\"}', 'images/neurologist.jpg', '2025-07-27 14:07:53', '2025-07-27 14:07:53'),
(3, NULL, 'Pediatrician', '{\"facebook\": \"www.pedface.com\", \"x\": \"www.pedx.com\", \"linkedin\": \"www.pedlinkedin.com\", \"pinterest\": \"www.pedpinterest.com\"}', 'images/pediatrician.jpg', '2025-07-27 14:07:53', '2025-07-27 14:07:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advice_requests`
--
ALTER TABLE `advice_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_profiles`
--
ALTER TABLE `doctor_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advice_requests`
--
ALTER TABLE `advice_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctor_profiles`
--
ALTER TABLE `doctor_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
