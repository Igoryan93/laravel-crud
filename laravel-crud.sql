-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 31 2021 г., 16:17
-- Версия сервера: 5.6.47
-- Версия PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel-crud`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2021_01_30_100843_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_number`, `price`, `created_at`, `updated_at`) VALUES
(1, 4, '8330732924', '5074', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(2, 4, '3410861394', '5384', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(3, 5, '9998831393', '6188', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(4, 2, '1465035230', '5493', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(5, 4, '4782203101', '3409', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(6, 2, '4135710522', '3061', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(7, 2, '2844470319', '3058', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(8, 4, '9248133770', '3504', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(9, 1, '1565607511', '5533', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(10, 1, '1195056176', '3126', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(11, 4, '6885367222', '1693', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(12, 3, '5712327813', '6399', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(13, 3, '1260914518', '6747', '2021-01-30 04:27:05', '2021-01-30 04:27:05'),
(14, 4, '1870993624', '4302', '2021-01-30 04:27:05', '2021-01-30 04:27:05'),
(15, 1, '533254748X', '9859', '2021-01-30 04:27:05', '2021-01-30 04:27:05');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `surname`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tyreek', 'Beahan', 'Mrs.', 'hjohns@example.org', '2021-01-30 04:27:04', '$2y$10$nsSo5azM23OvlDQQm/s7WuX80L2.8f3lP566rTHkExSPw/MlTnESS', 'tQtESSDsLA', '2021-01-30 04:27:04', '2021-01-31 05:25:16'),
(2, 'Coleman', 'Leuschke', 'Mrs.', 'crona.autumn@example.net', '2021-01-30 04:27:04', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sje5kmBQ34', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(3, 'Ricardo', 'Mitchell', 'Miss', 'egreen@example.com', '2021-01-30 04:27:04', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '520yk7Fao8', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(4, 'Coty', 'Dickinson', 'Mrs.', 'caitlyn76@example.com', '2021-01-30 04:27:04', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'A3UMsXlZt3', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(5, 'Simeon', 'Mann', 'Prof.', 'jenkins.kaitlyn@example.net', '2021-01-30 04:27:04', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Xu09RNeb3p', '2021-01-30 04:27:04', '2021-01-30 04:27:04'),
(6, 'Test name last', 'Test username last', 'Test last name last', 'test@gmail.com', NULL, '$2y$10$UNWQwUY22YpD7SUq6Mmr4OK0cdzHv8tD/jadJVh0ocQL6OxWK0/16', NULL, '2021-01-30 06:43:45', '2021-01-31 05:24:44'),
(7, 'John', 'Doe', 'Mr', 'john_doe@gmail.com', NULL, '$2y$10$sgP1PYiBDnQBCKyfZInK/.VDbvPi.MfK6YsD8I5W1JnoHOu6iW.U6', NULL, '2021-01-31 02:33:34', '2021-01-31 02:33:34'),
(8, 'Jane', 'Coe', 'Coe2', 'jane_coe@gmail.com', NULL, '$2y$10$jI/NT7L7Of8PcyQfXTeUPeEPm9jDqeB5dfMVKooOE7t/Gdk6l8o1a', NULL, '2021-01-31 02:36:11', '2021-01-31 02:36:11'),
(9, 'Максим', 'Басуда', 'Дмитриевич', 'basuda@gmail.com', NULL, '$2y$10$LovgINn/ko/db310UffxLO9avHvVRCqsBV5CpEw4BXmxgXMbUMEx.', NULL, '2021-01-31 02:44:59', '2021-01-31 02:44:59'),
(10, 'фыв', 'фывфыв', 'фывфыв', 'bla_bla@gmail.com', NULL, '$2y$10$oKR2UYMtLJCM4ro.UtbETOUvudB3BdFV1LXzoTsdjsaSJT5JBhLxS', NULL, '2021-01-31 03:06:05', '2021-01-31 03:06:05'),
(20, 'Dmitry 1', 'Ignotenko 2', 'Konstantinovich 3', 'ignotenko_@gmail.com', NULL, '$2y$10$MtSKss8hos7O5X6sCk/PAOz6EmzC4N1sQyJDCINZLPkNV40F5vMge', NULL, '2021-01-31 06:52:16', '2021-01-31 06:53:33'),
(21, 'Olesya', 'Shmaihel', 'Erihovna', 'olesy_shmaihel@gmail.com', '2021-01-30 19:01:02', '$2y$10$D5HQkSScXCRwbebRZevboeJ81TZAd1cxs6uWagsGyGXN/.FI3X/Dy', NULL, '2021-01-31 07:01:02', '2021-01-31 07:01:02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
