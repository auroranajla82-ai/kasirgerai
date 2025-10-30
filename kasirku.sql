-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2025 at 06:05 AM
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
-- Database: `kasirku`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(5) UNSIGNED NOT NULL,
  `category_name` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 'Buku Tulis', '2025-07-08 19:04:18', NULL),
(3, 'Pensil', '2025-07-08 19:04:23', NULL),
(4, 'Buku Gambar', '2025-07-08 19:04:31', NULL),
(5, 'Correction Tape', '2025-07-08 19:05:44', '2025-07-08 19:05:44'),
(6, 'Pulpen', '2025-07-08 19:38:42', '2025-07-08 19:38:42'),
(7, 'Penghapus', '2025-07-13 22:58:33', NULL),
(8, 'Lem', '2025-07-14 02:18:32', NULL),
(9, 'Gunting', '2025-08-07 11:52:44', '2025-08-07 11:52:44'),
(14, 'test', '2025-08-14 15:33:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(5) UNSIGNED NOT NULL,
  `details` text NOT NULL,
  `amount` int(8) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(5) NOT NULL,
  `date` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `details`, `amount`, `month`, `year`, `date`, `created_at`, `updated_at`) VALUES
(16, 'Test', 2000, 'August', '2025', '07-08-2025', '2025-08-06 17:22:37', '2025-08-06 17:22:37'),
(17, 'Well', 1000, 'August', '2025', '07-08-2025', '2025-08-06 17:22:09', NULL),
(18, 'fgfgd', 10000, 'August', '2025', '07-08-2025', '2025-08-07 11:54:27', NULL);

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
(5, '2025_07_08_093523_create_employees_table', 2),
(6, '2025_07_08_102132_create_customers_table', 3),
(7, '2025_07_08_104032_create_advance_salaries_table', 4),
(8, '2025_07_08_115136_create_advance_salaries_table', 5),
(9, '2025_07_08_125542_create_pay_salaries_table', 6),
(10, '2025_07_08_142315_create_attendences_table', 7),
(11, '2025_07_09_015503_create_categories_table', 8),
(12, '2025_07_09_020850_create_products_table', 9),
(13, '2025_07_09_031231_create_expenses_table', 10),
(14, '2025_07_09_131715_create_orders_table', 11),
(15, '2025_07_09_132138_create_orderdetails_table', 11),
(16, '2025_07_10_163613_add_change_to_orders_table', 12),
(17, '2025_07_11_091806_create_permission_tables', 13),
(18, '2025_07_14_080508_add_transfer_proof_to_orders_table', 14),
(24, '2025_07_20_022001_add_bukti_transfer_to_orders_table', 15),
(25, '2025_07_20_024055_add_bukti_transfer_to_orders_table', 15),
(26, '2025_07_20_024144_add_bukti_transfer_to_orders_table', 15),
(27, '2025_07_20_024850_add_bukti_transfer_to_orders_table', 15),
(28, '2025_07_20_025449_add_bukti_transfer_to_orders_table', 15),
(29, '2025_07_20_025848_fix_bukti_transfer_column_in_orders_table', 15),
(31, '2025_07_20_025950_fix_bukti_transfer_column_in_orders_table', 16),
(32, '2025_07_23_180814_add_barcode_type_to_products_table', 17),
(33, '2025_07_24_035805_add_min_stock_to_products_table', 18),
(34, '2025_07_24_041258_add_min_stock_to_products_table', 19),
(35, '2025_07_24_174340_add_unit_description_to_products_table', 20),
(36, '2025_07_26_015115_create_payments_table', 21),
(37, '2025_07_26_025115_add_external_id_to_orders_table', 22),
(38, '2025_07_26_113542_add_status_and_external_id_to_orders_table', 23),
(39, '2025_07_26_160405_add_payment_columns_to_orders_table', 24),
(40, '2025_07_26_161904_add_price_to_orderdetails_table', 25),
(41, '2025_07_26_162019_add_subtotal_to_orderdetails_table', 26),
(42, '2025_07_26_162159_add_stock_and_product_name', 27),
(43, '2025_07_26_162936_add_payment_fields_to_orders_table', 28),
(44, '2025_07_26_170928_update_orderdetails_make_subtotal_nullable', 29),
(45, '2025_07_28_222205_drop_duplicate_payment_columns_from_orders_table', 30),
(46, '2025_07_28_222642_drop_duplicate_payment_columns_from_orders_table', 31),
(47, '2025_07_28_222731_drop_duplicate_payment_columns_from_orders_table', 32),
(48, '2025_07_28_224055_add_payment_status_to_orders_table', 33),
(49, '2025_07_28_224927_add_payment_status_to_orders_table', 34),
(50, '2025_07_30_080105_modify_min_stock_default_in_products_table', 35);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(5) UNSIGNED NOT NULL,
  `model_type` int(11) NOT NULL,
  `model_id` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(5) UNSIGNED NOT NULL,
  `model_type` varchar(25) NOT NULL,
  `model_id` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 18),
(1, 'App\\Models\\User', 21),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 24);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(5) UNSIGNED NOT NULL,
  `order_id` int(5) UNSIGNED NOT NULL,
  `product_id` int(5) UNSIGNED NOT NULL,
  `product_name` varchar(25) DEFAULT NULL,
  `quantity` int(8) DEFAULT NULL,
  `price` int(8) NOT NULL,
  `subtotal` decimal(12,2) DEFAULT NULL,
  `unitcost` int(5) DEFAULT NULL,
  `total` int(8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `product_name`, `quantity`, `price`, `subtotal`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(145, 141, 12, NULL, 1, 18000, 18000.00, 18000, 21780, NULL, NULL),
(146, 142, 10, 'Correction Tape Joyk', 1, 7000, 7000.00, NULL, NULL, '2025-08-04 14:32:28', '2025-08-04 14:32:28'),
(147, 142, 11, 'Gunting Besar', 1, 15000, 15000.00, NULL, NULL, '2025-08-04 14:32:28', '2025-08-04 14:32:28'),
(149, 144, 12, 'Kokoro Blue', 1, 18000, 18000.00, NULL, NULL, '2025-08-06 14:11:49', '2025-08-06 14:11:49'),
(150, 144, 11, 'Gunting Besar', 1, 15000, 15000.00, NULL, NULL, '2025-08-06 14:11:49', '2025-08-06 14:11:49'),
(151, 145, 12, NULL, 1, 18000, 18000.00, 18000, 21780, NULL, NULL),
(152, 146, 11, 'Gunting Besar', 1, 15000, 15000.00, NULL, NULL, '2025-08-07 11:51:58', '2025-08-07 11:51:58'),
(153, 147, 12, NULL, 1, 18000, 18000.00, 18000, 21780, NULL, NULL),
(154, 148, 12, 'Kokoro Blue', 1, 18000, 18000.00, NULL, NULL, '2025-08-09 04:26:56', '2025-08-09 04:26:56'),
(155, 149, 12, 'Kokoro Blue', 1, 18000, 18000.00, NULL, NULL, '2025-08-09 04:28:03', '2025-08-09 04:28:03'),
(156, 150, 10, NULL, 1, 7000, 7000.00, 7000, 8470, NULL, NULL),
(157, 151, 10, NULL, 1, 7000, 7000.00, 7000, 8470, NULL, NULL),
(158, 152, 17, 'Buku Tulis Sidu Isi 58', 1, 38000, 38000.00, NULL, NULL, '2025-08-11 16:40:06', '2025-08-11 16:40:06'),
(159, 153, 12, NULL, 1, 18000, 18000.00, 18000, 21780, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(5) UNSIGNED NOT NULL,
  `customer_id` int(5) DEFAULT NULL,
  `order_date` varchar(15) NOT NULL,
  `order_status` varchar(10) NOT NULL,
  `total_products` int(8) NOT NULL,
  `sub_total` varchar(8) DEFAULT NULL,
  `order_no` varchar(11) DEFAULT NULL,
  `total` int(8) DEFAULT NULL,
  `pay` int(8) DEFAULT NULL,
  `change` int(8) DEFAULT NULL,
  `due` int(8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `payment_method` varchar(10) DEFAULT NULL,
  `payment_status` varchar(10) DEFAULT NULL,
  `external_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `order_status`, `total_products`, `sub_total`, `order_no`, `total`, `pay`, `change`, `due`, `created_at`, `updated_at`, `paid_at`, `payment_method`, `payment_status`, `external_id`) VALUES
(141, NULL, '04-August-2025', 'complete', 1, '18,000.0', 'EPOS2624529', 18000, 20000, 2000, 0, '2025-08-04 14:32:04', '2025-08-04 14:32:07', NULL, 'cash', 'paid', NULL),
(142, NULL, '04-August-2025', 'complete', 2, NULL, 'INV-1754317', 22000, NULL, NULL, NULL, '2025-08-04 14:32:28', '2025-08-04 14:32:28', NULL, 'QRIS', NULL, 'INV-1754317946'),
(143, NULL, '06-August-2025', 'complete', 1, '13,000.0', 'EPOS1865779', 13000, 20000, 7000, 0, '2025-08-06 14:11:21', '2025-08-06 14:11:26', NULL, 'cash', 'paid', NULL),
(144, NULL, '06-August-2025', 'complete', 2, NULL, 'INV-1754489', 33000, NULL, NULL, NULL, '2025-08-06 14:11:49', '2025-08-06 14:11:49', NULL, 'QRIS', NULL, 'INV-1754489507'),
(145, NULL, '06-August-2025', 'complete', 1, '18,000.0', 'EPOS3845357', 18000, 25000, 7000, 0, '2025-08-06 14:12:33', '2025-08-08 12:51:05', NULL, 'cash', 'paid', NULL),
(146, NULL, '07-August-2025', 'complete', 1, NULL, 'INV-1754567', 15000, NULL, NULL, NULL, '2025-08-07 11:51:58', '2025-08-07 11:51:58', NULL, 'QRIS', NULL, 'INV-1754567515'),
(147, NULL, '08-August-2025', 'complete', 1, '18,000.0', 'EPOS3710424', 18000, 50000, 32000, 0, '2025-08-08 12:51:01', '2025-08-08 12:51:19', NULL, 'cash', 'paid', NULL),
(148, NULL, '09-August-2025', 'complete', 1, NULL, 'INV-1754713', 18000, NULL, NULL, NULL, '2025-08-09 04:26:56', '2025-08-09 04:26:56', NULL, 'QRIS', NULL, 'INV-1754713614'),
(149, NULL, '09-August-2025', 'complete', 1, NULL, 'INV-1754713', 18000, NULL, NULL, NULL, '2025-08-09 04:28:03', '2025-08-09 04:28:03', NULL, 'QRIS', NULL, 'INV-1754713682'),
(150, NULL, '09-August-2025', 'complete', 1, '7,000.00', 'EPOS7590483', 7000, 10000, 3000, 0, '2025-08-09 04:41:49', '2025-08-14 11:35:42', NULL, 'cash', 'paid', NULL),
(151, NULL, '11-August-2025', 'complete', 1, '7,000.00', 'EPOS1922292', 7000, 10000, 3000, 0, '2025-08-11 16:35:41', '2025-08-11 16:35:54', NULL, 'cash', 'paid', NULL),
(152, NULL, '11-August-2025', 'complete', 1, NULL, 'INV-1754930', 38000, NULL, NULL, NULL, '2025-08-11 16:40:06', '2025-08-11 16:40:06', NULL, 'QRIS', NULL, 'INV-1754930404'),
(153, NULL, '14-August-2025', 'complete', 1, '18,000.0', 'EPOS8507825', 18000, 19000, 1000, 0, '2025-08-14 11:35:37', '2025-08-14 11:36:09', NULL, 'cash', 'paid', NULL);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(5) UNSIGNED NOT NULL,
  `external_id` varchar(20) NOT NULL,
  `checkout_link` varchar(50) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `external_id`, `checkout_link`, `status`, `created_at`, `updated_at`) VALUES
(1, '3c7701f1-b8ee-4a95-a', 'https://checkout-staging.xendit.co/web/6883daf8fe4', 'pending', '2025-07-25 19:28:57', '2025-07-25 19:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `guard_name` varchar(10) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'pos.menu', 'web', 'pos', '2025-07-12 03:07:01', '2025-07-12 05:23:29'),
(22, 'category.menu', 'web', 'category', '2025-07-12 22:07:52', '2025-07-12 22:07:52'),
(23, 'product.menu', 'web', 'product', '2025-07-12 22:07:59', '2025-07-12 22:07:59'),
(24, 'expense.menu', 'web', 'expense', '2025-07-12 22:08:06', '2025-07-12 22:08:06'),
(25, 'orders.menu', 'web', 'orders', '2025-07-12 22:08:16', '2025-07-12 22:08:16'),
(27, 'roles.menu', 'web', 'roles', '2025-07-12 22:08:34', '2025-07-12 22:08:34'),
(28, 'menu.profit', 'web', 'profit', '2025-07-20 23:22:23', '2025-07-20 23:22:23'),
(29, 'admin.menu', 'web', 'admin', '2025-07-22 23:10:51', '2025-07-22 23:10:51');

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
  `id` int(5) UNSIGNED NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `category_id` int(5) UNSIGNED DEFAULT NULL,
  `product_code` varchar(20) NOT NULL,
  `product_garage` varchar(5) DEFAULT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_store` varchar(8) DEFAULT NULL,
  `buying_date` datetime DEFAULT NULL,
  `buying_price` varchar(8) DEFAULT NULL,
  `selling_price` varchar(8) DEFAULT NULL,
  `unit_description` varchar(8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `barcode_type` varchar(8) NOT NULL DEFAULT 'CODE128',
  `min_stock` int(5) NOT NULL DEFAULT 0,
  `stock` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `product_code`, `product_garage`, `product_image`, `product_store`, `buying_date`, `buying_price`, `selling_price`, `unit_description`, `created_at`, `updated_at`, `barcode_type`, `min_stock`, `stock`) VALUES
(1, 'Buku Tulis Sidu Isi ', 2, '8991389300145', 'B', 'upload/product/1837134403825733.webp', '5', '2025-07-09 00:00:00', '32000', '36000', 'Pack', '2025-07-25 15:36:09', '2025-07-29 07:45:31', 'CODE128', 5, 0),
(2, 'Kokoro Pink', 6, '8993058306014', 'A5', 'upload/product/1837135297412946.jpg', '0', '2025-07-09 00:00:00', '12000', '15000', 'Pcs', '2025-07-25 15:36:25', '2025-07-30 00:53:00', 'CODE128', 5, -2),
(4, 'Buku Tulis Halus', 2, '8995757085900', 'C', 'upload/product/1837455785253616.jpg', '0', '2025-07-12 00:00:00', '4500', '6000', 'Pack', '2025-07-25 15:36:30', '2025-07-31 08:06:28', 'CODE128', 5, -1),
(5, 'Lem Stick Joyko', 8, '8993988090342', 'B', 'upload/product/1837613470922561.jpg', '0', '2025-07-14 00:00:00', '8000', '12000', 'Pcs', '2025-07-24 10:57:29', '2025-07-25 15:34:39', 'CODE128', 5, 0),
(7, 'Penghapus Faber Castel', 7, '9556089006866', 'A', 'upload/product/1838461568266634.jpg', '1', '2025-08-11 00:00:00', '6000', '8000', 'Pcs', '2025-08-11 16:39:30', '2025-08-11 16:39:30', 'CODE128', 5, -4),
(9, 'Penghapus Joyko', 7, 'PC57', 'c2', 'upload/product/1839031705202933.webp', '5', '2025-07-30 00:00:00', '1200', '3000', 'Pcs', '2025-07-30 01:01:55', '2025-08-02 00:22:21', 'CODE128', 0, 0),
(10, 'Correction Tape Joyko', 5, 'PC58', 'C', 'upload/product/1839083272449143.jpg', '1', '2025-08-11 00:00:00', '5000', '7000', 'Pcs', '2025-08-11 16:39:36', '2025-08-14 11:35:42', 'CODE128', 0, 0),
(11, 'Gunting Besar', 9, '8994292112874', 'B', 'upload/product/1839301587906997.webp', '2', '2025-08-02 00:00:00', '12000', '15000', 'Pcs', '2025-08-02 00:32:16', '2025-08-07 11:51:58', 'CODE128', 0, 0),
(12, 'Kokoro Blue', 6, 'PC59', 'B', 'upload/product/1839339901650393.jpg', '5', '2025-08-02 00:00:00', '15000', '18000', 'Pcs', '2025-08-02 10:40:25', '2025-08-14 11:36:09', 'CODE128', 0, 0),
(17, 'Buku Tulis Sidu Isi 58', 2, 'PC60', 'C', 'upload/product/1840177828469278.webp', '19', '2025-08-11 00:00:00', '32000', '38000', 'Pack', '2025-08-11 16:38:52', '2025-08-11 16:40:06', 'CODE128', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `guard_name` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2025-07-12 08:27:52', '2025-07-12 08:27:52'),
(4, 'Kasir', 'web', '2025-07-12 23:18:20', '2025-07-12 23:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(5) UNSIGNED NOT NULL,
  `role_id` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 4),
(27, 1),
(28, 1),
(29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(15) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(70) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `photo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Aur', 'mb@gmail.com', '081386201763', '202507140552f45846af-5b4a-4128-96f4-6d58388f9109.jpg', NULL, '$2y$10$UG7aO/gVlfF846oWb2H3d.S/ZvimoZwm2sWAKyS2D633zQ8.iuRQm', NULL, '2025-07-07 22:55:31', '2025-08-15 02:43:11'),
(9, 'Awr Ungger', 'hola@gmail.com', '2147483647', '202507131302135b289e-3a34-4c5d-9c86-22cb73d15b0d.jpg', NULL, '$2y$10$9gI.7ZsR/aaYVXPKR3aDu.ADYsKHBkVm5B5HyzgkJyKMMQlUbUUSS', NULL, '2025-07-13 06:01:20', '2025-08-04 04:51:59'),
(24, 'Amethyst', 'ame12@gmail.com', '2147483647', '202507240353f45846af-5b4a-4128-96f4-6d58388f9109.jpg', NULL, '$2y$10$4PEzQw09UBNr8YMXBttRCOf0J81CJyjXCQDuByB1A9tEJM428m.Pi', NULL, '2025-07-23 20:52:14', '2025-07-23 20:53:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderdetails_order` (`order_id`),
  ADD KEY `fk_orderdetails_product` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_external_id_unique` (`external_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_category` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `fk_model_has_permissions_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `fk_model_has_roles_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `fk_orderdetails_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orderdetails_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
