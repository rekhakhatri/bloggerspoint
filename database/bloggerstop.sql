-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 07:13 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloggerstop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Laravel', '2019-03-07 07:45:33', '2019-03-07 07:45:33'),
(5, 'Word Press', '2019-03-07 07:45:45', '2019-03-07 07:45:45'),
(6, 'Codeigniter', '2019-03-07 07:45:55', '2019-03-07 07:45:55'),
(7, 'Angular JS', '2019-03-07 07:46:10', '2019-03-07 07:46:10'),
(8, 'Ruby on Rails', '2019-03-07 07:47:24', '2019-03-07 07:47:24'),
(9, 'Python', '2019-03-07 07:47:31', '2019-03-07 07:47:31'),
(10, 'Django', '2019-03-07 07:47:39', '2019-03-07 07:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2019_03_03_154523_create_posts_table', 1),
(25, '2019_03_03_154746_create_categories_table', 1),
(26, '2019_03_06_102437_create_tags_table', 1),
(27, '2019_03_06_103453_create_post_tag_table', 1),
(28, '2019_03_06_162645_create_profiles_table', 1),
(29, '2019_03_07_101208_create_settings_table', 2),
(30, '2019_03_08_142915_insert_user_id_column', 3),
(31, '2019_03_09_094811_insert_working_hour_support_street_address_column', 4),
(32, '2019_03_09_100855_insert_about_column', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(3, 'Latest Trend In Laravel', 'latest-trend-in-laravel', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin mauris elit, feugiat malesuada tempor ut, consectetur ut eros. Duis cursus velit at quam venenatis congue. Suspendisse mattis facilisis arcu, et lobortis risus aliquet ut. Morbi et volutpat nulla, sed scelerisque dolor. Quisque ante lacus, condimentum et lacinia eu, dignissim vitae felis. Morbi rhoncus justo et arcu maximus interdum. Quisque nec neque mauris. Donec tempus lectus nec fermentum porttitor.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent vitae dolor sit amet lorem rutrum varius semper in nisi. Nam accumsan nibh eget arcu viverra commodo. Nulla non nunc justo. Donec rutrum diam a iaculis pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer vel eros ante. Duis consequat viverra nisi a efficitur. Phasellus eu egestas tortor. Ut lorem tortor, varius id nisl nec, dictum auctor purus. Aliquam ullamcorper ante quis eros hendrerit, quis molestie nunc ornare. Cras elementum, augue vitae posuere pretium, magna ligula sagittis quam, sed lobortis dui sapien nec augue. Proin faucibus odio ex, at pulvinar tortor consectetur pellentesque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nullam dapibus semper risus eget aliquet. Curabitur commodo leo vitae lectus dapibus, ac tempus libero dictum. Curabitur a tempus nisi. Sed dui nunc, rutrum sed pharetra in, pharetra at tellus. Nulla commodo mi ac tortor imperdiet eleifend. Suspendisse tincidunt urna vitae enim tincidunt bibendum. Nunc ornare velit vel sapien consectetur malesuada. In placerat vestibulum mi, sit amet condimentum massa laoreet a. Proin ut ante faucibus, lacinia velit in, posuere elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vivamus vitae felis libero. Phasellus ligula turpis, ultrices eget porta sit amet, tempus vitae leo. Quisque quis convallis sem. Sed accumsan, arcu ac facilisis congue, lorem odio vulputate libero, in tempor quam dolor sit amet orci. Proin varius imperdiet felis, at vulputate diam dapibus a. Maecenas in nulla ut velit hendrerit posuere eget eget nibh. Mauris ipsum dolor, aliquam eget consequat ac, ornare a dui. Vestibulum ipsum arcu, venenatis et pellentesque vitae, varius ac turpis. Sed tellus lacus, tincidunt sit amet accumsan id, placerat ut magna. Praesent dignissim eros eget elit tristique, quis blandit neque interdum. Sed odio lectus, dignissim sed malesuada vel, tempor maximus ante. In mi velit, scelerisque ac vulputate non, blandit eget purus. Duis ornare semper ullamcorper. Mauris sem lorem, egestas sed vestibulum ut, vestibulum vitae lacus. Donec pulvinar interdum risus et aliquet. Fusce nec sem non enim maximus egestas.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nunc mi ligula, ultrices nec tortor suscipit, scelerisque efficitur lacus. Suspendisse ut semper ante, ut vulputate erat. Morbi quis lacus sit amet arcu rutrum laoreet eu porttitor est. Praesent eget varius eros, quis sodales urna. Morbi euismod dui et dolor venenatis tincidunt. Cras sit amet ornare est, eget molestie leo. Morbi ultrices id nisl at luctus. Sed facilisis scelerisque dolor, tincidunt condimentum est interdum vitae. Maecenas ipsum massa, facilisis id urna pellentesque, venenatis elementum nulla. Ut ac neque vel odio elementum sollicitudin. Maecenas vel nulla bibendum, lacinia sapien eu, iaculis ex. Nam accumsan nunc et leo viverra fringilla. Quisque eget est ultrices, consequat lorem non, dignissim tellus. Nunc massa tellus, fringilla mollis leo quis, luctus gravida diam. Etiam efficitur elementum libero in hendrerit. Sed ultrices lorem sed ante egestas, id sollicitudin turpis ultrices.</p>', 4, 'uploads/posts/1551965586E4.jpg', NULL, '2019-03-07 08:03:06', '2019-03-09 09:23:13', 1),
(4, 'Installing plugins into Wordpress', 'installing-plugins-into-wordpress', '<p>This is just to test if it\'s working....This is just to test if it\'s working....This is just to test if it\'s working....This is just to test if it\'s working....This is just to test if it\'s working....<br></p>', 5, 'uploads/posts/1551965991E1.jpg', NULL, '2019-03-07 08:09:51', '2019-03-07 08:09:51', 1),
(5, 'Why Codeigniter is lagging behind laravel', 'why-codeigniter-is-lagging-behind-laravel', '<p>This is just to test if it\'s working. This is just to test if it\'s working....vThis is just to test if it\'s working....<br></p>', 6, 'uploads/posts/1551966119E7.jpg', NULL, '2019-03-07 08:11:02', '2019-03-07 08:11:59', 2),
(6, 'test', 'test', '<p>This is just to test if it\'s working....This is just to test if it\'s working....This is just to test if it\'s working....<br></p>', 7, 'uploads/posts/1551966093E8.jpg', '2019-03-07 08:59:45', '2019-03-07 08:11:33', '2019-03-07 08:59:45', 1),
(7, 'my story', 'my-story', '<p>This is just to test if it\'s working....This is just to test if it\'s working....This is just to test if it\'s working....<br></p>', 9, 'uploads/posts/1551966156mountains-clouds-forest-9754.jpg', NULL, '2019-03-07 08:12:36', '2019-03-07 08:12:36', 1),
(8, 'new Django', 'new-django', '<p>This is just to test if it\'s working....This is just to test if it\'s working....This is just to test if it\'s working....<br></p>', 9, 'uploads/posts/1551966194NANb.jpg', NULL, '2019-03-07 08:13:14', '2019-03-07 08:13:14', 1),
(9, 'New Laravel', 'new-laravel', '<p>This is just to test...This is just to test...This is just to test...</p>', 4, 'uploads/posts/1551969425E5.jpg', NULL, '2019-03-07 09:07:05', '2019-03-07 09:07:05', 2),
(10, 'Just Laravel', 'just-laravel', '<p>This is just to test This is just to test v vThis is just to test</p>', 4, 'uploads/posts/1551969499E3.jpg', NULL, '2019-03-07 09:08:19', '2019-03-07 09:08:19', 2),
(11, 'testing Ci', 'testing-ci', '<p>just to test just to test v v just to test just to test just to test just to test just to test just to test just to test</p>', 6, 'uploads/posts/1551969775E1.jpg', NULL, '2019-03-07 09:12:55', '2019-03-07 09:12:55', 1),
(12, 'Codeigniter', 'codeigniter', '<p>Codeigniter Codeigniter v Codeigniter Codeigniter Codeigniter Codeigniter Codeigniter Codeigniter</p>', 4, 'uploads/posts/1551969845mountains-clouds-forest-9754.jpg', NULL, '2019-03-07 09:14:05', '2019-03-07 09:14:05', 2),
(13, 'How to learn Codeigniter Fastly', 'how-to-learn-codeigniter-fastly', '<p>just to test just to test just to test v just to test just to test just to test v just to test just to test&nbsp;</p>', 6, 'uploads/posts/1551973697Np1.jpg', NULL, '2019-03-07 10:18:17', '2019-03-07 10:18:17', 2),
(14, 'FRIENDS', 'friends', '<p>just to test.....</p>', 7, 'uploads/posts/1552059658NANb.jpg', '2019-03-09 04:08:30', '2019-03-08 10:10:58', '2019-03-09 04:08:30', 3);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 2, 5, NULL, NULL),
(4, 2, 6, NULL, NULL),
(5, 3, 8, NULL, NULL),
(6, 3, 10, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 9, NULL, NULL),
(9, 5, 10, NULL, NULL),
(10, 6, 10, NULL, NULL),
(11, 6, 11, NULL, NULL),
(12, 7, 8, NULL, NULL),
(13, 7, 9, NULL, NULL),
(14, 8, 9, NULL, NULL),
(15, 8, 11, NULL, NULL),
(16, 9, 8, NULL, NULL),
(17, 9, 9, NULL, NULL),
(18, 9, 10, NULL, NULL),
(19, 10, 8, NULL, NULL),
(20, 10, 9, NULL, NULL),
(21, 10, 10, NULL, NULL),
(22, 11, 9, NULL, NULL),
(23, 11, 10, NULL, NULL),
(24, 11, 12, NULL, NULL),
(25, 12, 8, NULL, NULL),
(26, 12, 9, NULL, NULL),
(27, 12, 10, NULL, NULL),
(28, 13, 9, NULL, NULL),
(29, 13, 10, NULL, NULL),
(30, 13, 12, NULL, NULL),
(31, 14, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/1.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Non veniam beatae veritatis quidem, illo accusantium saepe nobis vitae modi dolorem natus, mollitia ut nisi et omnis minus harum doloremque esse.', 'facebook.com', 'youtube.com', '2019-03-06 22:55:27', '2019-03-06 22:55:27'),
(2, 'uploads/avatars/1551940819E4.jpg', 2, NULL, 'http://facebook.com', 'http://youtube.com', '2019-03-06 22:56:20', '2019-03-07 01:10:19'),
(3, 'uploads/avatars/1551941312E8.jpg', 3, 'I am a  nerd who loves to code but don\'t know how to do it....', 'http://facebook.com', 'https://youtube.com', '2019-03-06 22:56:54', '2019-03-08 10:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `working_hour` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `support` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`, `working_hour`, `support`, `street_address`, `about`) VALUES
(1, 'Bloggerspoint', '8908908978', 'info@bloggerspoint.com', 'India, Bhopal', '2019-03-09 04:49:43', '2019-03-09 04:57:33', 'Mon-Fri 9am-6pm', 'online support', 'M.P Nagar', 'Bloggerspoint! a platforms where people from diffrent walk of life comes to share their views, prespectives and thoughts on their subject of interest by stealing few hours from their hectic scehdule .If you also want to rejoice and pendown your thoughts and want to share your knowledge with the world, then come and be a part of our family by subscribing our newsletter and by signing In');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(8, 'laravel', '2019-03-07 08:01:24', '2019-03-07 08:01:24'),
(9, 'php', '2019-03-07 08:01:37', '2019-03-07 08:01:37'),
(10, 'php framework', '2019-03-07 08:01:52', '2019-03-07 08:01:52'),
(11, 'wordpress 4.7', '2019-03-07 08:07:27', '2019-03-07 08:07:27'),
(12, 'codigniter', '2019-03-07 08:10:06', '2019-03-07 08:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rekha Khatri', 'rekhakhatri45@gmail.com', 1, '$2y$10$T0Hz1hJfxaF82hxdTcMO7uOrL8NXEBjMMrkhX/amoebzG.rfmgtRC', 'kvXsLcAWt8jfPSrLaSsuuvoUCeJ2kp2Dpyl6IJPC7Jv3puygW1k0ay315GRc', '2019-03-06 22:55:27', '2019-03-07 01:16:54'),
(2, 'Emily Myersl', 'emily56@gmail.com', 0, '$2y$10$03PpZBxFqvsm4i/XjM/tjeMRioxgVZ7hVW0ieA6h3MCBJQj.UOvqe', 'okWF5vFlxNSEumwWz07A5hqiqAAQhfRu0lUbyKZWKqPWG6rDczFq1YfHI0YY', '2019-03-06 22:56:19', '2019-03-07 01:10:19'),
(3, 'Ross Gellar', 'ross@896gmail.com', 1, '$2y$10$uRj.CKNN8Klt8JWu0LNZt.x5/I2eg8DusBNMwmo2E0C4eGDrOxN/S', NULL, '2019-03-06 22:56:54', '2019-03-08 10:09:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
