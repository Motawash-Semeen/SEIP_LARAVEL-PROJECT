-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 05:05 PM
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
(20, 'Samsung Gaming Monitor', 'Monitor', 'Samsung', 'Samsung LF22T350FHWXXL 22 Inch Monitor Specifications -\r\n[Seal Broken Goods are not Returnable]\r\na. 54.6 CM / 21.5 Boarder Less FHD Display\r\nb. AMD Free Sync\r\nc. 75Hz Refresh Rate\r\nd. Game Mode\r\ne. Eye Saver Mode\r\nf. Flicker Free\r\ng. 3 Years Warranty', 5460.00, '1680531688.jpg', 1, '2023-04-03 08:21:28', '2023-04-03 08:21:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
