-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2024 at 08:35 AM
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
-- Database: `sosial_media`
--

-- --------------------------------------------------------

--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(49, 16, 15, 'dddddddddd', '2024-07-18 09:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `follow_list`
--

CREATE TABLE `follow_list` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follow_list`
--

INSERT INTO `follow_list` (`id`, `follower_id`, `user_id`) VALUES
(88, 16, 15),
(89, 17, 16),
(90, 17, 15),
(91, 16, 17),
(92, 15, 16),
(93, 15, 17);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(96, 16, 15),
(97, 16, 16),
(98, 17, 16),
(99, 18, 17),
(100, 17, 17),
(101, 16, 17),
(102, 18, 16),
(103, 17, 15),
(104, 18, 15);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `msg`, `read_status`, `created_at`) VALUES
(48, 17, 16, 'Hello, Mr. Messi! I want to express my gratitude for your incredible inspiration and dedication to football. Your legacy motivates me to work hard and strive for greatness. Thank you for being a true legend! 🙌⚽️', 1, '2024-07-18 17:38:14'),
(49, 16, 17, 'Hello, Lamine! Thank you for your kind words. Keep working hard and chasing your dreams on the field. The future belongs to passionate players like you. Best of luck! 🙌⚽️', 1, '2024-07-18 17:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_user_id` int(11) NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `post_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `to_user_id`, `message`, `created_at`, `from_user_id`, `read_status`, `post_id`) VALUES
(116, 13, 'started following you !', '2024-07-17 13:20:44', 14, 0, '0'),
(117, 13, 'Unfollowed you !', '2024-07-17 13:20:56', 14, 0, '0'),
(118, 15, 'started following you !', '2024-07-18 17:06:05', 16, 1, '0'),
(119, 15, 'liked your post !', '2024-07-18 17:10:00', 16, 1, '16'),
(120, 16, 'started following you !', '2024-07-18 17:24:26', 17, 1, '0'),
(121, 15, 'started following you !', '2024-07-18 17:24:27', 17, 1, '0'),
(122, 16, 'liked your post !', '2024-07-18 17:33:01', 17, 1, '17'),
(123, 15, 'liked your post !', '2024-07-18 17:33:05', 17, 1, '16'),
(124, 17, 'started following you !', '2024-07-18 17:39:03', 16, 1, '0'),
(125, 17, 'liked your post !', '2024-07-18 17:43:50', 16, 1, '18'),
(126, 16, 'started following you !', '2024-07-19 00:35:11', 15, 1, '0'),
(127, 17, 'started following you !', '2024-07-19 00:35:12', 15, 1, '0'),
(128, 15, 'started following you !', '2024-07-19 01:52:53', 15, 1, '0'),
(129, 15, 'Unfollowed you !', '2024-07-19 01:53:08', 15, 1, '0'),
(130, 16, 'liked your post !', '2024-07-19 06:32:20', 15, 0, '17'),
(131, 17, 'liked your post !', '2024-07-19 06:32:23', 15, 0, '18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `created_at`) VALUES
(16, 15, '1721291487story2.jpeg', 'Menikmati keindahan alam yang menenangkan hati. 🌾🌅 #Sunset #NatureLovers #Peaceful', '2024-07-18 08:31:27'),
(17, 16, '1721323166foto2.jpg', 'Juara Copa America 2024! 🎉 Tim Argentina merayakan kemenangan mereka dengan penuh semangat dan kebanggaan. #CopaAmerica2024 #ArgentinaJuara #SepakBola', '2024-07-18 17:19:26'),
(18, 17, '1721323955foto3.jpeg', 'Kerja keras terbayar! 💪 Sangat bangga bisa berkontribusi untuk tim dan meraih kemenangan ini. Terima kasih atas dukungan kalian! #LamineYamal #Kemenangan #SepakBola', '2024-07-18 17:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profile_pic` varchar(250) NOT NULL DEFAULT 'default_profile.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ac_status` int(11) NOT NULL COMMENT '0=not verified,1=active,2=blocked',
  `biodata` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`, `ac_status`, `biodata`) VALUES
(15, 'Dias', 'Pradana', 1, 'diaspradana44@gmail.com', 'Dias Pradana', '73e45d0c4b8b746031729c6edd864d2e', '1721321856member1.jpg', '2024-07-18 08:22:19', '2024-07-19 06:05:43', 1, 'Tanggal Lahir: 19 Mei 2004\r\nAlamat: Gresik\r\nPekerjaan: Pengembang Perangkat Lunak di Tokopedia\r\nHobi: Traveling, fotografi, coding, dan bermain gitar'),
(16, 'lionel ', 'messi', 1, 'diaspradana05@gmail.com', 'Lionel messi', 'ee1a49bd478c49566197cb6900c99a41', '1721322591messi.jpeg', '2024-07-18 17:05:02', '2024-07-19 06:27:17', 1, 'Tanggal Lahir: 24 Juni 1987\r\nAlamat: Rosario, Argentina (kini tinggal di Miami, Amerika)\r\nPekerjaan: Pemain sepak bola profesional (FC Barcelona, Paris Saint-Germain, Inter Miami dan Tim Nasional Argentina)\r\nHobi: Sepak bola'),
(17, 'Lamine ', 'Yamal', 1, 'diaspradana19@gmail.com', 'Lamine Yamal', '560cc3db76ab625ff29e6c542f88a6b5', '1721323563yamal.jpeg', '2024-07-18 17:23:24', '2024-07-19 06:03:58', 1, 'Tanggal Lahir: 13 Juli 2007\r\nAlamat: Barcelona, Spanyol (lahir di Mataró, Spanyol)\r\nPekerjaan: Pemain sepak bola profesional (FC Barcelona)\r\nHobi: Sepak bola');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_list`
--
ALTER TABLE `follow_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `block_list`
--
ALTER TABLE `block_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `follow_list`
--
ALTER TABLE `follow_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
