-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 02, 2024 at 02:17 AM
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
-- Database: `afrifarm`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `active` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `address`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'FLAT AA PLOT 292 JIKWOYI TIMBER SHED Und St. Jikwoyi FCT East\r\nAngwan Gade', 1, '2024-03-13 10:58:39', '2024-03-13 10:58:39'),
(2, 2, 'James Street', 1, '2024-03-13 11:02:59', '2024-03-13 11:02:59'),
(3, 27, 'FLAT AA PLOT 292 JIKWOYI TIMBER SHED Und St. Jikwoyi FCT East', 1, '2024-03-15 18:09:57', '2024-03-15 18:09:57'),
(4, 28, 'Lake valencia crescent of limpopo street maitama Abuja', 1, '2024-03-15 20:22:52', '2024-03-15 20:22:52'),
(5, 29, 'Lake valencia crescent of limpopo street maitama Abuja', 1, '2024-04-11 15:51:34', '2024-04-11 15:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `qty`, `price`, `status`, `order_id`, `seller_id`, `created_at`, `updated_at`) VALUES
(26, 24, 27, 5, 5000.00, 'Delivered', 32, 24, '2024-03-16 13:20:58', '2024-03-16 13:21:55'),
(27, 24, 27, 1, 1000.00, 'Completed', 33, 24, '2024-03-16 13:28:51', '2024-03-16 13:28:57'),
(28, 35, 27, 2, 2600.00, 'Delivered', 34, 2, '2024-04-11 13:20:38', '2024-04-11 13:22:02'),
(29, 29, 27, 1, 200.00, 'Completed', 35, 1, '2024-04-11 14:52:29', '2024-04-11 14:53:25'),
(30, 27, 29, 2, 9000.00, 'Delivered', 36, 24, '2024-04-11 15:50:53', '2024-04-11 15:53:44'),
(33, 27, 29, 1, 4500.00, 'Pending', NULL, 24, '2024-06-23 12:09:50', '2024-06-23 12:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Root and Tubers', 'Dolores quibusdam sint distinctio sed rerum ipsa.', '2024-03-13 10:47:06', '2024-03-16 12:48:32'),
(2, 'Fruits', 'Culpa aperiam vitae cupiditate enim architecto numquam ut.', '2024-03-13 10:47:08', '2024-03-13 10:47:08'),
(3, 'Grains', 'Illo et provident ut sit facilis consequuntur.', '2024-03-13 10:47:09', '2024-03-13 10:47:09'),
(4, 'Vegetables', 'vegetables', '2024-03-13 10:47:10', '2024-04-11 15:59:44'),
(5, 'totam', 'Eum officiis quisquam et omnis quo et qui.', '2024-03-13 10:47:11', '2024-03-13 10:47:11'),
(6, 'quisquam', 'Tempora maiores voluptates ut officia laboriosam.', '2024-03-13 10:47:15', '2024-03-13 10:47:15'),
(7, 'excepturi', 'Voluptatibus et quam nihil voluptas et doloribus.', '2024-03-13 10:47:16', '2024-03-13 10:47:16'),
(8, 'animi', 'Autem consequatur natus omnis dolorem aut numquam consectetur.', '2024-03-13 10:47:17', '2024-03-13 10:47:17'),
(9, 'quibusdam', 'Numquam enim commodi provident sed.', '2024-03-13 10:47:18', '2024-03-13 10:47:18'),
(10, 'natus', 'Veritatis placeat id dolorem ullam nostrum reiciendis doloremque ut.', '2024-03-13 10:47:18', '2024-03-13 10:47:18'),
(11, 'consequuntur', 'Beatae facere dolorem qui facere.', '2024-03-13 10:47:19', '2024-03-13 10:47:19'),
(12, 'rerum', 'Ipsa odit temporibus neque ratione voluptatum fugit.', '2024-03-13 10:47:19', '2024-03-13 10:47:19'),
(13, 'veritatis', 'Dolores enim velit perferendis molestiae aut minima.', '2024-03-13 10:47:20', '2024-03-13 10:47:20'),
(14, 'vel', 'Adipisci ducimus quam labore omnis sapiente molestiae quidem.', '2024-03-13 10:47:20', '2024-03-13 10:47:20'),
(15, 'dolorem', 'Voluptas illo ad sunt voluptas quia accusantium nisi.', '2024-03-13 10:47:21', '2024-03-13 10:47:21'),
(16, 'Rice', 'Clean', '2024-03-16 10:56:45', '2024-03-16 10:56:45'),
(31, 'Fruits', 'All kinds of fruits', '2024-03-16 13:19:02', '2024-03-16 13:19:41'),
(32, 'Cereal', 'cereal', '2024-04-11 16:00:02', '2024-04-11 16:00:02');

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
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_28_000001_create_products_table', 1),
(7, '2023_12_28_000002_create_sellers_table', 1),
(8, '2023_12_28_000003_create_orderlists_table', 1),
(9, '2023_12_28_000004_create_carts_table', 1),
(10, '2023_12_28_000005_create_orders_table', 1),
(11, '2023_12_28_000007_create_reviews_table', 1),
(12, '2023_12_28_00000_create_categories_table', 1),
(13, '2023_12_28_009001_add_foreigns_to_carts_table', 1),
(14, '2023_12_28_009002_add_foreigns_to_orders_table', 1),
(15, '2023_12_28_009003_add_foreigns_to_orderlists_table', 1),
(16, '2023_12_28_009004_add_foreigns_to_products_table', 1),
(17, '2024_01_02_072631_address', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderlists`
--

CREATE TABLE `orderlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `order_number` bigint(20) NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `order_number`, `order_date`, `total_amount`, `created_at`, `updated_at`) VALUES
(23, 1, 'Completed', 9765231795, NULL, NULL, '2024-03-14 12:14:01', '2024-03-14 12:14:01'),
(24, 1, 'Completed', 6937604076, NULL, NULL, '2024-03-14 12:27:18', '2024-03-14 12:27:18'),
(25, 1, 'Completed', 5897692459, NULL, NULL, '2024-03-14 15:07:16', '2024-03-14 15:07:16'),
(26, 1, 'Completed', 7727232610, NULL, NULL, '2024-03-14 16:45:54', '2024-03-14 16:45:54'),
(27, 1, 'Completed', 7376019476, NULL, NULL, '2024-03-14 16:48:04', '2024-03-14 16:48:04'),
(28, 1, 'Completed', 3409894206, NULL, NULL, '2024-03-15 12:36:35', '2024-03-15 12:36:35'),
(29, 1, 'Completed', 7923395405, NULL, NULL, '2024-03-15 12:38:07', '2024-03-15 12:38:07'),
(30, 1, 'Completed', 1607170038, NULL, NULL, '2024-03-15 16:46:18', '2024-03-15 16:46:18'),
(31, 28, 'Completed', 3372543422, NULL, NULL, '2024-03-15 20:27:48', '2024-03-15 20:27:48'),
(32, 27, 'Completed', 8857350286, NULL, NULL, '2024-03-16 13:21:18', '2024-03-16 13:21:18'),
(33, 27, 'Completed', 4583052313, NULL, NULL, '2024-03-16 13:28:57', '2024-03-16 13:28:57'),
(34, 27, 'Completed', 6753860046, NULL, NULL, '2024-04-11 13:21:17', '2024-04-11 13:21:17'),
(35, 27, 'Completed', 3328790053, NULL, NULL, '2024-04-11 14:53:25', '2024-04-11 14:53:25'),
(36, 29, 'Completed', 6663526401, NULL, NULL, '2024-04-11 15:51:56', '2024-04-11 15:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category_id`, `price`, `qty`, `country`, `state`, `city`, `seller_id`, `img`, `created_at`, `updated_at`) VALUES
(24, 'Orange', '(1000 Per KG) An orange, also called sweet orange to distinguish it from the bitter orange Citrus × aurantium, is the fruit of a tree in the family Rutaceae.', 31, 1000.00, 2000, 'Nigeria', NULL, NULL, 24, '/uploads/1710598642.jpeg', '2024-03-16 13:17:22', '2024-04-11 10:44:06'),
(25, 'Yam', '(1000 per Tuber)Yam is the common name for some plant species in the genus Dioscorea that form edible tubers. Yams are perennial herbaceous vines native to Africa, Asia, and the Americas and cultivated for the consumption of their starchy tubers in many temperate and tropical regions.', 1, 1000.00, 2000, 'Nigeria', NULL, NULL, 24, '/uploads/1712835318.jpg', '2024-04-11 10:35:18', '2024-04-11 10:35:18'),
(26, 'Cassava', '(500 per Kg) Manihot esculenta, commonly called cassava, manioc, yuca, or tapioca is a woody shrub of the spurge family, Euphorbiaceae, native to South America, from Brazil, Paraguay and parts of the Andes.', 1, 500.00, 1400, 'Nigeria', NULL, NULL, 24, '/uploads/1712835519.jpg', '2024-04-11 10:38:39', '2024-04-11 10:38:39'),
(27, 'Irish Potatoes', '(5000 per KG)Irish potatoes (Solanum tuberosum) are a type of potato that is native to Ireland. They are usually small, round, and have a really thin skin. The flesh of an Irish potato can be white, yellow or red in colour.', 1, 4500.00, 5000, 'Nigeria', NULL, NULL, 24, '/uploads/1712835741.jpg', '2024-04-11 10:42:21', '2024-04-11 10:42:21'),
(28, 'Pineapple', 'The pineapple is a tropical plant with an edible fruit; it is the most economically significant plant in the family Bromeliaceae. The pineapple is indigenous to South America, where it has been cultivated for many centuries.', 1, 300.00, 200, 'Ghana', NULL, NULL, 1, '/uploads/1712836674.jpg', '2024-04-11 10:57:54', '2024-04-11 10:57:54'),
(29, 'Apples', '(200 per Apple)An apple is a round, edible fruit produced by an apple tree Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus.', 1, 200.00, 3000, 'Ghana', NULL, NULL, 1, '/uploads/1712836772.jpg', '2024-04-11 10:59:32', '2024-04-11 10:59:32'),
(30, 'Banana', '(1000 per Bunch) A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa.', 2, 1000.00, 3000, 'Ghana', NULL, NULL, 1, '/uploads/1712837776.jpg', '2024-04-11 11:16:16', '2024-04-11 11:16:16'),
(31, 'Mango', '(600 per KG) Punto Fa, S.L., trading as Mango, is a Spanish fast-fashion company, founded in Barcelona by brothers Isak Andic and Nahman Andic. It designs, manufactures and markets women\'s and men\'s clothing and accessories', 1, 600.00, 4000, 'Ghana', NULL, NULL, 1, '/uploads/1712838018.jpg', '2024-04-11 11:20:18', '2024-04-11 11:20:18'),
(32, 'Maize', 'Maize, also known as corn in North American and Australian English, is a tall stout grass that produces cereal grain. It was domesticated by indigenous peoples in southern Mexico about 9,000 years ago from wild teosinte. Native Americans planted it alongside beans and squashes in the Three Sisters polyculture.', 3, 1000.00, 3000, 'Mali', NULL, NULL, 2, '/uploads/1712841231.jpg', '2024-04-11 12:13:51', '2024-04-11 12:13:51'),
(33, 'Red Millet', 'Red Millet / Proso Millet. Millet is generally superior to wheat, corn, and rice in terms of protein content. ... As such, it is a perfect alternative', 3, 1000.00, 3, 'Mali', NULL, NULL, 2, '/uploads/1712841620.jpg', '2024-04-11 12:20:20', '2024-04-11 12:20:20'),
(34, 'Rice', '(1500 per Mudu) Sona masoori is a variety of Indian medium-grain white rice. It is usually a sweet-smelling rice, low in starch. Sona masoori rice provides protein', 3, 1500.00, 2000, 'Mali', NULL, NULL, 2, '/uploads/1712842473.jpeg', '2024-04-11 12:34:33', '2024-04-11 12:34:33'),
(35, 'Beans', 'Beans are the seeds from flowering plants in the Fabaceae family and are classified as legumes. Several beans grow in pods or capsules that develop from flowers. Other legumes include peas, peanuts, and lentils.', 3, 1300.00, 3000, 'Mali', NULL, NULL, 2, '/uploads/1712842690.jpg', '2024-04-11 12:38:10', '2024-04-11 12:38:10'),
(37, 'Cashew Nut', 'Cashew is the common name of a tropical evergreen tree Anacardium occidentale, in the family Anacardiaceae. It is native to South America and is the source of the cashew nut and the cashew apple, an accessory fruit.', 2, 1000.00, 3000, 'Mali', NULL, NULL, 2, '/uploads/1712846114.jpeg', '2024-04-11 13:35:14', '2024-04-11 13:35:14'),
(38, 'Carrot', 'The carrot is a root vegetable, typically orange in color, though heirloom variants including purple, black, red, white, and yellow cultivars exist, all of which are domesticated forms of the wild carrot, Daucus carota, native to Europe and Southwestern Asia', 2, 1000.00, 3000, 'Senegal', NULL, NULL, 3, '/uploads/1712847669.jpg', '2024-04-11 14:01:09', '2024-04-11 14:01:09'),
(39, 'Coco Nut', 'The coconut tree is a member of the palm tree family and the only living species of the genus Cocos. The term \"coconut\" can refer to the whole coconut palm, the seed, or the fruit, which botanically is a drupe, not a nut. They are ubiquitous in coastal tropical regions and are a cultural icon of the tropics.', 2, 400.00, 3000, 'Senegal', NULL, NULL, 3, '/uploads/1712848956.jpeg', '2024-04-11 14:22:36', '2024-04-11 14:22:36'),
(40, 'Rice', 'Per boiled Rice', 3, 1700.00, 900, 'Gambia', NULL, NULL, 25, '/uploads/1712854676.jpeg', '2024-04-11 15:57:56', '2024-04-11 15:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review_text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `shop_address` varchar(255) DEFAULT NULL,
  `shop_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `allow_inter` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `fullname`, `email`, `phone`, `address`, `country`, `state`, `city`, `password`, `remember_token`, `shop_name`, `shop_address`, `shop_number`, `status`, `allow_inter`, `created_at`, `updated_at`) VALUES
(1, 'Clarissa Prosacco', 'seller1@gmail.com', '276-430-4879', '3262 McClure Points\nBrekkemouth, IL 67057-2758', 'Ghana', NULL, NULL, '$2y$12$eTtaKDRCfbrbl/HMDPC.Mu1k27msjebuYgFAMmYFSPgYv.d8Ptnpy', 'iiIc0CIj4t', 'Rango Tubers', '68735 Doris Forest Apt. 473\nRosalynstad, DE 76067', '568', 'Verified', 0, '2024-03-13 10:47:06', '2024-03-13 10:47:06'),
(2, 'Haruna Mairiga', 'seller2@gmail.com', '1-989-984-3544', '9443 London Springs Apt. 476\nSouth Zachary, AL 57971-4320', 'Mali', NULL, NULL, '$2y$12$eTtaKDRCfbrbl/HMDPC.Mu1k27msjebuYgFAMmYFSPgYv.d8Ptnpy', '51J9psN64B', 'Haruna Super Shop', '70892 Torp Plaza\nWest Summertown, KY 91803', '592', 'Verified', 1, '2024-03-13 10:47:08', '2024-03-16 11:37:59'),
(3, 'Alvina Donnelly', 'seller3@gmail.com', '+1.808.750.5045', '2452 Bryce Terrace Suite 823\nLake Cheyanneview, MO 09965', 'Senegal', NULL, NULL, '$2y$12$eTtaKDRCfbrbl/HMDPC.Mu1k27msjebuYgFAMmYFSPgYv.d8Ptnpy', 'N9WUmoD85s', 'Accusantium hic iure ut.', '760 Langworth Rest Suite 985\nJavonstad, TX 07768-8577', '611', 'Verified', 1, '2024-03-13 10:47:09', '2024-03-13 10:47:09'),
(24, 'James Ibrahim', 'seller@gmail.com', '+2348101013370', NULL, 'Chad', NULL, NULL, '$2y$12$eTtaKDRCfbrbl/HMDPC.Mu1k27msjebuYgFAMmYFSPgYv.d8Ptnpy', NULL, 'Amir Shop', 'keffi,nasarawa state\r\nuke,karu LGA nigeria', NULL, 'Verified', NULL, '2024-03-16 08:57:37', '2024-03-16 11:39:09'),
(25, 'James Miller', 'miller@gmail.com', '+2348101013370', NULL, 'Gambia', NULL, NULL, '$2y$12$ive4tkufVt21dJkca4oFkuS5K045MGoko5r4tSGIcVbJ/fJ9Jh8f2', NULL, 'Miller Shop Service', 'keffi,nasarawa state\r\nuke,karu LGA nigeria', NULL, 'Verified', NULL, '2024-04-11 15:54:58', '2024-04-11 15:56:41');

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
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `country`, `state`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Anjali Parker', 'admin@admin.com', '2024-03-13 10:47:06', '$2y$12$wf.MA/Eyvx/KcUXTdQFQ8OLynwtx//y0EkzvI3MX7s8B1A1TsfU2e', 'EPvIUpZEInUKrJ8Nzsfc62ZZldX87NA503rfSPnxwCdlHGl3DWK5h5mUMzHr', 'Saint Kitts and Nevis', 'Alexanehaven', 'Port Benton', '2024-03-13 10:47:06', '2024-03-13 10:47:06'),
(2, 'Prof. Alvis Farrell DVM', 'kertzmann.angelina@gmail.com', '2024-03-13 10:47:06', '$2y$12$UF9sX8H0I9S3t2GA548R.OiyOMvOICvTgctZTX2CqKp1441QD6FVi', 'LUS3pLQLD8', 'Ireland', 'East Gilda', 'West Hortenseton', '2024-03-13 10:47:07', '2024-03-13 10:47:07'),
(3, 'Zander Berge PhD', 'lizeth.strosin@schuppe.com', '2024-03-13 10:47:07', '$2y$12$93cdbiyy4vaf.hseyA3mledMQ6F.oSXASSfoMvsH7siYl2g5HgMaO', 'Fzmskslq81', 'Trinidad and Tobago', 'Eribertoville', 'Krajcikland', '2024-03-13 10:47:07', '2024-03-13 10:47:07'),
(4, 'Prof. Abner Koch', 'xpfeffer@yahoo.com', '2024-03-13 10:47:08', '$2y$12$.6u8JPn49/b.6TvQCqKe2ekAoCGq1sXLN/d5xQmHYxV4of1J0UYwG', 'lfXkoUBMQD', 'Belarus', 'North Milton', 'West Alvischester', '2024-03-13 10:47:08', '2024-03-13 10:47:08'),
(5, 'Rosemary Oberbrunner', 'hintz.maddison@gmail.com', '2024-03-13 10:47:08', '$2y$12$gM/lq4cFfffQIpSJI7HH.e0ugQVhI/PQH2zQ1bBpMj779QTYZq3Jy', 'eGDu5wSUKZ', 'Mongolia', 'West Corene', 'Arnaldoport', '2024-03-13 10:47:08', '2024-03-13 10:47:08'),
(6, 'Mr. Conner Pfeffer IV', 'sabina07@zemlak.com', '2024-03-13 10:47:09', '$2y$12$ztno1WbhTHvr0ek7ZgEV..D7V9PcZmm69MQd4wGjKMT.ZFMQ.zBM.', 'h463P8k1k9', 'Montenegro', 'East Vadaton', 'New Brennonville', '2024-03-13 10:47:09', '2024-03-13 10:47:09'),
(7, 'Ezequiel Fahey', 'jacobs.cristobal@rath.com', '2024-03-13 10:47:09', '$2y$12$FCfYB0guZ6TvELsC1YIOCOPv4QB5cK9t84HYWQSmu2xvMG8a4Mhfu', 'YQ4AInAID4', 'Saint Lucia', 'Grahamstad', 'Kadefurt', '2024-03-13 10:47:10', '2024-03-13 10:47:10'),
(8, 'Laury Fay', 'carleton72@yahoo.com', '2024-03-13 10:47:10', '$2y$12$7OxuKgv49k67RIPWyH/EUO7exkCTXLTePCtJsnWyZ3nhc2g3hnqjK', 'pixmTcRKbe', 'Puerto Rico', 'Fredaside', 'Wildermanmouth', '2024-03-13 10:47:11', '2024-03-13 10:47:11'),
(9, 'Mrs. Marguerite Williamson MD', 'kemmer.elian@hotmail.com', '2024-03-13 10:47:11', '$2y$12$3LTFZ4oHj65d/1dmN.IcpOOp4rwksyQzkRbeW/kkcEZCVO3PzQhpq', 'QzFh6MkiF3', 'Congo', 'North Lornachester', 'Joanastad', '2024-03-13 10:47:11', '2024-03-13 10:47:11'),
(10, 'Devyn Schroeder', 'broderick.mcclure@gmail.com', '2024-03-13 10:47:11', '$2y$12$5ZsgDHYlOH/MEYT1CLnw5eOnq8XTeQMw5ekxvkCcPqyMTmDoQz08S', 'fMl40EMo6l', 'Canada', 'East Porterchester', 'Port Enricoside', '2024-03-13 10:47:12', '2024-03-13 10:47:12'),
(11, 'Bobby Nicolas', 'schimmel.vito@hotmail.com', '2024-03-13 10:47:12', '$2y$12$u1egiD7wk2aGGM46xD7lSeskBDsY.rtzSXwpJSeV.3YIEQMcMOIsu', '0SNf1xpwxN', 'Cuba', 'Grahamburgh', 'Lake Jeanie', '2024-03-13 10:47:12', '2024-03-13 10:47:12'),
(12, 'Alene Will PhD', 'griffin49@yahoo.com', '2024-03-13 10:47:12', '$2y$12$d/kNLxV7q7AjX7a1YWncOuOW8ahj94N46s2wRLQKMKy0QYDrWzTxa', 'DtW3ryIPwU', 'Tanzania', 'Bobbieport', 'South Sid', '2024-03-13 10:47:13', '2024-03-13 10:47:13'),
(13, 'Edgar Keebler', 'jmorissette@bahringer.com', '2024-03-13 10:47:13', '$2y$12$/vZFf7WR4eRjCMAYSwvSx.BvzbnzOTswhUkPrahdJ4KQIgr4TY3tG', '67f6esq5eU', 'Yemen', 'Handland', 'Effertzmouth', '2024-03-13 10:47:13', '2024-03-13 10:47:13'),
(14, 'Prof. Silas Franecki', 'ydavis@gmail.com', '2024-03-13 10:47:13', '$2y$12$9mjXlD.Xw6BkYG7UxwAXweMIs5EwpZkxK7eGqUxLfc/ST5CTGCJ9O', 'pVgLycnXwx', 'Singapore', 'New Sven', 'South Heather', '2024-03-13 10:47:14', '2024-03-13 10:47:14'),
(15, 'Chandler Klein', 'osbaldo.collins@hotmail.com', '2024-03-13 10:47:14', '$2y$12$FfEs7lrfNzGRywO.d91Oku.2.jH9JqhnttdRVZFETPiW1tv8SbfJy', 'lHxvAOS8Aj', 'Ireland', 'South Sonya', 'East Kyleigh', '2024-03-13 10:47:14', '2024-03-13 10:47:14'),
(16, 'Darion Goyette I', 'allen40@gmail.com', '2024-03-13 10:47:14', '$2y$12$JG.pH.mlVf48QkAJYm6NceggqcQ8mLWcrt7FcqQnSkdhQrwkZGA/q', 'V066JrutYn', 'Montenegro', 'West Matildemouth', 'North Cyrilchester', '2024-03-13 10:47:14', '2024-03-13 10:47:14'),
(17, 'Jermain Howell', 'hkling@hotmail.com', '2024-03-13 10:47:14', '$2y$12$Q3g9Sw/VNlWjrCcr.ZH9CuIi66EMEQrZBBiC5dTaiV9tconsOYVOO', 'l4HRH2oyHw', 'Belgium', 'Maximilianstad', 'Wilkinsonport', '2024-03-13 10:47:15', '2024-03-13 10:47:15'),
(18, 'Blaise Beatty', 'cklein@morar.info', '2024-03-13 10:47:15', '$2y$12$PhegCouCOG6ByrHCGAoZPuDu8f3vTePvld9kppq98cGbaWPyXzhwi', 'T8n6IVYsio', 'Cocos (Keeling) Islands', 'Feestside', 'Blockstad', '2024-03-13 10:47:16', '2024-03-13 10:47:16'),
(19, 'Gregorio Russel', 'hackett.rosemary@marquardt.com', '2024-03-13 10:47:16', '$2y$12$YOS5tB/2c9uQjBgckccyC.eVmjTGHxDKAN2KaNMUL.kbZyi5o9aHi', 'B0QleR3PqS', 'Mali', 'Port Zola', 'Moentown', '2024-03-13 10:47:16', '2024-03-13 10:47:16'),
(20, 'Denis Hand', 'hill.bennett@murray.com', '2024-03-13 10:47:17', '$2y$12$dJ/u1OZlmnwmS.Y7qli3ou/Qdw9zDUZVJIYiAoxriqK9uMUN9N8te', 'DcJHZ4bLcL', 'Ethiopia', 'North Olen', 'Alainaville', '2024-03-13 10:47:17', '2024-03-13 10:47:17'),
(21, 'Barbara Reynolds', 'crona.elyse@yahoo.com', '2024-03-13 10:47:18', '$2y$12$GpeJEjOJxkbWQBBost30KOkcbDmYkvvwgfY/8fnkfspjc3la3ueJa', 'XYlOiFoCO5', 'Brunei Darussalam', 'Deckowchester', 'New Adele', '2024-03-13 10:47:18', '2024-03-13 10:47:18'),
(22, 'Miss Georgette Ortiz DDS', 'liana.feil@larson.biz', '2024-03-13 10:47:23', '$2y$12$T3BXhgMC1RQIlSNuXAd.2.annkhf1bJ1cRaKOY4LGrGX2ADYuer4.', 'WLjihNw6J5', 'Russian Federation', 'Schroederton', 'Lake Cristopherton', '2024-03-13 10:47:25', '2024-03-13 10:47:25'),
(23, 'Esperanza Rath Jr.', 'zwitting@hotmail.com', '2024-03-13 10:47:23', '$2y$12$UX5M1qVoswtwjuIhSceyCuwbCsW8BZzqFk9rNOb1TgPUKv00SFhSG', 'FB24bKyz7z', 'Central African Republic', 'South Alexa', 'Port Amayaborough', '2024-03-13 10:47:25', '2024-03-13 10:47:25'),
(24, 'Joanny Grady', 'umcdermott@shanahan.com', '2024-03-13 10:47:23', '$2y$12$3Nu3ErLSHbaGZKLLcLPX0.egEWOYYFB.Pm9TKhBoow4cHGmZgfN86', 'dJAxote5DY', 'Nauru', 'Krystinaville', 'New Alessandroland', '2024-03-13 10:47:25', '2024-03-13 10:47:25'),
(25, 'Esteban Hodkiewicz III', 'ardella.haley@maggio.com', '2024-03-13 10:47:24', '$2y$12$mnCh/swsrOMF4vxYs5JXdOtly/OrlWX6mXYnJ1X0mNPtKLWnBx8ea', 'ESwLHVJIZI', 'Chad', 'New Olliestad', 'Olsonfort', '2024-03-13 10:47:25', '2024-03-13 10:47:25'),
(26, 'Ms. Baby Lynch MD', 'xcremin@hotmail.com', '2024-03-13 10:47:24', '$2y$12$puc95QP5WKkl6orXJKYYmuMG83g/LGJDhCKyVi5Bbh8oGlBiLBeQi', 'glCZEgRiHB', 'Suriname', 'Port Chelseymouth', 'North Krystinamouth', '2024-03-13 10:47:25', '2024-03-13 10:47:25'),
(27, 'Aaron Dikko', 'dikaaron33@gmail.com', NULL, '$2y$12$CRnI.QVjfIM5.C7QTsWWruv4WaP0LFExCXTFabxjfldh6r0kD4CEC', 'FnyIC64nFDD2RC5VdU1LB5kfuoqm7x61Ejt1iPe2WHKndPqD8ueTc0fD4t3C', 'Nigeria', NULL, NULL, '2024-03-15 18:08:41', '2024-03-16 09:06:57'),
(28, 'Aaron Dikko', 'iaarondikko@gmail.com', NULL, '$2y$12$m39gqIuPANo8EG78FAKKeeE7wtf.oYclZ5x4Wc/urFCPXO7o2JBye', NULL, 'Cote d\'ivoire', NULL, NULL, '2024-03-15 18:18:40', '2024-03-15 18:18:40'),
(29, 'Desire John', 'desire@gmail.com', NULL, '$2y$12$RYSKi9I2S7EmSyfTV0amB.CWnjJ4b20rOktKbOt0mKlvCuINfIVDW', NULL, 'Ghana', NULL, NULL, '2024-04-11 15:50:29', '2024-04-11 15:50:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`),
  ADD KEY `carts_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `orderlists`
--
ALTER TABLE `orderlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderlists_product_id_foreign` (`product_id`),
  ADD KEY `orderlists_order_id_foreign` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD KEY `products_seller_id_foreign` (`seller_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
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
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orderlists`
--
ALTER TABLE `orderlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderlists`
--
ALTER TABLE `orderlists`
  ADD CONSTRAINT `orderlists_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
