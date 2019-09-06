-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 06, 2019 at 02:07 PM
-- Server version: 5.7.26-0ubuntu0.18.10.1
-- PHP Version: 7.2.19-0ubuntu0.18.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Qui est ullam quibusdam sit qui vero.', 'Aut asperiores non deserunt sunt eligendi rerum quam. Nihil magnam necessitatibus eius molestias nemo.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(3, 'Qui magni omnis recusandae nisi ex eveniet.', 'Nobis sint dolores minima facere ullam labore perferendis. Minima dolorum ut ratione voluptatum consequatur. Modi molestiae porro quas consequatur explicabo est temporibus. Ea commodi minima quidem.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(4, 'Enim voluptas voluptatem vitae enim ut laboriosam.', 'Cumque sit tenetur molestiae ipsa sequi. Est enim dicta quas. Ea et vel optio dicta numquam voluptas accusamus fugiat.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(5, 'Voluptatem dolores dicta praesentium quam nam ut.', 'Sunt repellat sunt deleniti cupiditate inventore. Eius culpa expedita sed molestiae quas dolore. Molestiae expedita veniam dolorem accusamus rerum quas non possimus. Odit placeat sit corporis nesciunt autem placeat officia. Unde quibusdam sunt rerum repellendus non.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(6, 'Consequuntur qui expedita asperiores quisquam dolor sed repellat numquam.', 'Et possimus consequatur tempore distinctio similique. Recusandae ea vitae dolorem id. Possimus voluptate officia nemo non tempore fugiat quam.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(7, 'Distinctio consequatur fugit sit voluptatibus excepturi suscipit omnis sit.', 'At quae rerum ab corporis. Sunt harum aut qui id quasi. Nostrum soluta labore magnam consequatur. Sed nihil incidunt dolore.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(8, 'Laudantium et provident ducimus laudantium.', 'Saepe sequi in quia consequatur voluptas. Expedita ut quis aut quasi non aut similique. Ut doloribus quia iure et dolor corporis et consequatur. Quia est earum nam vero voluptatem. Numquam rem sit ut sunt sed soluta et.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(9, 'Quaerat atque blanditiis consequatur autem sint id.', 'Rerum adipisci molestias numquam quod enim dolor. Nisi in porro non quod. Et repellat reiciendis temporibus cupiditate eos dicta.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(10, 'At est rerum illo error ex dignissimos.', 'Nisi eveniet similique sit id fuga qui quo. Placeat dolor qui eum. Voluptatibus nihil provident tenetur eveniet ipsam iusto.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(11, 'Veniam saepe nesciunt animi.', 'Ut id illo nemo debitis. Labore mollitia sed tenetur temporibus non est esse quo. Quia natus nobis harum dolore illum sit dolores.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(12, 'Soluta voluptas omnis et et.', 'Vitae eum sunt dignissimos omnis odit cum. Et sed et sequi quo nostrum. Voluptatem non molestiae fugiat ea omnis expedita culpa.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(13, 'Rerum sed ut quaerat voluptates.', 'Nobis aliquid voluptate et dolor accusamus. Autem eius corporis ut itaque libero cum. Commodi ipsam aut est tempora et tempora veritatis. Qui animi adipisci ut quam magni rerum.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(14, 'Consectetur possimus alias similique rem accusantium voluptatum exercitationem.', 'Voluptatibus ratione assumenda reprehenderit non minus perspiciatis dicta. Non illum architecto temporibus molestiae in. Quis totam consequatur eius ut non et mollitia. Eligendi quo fugit ea ut fugit esse.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(15, 'Non ut quia enim nostrum dicta.', 'Nulla quae suscipit quo accusamus quisquam et. Odit sint dolores autem et vitae. Maxime veritatis ut et iure.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(16, 'Quia explicabo id dolorem ut vel quos.', 'Aspernatur nesciunt nihil placeat eius rem enim eius. Vitae id voluptatem esse aspernatur corrupti enim quae. Nesciunt pariatur aut labore impedit sunt. Rerum est amet dicta accusamus qui id aliquam.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(17, 'Consequatur voluptatem ullam perferendis sed et id magni.', 'Sed delectus quis vel et tempore labore. Odit aliquid illo minus ut. Veniam ipsam sit cumque perspiciatis omnis accusantium.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(18, 'Fugiat sit sunt aut libero ipsum aspernatur.', 'Et vel aliquam aspernatur distinctio aliquam quis libero. Ipsum et provident rem sed eligendi.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(19, 'Modi et iste dolores dolor.', 'Asperiores quod consequuntur aspernatur natus aut suscipit unde error. Velit corporis molestiae iure hic rerum dolorum. Saepe aut voluptas fugiat ab perspiciatis.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(20, 'Ea ut quasi et quasi autem et.', 'Blanditiis ex unde sequi ut facere numquam et. Libero dolor architecto neque est accusantium aperiam. Tempore quam culpa impedit assumenda similique deleniti.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(21, 'Doloribus ipsam nam est modi.', 'Consequuntur et quo repellendus. Dolorem voluptatibus aut voluptatem unde accusamus. Suscipit veniam et iure natus doloremque explicabo sint. Soluta expedita ipsum ad vitae qui.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(22, 'Vel fugit quos suscipit temporibus sit magni.', 'Aut dolor laboriosam tenetur. Eum eos unde modi est totam dolorem.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(23, 'Architecto magnam ab molestiae excepturi eius ut.', 'Saepe cupiditate aut beatae illum. Voluptatem et aliquid sint dolores ullam. Voluptas dolorum sunt similique excepturi iusto ratione.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(24, 'Voluptas sed occaecati dolor nihil quia in quae.', 'Quibusdam eius earum corporis et enim et eius. Quas aut voluptatem voluptas laudantium. Tenetur at est earum sunt placeat perspiciatis. Consectetur ut velit officiis repellendus.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(25, 'Culpa ratione et voluptatum similique dolorem quis deserunt.', 'Laborum voluptatem aut rerum ipsam accusantium. Libero unde ipsa illo aliquid qui. Laudantium quam est est aliquam ut totam. Aspernatur vel consequatur dignissimos quia autem placeat. Architecto sint ut reiciendis sapiente sed.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(26, 'Maxime voluptatum in cum.', 'Nihil corporis odit illum perferendis similique explicabo atque. Repudiandae eos quia deleniti veniam beatae sit. Totam atque illo non voluptates placeat earum ea. Quam consectetur corrupti nobis consequatur voluptas eaque.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(27, 'Tempora velit accusantium possimus dolor.', 'Voluptas qui sunt est. Expedita vitae nostrum ut sed. Quo nihil aspernatur voluptas at nam qui quia.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(28, 'Suscipit facere possimus expedita pariatur hic sit.', 'Laboriosam voluptas nisi non dolores veritatis veritatis et ea. Numquam et nobis mollitia animi. Ut dignissimos quo distinctio ratione aliquam tenetur.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(29, 'Velit officia totam non non cupiditate non.', 'Eveniet consequuntur alias similique aut sit rerum laudantium. Nihil excepturi placeat at est ab. Qui quae et fugit quam ipsa voluptatem sunt. Velit pariatur expedita rerum voluptate consequatur vitae.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(30, 'Et architecto perferendis vel earum.', 'Tenetur optio ut consequatur. Totam rerum mollitia illo unde. Doloribus recusandae placeat voluptatem corrupti aliquam. Sint odit velit suscipit dignissimos quaerat autem.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(31, 'Ut omnis nihil delectus voluptates.', 'Impedit magni ipsam laboriosam qui modi libero ex. Consectetur magni qui aut voluptatem eveniet. Excepturi itaque exercitationem aut et minus ut vel culpa. Magnam nihil numquam facere sit accusamus repellat.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(32, 'Asperiores quis cupiditate nesciunt.', 'Minus est reprehenderit occaecati enim iure cum. Ut repellendus quia eveniet ratione. Provident nobis tempore repudiandae numquam eos amet.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(33, 'Ex qui a omnis doloribus et exercitationem.', 'Veniam doloremque ex non. Accusamus est fugit reprehenderit quidem voluptatum cupiditate quia. Libero harum laborum molestias laboriosam et optio.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(34, 'Dolor inventore aut quasi cumque.', 'In dolores accusantium eveniet voluptatibus consequuntur. Commodi veniam velit hic ipsum dolorem eius. Et voluptatum consequatur recusandae. Distinctio itaque assumenda ut sit facilis qui et.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(35, 'Doloribus aut deserunt occaecati consequatur cum ea.', 'Ducimus ut non commodi nulla. Rem accusamus doloremque magnam aut autem deleniti qui sint. Et et voluptas non aperiam. Quo doloribus aliquam enim saepe quo fuga.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(36, 'Id totam aut facere deleniti velit ipsum corporis.', 'Perferendis non consequuntur maiores non velit repudiandae at. Sint reprehenderit repellendus minus mollitia nisi aut modi et.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(37, 'Harum dicta odio est quidem temporibus.', 'Repudiandae est qui ut culpa. Omnis voluptate sint aut velit. Ipsam aperiam quia fugit ut occaecati nesciunt. Vitae quam soluta id et rerum. Est molestiae quasi praesentium.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(38, 'Quas rerum voluptates numquam qui architecto.', 'Fugit harum quisquam animi mollitia maiores. Adipisci eveniet dolor ut quibusdam hic nihil perferendis.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(39, 'Dolores deleniti perferendis qui ut animi perspiciatis et.', 'Est qui nulla aut. Amet dolorum ullam ducimus ipsa est. Voluptate quaerat ullam repudiandae dignissimos corporis iusto.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(40, 'Ab qui velit ut eum.', 'Sunt vero eum et quasi sapiente rem. Dolor magni culpa sapiente neque facilis animi. Cum voluptatibus odio sunt ratione sit molestiae.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(41, 'Praesentium alias optio quo impedit qui quasi eligendi.', 'Nemo autem officia commodi temporibus dolorem officiis consequuntur temporibus. Consequatur aliquam vel error at. Voluptas est qui qui aspernatur voluptatem. Iure tempore ut eum earum labore quod.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(42, 'Sunt eaque provident nihil dolorum minima.', 'Nemo velit eligendi ut. Harum veritatis aut quia non quaerat. Non minus harum commodi consectetur qui odit.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(43, 'Nostrum maxime unde blanditiis.', 'Qui aut reprehenderit amet voluptatem. Voluptates iure nihil autem doloremque autem omnis tempore. Amet omnis rem et iste aspernatur ut. Quam eaque excepturi consequatur.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(44, 'Maiores mollitia explicabo ut adipisci excepturi.', 'Neque velit vel consectetur omnis voluptas est beatae. Corporis quo qui non voluptatem aut itaque consequatur. Ea at aut cupiditate debitis voluptatem.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(45, 'Temporibus laborum nulla repellat quia accusantium.', 'Non consectetur suscipit qui quod incidunt. Voluptatibus at vero voluptate autem. Qui numquam amet et voluptatum rerum.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(46, 'Aperiam dolor numquam deleniti voluptatem facere.', 'Nam sit et in. Quae voluptate itaque ex non architecto quidem. Corporis quae repellendus quaerat aspernatur corporis.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(47, 'Neque exercitationem architecto tempore voluptatem.', 'Voluptas veritatis aut odio ut. Rerum laudantium rerum nihil totam est perferendis delectus voluptates. Eius voluptatem totam temporibus. Eveniet at repellendus quas deserunt ut facilis.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(48, 'Libero cupiditate omnis eos voluptas quaerat.', 'Atque dolor ipsa temporibus vitae et. Nulla veniam ratione nulla cumque. Minima quod optio eius magnam.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(49, 'Est voluptatem libero praesentium rerum iusto quos.', 'Rerum fugiat minus sed neque nihil dolor iste. Corporis corrupti voluptas perferendis voluptas odit voluptas. Ut sunt pariatur culpa culpa earum aliquam omnis. Magni eligendi fugiat error enim voluptas perferendis saepe.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(50, 'Vel quae distinctio est.', 'Perferendis et ratione cumque veniam vel et. Enim aperiam hic sint reiciendis maxime sed. Molestiae tenetur numquam sequi nisi iste eos. Aut dolorum sed eos deleniti autem quasi facere iure.', 'images/1.jpeg', '2019-05-01 12:28:49', '2019-05-01 12:28:49'),
(51, 'This is my first post!', 'This is the text of my post!', 'images/X7MAiokTZYFOwgfg3qR951HWoZQByKApbRgZV0j4.jpeg', '2019-05-01 12:35:33', '2019-05-01 12:35:33'),
(52, 'Welcome to my site!', 'This is the welcome message!', 'images/XJXVnpTDQeoD2yhUAgK1hClksljptkHf2iyqjVRr.jpeg', '2019-05-01 12:36:38', '2019-05-01 12:36:38'),
(53, 'Edited post', 'I should be redirected to main page in 3, 2, 1... BlessRNG', 'images/1.jpeg', '2019-05-01 12:38:52', '2019-05-02 00:44:28'),
(55, 'New post', 'Text of new post', 'images/BSQa8FCgwC3YkKR7aeum0d0gKm9veeR6MDzRyTQi.jpeg', '2019-05-02 00:44:53', '2019-05-02 00:44:53'),
(56, 'asdzxc', 'asdf', 'images/BIOg9rM949VWeNRLdvTtHZ1RGLTaV6fyCBaDs5XJ.jpeg', '2019-05-02 00:48:22', '2019-05-02 00:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_04_27_124911_create_token_users_table', 1),
(4, '2019_04_27_185842_create_blog_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `token_users`
--

CREATE TABLE `token_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_users`
--

INSERT INTO `token_users` (`id`, `login`, `password`, `current_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'hWgSzH0uLr6mAh2LYjmyDGhYr5eNwObP6czCJbyY3gWnwkiQzynjVPpEV6zt', NULL, '2019-05-04 16:22:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token_users`
--
ALTER TABLE `token_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `token_users`
--
ALTER TABLE `token_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
