-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 02:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `social`
--

-- ---------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'This function works as well yay!!!!', 'fellandes', 'stauberj', '2022-05-26 14:06:57', 'no', 4),
(2, 'bruh', 'stauberj', 'stauberj', '2022-05-26 17:55:57', 'no', 4);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'fellandes', 4),
(2, 'fellandes', 5),
(3, 'fellandes', 6),
(4, 'stauberj', 5);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'fellandes', 'stauberj', 'hi', '2022-05-26 14:01:08', 'yes', 'yes', 'no'),
(2, 'stauberj', 'fellandes', 'hellooooo', '2022-05-26 14:05:43', 'yes', 'yes', 'no'),
(3, 'stauberj', 'fellandes', 'bruh momentum in da house', '2022-05-26 17:54:32', 'yes', 'yes', 'no'),
(4, 'fellandes', 'stauberj', 'yes', '2022-05-26 17:55:02', 'no', 'yes', 'no'),
(5, 'fellandes', 'fellandes', 'sa', '2022-05-27 12:37:33', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'stauberj', 'fellandes', 'Oguzhan Gungor commented on your post', 'post.php?id=4', '2022-05-26 14:06:57', 'no', 'no'),
(2, 'stauberj', 'fellandes', 'Oguzhan Gungor liked your post', 'post.php?id=4', '2022-05-26 14:06:58', 'no', 'no'),
(3, 'fellandes', 'stauberj', 'Jack Stauber liked your post', 'post.php?id=5', '2022-05-26 17:54:54', 'no', 'no'),
(4, 'fellandes', 'stauberj', 'Jack Stauber commented on a post you commented on', 'post.php?id=4', '2022-05-26 17:55:57', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'Test message for our newly launched website!', 'stauberj', 'none', '2022-05-26 14:01:36', 'no', 'no', 0, ''),
(2, '', 'stauberj', 'none', '2022-05-26 14:02:08', 'no', 'no', 0, 'assets/images/posts/628f7a5075e33sm0ldallas.png'),
(3, 'Greetings everyone!', 'stauberj', 'none', '2022-05-26 14:02:19', 'no', 'no', 0, ''),
(4, 'Greetings everyone!', 'stauberj', 'none', '2022-05-26 14:02:59', 'no', 'no', 1, ''),
(5, 'heyyyyyy', 'fellandes', 'none', '2022-05-26 14:04:55', 'no', 'no', 2, ''),
(6, 'heyyyyyy', 'fellandes', 'none', '2022-05-26 14:04:59', 'no', 'no', 1, ''),
(7, 'heyyyyyy', 'fellandes', 'none', '2022-05-26 14:05:02', 'no', 'yes', 0, ''),
(8, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/yt40jLz7TeQ\'></iframe><br>', 'fellandes', 'none', '2022-05-27 12:38:45', 'no', 'no', 0, ''),
(9, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/yt40jLz7TeQ\'></iframe><br>', 'fellandes', 'none', '2022-05-27 12:55:31', 'no', 'no', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Test', 1),
('Message', 1),
('Newly', 1),
('Launched', 1),
('Website', 1),
('Greetings', 2),
('Heyyyyyy', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Oguzhan', 'Gungor', 'fellandes', 'oguzhan@divabt.com', 'fcc8c0a57ab902388613f2782eae3dd6', '2022-05-26', 'assets/images/profile_pics/defaults/13.png', 5, 3, 'no', ',stauberj,'),
(2, 'Gungor', 'Oguzhan', 'gungoro', 'gungoro@mef.edu.tr', 'fcc8c0a57ab902388613f2782eae3dd6', '2022-05-26', 'assets/images/profile_pics/defaults/6.png', 0, 0, 'no', ','),
(3, 'Jack', 'Stauber', 'stauberj', 'stauberj@gmail.com', 'fcc8c0a57ab902388613f2782eae3dd6', '2022-05-26', 'assets/images/profile_pics/defaults/8.png', 4, 1, 'no', ',fellandes,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
