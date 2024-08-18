-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Agu 2024 pada 16.27
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webservice`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_level` varchar(50) NOT NULL,
  `log_message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`log_id`, `log_level`, `log_message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-05 18:20:11', '2024-08-05 18:20:11', NULL),
(2, 'info', 'Request URL: http://127.0.0.1:8000/api/me, Method: GET, IP: 127.0.0.1', '2024-08-05 18:21:24', '2024-08-05 18:21:24', NULL),
(3, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:01:27', '2024-08-18 05:01:27', NULL),
(4, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:05:21', '2024-08-18 05:05:21', NULL),
(5, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:05:28', '2024-08-18 05:05:28', NULL),
(6, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:06:02', '2024-08-18 05:06:02', NULL),
(7, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:06:24', '2024-08-18 05:06:24', NULL),
(8, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:06:45', '2024-08-18 05:06:45', NULL),
(9, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:07:04', '2024-08-18 05:07:04', NULL),
(10, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:08:55', '2024-08-18 05:08:55', NULL),
(11, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:19:13', '2024-08-18 05:19:13', NULL),
(12, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:19:37', '2024-08-18 05:19:37', NULL),
(13, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:22:15', '2024-08-18 05:22:15', NULL),
(14, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:25:44', '2024-08-18 05:25:44', NULL),
(15, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:26:54', '2024-08-18 05:26:54', NULL),
(16, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:27:17', '2024-08-18 05:27:17', NULL),
(17, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:27:27', '2024-08-18 05:27:27', NULL),
(18, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:33:24', '2024-08-18 05:33:24', NULL),
(19, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:33:33', '2024-08-18 05:33:33', NULL),
(20, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:34:00', '2024-08-18 05:34:00', NULL),
(21, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:34:44', '2024-08-18 05:34:44', NULL),
(22, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:37:10', '2024-08-18 05:37:10', NULL),
(23, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:37:14', '2024-08-18 05:37:14', NULL),
(24, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:39:17', '2024-08-18 05:39:17', NULL),
(25, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:40:18', '2024-08-18 05:40:18', NULL),
(26, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:41:34', '2024-08-18 05:41:34', NULL),
(27, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:53:01', '2024-08-18 05:53:01', NULL),
(28, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:54:53', '2024-08-18 05:54:53', NULL),
(29, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:56:56', '2024-08-18 05:56:56', NULL),
(30, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 05:59:01', '2024-08-18 05:59:01', NULL),
(31, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 06:01:45', '2024-08-18 06:01:45', NULL),
(32, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 06:04:42', '2024-08-18 06:04:42', NULL),
(33, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 06:04:49', '2024-08-18 06:04:49', NULL),
(34, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 06:05:17', '2024-08-18 06:05:17', NULL),
(35, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 06:12:12', '2024-08-18 06:12:12', NULL),
(36, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 06:12:15', '2024-08-18 06:12:15', NULL),
(37, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 06:12:36', '2024-08-18 06:12:36', NULL),
(38, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 06:24:02', '2024-08-18 06:24:02', NULL),
(39, 'info', 'Request URL: http://127.0.0.1:8000/api/login, Method: POST, IP: 127.0.0.1', '2024-08-18 06:25:34', '2024-08-18 06:25:34', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mahasiswa_id` int(10) UNSIGNED NOT NULL,
  `mahasiswa_nim` varchar(20) NOT NULL,
  `mahasiswa_nama` varchar(50) NOT NULL,
  `mahasiswa_password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`mahasiswa_id`, `mahasiswa_nim`, `mahasiswa_nama`, `mahasiswa_password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, '1901010126', 'iqbal', 'f65848d28669819f9c17a3682dc63d6a05ef4729', '2024-08-18 14:13:33', '2024-08-18 14:13:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_08_05_211457_create_mahasiswa_table', 1),
(3, '2024_08_06_020722_create_log_table', 2),
(4, '2024_08_06_021104_create_log_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_id`),
  ADD UNIQUE KEY `mahasiswa_mahasiswa_nim_unique` (`mahasiswa_nim`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `mahasiswa_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
