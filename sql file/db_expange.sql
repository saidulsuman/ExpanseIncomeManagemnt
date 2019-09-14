-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2019 at 09:44 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_expange`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money_format_thousands` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money_format_decimal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `symbol`, `money_format_thousands`, `money_format_decimal`, `created_at`, `updated_at`, `deleted_at`, `created_by_id`) VALUES
(1, 'USD', '$', ',', '.', '2019-06-11 16:03:22', '2019-06-11 16:03:22', NULL, 1),
(2, 'EUR', '€', '.', ',', '2019-06-11 16:03:23', '2019-06-11 16:03:23', NULL, 1),
(3, 'GBP', '£', '.', ',', '2019-06-11 16:03:23', '2019-06-11 16:03:23', NULL, 1),
(4, 'car', '.', '98798797', '787', '2019-09-11 09:08:28', '2019-09-11 09:08:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_date` date DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expense_category_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `entry_date`, `amount`, `currency_id`, `created_by_id`, `created_at`, `updated_at`, `expense_category_id`, `deleted_at`) VALUES
(2, '2019-09-14', '20', 1, 1, '2019-09-14 01:41:00', '2019-09-14 01:41:00', 2, NULL),
(3, '2019-09-14', '1234', 1, 1, '2019-09-14 01:41:22', '2019-09-14 01:41:22', 3, NULL),
(4, '2019-09-14', '55', 1, 1, '2019-09-14 01:41:47', '2019-09-14 01:41:47', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'HOUSE', 1, '2019-09-13 21:52:01', '2019-09-13 21:52:01', NULL),
(3, 'CAR', 1, '2019-09-13 21:52:54', '2019-09-13 21:52:54', NULL),
(4, 'MOBILE', 1, '2019-09-13 21:53:10', '2019-09-13 21:53:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_date` date DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `income_category_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `entry_date`, `amount`, `currency_id`, `created_by_id`, `created_at`, `updated_at`, `income_category_id`, `deleted_at`) VALUES
(1, '2019-07-18', '4', 1, 1, '2019-09-11 09:06:50', '2019-09-11 09:06:50', 1, NULL),
(2, '2019-09-14', '50', 1, 1, '2019-09-14 01:39:59', '2019-09-14 01:39:59', 2, NULL),
(3, '2019-09-14', '20', 1, 1, '2019-09-14 01:40:24', '2019-09-14 01:40:24', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

CREATE TABLE `income_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_categories`
--

INSERT INTO `income_categories` (`id`, `name`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'bussiness', 1, '2019-09-11 09:06:03', '2019-09-11 09:06:03', NULL),
(2, 'SALARY', 1, '2019-09-13 21:53:57', '2019-09-13 21:53:57', NULL),
(3, 'TUSION PAMENT', 1, '2019-09-13 21:54:24', '2019-09-13 21:54:24', NULL);

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_01_22_185759_create_1516640279_roles_table', 1),
(3, '2018_01_22_185803_create_1516640282_users_table', 1),
(4, '2018_01_22_185804_add_5a66181e1a42f_relationships_to_user_table', 1),
(5, '2018_01_22_190208_create_1516640528_expense_categories_table', 1),
(6, '2018_01_22_190211_create_1516640531_income_categories_table', 1),
(7, '2018_01_22_190214_create_1516640533_incomes_table', 1),
(8, '2018_01_22_190215_add_5a6619198cd8e_relationships_to_income_table', 1),
(9, '2018_01_22_190219_create_1516640538_expenses_table', 1),
(10, '2018_01_22_190220_add_5a66191e46d52_relationships_to_expense_table', 1),
(11, '2018_01_23_131459_create_1516706098_currencies_table', 1),
(12, '2018_01_23_131500_add_5a67193712736_relationships_to_currency_table', 1),
(13, '2018_01_23_134138_add_5a671f72a89b7_relationships_to_currency_table', 1),
(14, '2018_02_02_132258_update_1517570578_expense_categories_table', 1),
(15, '2018_02_02_132300_add_5a744a1407a82_relationships_to_expensecategory_table', 1),
(16, '2018_02_02_133044_update_1517571044_income_categories_table', 1),
(17, '2018_02_02_133045_add_5a744be5ecf28_relationships_to_incomecategory_table', 1),
(18, '2018_02_02_133109_update_1517571069_incomes_table', 1),
(19, '2018_02_02_133110_add_5a744bfea67db_relationships_to_income_table', 1),
(20, '2018_02_02_133127_update_1517571087_expenses_table', 1),
(21, '2018_02_02_133129_add_5a744c118f805_relationships_to_expense_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2019-06-11 16:03:22', '2019-06-11 16:03:22'),
(2, 'Simple user', '2019-06-11 16:03:22', '2019-06-11 16:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `currency_id`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$msflsjAZ7jGwsJBZ18Uthu.C8DWDzxdRGhuwQpFUgreL4MPPxU0zq', 'gVDnH2krSRaVS7hjQhcUqxBuGN7CNgSBLbnJadrWxlxUTCGmWzVbIwuMwcGh', 1, '2019-06-11 16:03:22', '2019-06-11 16:03:22', 1),
(2, 'suman', 'Saidulsuman42@gmail.com', '$2y$10$i4KPO580xhNT0jDs8WeviONhiciphGUNtRyXepYkshI8pvRcpo8fi', 'gX8zbSOz7BK8isYSPh3nWJs98GLWSWRF8s5lSi8Cs3Z8tLNgkz1GbkjJVZep', 1, '2019-09-11 09:02:38', '2019-09-11 09:02:38', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_deleted_at_index` (`deleted_at`),
  ADD KEY `110358_5a671934ca476` (`created_by_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `110171_5a66191c7e168` (`expense_category_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `110170_5a661917c9a92` (`income_category_id`);

--
-- Indexes for table `income_categories`
--
ALTER TABLE `income_categories`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `110166_5a66181c209fb` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `110358_5a671934ca476` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `110171_5a66191c7e168` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `110170_5a661917c9a92` FOREIGN KEY (`income_category_id`) REFERENCES `income_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `110166_5a66181c209fb` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
