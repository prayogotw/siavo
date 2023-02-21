-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2022 at 06:03 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siavo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `desc`, `image`, `user_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Peminatan Studi', '<p>Peminatan Studi adalah&nbsp;<strong>pengkhususan bidang studi yang diambil dalam sebuah jurusan atau program studi, yang juga dikenal dengan istilah konsentrasi studi</strong>. Saat mengambil peminatan, mahasiswa akan mempelajari mata kuliah secara lebih spesifik pada suatu bidang keilmuan.</p>', '1667724395peminatan.jpg', 1, 0, '2022-11-06 01:46:35', '2022-11-06 01:46:35'),
(2, 'Praktik Kerja Lapangan', '<p>Praktik Kerja Lapangan adalah bentuk penyelenggaraan kegiatan pendidikan dan pelatihan dengan bekerja secara langsung, secara sistematik dan terarah dengan supervisi yang kompeten.</p>', '1667724435host-an-intern-banner-740x331.jpg', 1, 0, '2022-11-06 01:47:15', '2022-11-06 01:47:15'),
(3, 'Praktik Keterampilan Mengajar', '<p>Praktik Keterampilan Mengajar (PKM) merupakan&nbsp;<strong>salah satu mata kuliah wajib bagi mahasiswa kependidikan&nbsp;pada Lembaga Pendidikan Tenaga Kependidikan</strong>&nbsp;(LPTK). Mata kuliah ini berbentuk mata kuliah praktik yang berbobot 2 SKS dan dilakukan sebagai prasyarat untuk mengikuti PPL- PPG.</p>', '1667724466microteachingpkm.jpg', 1, 0, '2022-11-06 01:47:46', '2022-11-06 01:47:46'),
(4, 'Seminar Proposal', '<p>Seminar Proposal atau sering dikenal sebagai sebutan Sempro adalah bagian dari tahapan lanjutan untuk mempresentasikan rencana skripsi yang akan mahasiswa kerjakan. Pada seminar ini, penguji dan dosen akan diundang untuk mendengarkan mahasiswa dalam menjelaskan penelitian yang akan dikerjakan. Dan dosen tersebut akan memberikan masukan sehingga bisa membantu mahasiswa dalam perihal metode penelitiannya. Tujuan dari Sempro, sebagaimana dilansir laman ldeo.columbia.edu, adalah mengidentifikasi topik penelitian, menemukan mentor penelitian, merumuskan hipotesis, memahami latar belakang penelitian, mengembangkan atau menyesuaikan metode yang sesuai, dan meringkas keadaan proyek sebagai proposal. Setelah proposal penelitian ditinjau, mahasiswa harus mendiskusikan saran yang dibuat penguji dengan supervisor atau dosen pembimbing.</p>', '1667725585seminarprop.jpg', 1, 0, '2022-11-06 02:03:18', '2022-11-06 02:06:25'),
(5, 'Skripsi', '<p>Skripsi adalah istilah yang digunakan di Indonesia untuk mengilustrasikan suatu karya tulis ilmiah berupa paparan tulisan hasil penelitian sarjana S1 yang membahas suatu permasalahan/fenomena dalam bidang ilmu tertentu dengan menggunakan kaidah-kaidah yang berlaku.</p>', '1667725687skripsi.jpg', 1, 0, '2022-11-06 02:08:08', '2022-11-06 02:08:08'),
(6, 'Wisuda', '<p>Wisuda adalah upacara peneguhan atau pelantikan bagi seseorang yang telah menempuh pendidikan. Di kalangan akademik, wisuda merupakan penanda kelulusan mahasiswa yang telah menempuh masa belajar pada suatu universitas.</p>', '1667725818wisuda.jpg', 1, 0, '2022-11-06 02:08:15', '2022-11-06 02:10:18'),
(8, 'Mahasiswa Baru', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1671516609120821054624-611511181a772lucifer-season-6-trailer-tom-ellis-lauren-german-resized-.jpg', 1, 0, '2022-12-19 23:10:09', '2022-12-19 23:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `notify` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `title`, `desc`, `forum_id`, `is_deleted`, `image`, `views`, `notify`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'safdasf', 'asfdadasd', 2, 0, NULL, 1, 1, 1, '2022-11-28 21:02:08', '2022-11-28 21:02:33'),
(2, 'Seputar Maba UNJ 2023', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3, 0, NULL, 6, 1, 2, '2022-12-19 23:12:07', '2022-12-24 22:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `discussion_replies`
--

CREATE TABLE `discussion_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `discussion_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussion_replies`
--

INSERT INTO `discussion_replies` (`id`, `desc`, `discussion_id`, `is_deleted`, `likes`, `dislikes`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'asdfghjkl', 1, 0, 0, 0, 2, '2022-12-19 21:45:59', '2022-12-19 21:45:59'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2, 0, 1, 0, 1, '2022-12-19 23:13:26', '2022-12-19 23:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topics` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `title`, `desc`, `topics`, `user_id`, `category_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Forum Peminatan/Konsentrasi Studi', '<p>Berikut ini adalah Forum Peminatan atau Konsentrasi Studi di Universitas Negeri Jakarta. Forum ini membahas&nbsp;Peminatan di berbagai Program Studi yang ada di Universitas Negeri Jakarta</p>', 0, 1, 1, 0, '2022-11-06 01:49:53', '2022-11-06 05:49:23'),
(2, 'Praktik Kerja Lapangan', '<p>Berikut ini adalah Forum Praktik Kerja Lapangan di Universitas Negeri Jakarta. Forum ini membahas proses administrasi dan pelaksanaan Praktik Kerja Lapangan.</p>', 0, 1, 2, 0, '2022-11-06 01:54:50', '2022-11-06 05:47:41'),
(3, 'Maba UNJ 2023', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 0, 1, 8, 0, '2022-12-19 23:10:41', '2022-12-19 23:10:41');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_25_114430_create_categories_table', 1),
(6, '2022_10_25_114814_create_forums_table', 1),
(7, '2022_10_25_115548_create_discussions_table', 1),
(8, '2022_10_25_120340_create_tags_table', 1),
(9, '2022_10_25_120806_create_posts_table', 1),
(10, '2022_10_25_121044_create_post_likes_table', 1),
(11, '2022_10_25_121213_create_post_tags_table', 1),
(12, '2022_10_25_121333_create_post_views_table', 1),
(13, '2022_10_25_121457_create_post_replies_table', 1),
(14, '2022_10_25_121626_create_post_short_descriptions_table', 1),
(15, '2022_10_25_121757_create_post_descriptions_table', 1),
(16, '2022_10_29_132143_create_discussion_replies_table', 1),
(17, '2022_11_04_141247_create_notifications_table', 1),
(18, '2022_11_06_080400_create_reply_likes_table', 1),
(19, '2022_11_06_080457_create_reply_dislikes_table', 1),
(20, '2022_11_06_080535_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('288e6f68-9d2c-4e05-8fda-006716898213', 'App\\Notifications\\NewReply', 'App\\Models\\User', 1, '{\"name\":\"Prayogo Tuhu Winengku\",\"email\":\"prayogotuhuwinengku@gmail.com\",\"message\":\"Prayogo Tuhu Winengku replied to the topic safdasf\",\"type\":3}', NULL, '2022-12-19 21:45:59', '2022-12-19 21:45:59'),
('50b75049-de4b-40af-aa9e-7dc7b79e90ed', 'App\\Notifications\\NewCategory', 'App\\Models\\User', 1, '{\"name\":\"Administrator\",\"email\":\"administrator@gmail.com\",\"message\":\"Administrator Created a new Category: Mahasiswa Baru\",\"type\":4}', NULL, '2022-12-19 23:10:09', '2022-12-19 23:10:09'),
('87da840a-d530-46cf-84fc-73fd8f40ed12', 'App\\Notifications\\NewTopic', 'App\\Models\\User', 1, '{\"name\":\"Prayogo Tuhu Winengku\",\"email\":\"prayogotuhuwinengku@gmail.com\",\"message\":\"New Discussion started: Seputar Maba UNJ 2023\",\"type\":2}', NULL, '2022-12-19 23:12:07', '2022-12-19 23:12:07'),
('991e1937-d14c-4f81-85c5-85c7179f59b6', 'App\\Notifications\\NewTopic', 'App\\Models\\User', 1, '{\"name\":\"Administrator\",\"email\":\"administrator@gmail.com\",\"message\":\"New Discussion started: safdasf\",\"type\":2}', NULL, '2022-11-28 21:02:08', '2022-11-28 21:02:08'),
('ce0127e3-d1ea-4fb7-bdeb-5e06c2039b2d', 'App\\Notifications\\NewReply', 'App\\Models\\User', 1, '{\"name\":\"Administrator\",\"email\":\"administrator@gmail.com\",\"message\":\"Administrator replied to the topic Seputar Maba UNJ 2023\",\"type\":3}', NULL, '2022-12-19 23:13:26', '2022-12-19 23:13:26');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `is_approved` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_descriptions`
--

CREATE TABLE `post_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `is_liked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_replies`
--

CREATE TABLE `post_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reply` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_short_descriptions`
--

CREATE TABLE `post_short_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_views`
--

CREATE TABLE `post_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reply_dislikes`
--

CREATE TABLE `reply_dislikes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reply_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reply_likes`
--

CREATE TABLE `reply_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reply_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reply_likes`
--

INSERT INTO `reply_likes` (`id`, `reply_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2022-12-19 23:14:37', '2022-12-19 23:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `forum_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `forum_name`, `created_at`, `updated_at`) VALUES
(1, 'SIAVO', '2022-11-06 06:23:43', '2022-11-06 06:23:43'),
(2, 'SIAVO - Sistem Informasi Advokasi', '2022-12-19 08:26:42', '2022-12-19 08:26:42'),
(3, 'SIAVO', '2022-12-19 23:08:38', '2022-12-19 23:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proffesion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `address`, `is_admin`, `country`, `image`, `proffesion`, `bio`, `skills`, `education`, `is_deleted`, `is_verified`, `is_banned`, `rank`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL, 1, NULL, '1667724341administrator.png', NULL, NULL, NULL, NULL, 0, 0, 0, 30, 'administrator@gmail.com', NULL, '$2y$10$07o/kLOsqSdjOYwOwTT8pO9x3vUr0M2SwONqHpSHwt5yKyN0R.KTe', NULL, '2022-11-06 01:45:17', '2022-12-19 23:14:37'),
(2, 'Prayogo Tuhu Winengku', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 'prayogotuhuwinengku@gmail.com', NULL, '$2y$10$LsZ9ANVLqJuD5UD0PsAhi.82qktyaJNq8UJpdnMXobUMwVdNciWI.', NULL, '2022-11-06 05:44:18', '2022-12-19 23:12:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussions_forum_id_foreign` (`forum_id`),
  ADD KEY `discussions_user_id_foreign` (`user_id`);

--
-- Indexes for table `discussion_replies`
--
ALTER TABLE `discussion_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussion_replies_discussion_id_foreign` (`discussion_id`),
  ADD KEY `discussion_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forums_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_forum_id_foreign` (`forum_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_descriptions`
--
ALTER TABLE `post_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_descriptions_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_replies`
--
ALTER TABLE `post_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_replies_post_id_foreign` (`post_id`),
  ADD KEY `post_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_short_descriptions`
--
ALTER TABLE `post_short_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_short_descriptions_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tags_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_views`
--
ALTER TABLE `post_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_views_post_id_foreign` (`post_id`);

--
-- Indexes for table `reply_dislikes`
--
ALTER TABLE `reply_dislikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reply_dislikes_reply_id_foreign` (`reply_id`);

--
-- Indexes for table `reply_likes`
--
ALTER TABLE `reply_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reply_likes_reply_id_foreign` (`reply_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discussion_replies`
--
ALTER TABLE `discussion_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_descriptions`
--
ALTER TABLE `post_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_replies`
--
ALTER TABLE `post_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_short_descriptions`
--
ALTER TABLE `post_short_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_views`
--
ALTER TABLE `post_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reply_dislikes`
--
ALTER TABLE `reply_dislikes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reply_likes`
--
ALTER TABLE `reply_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discussions`
--
ALTER TABLE `discussions`
  ADD CONSTRAINT `discussions_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discussion_replies`
--
ALTER TABLE `discussion_replies`
  ADD CONSTRAINT `discussion_replies_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussion_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forums`
--
ALTER TABLE `forums`
  ADD CONSTRAINT `forums_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_descriptions`
--
ALTER TABLE `post_descriptions`
  ADD CONSTRAINT `post_descriptions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_replies`
--
ALTER TABLE `post_replies`
  ADD CONSTRAINT `post_replies_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_short_descriptions`
--
ALTER TABLE `post_short_descriptions`
  ADD CONSTRAINT `post_short_descriptions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_views`
--
ALTER TABLE `post_views`
  ADD CONSTRAINT `post_views_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reply_dislikes`
--
ALTER TABLE `reply_dislikes`
  ADD CONSTRAINT `reply_dislikes_reply_id_foreign` FOREIGN KEY (`reply_id`) REFERENCES `discussion_replies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reply_likes`
--
ALTER TABLE `reply_likes`
  ADD CONSTRAINT `reply_likes_reply_id_foreign` FOREIGN KEY (`reply_id`) REFERENCES `discussion_replies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
