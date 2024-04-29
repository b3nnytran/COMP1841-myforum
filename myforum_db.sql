-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 09:29 AM
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
-- Database: `myforum_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `post` text NOT NULL,
  `date` datetime NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post`, `date`, `parent_id`, `comments`) VALUES
(1, 1, 'This is my first post', '2023-02-06 16:30:16', 0, 0),
(2, 1, 'this is my second post', '2023-02-06 16:49:15', 0, 0),
(3, 1, 'this is my third post', '2023-02-06 16:50:19', 0, 0),
(4, 1, 'this is my fourth post', '2023-02-06 17:07:56', 0, 1),
(5, 1, 'post number 5', '2023-02-06 17:17:48', 0, 0),
(6, 4, 'a post by mary and some other guy', '2023-02-10 16:31:06', 0, 0),
(10, 4, 'a comment by mary', '2023-02-10 20:59:06', 0, 0),
(11, 4, 'another post by mary', '2023-02-10 20:59:51', 0, 5),
(13, 4, 'a real comment by mary', '2023-02-10 21:11:26', 11, 0),
(14, 4, 'a second comment by mary', '2023-02-10 21:11:48', 11, 0),
(15, 4, 'a third comment', '2023-02-10 21:13:08', 11, 0),
(16, 4, 'a comment on eathornes post', '2023-02-10 21:14:25', 4, 0),
(17, 1, 'a comment by eathorne', '2023-02-10 21:18:13', 11, 0),
(18, 5, 'Hi, this is my first post as john doe', '2023-02-10 23:20:02', 0, 3),
(19, 5, 'a comment by john does on his own post', '2023-02-10 23:20:17', 18, 0),
(34, 6, 'Hi, this is post', '2024-04-29 09:22:53', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `fb` varchar(100) DEFAULT NULL,
  `tw` varchar(100) DEFAULT NULL,
  `yt` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `date`, `image`, `bio`, `fb`, `tw`, `yt`) VALUES
(1, 'Eathorne', 'email@email.com', '$2y$10$RFbYu7mI0HO9wdw9DOmUzOnJ.WQ5BXKdCQ1zBwvcn2p0jk/vuOX0W', '2023-02-06', 'uploads/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg', '', '', '', ''),
(4, 'Mary', 'mary@email.com', '$2y$10$KTT/.zlqv7IOGSWWulVfyO5p54aIUCOZGeB/z.GPnmb7APBUEoRQG', '2023-02-06', 'uploads/3a81e77938749a87147a1aac240fad33.jpg', 'this is my bio info', '', '', 'https://youtube.com'),
(5, 'John Doe', 'john@email.com', '$2y$10$BIrG/UguHw4cPGKygtNj9.quHe7XcT1Wr0YfrO3lfTeBLLmSRngjK', '2023-02-10', 'uploads/vllkyt7dg1hrovc8i.jpg', '', '', '', ''),
(6, 'thaibaotran', 'thaibaotran33@gmail.com', '$2y$10$9UzJkwgXPn1kVl.wYOsatOPRQ0UBlld0VAnUkAIR8B5d7ADftI67W', '2024-04-24', 'uploads/GJbpjG6bwAAuct5.jpg', 'This is my bio', 'https://www.facebook.com/thaibao.tran.923/', '', ''),
(7, 'khanhbua', 'khanhbua@gmail.com', '$2y$10$0dTwYZOk2wSCi9PhSbCq6O.aQLsUfgwYA23ecqO8P.hxNYy37C.9u', '2024-04-24', NULL, NULL, NULL, NULL, NULL),
(8, 'btran', 'baotran@gmail.com', '$2y$10$VCdY4JGeOLt3JqeLE5B/RuyV4y.7WjHx7iuejbA4SPwDxvVQeM4nG', '2024-04-24', NULL, '', '', '', ''),
(9, 'phuc', 'phuc123@gmail.com', '$2y$10$WH3eAjsMYYOTAc4SVA9lW.BVTDDjGBsYaV1nSGL5XxNhceys1XR42', '2024-04-24', NULL, NULL, NULL, NULL, NULL),
(10, 'daivuphat', 'dai@gmail.com', '$2y$10$3sRp2fitVIiINQ3mFpBS3.Jja8XaWVwb777y7NI/XygpFADre838K', '2024-04-25', NULL, NULL, NULL, NULL, NULL),
(11, 'thanh', 'thanh@gmail.com', '$2y$10$HgbumxoeNpFFVv5.WvKDg.sWfah87B873tQZUxRQ.paxzfyyMNAc2', '2024-04-26', NULL, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `comments` (`comments`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
