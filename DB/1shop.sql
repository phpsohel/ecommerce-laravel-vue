-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2023 at 06:12 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_26_054043_create_products_table', 1),
(6, '2023_02_26_054205_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `image_name`, `price`, `sale_price`, `created_at`, `updated_at`) VALUES
(1, 'Quas eum quis quam ea.', 'quas-eum-quis-quam-ea', 'Labore reprehenderit ut enim ut. Occaecati a ratione molestiae maiores dolores et.', 'https://via.placeholder.com/140x300.png/00bbaa?text=qui', '741', '691', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(2, 'Ut ut quibusdam at.', 'ut-ut-quibusdam-at', 'Vero sed voluptas natus assumenda cupiditate sed. Sunt odit a reprehenderit.', 'https://via.placeholder.com/140x300.png/009900?text=deserunt', '501', '451', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(3, 'Sint dolor hic et neque.', 'sint-dolor-hic-et-neque', 'Quam et delectus earum quaerat consequatur in. Sequi non aut rerum ad et a consectetur possimus.', 'https://via.placeholder.com/140x300.png/00bb00?text=rerum', '892', '842', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(4, 'Aut ad vitae rerum et.', 'aut-ad-vitae-rerum-et', 'Ut alias quod illum odio. Excepturi quod sed et aut laborum velit doloribus.', 'https://via.placeholder.com/140x300.png/00aa66?text=autem', '607', '557', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(5, 'Impedit alias alias et.', 'impedit-alias-alias-et', 'Voluptates et quo excepturi consequatur. Fuga distinctio voluptates quis voluptatem sint.', 'https://via.placeholder.com/140x300.png/00dd99?text=dolores', '444', '394', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(6, 'Qui aliquam et in.', 'qui-aliquam-et-in', 'Et dolores ut temporibus eum quasi voluptate possimus. Officiis unde doloremque est ex ut.', 'https://via.placeholder.com/140x300.png/0000cc?text=pariatur', '420', '370', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(7, 'Et aut vel vitae.', 'et-aut-vel-vitae', 'Eum sunt autem qui. Occaecati sint facere rerum. Sit ea sit natus nostrum quo.', 'https://via.placeholder.com/140x300.png/00bbcc?text=in', '316', '266', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(8, 'Aliquam aut et et illum.', 'aliquam-aut-et-et-illum', 'Dolor aut minus autem velit. Laboriosam aut quis illum. Blanditiis ipsa quos odit.', 'https://via.placeholder.com/140x300.png/0011aa?text=id', '285', '235', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(9, 'Nemo ut voluptatem et.', 'nemo-ut-voluptatem-et', 'Reiciendis deserunt est beatae rerum numquam officia eius. Sit sint sapiente quae dolor.', 'https://via.placeholder.com/140x300.png/000077?text=et', '705', '655', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(10, 'Rerum at quas repellat.', 'rerum-at-quas-repellat', 'Dolorem quia eos sint nulla quisquam. Nobis molestiae ipsum voluptatem ipsum blanditiis.', 'https://via.placeholder.com/140x300.png/007755?text=magni', '471', '421', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(11, 'Enim voluptas fuga enim.', 'enim-voluptas-fuga-enim', 'Praesentium labore culpa nemo autem. Vitae recusandae et consequuntur magnam asperiores doloremque.', 'https://via.placeholder.com/140x300.png/002255?text=amet', '363', '313', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(12, 'Quia sed quia ut in.', 'quia-sed-quia-ut-in', 'Fuga quisquam nisi quod aut et. Optio perspiciatis ut quibusdam voluptatem.', 'https://via.placeholder.com/140x300.png/00eeee?text=ullam', '432', '382', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(13, 'Atque optio nihil esse.', 'atque-optio-nihil-esse', 'Aspernatur repellat consequatur omnis quisquam. Eos maxime aperiam iure beatae.', 'https://via.placeholder.com/140x300.png/000077?text=officiis', '658', '608', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(14, 'Quam ipsam mollitia sit.', 'quam-ipsam-mollitia-sit', 'Harum commodi et aperiam. Sunt delectus ea dicta non dolores. Laboriosam cum itaque consequuntur.', 'https://via.placeholder.com/140x300.png/009900?text=vel', '527', '477', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(15, 'At debitis iste officia.', 'at-debitis-iste-officia', 'Incidunt hic deleniti quo adipisci beatae incidunt excepturi. Sit quis eligendi molestiae quos sed.', 'https://via.placeholder.com/140x300.png/008822?text=iusto', '396', '346', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(16, 'Sed eius quia ea.', 'sed-eius-quia-ea', 'Possimus alias eaque ut et. Veniam id eius error. A saepe qui cupiditate rerum fuga magni quia.', 'https://via.placeholder.com/140x300.png/00ff88?text=accusantium', '500', '450', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(17, 'Est vitae quia aut eius.', 'est-vitae-quia-aut-eius', 'Dolores maxime voluptas similique eveniet. Pariatur sit eum doloribus cumque magni non.', 'https://via.placeholder.com/140x300.png/00cc88?text=maiores', '173', '123', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(18, 'Nostrum qui sed qui aut.', 'nostrum-qui-sed-qui-aut', 'Minima eum vitae dolores. Quibusdam illo est voluptatem maiores.', 'https://via.placeholder.com/140x300.png/0033ff?text=et', '872', '822', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(19, 'Id qui et quos ea.', 'id-qui-et-quos-ea', 'Cupiditate quisquam corrupti alias. Ut commodi autem minus itaque. Et eos esse aut quae est est.', 'https://via.placeholder.com/140x300.png/00bb11?text=a', '135', '85', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(20, 'Aut nihil et eius atque.', 'aut-nihil-et-eius-atque', 'Voluptatum quasi molestiae est autem quae. Iure facere id dolores asperiores quis.', 'https://via.placeholder.com/140x300.png/002200?text=itaque', '480', '430', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(21, 'Ut sed laborum qui qui.', 'ut-sed-laborum-qui-qui', 'Quibusdam sint nemo cumque dolor dolor cupiditate. Ea velit commodi illo rerum neque.', 'https://via.placeholder.com/140x300.png/0055aa?text=sed', '286', '236', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(22, 'In nemo aut enim sed.', 'in-nemo-aut-enim-sed', 'Dolores omnis sit ipsam et. Sit animi et mollitia sed delectus quibusdam.', 'https://via.placeholder.com/140x300.png/0055ee?text=molestias', '759', '709', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(23, 'Et qui neque quod.', 'et-qui-neque-quod', 'Odio culpa architecto non aut aut. Officiis qui quis qui. Veritatis sed eligendi sit vitae magni.', 'https://via.placeholder.com/140x300.png/006677?text=ea', '597', '547', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(24, 'Vero et ea est quisquam.', 'vero-et-ea-est-quisquam', 'Quam reiciendis incidunt et voluptatibus ab blanditiis. Aliquid perferendis iure libero qui quidem.', 'https://via.placeholder.com/140x300.png/001111?text=et', '236', '186', '2023-02-26 00:11:29', '2023-02-26 00:11:29'),
(25, 'Non ea tempore nam quis.', 'non-ea-tempore-nam-quis', 'Non aut praesentium facere. Eos est ea eveniet.', 'https://via.placeholder.com/140x300.png/00ffff?text=id', '421', '371', '2023-02-26 00:11:29', '2023-02-26 00:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
