-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 04:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_01_104338_create_permission_tables', 1),
(6, '2023_04_01_133548_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1active 0 inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_name`, `brand_name`, `description`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Samsung Galaxy s5- 2015', 'Mobile', 'Samsung', 'The Samsung Galaxy S5 is an Android-based smartphone unveiled, produced, released and marketed by Samsung Electronics as part of the Samsung Galaxy S series. Unveiled on 24 February 2014 at Mobile World Congress in Barcelona, Spain, it was released on 11 April 2014 in 150 countries as the immediate successor to the Galaxy S4. As with the S4, the S5 is an evolution of the prior year\'s model, placing a particular emphasis on an improved build with a textured rear cover and IP67 certification for dust and water resistance, a more refined user experience, new security features such as a fingerprint reader and private mode, expanded health-related features including a built-in heart rate monitor, a USB 3.0 port, and an updated camera featuring speedy auto-focus through phase-detection as well as video resolution upgraded to 2160p (4K) and framerate at 1080p doubled.', 700.00, '1680531166.jpg', 1, '2023-04-03 08:12:46', '2023-04-03 08:12:46'),
(14, 'Nokia Lumia 1320', 'Mobile', 'Nokia', 'The Nokia Lumia 1320 smartphone is a phablet smartphone in the Lumia series developed by Nokia that runs the Windows Phone 8 operating system. It was announced at the Nokia World event on October 22, 2013. It was released in Asia in the first quarter of 2014, including the India release in January 2014. It has 6-inch (150 mm) ClearBlack IPS LCD display, making it the biggest display for Windows phones along with the Nokia Lumia 1520.', 450.00, '1680531265.jpg', 1, '2023-04-03 08:14:25', '2023-04-03 08:14:25'),
(15, 'Samsung gallaxy note 4', 'Mobile', 'Samsung', 'The Samsung Galaxy Note 4 is an Android smartphone developed and produced by Samsung Electronics. It was unveiled during a Samsung press conference at IFA Berlin on 3 September 2014 and was released globally in October 2014 as successor to the Samsung Galaxy Note 3.[1] Improvements include expanded stylus-related functionality, an optically stabilized rear camera', 890.00, '1680531326.jpg', 1, '2023-04-03 08:15:26', '2023-04-03 08:15:26'),
(16, 'LG Leon 2015', 'Mobile', 'LG', 'LG Leon is powered by the Qualcomm Snapdragon 410 system-on-chip with a 1.2 GHz quad-core ARM Cortex-A53 64-bit CPU and an Adreno 306 GPU. The device comes with 1 GB RAM and 8 GB internal storage that is expandable up to 32 GB with microSD cards. It has a 1900 mAh removable Li-Ion battery.[', 543.00, '1680531376.jpg', 1, '2023-04-03 08:16:16', '2023-04-03 08:16:16'),
(17, 'Sony microsoft', 'Mobile', 'Sony', 'Sony Mobile Communications Inc. was a multinational telecommunications company founded on October 1, 2001, as a joint venture between Sony Corporation and Ericsson.', 534.00, '1680531448.jpg', 1, '2023-04-03 08:17:28', '2023-04-03 08:17:28'),
(18, 'iPhone 6', 'Mobile', 'Iphone', 'The iPhone 6 and iPhone 6 Plus[a] are smartphones that were designed and marketed by Apple Inc. They are the eighth generation of the iPhone, succeeding the iPhone 5, iPhone 5C and iPhone 5S, and were announced on September 9, 2014, and released on September 19, 2014.[', 567.00, '1680531520.jpg', 1, '2023-04-03 08:18:40', '2023-04-03 08:18:40'),
(19, 'Apple MacBook Pro', 'Laptop', 'Apple', '16-core Neural Engine\r\n14-inch Liquid Retina XDR display²\r\nThree Thunderbolt 4 ports, HDMI port, SDXC card slot, headphone jack, MagSafe 3 port\r\nMagic Keyboard with Touch ID\r\nForce Touch trackpad\r\n67W USB-C Power Adapter', 3426.00, '1680531617.jpg', 1, '2023-04-03 08:20:17', '2023-04-03 08:20:17'),
(20, 'Samsung Gaming Monitor', 'Samsung Gaming Monitor', 'Samsung Gaming Monitor', 'Samsung Gaming Monitor', 5560.00, '1680531688.jpg', 1, '2023-04-03 08:21:28', '2023-04-03 23:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-04-02 03:19:44', '2023-04-02 03:19:44'),
(2, 'Editor', 'web', '2023-04-02 03:19:44', '2023-04-02 03:19:44'),
(3, 'User', 'web', '2023-04-02 03:19:44', '2023-04-02 03:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2023-04-02 03:19:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-04-02 03:19:44', '2023-04-02 03:19:44'),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$J1T7Tp.Ch5S23OHXpSLmS.GaixgqDIpwFZItHgVCYHc6gLfjvZynO', NULL, '2023-04-02 06:07:04', '2023-04-02 12:22:11'),
(4, 'tonmoy', 'tonmoy@gmail.com', NULL, '$2y$10$n4y65mElLC/i9yr5caDn/uAIuffUFyNXroTnm7XyUnSMf9TLH2M5i', NULL, '2023-04-02 09:53:59', '2023-04-02 09:53:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
