-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2021 at 01:13 AM
-- Server version: 8.0.23-0ubuntu0.20.10.1
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capital_wave`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_site`
--

CREATE TABLE `about_site` (
  `id` int NOT NULL,
  `about` text NOT NULL,
  `terms` text NOT NULL,
  `privacy_policy` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_site`
--

INSERT INTO `about_site` (`id`, `about`, `terms`, `privacy_policy`, `updated_at`) VALUES
(1, '<p style=\"text-align:justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p style=\"text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humours.</p>', '<p style=\"text-align: justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style=\"text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humours.</p>', '<p style=\"text-align: justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style=\"text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humours.</p>', '2020-09-03 20:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `remember_token`, `updated_at`) VALUES
(1, 'admin', '$2y$10$GFdV7KqcArr7DKmrdwT51uqmreifHqeLKONVV66aTwd4X0/.P5t9K', '', '2020-09-03 19:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_bank`
--

CREATE TABLE `admin_bank` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(128) DEFAULT NULL,
  `address` text,
  `swift` varchar(32) DEFAULT NULL,
  `iban` varchar(32) DEFAULT NULL,
  `acct_no` varchar(15) DEFAULT NULL,
  `status` int NOT NULL,
  `vendor` varchar(30) DEFAULT NULL,
  `wallet_id` varchar(60) DEFAULT NULL,
  `eth_vendor` varchar(32) DEFAULT NULL,
  `eth_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_bank`
--

INSERT INTO `admin_bank` (`id`, `name`, `bank_name`, `address`, `swift`, `iban`, `acct_no`, `status`, `vendor`, `wallet_id`, `eth_vendor`, `eth_id`, `updated_at`) VALUES
(1, 'Capital wave', 'Bank of the West', 'north east west south', '369258', '654789', '2159684730', 1, 'Blockchain', 's86s8d7ihrreoe98', 'Blockchain', 'jdi98d9d0dd1', '2021-03-26 22:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `trx` varchar(16) NOT NULL,
  `log` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `trx`, `log`, `updated_at`) VALUES
(1, 11, 'j7MtFMVvoMPmNUFW', 'Check how much would be earned from buying Diamond', '2020-07-04 08:55:05'),
(2, 11, 'vj7fjWFrUEercnh7', 'Cancelled Recurring payment for #OHWmRxAQhyEbI54S', '2020-07-04 08:56:45'),
(17, 11, 'h8jet1ahKMbrNSvM', 'Failed coupon check for coupon code #swdfghgf', '2020-07-04 09:24:54'),
(18, 11, 'r7Jq7EVFsWKsuRNE', 'Started attempt to purchase Gold', '2020-07-04 09:32:48'),
(21, 11, 'K01WPUqtbIBMeLlj', 'Purchased plan #Gold', '2020-07-04 09:34:01'),
(22, 11, 'Q07XEFK13nqJdYrB', 'Log out - ::1', '2020-07-04 09:36:07'),
(23, 11, 'jAYdkT5W8zkNNcAI', 'Updated account details', '2020-07-04 09:50:16'),
(24, 11, 'UfcuCWUEmWOX2iq3', 'Logged out - ::1', '2020-07-04 09:54:55'),
(25, 11, 'mvM4xAJ56NzmRzKt', 'Logged In', '2020-07-04 09:55:15'),
(26, 11, 'iIUQLGMvqc8RGRUZ', 'Created Funding Request of100USD via Voguepay', '2020-07-04 10:01:39'),
(27, 11, 'carrChyFLxruQI9T', 'Logged In', '2020-07-04 13:45:03'),
(28, 11, 'eAO1qZpeH95cmbs3', 'Logged out - ::1', '2020-07-04 13:48:02'),
(29, 34, '8xFqGrwaikIjUKHC', 'Logged In', '2020-07-04 13:49:00'),
(30, 34, 'tq3XC2sdHyURMRLN', 'Logged out - ::1', '2020-07-04 13:49:10'),
(31, 11, 'MiD42hiGHKvZMUgS', 'Logged In', '2020-07-04 13:50:41'),
(32, 11, 'Rd8iOY0DIlhoRer3', 'Logged out - ::1', '2020-07-04 13:51:05'),
(33, 34, 'Rom7xOvUcPrpBW0W', 'Logged In', '2020-07-04 13:51:26'),
(34, 34, 'u54lBkJz16IgLNST', 'Started attempt to purchase Gold', '2020-07-04 13:52:11'),
(35, 34, 'c1APhoQ2OhMIfmtJ', 'Purchased plan #Gold', '2020-07-04 13:52:13'),
(36, 34, 'ivZnkCZimCvz8u1x', 'Logged out - ::1', '2020-07-04 13:52:45'),
(37, 36, 'k136i0ubEzWpbKYc', 'Logged out - ::1', '2020-07-04 14:20:30'),
(38, 36, 'ghjZlmTpXDJEPs29', 'Logged In', '2020-07-04 14:20:40'),
(39, 36, '0AuvvdN1wivjBCGh', 'Created Funding Request of 100USD via PayPal', '2020-07-04 14:20:51'),
(40, 36, 'bgsafXM0iNcBNcYD', 'Started Transfer request', '2020-07-04 14:21:13'),
(41, 36, 'fpOaFgsOY9tRQM7E', 'Transfered $30 to user@test.com', '2020-07-04 14:21:15'),
(42, 36, 'CwPA2qoexmw4IsAU', 'Logged out - ::1', '2020-07-04 14:30:28'),
(43, 11, 'm4RGS1JmnQO29cro', 'Logged In', '2020-07-04 14:38:51'),
(44, 11, 'HW4yY3iPTem2qwqp', 'Logged In', '2020-07-05 09:29:13'),
(45, 11, 'HOut9Jrq4R7KXjAu', 'Logged In', '2020-07-05 12:01:44'),
(46, 36, '4kUsIXd24EncrSfS', 'Logged In', '2020-07-06 16:20:26'),
(47, 36, 'c3HeeiGxwsX6TGOW', 'Started attempt to purchase Starter', '2020-07-06 16:29:00'),
(48, 36, 'mWybZHOmTGD03e85', 'Purchased plan #Starter', '2020-07-06 16:29:02'),
(49, 36, 'cQxBh2rSoKqjUsfD', 'Logged out - ::1', '2020-07-06 17:27:58'),
(50, 11, '2q5rbscK5l2ACjtE', 'Logged In', '2020-07-07 17:09:30'),
(51, 11, 'nlzlBotMb3fbKvSR', 'Logged out - ::1', '2020-07-07 17:09:35'),
(52, 11, 'NGb5PfTZEAvNKiGV', 'Logged In', '2020-07-07 17:24:03'),
(53, 11, 'u2n1foyVdfvB6i9U', 'Logged In', '2020-07-07 17:24:12'),
(54, 11, 'us10CKq7z34TmC4Y', 'Logged out - ::1', '2020-07-07 17:24:19'),
(55, 11, 'rK1yhflh7EZQQQmy', 'Logged In', '2020-07-07 17:34:24'),
(56, 11, 'V9lWFJn7oj6YhoIJ', 'Logged In', '2020-07-07 17:34:37'),
(57, 11, 'W8yIHbyZOczeaT1m', 'Logged out - ::1', '2020-07-07 17:35:52'),
(58, 11, 'y90OsALqonvlydh3', 'Logged In', '2020-07-07 17:35:56'),
(59, 11, 'fOdXO6za93a6YQ7g', 'Logged out - ::1', '2020-07-07 17:35:58'),
(60, 11, 'suvkEMVWtbxncvyF', 'Logged out - ::1', '2020-07-07 19:00:24'),
(61, 11, 'laClZySB5R09crY0', 'Logged out - ::1', '2020-07-07 19:03:47'),
(62, 11, 'n4ddk69nEtxE6w8r', 'Logged In', '2020-07-07 19:03:51'),
(63, 11, 'vDk7Zf7SBkxfz3mb', 'Logged out - ::1', '2020-07-07 19:04:00'),
(64, 11, 'ePXe6O0mgQV29kLq', 'Logged In', '2020-07-07 19:04:04'),
(65, 11, '5SAaiuEkzZYxuvjR', 'Logged out - ::1', '2020-07-07 19:04:08'),
(66, 11, 'LG6kTvJb3PXqI4yO', 'Logged In', '2020-07-07 19:04:12'),
(67, 11, 'aL5KWdARdvSVAQ7w', 'Logged out - ::1', '2020-07-07 19:04:16'),
(68, 11, '1Hw3VWcO4ujfEiOB', 'Logged In', '2020-07-07 19:04:20'),
(69, 11, '949lgDNuM3lBSSGF', 'Logged out - ::1', '2020-07-07 19:04:44'),
(70, 11, 'oGJ31r20Cr2h3ax1', 'Logged In', '2020-07-07 19:06:13'),
(71, 11, 'nSvreqMZ2PFFp4o3', 'Logged out - ::1', '2020-07-07 19:07:04'),
(72, 11, 'thwWfCB3pSXT2H9n', 'Logged In', '2020-07-07 19:07:12'),
(73, 11, 'v1yluZvAQ3CoNKNN', 'Logged out - ::1', '2020-07-07 19:07:35'),
(74, 11, 'c1tY6ZQGrYwJMrxk', 'Logged In', '2020-07-07 19:15:59'),
(75, 11, 'whv27IAHjjXJcpSU', 'Logged out - ::1', '2020-07-07 19:16:40'),
(76, 11, 'ZDDm50qFqOdeZAwi', 'Logged In', '2020-07-07 19:22:47'),
(77, 11, '9w3PdveTb0jnrU20', 'Logged In', '2020-07-07 19:22:52'),
(78, 11, 'WTGVnhmHrKW9iLoJ', 'Logged out - ::1', '2020-07-07 19:22:55'),
(79, 11, 'DMszUju95gAf83WS', 'Logged In', '2020-07-07 19:22:59'),
(80, 11, 'c0ZEZnigF2CHjSG8', 'Logged out - ::1', '2020-07-07 19:23:03'),
(81, 11, 'vQ1s5Vg3LoyiK6j1', 'Logged In', '2020-07-07 22:32:01'),
(82, 11, 'NrRwrIyn7M0l6U4K', 'Logged out - ::1', '2020-07-07 22:41:30'),
(83, 11, 'Fa5i2RU6GfeilHdn', 'Logged In', '2020-07-07 22:41:46'),
(84, 11, 'IDtOfyplVCIIGraJ', 'Updated account details', '2020-07-07 22:50:00'),
(85, 11, 'GBVL1XmVtpRHu8HL', 'Updated account details', '2020-07-07 22:51:47'),
(86, 11, 'rsHK6ULzivT3B3UD', 'Updated account details', '2020-07-07 22:51:51'),
(87, 11, 'FKRsI835fkDwJK4z', 'Updated account details', '2020-07-07 22:51:56'),
(88, 11, '7ywq4BLzkRqEHtgS', 'Updated account details', '2020-07-07 22:55:14'),
(89, 11, 'XvlqzDaCKf2RlTkl', 'Updated account details', '2020-07-07 22:55:16'),
(90, 11, 'AXNi4IIydpAEy1zU', 'Updated account details', '2020-07-07 22:55:47'),
(91, 11, '1ehNC7fOZO4kYOVH', 'Updated account details', '2020-07-07 22:55:49'),
(92, 11, 'r0PW7aA6FZrK8Vwg', 'Updated account details', '2020-07-07 22:57:01'),
(93, 11, 'mvZgDQyysnbsy8v4', 'Updated account details', '2020-07-07 22:57:03'),
(94, 11, 'iXpYC526AQGaSqTu', 'Updated account details', '2020-07-07 22:59:03'),
(95, 11, 'ElZ01R3oDYhAAuxq', 'Updated account details', '2020-07-07 23:00:23'),
(96, 11, 'zpXewIyWVtj2m602', 'Updated account details', '2020-07-07 23:00:27'),
(97, 11, 'MVgvixA3No0wtSsP', 'Updated account details', '2020-07-07 23:00:32'),
(98, 11, 'C0PcuU3bGOie5IRf', 'Updated account details', '2020-07-07 23:01:11'),
(99, 11, 'zYswOKSuVZqLveLI', 'Updated account details', '2020-07-07 23:01:16'),
(100, 11, 'rjBoRfSKrJB2rkDE', 'Updated account details', '2020-07-07 23:01:19'),
(101, 11, 'Ixuj3Szsttob3maM', 'Updated account details', '2020-07-07 23:01:50'),
(102, 11, 'Q6V2S4GQZ5C0lmJy', 'Updated account details', '2020-07-07 23:02:05'),
(103, 11, 'UJ27io7Q8zrdCozw', 'Updated account details', '2020-07-07 23:02:08'),
(104, 11, '8TDfl9CVvbjTnFXQ', 'Updated account details', '2020-07-07 23:07:52'),
(105, 11, 'wgw8EcI24aVdRKUh', 'Updated account details', '2020-07-07 23:07:54'),
(106, 11, 'R3Hxjl0V1MeY5cXA', 'Updated account details', '2020-07-07 23:10:47'),
(107, 11, 'm0p2uzgyPI5uU6ZX', 'Updated account details', '2020-07-07 23:10:50'),
(108, 11, 'wkl6r6xQixkL9Mlm', 'Updated account details', '2020-07-07 23:12:41'),
(109, 11, 'NT70Vw30iu50Hhph', 'Updated account details', '2020-07-07 23:12:44'),
(110, 11, 'xeiQnhFkdIJJzB89', 'Updated account details', '2020-07-07 23:12:55'),
(111, 11, '4PeObR5aJ5JlkbcU', 'Updated account details', '2020-07-07 23:12:57'),
(112, 11, 'wQ9ELNYdsKn44eMV', 'Updated account details', '2020-07-07 23:13:17'),
(113, 11, '2YvMOAaY3ui9JCzx', 'Updated account details', '2020-07-07 23:13:36'),
(114, 11, 'AmLI2RqQFWGb6Mms', 'Updated account details', '2020-07-07 23:15:52'),
(115, 11, 'gMiTJvroT5Tcwcgk', 'Updated account details', '2020-07-07 23:15:54'),
(116, 11, '10XvmipE4pJnE9Vb', 'Updated account details', '2020-07-07 23:17:24'),
(117, 11, '9IffAwwuANqbvPQx', 'Updated account details', '2020-07-07 23:17:36'),
(118, 11, 'LDU7pA72FuWaOGfE', 'Logged In', '2020-07-08 03:23:38'),
(119, 11, 'h1ry3RMZxHvGYrMN', 'Created Funding Request of 100USD via Flutterwave', '2020-07-08 03:47:49'),
(120, 11, 'DC402Zd6HIy0OGd5', 'Created Funding Request of 100USD via Flutterwave', '2020-07-08 04:09:54'),
(121, 11, '7ohvH8nKWIZem4EW', 'Verified Funding Request of106USD via Flutterwave', '2020-07-08 04:34:08'),
(122, 11, 'mqdth9dcn3oFBGA4', 'Verified Funding Request of106USD via Flutterwave', '2020-07-08 04:35:33'),
(123, 11, '4s2jZLbujJz9ru7p', 'Verified Funding Request of106USD via Flutterwave', '2020-07-08 04:37:07'),
(124, 11, 'UNO6b7UEoSv4TG5Z', 'Verified Funding Request of106USD via Flutterwave', '2020-07-08 04:40:15'),
(125, 11, 'Qn5x1mB03aVRNoTg', 'Created Funding Request of 100USD via Flutterwave', '2020-07-08 04:51:37'),
(126, 11, '7XH363aWYU6CnDeA', 'Verified Funding Request of 106USD via Flutterwave', '2020-07-08 04:52:30'),
(127, 11, 'sMK3eHOHCLCh6xkm', 'Verified Funding Request of 103.031USD via PayPal', '2020-07-08 04:58:05'),
(128, 11, 'yuIqAe1A6lgXVe9R', 'Verified Funding Request of 103.03USD via CoinPayment BTC', '2020-07-08 04:59:42'),
(129, 11, '2P0eSaTNkIPuYWHL', 'Created Funding Request of 100USD via Flutterwave', '2020-07-08 05:07:26'),
(130, 11, 'oxciPVOBEHkEJ2eq', 'Verified Funding Request of 106USD via Flutterwave', '2020-07-08 05:08:19'),
(131, 11, 'x6yCV3ZZJLmGiZK1', 'Created Funding Request of 200USD via Stripe', '2020-07-08 05:38:04'),
(132, 11, 'ekEjoRVq2cj7TeRZ', 'Logged In', '2020-07-08 09:33:11'),
(133, 11, 'qb4ExJnQKSkhyAEd', 'Logged out - ::1', '2020-07-08 09:42:37'),
(134, 37, 'KKbT5ayeiFVV3mJ0', 'Logged In', '2020-07-08 09:47:51'),
(135, 37, 'EZSI9ESNvNNKr95D', 'Logged out - ::1', '2020-07-08 09:51:03'),
(136, 11, 'gyLJdWRSE43cX8CN', 'Logged In', '2020-07-08 10:03:26'),
(137, 11, 'vQhhtF1WODojGEeC', 'Logged In', '2020-07-08 10:03:30'),
(138, 11, 'HTVkJNvEuaSpQzif', 'Logged out - ::1', '2020-07-08 10:59:13'),
(139, 11, 'WdiPRNNpZGD14jyn', 'Logged In', '2020-07-08 10:59:17'),
(140, 11, 'TCky7SfU66XvWKgi', 'Logged In', '2020-07-08 15:47:33'),
(141, 11, 'xt9szpyIDgJ1oM14', 'Created Funding Request of 100USD via Paystack', '2020-07-08 17:01:50'),
(142, 11, 'peIqwxqAEypSQwU4', 'Created Funding Request of 300USD via Flutterwave', '2020-07-08 17:02:29'),
(143, 11, 'u4juOHTTqhzULYue', 'Created Funding Request of 100USD via PayPal', '2020-07-08 17:03:01'),
(144, 11, 'N49LGCsRMfnENy0n', 'Logged In', '2020-07-08 19:38:41'),
(145, 11, 'hP8sGLpyl1O9GiOB', 'Created Funding Request of 100USD via Stripe', '2020-07-08 19:38:48'),
(146, 11, 'csoIsVxF5OgLK7vM', 'Logged out - ::1', '2020-07-08 19:50:35'),
(147, 11, 'NgsGQjreJbx23wdZ', 'Logged In', '2020-07-08 19:51:04'),
(148, 11, 'vmyoElETuzUjTC5A', 'Logged out - ::1', '2020-07-08 20:00:48'),
(149, 11, 'PIyFOoULeJINHNn1', 'Logged In', '2020-07-08 21:53:17'),
(150, 11, 'YomBKrBde4X3wQd1', 'Logged In', '2020-07-08 21:53:22'),
(151, 11, 'OtPqIOYpnRfwE1fR', 'Logged In', '2020-07-08 21:56:19'),
(152, 11, 'AMWA1ViLDBPSOVc8', 'Logged In', '2020-07-08 21:56:24'),
(153, 11, 'uZgMJjesZZMn1Vnj', 'Logged out - ::1', '2020-07-08 22:05:18'),
(154, 11, 'VpffDax0Bi1xz3ZJ', 'Logged In', '2020-07-08 22:05:32'),
(155, 11, 'yurh9tbPRoLPJOeC', 'Logged In', '2020-07-08 22:07:54'),
(156, 11, 'g25w3UxMJTsocDXW', 'Logged In', '2020-07-08 22:08:03'),
(157, 11, 'UZuqHarMsQiOwbZv', 'Logged out - ::1', '2020-07-08 22:11:06'),
(158, 11, 'bIE2pSz6qXZSL2SA', 'Logged In', '2020-07-08 22:11:37'),
(159, 11, 'kTgp9l4VKlpIEQKP', 'Logged In', '2020-07-08 22:12:24'),
(160, 11, 'gVlkTJdJKQBQz03J', 'Logged In', '2020-07-08 22:12:33'),
(161, 11, 'lpi8HHxOK9ymxjCS', 'Logged In', '2020-07-08 22:12:47'),
(162, 11, 'TJvNatfvdot7zS6W', 'Logged In', '2020-07-09 10:48:28'),
(163, 11, 'yuxjRCzwh2Hdwxta', 'Logged In', '2020-07-09 17:36:00'),
(164, 11, 'WlY47shjdvF1uwIE', 'Logged In', '2020-07-09 17:40:24'),
(165, 11, 'JhNGC9OKlWCKy5oB', 'Logged In', '2020-07-09 17:40:28'),
(166, 11, 'xiMfs8aKbR0G6rKa', 'Logged In', '2020-07-09 17:41:41'),
(167, 11, 'CuaaIOJpjSLuOY3V', 'Logged In', '2020-07-09 17:41:45'),
(168, 11, 'km67wHisREu5JUqS', 'Logged In', '2020-07-09 17:42:54'),
(169, 11, 'jbhUjgAgXCvQpem9', 'Logged In', '2020-07-09 17:42:59'),
(170, 11, 'A4uPEnkFE1OMnMHW', 'Logged In', '2020-07-09 17:47:08'),
(171, 11, 'foaWcaYM2U0hFoIw', 'Logged In', '2020-07-09 17:47:13'),
(172, 11, 'wSr1YiyUzG7HExxI', 'Logged out - ::1', '2020-07-09 17:47:35'),
(173, 11, 'bPubq5dJZwdndchg', 'Logged In', '2020-07-09 17:59:39'),
(174, 11, 'HnpyW0xuDScg9E6n', 'Created Funding Request of 100USD via Flutterwave', '2020-07-09 18:01:12'),
(175, 11, 'udsAlwAmkvQ6gLhH', 'Logged In', '2020-07-12 14:16:42'),
(176, 11, 'xcqJ9lqEmRxxT81N', 'Logged In', '2020-07-12 14:16:42'),
(177, 11, 'NcOlRu6WYyVVv43T', 'Updated account details', '2020-07-12 14:23:49'),
(178, 11, 'nyQrWBR5fEU8GmWq', 'Updated account details', '2020-07-12 14:29:36'),
(179, 11, 'LTFfKPs7cz93Fte4', 'Submitted withdraw requesthTCl9UQ8vEGtvmWp', '2020-07-12 14:35:40'),
(180, 11, 's1jUCxx9Zf1eHoT8', 'Logged In', '2020-07-20 21:01:22'),
(181, 11, 'dfqsjTpU9p0xFjQN', 'Logged In', '2020-07-22 05:29:20'),
(182, 11, 'jU8i6UkYQ61SxMhp', 'Logged out - ::1', '2020-07-22 05:31:18'),
(183, 11, 'Vwbaxmr7JelPxnyd', 'Logged In', '2020-07-22 06:25:19'),
(184, 11, 'mXQoJeVbO30nQxgn', 'Logged out - ::1', '2020-07-22 06:25:23'),
(185, 11, 'JKlyXMMCvmdVnwiI', 'Logged In', '2020-07-22 06:25:28'),
(186, 11, 'GED24H1z8K1GZtHN', 'Logged In', '2020-07-22 06:25:29'),
(187, 11, 'CYK5Zly5WcTrNJng', 'Logged out - ::1', '2020-07-22 06:36:11'),
(188, 11, 'h61dI9XdQWo4MSFm', 'Logged In', '2020-07-22 13:16:04'),
(189, 11, 'PH1PvaBmSaSmz2if', 'Logged out - ::1', '2020-07-22 13:29:25'),
(190, 37, 'xYbric50CVc9q663', 'Logged In', '2020-07-22 13:29:50'),
(191, 37, 'RYLqxbZplgwGRTbL', 'Logged In', '2020-07-22 13:30:07'),
(192, 11, 'ds982BQiRTognRnw', 'Logged In', '2020-07-22 13:30:22'),
(193, 11, 'Mx4d2HO5GXGodHQk', 'Logged In', '2020-07-22 13:30:58'),
(194, 11, 'LuTB0l40cuYMMSCf', 'Logged In', '2020-07-22 13:31:04'),
(195, 11, 'OqEnJfPsb7DOrnkP', 'Logged out - ::1', '2020-07-22 13:31:12'),
(196, 37, '6qlKuDrRTcP2QnsA', 'Logged In', '2020-07-22 13:31:31'),
(197, 37, 'xA8xcfDE2vbIwIG8', 'Logged In', '2020-07-22 13:31:40'),
(198, 37, 'Vxnc1LD64z34NJoi', 'Started attempt to purchase Starter', '2020-07-22 13:32:23'),
(199, 37, 'wpnVK0esAeVF7FjG', 'Purchased plan #Starter', '2020-07-22 13:32:26'),
(200, 11, 'ETNhbVOVBQ9MyUeo', 'Logged In', '2020-07-22 13:36:59'),
(201, 11, 'MpwNgCcGk3Hdkshj', 'Logged In', '2020-07-22 13:37:04'),
(202, 11, 'ACGgNbMbcR3ig3iu', 'Logged out - ::1', '2020-07-25 09:02:43'),
(203, 11, 'BFzBNyLNGDmqhs2g', 'Logged In', '2020-07-25 09:36:44'),
(204, 11, '1MkFQUng9xL0aVpn', 'Updated withdraw requestM2FLNRfjYhDWStB4', '2020-07-25 09:37:27'),
(205, 11, 'I5sEilt6KSKHVRbd', 'Logged out - ::1', '2020-07-25 09:37:43'),
(206, 11, 'JUei3MAYBPbShDTp', 'Logged In', '2020-07-28 15:32:21'),
(207, 11, 'GUDXparRfOUZboAb', 'Created Funding Request of 100USD via Flutterwave', '2020-07-28 15:32:28'),
(208, 11, 'UybMlWEMbXHel3BK', 'Logged In', '2020-07-28 21:09:28'),
(209, 11, 'zPWHuo3jqBDGdjhx', 'Created Funding Request of 100USD via Paystack', '2020-07-28 21:25:36'),
(210, 11, 'LzcSpjGwwH5hdhAy', 'Created Funding Request of 100USD via Flutterwave', '2020-07-29 14:28:15'),
(211, 11, 'PTrdc32N5JyOoaVO', 'Updated account details', '2020-07-29 15:26:55'),
(212, 11, 'xIvtB4cC9gCxCAyj', 'Changed account photo', '2020-07-29 15:32:43'),
(213, 11, 'GFKcT952RNjoVHRe', 'Logged out - ::1', '2020-07-29 16:13:31'),
(214, 11, 'V09zhicMAXO2NUkc', 'Logged In', '2020-07-29 16:15:20'),
(215, 11, 'IdBOcfWXafpXvu5l', 'Created Funding Request of 100USD via Paystack', '2020-07-29 16:15:35'),
(216, 11, 'z1bGoNEsDk8HLz7H', 'Created Funding Request of 100USD via Voguepay', '2020-07-29 16:16:07'),
(217, 11, 'qheS4zbuFxVRcZIt', 'Created Funding Request of 100USD via CoinPayment BTC', '2020-07-29 16:39:13'),
(218, 11, 'vZw9Vb1rDFisw5WU', 'Created Funding Request of 100USD via Paystack', '2020-07-29 17:22:44'),
(219, 11, 'ZU3D8pMEqkBvjFRg', 'Created Funding Request of 100USD via Flutterwave', '2020-07-29 17:23:01'),
(220, 11, 'R7SjYJoFccL8BLol', 'Logged out - ::1', '2020-07-29 19:06:06'),
(221, 11, 'FYQqAOXBambylMLf', 'Logged In', '2020-07-29 19:09:48'),
(222, 11, 'aFIdgWBrjtIxHxRD', 'Logged out - ::1', '2020-07-29 20:36:15'),
(223, 11, '9UjKUMerEX9qyIDn', 'Logged In', '2020-07-29 23:13:56'),
(224, 11, '0JePwDBOVrjJqWVv', 'Logged In', '2020-07-30 09:28:10'),
(225, 11, 'wU20u0flOujAyWi4', 'Logged In', '2020-07-30 09:50:21'),
(226, 11, 'U0Xzc5Y0fTOavoZO', 'Logged In', '2020-07-30 12:27:13'),
(227, 11, 'DRe1Alicass3eYn8', 'Logged out - ::1', '2020-07-30 12:31:42'),
(228, 11, 'uYnAutpdQ2Qti1M8', 'Logged In', '2020-07-30 23:42:48'),
(229, 11, 'nMY5fTGe3pgG6bOa', 'Logged In', '2020-07-30 23:42:52'),
(230, 11, 'HJkqmIHlyPqIIRAP', 'Logged In', '2020-07-31 17:27:59'),
(231, 11, 'dBc7PSDf2B5Ppthh', 'Logged In', '2020-07-31 17:44:12'),
(232, 11, 'X3hVBgQsikgXBNdv', 'Logged In', '2020-07-31 17:51:35'),
(233, 11, 'Cp2ulNVhIS8bbJzE', 'Logged In', '2020-07-31 17:54:53'),
(234, 11, 'umSyky3FfKPRwidD', 'Logged In', '2020-07-31 17:55:23'),
(235, 11, 'Vi37mQyBjs3mfLm1', 'Logged In', '2020-07-31 17:55:28'),
(236, 11, 'ZXq7DrvmzBV7YKYd', 'Logged In', '2020-08-01 20:21:25'),
(237, 11, 'TbputMN0xgIipI3R', 'Logged In', '2020-08-01 20:22:17'),
(238, 11, '5Lh9hUy66WWEyyk3', 'Logged In', '2020-08-02 16:19:11'),
(239, 11, 'i29kfn4SsekP8sv5', 'Logged In', '2020-08-02 16:19:53'),
(240, 11, 'rrg1G2ebwjRs0JjD', 'Logged In', '2020-08-02 16:24:20'),
(241, 11, 'JhdGQPc3mkHnUQzY', 'Logged In', '2020-08-02 18:22:04'),
(242, 11, 'kbdqNawc78sbbd4o', 'Logged In', '2020-08-03 09:00:29'),
(243, 11, 'PjchtYTjgNX7NP8M', 'Logged In', '2020-08-03 09:05:14'),
(244, 11, '77dDpHUhbvARtgt6', 'Logged In', '2020-08-03 09:57:43'),
(245, 11, 'ym21Vq3wdsyVBZNF', 'Logged In', '2020-08-13 12:11:40'),
(246, 11, 'aiJ2tIf8DfsSxYIP', 'Logged In', '2020-08-16 18:29:46'),
(247, 11, 'q2UABKiwMe4Nx4Wy', 'Logged out - ::1', '2020-08-16 20:19:37'),
(248, 11, 'uIQkjnVutXHlbVnx', 'Logged In', '2020-08-16 20:19:50'),
(249, 11, 'NeWiWsJnin0fEJcN', 'Activated 2fa', '2020-08-17 09:43:09'),
(250, 11, 'bfDbMCy0Dtbtech0', 'Deactivated 2fa', '2020-08-17 09:50:14'),
(251, 11, '6Wo7WNCl4iTTLY75', 'Created Funding Request of 100USD via CoinPayment ETH', '2020-08-17 09:50:41'),
(252, 11, 'uGOSZnI5cCv6DVCS', 'Changed account photo', '2020-08-17 23:53:11'),
(253, 11, 'Z3O8mM8CfBGz65lh', 'Logged out - ::1', '2020-08-18 01:49:31'),
(254, 11, 'wHJtQV7mW1WHuX45', 'Logged In', '2020-08-18 06:49:34'),
(255, 11, 'F5ZsE6YmgwJtBgM6', 'Logged In', '2020-08-20 12:39:51'),
(256, 11, 'CQ4OTIYjQsAmfHP6', 'Logged In', '2020-09-03 17:57:56'),
(257, 11, 'yRhmr3P9wSPfnmBZ', 'Logged out - ::1', '2020-09-03 19:36:44'),
(258, 11, 'Lf7houX24YTbJ55R', 'Logged In', '2020-09-03 19:41:16'),
(259, 11, '7e0EXJI5Es1CLNQq', 'Logged In', '2020-09-04 08:09:50'),
(260, 11, 'rfHGaSjd9W4nAUYx', 'Deposit request Declined XDMIjQ6Ap67RaQax', '2020-09-04 08:35:04'),
(261, 11, 'ea7yiCGUACPKbGfX', 'Bank Deposit request Declined wl3mNvoKaDXmpb9a', '2020-09-04 09:12:17'),
(262, 11, 'rPNtb4H4eLSDy9wW', 'Withdraw request Approved hTCl9UQ8vEGtvmWp', '2020-09-04 10:48:27'),
(263, 11, 'JVlRWTg53BPjLwGb', 'Withdraw request Approved aHa2M9sMfD415V2V', '2020-09-04 10:48:32'),
(264, 11, 'ZcnYdfAE0mV6Sb9m', 'Withdraw request Approved 1m0dcrG9mN0vieMI', '2020-09-04 10:48:37'),
(265, 11, 'biUUi8nzV6TV0w4L', 'Withdraw request Approved M2FLNRfjYhDWStB4', '2020-09-04 10:48:42'),
(266, 11, '8qBSJndf2NkptYWl', 'Logged In', '2020-09-04 15:11:18'),
(267, 11, 'Yec9R2VcSD95lUl0', 'Logged out - ::1', '2020-09-07 00:42:57'),
(268, 11, 'Iei1jz91ercbkRt0', 'Logged In', '2020-09-07 00:43:54'),
(269, 11, 'V5b6xQCgpzo22wO3', 'Deleted Ticket #8', '2020-09-07 00:46:07'),
(270, 11, 'k7E8l3ZDse3lrjeV', 'Logged out - ::1', '2020-09-07 00:49:58'),
(271, 38, 'Jk2FQNeUx5Jg9Qjh', 'Logged out - ::1', '2020-09-07 01:20:53'),
(272, 11, 'FIUB8Mos4E1e0r7F', 'Logged In', '2020-09-07 01:20:59'),
(273, 11, '6F01iNcitThO4iVq', 'Check how much would be earned from buying Starter', '2020-09-07 01:45:39'),
(274, 11, '5iS0R7heheiHhoHn', 'Check how much would be earned from buying Starter', '2020-09-07 01:45:52'),
(275, 11, 'Z9bkwbnRnqz0Hwl1', 'Check how much would be earned from buying Starter', '2020-09-07 01:45:59'),
(276, 11, '3DUUEMydn70eLVd4', 'Logged In', '2020-09-07 06:31:58'),
(277, 11, 'wPqrqL6dQoyPVbqw', 'Logged out - ::1', '2019-12-31 23:11:30'),
(278, 11, 'F0tJcdKgswizkj6W', 'Logged In', '2019-12-31 23:11:45'),
(279, 11, 'bBdChukSsfNaTUjs', 'Started attempt to purchase Starter', '2019-12-31 23:12:05'),
(280, 11, 'LecIRFBXZmOLGUaj', 'Purchased plan #Starter', '2019-12-31 23:12:06'),
(281, 11, 'I1l6j7Kr5zPXxoY6', 'Purchased plan #Starter', '2019-12-31 23:12:13'),
(282, 11, 'IQZbz9tySalnpkYI', 'Purchased plan #Starter', '2019-12-31 23:13:49'),
(283, 11, 'hdJJEdWyUsy5sH4Q', 'Logged In', '2020-09-07 09:15:49'),
(284, 11, 'rOeLFghNgR0ofdG1', 'Logged In', '2020-09-09 11:53:50'),
(285, 11, 'gkmyeRZzDOpRD551', 'Check how much would be earned from buying Starter', '2020-09-09 12:02:34'),
(286, 11, 'WyU2KxRatX4kMLGp', 'Started attempt to purchase Starter', '2020-09-09 12:02:41'),
(287, 11, 'POzBjuGXMKrAqEJl', 'Purchased plan #Starter', '2020-09-09 12:02:52'),
(288, 11, 'KcMnpxHLL93G5ZCP', 'Created Funding Request of 300USD via CoinPayment ETH', '2020-09-09 14:40:00'),
(289, 40, 'Yd0oMuf9nKj28Cr6', 'Logged out - ::1', '2020-09-12 09:18:09'),
(290, 41, 'PBTgMU5KoATfygiE', 'Logged In', '2020-09-19 20:40:50'),
(291, 41, '8tNOjK5rDqiqgntt', 'Created Funding Request of 100USD via Paystack', '2020-09-19 20:40:57'),
(292, 41, 'GjiLjF5xwVAavpRr', 'Logged In', '2020-09-20 09:22:26'),
(293, 41, '07v4bvbirZms0al0', 'Created Funding Request of 100USD via Paystack', '2020-09-20 09:23:21'),
(294, 41, 'R6XXpMjhoIEGZctg', 'Logged In', '2020-09-22 20:42:00'),
(295, 41, 'SpneWf7fhjMpCMPI', 'Logged In', '2020-09-23 15:19:56'),
(296, 41, 'jkzyiD8bfdxaQ1HX', 'Created Funding Request of 1000USD via Boompay', '2020-09-23 15:25:07'),
(297, 41, 'a22GrD99kjb7tpm9', 'Logged In', '2020-09-23 15:25:38'),
(298, 41, 'nRuPbsFlgvJpgiEs', 'Created Funding Request of 2000USD via Boompay', '2020-09-23 15:25:45'),
(299, 41, '2XeND9Bz0ugQQeLu', 'Logged In', '2020-09-24 16:21:48'),
(300, 41, 'nHtdr19BQhxFoR9y', 'Created Funding Request of 100USD via Boompay', '2020-09-24 16:23:09'),
(301, 41, 'CgfVP9f5vOnIoQWB', 'Logged In', '2020-09-24 16:28:39'),
(302, 41, 'BZDBDrTsSuJLalAq', 'Created Funding Request of 100USD via Boompay', '2020-09-24 16:28:45'),
(303, 41, 'b6P0bbAunR1HoLQC', 'Logged In', '2020-09-24 16:48:58'),
(304, 41, 'AuyVq1PK9IW4dfps', 'Created Funding Request of 100USD via Boompay', '2020-09-24 16:49:04'),
(305, 41, 'oHGl8VNhK1v2Cz4L', 'Logged In', '2020-09-24 16:51:03'),
(306, 41, 'FhGn8ZNUpzDDb7t8', 'Created Funding Request of 200USD via Boompay', '2020-09-24 16:51:09'),
(307, 41, 'cFRsXQrCScvfUhNn', 'Logged In', '2020-09-24 16:51:28'),
(308, 41, 'wnpKNUDApCJfZLes', 'Created Funding Request of 100USD via Boompay', '2020-09-24 16:51:39'),
(309, 41, 'uX7A2DeqQQdiBkBE', 'Logged In', '2020-09-24 17:04:22'),
(310, 41, 'QT7uQGezb5sCUFIQ', 'Created Funding Request of 400USD via Boompay', '2020-09-24 17:04:33'),
(311, 41, 'mZXg28g57CNEuMre', 'Logged In', '2020-09-24 17:04:44'),
(312, 41, 'zWus83zWrQXh5WWo', 'Created Funding Request of 300USD via Boompay', '2020-09-24 17:05:01'),
(313, 41, 'fwIKWfJ8ise668Rd', 'Logged In', '2020-09-24 17:11:46'),
(314, 41, 'oJAQppgISClz0laB', 'Created Funding Request of 100USD via Boompay', '2020-09-24 17:11:56'),
(315, 41, 'vU0OmHctnfRsYfIf', 'Logged In', '2020-09-24 17:20:57'),
(316, 41, 'RP3ZVqQS1KTpWdwO', 'Created Funding Request of 100USD via Boompay', '2020-09-24 17:21:16'),
(317, 41, 'cTCTPnUcInDcoDVO', 'Logged In', '2020-09-25 15:42:59'),
(318, 41, 'QHw9oDRl3BBDmg8U', 'Created Funding Request of 100USD via Boompay', '2020-09-25 15:43:04'),
(319, 41, 'Lb4mht6uFfvgIALQ', 'Logged In', '2020-09-25 23:53:23'),
(320, 41, '6RvyuBCf7ZxixEKE', 'Created Funding Request of 100USD via Boompay', '2020-09-25 23:53:29'),
(321, 41, 'nYe4NDhRSIMbPz2a', 'Logged In', '2020-09-28 16:48:21'),
(322, 41, 'c0DiHgQ0mQZB9PAw', 'Created Funding Request of 100USD via Stripe', '2020-09-28 16:48:34'),
(323, 41, 'T9Wx2yzxmSSz4VSL', 'Verified Funding Request of 103USD via Stripe', '2020-09-28 16:50:51'),
(324, 41, 'uC5ZFNAx7at3fNWq', 'Logged In', '2020-09-29 20:51:22'),
(325, 41, 'CcsScNnspaTdiqCr', 'Created Funding Request of 100USD via Boompay', '2020-09-29 20:51:30'),
(326, 41, 'z3PKmYHzmXiLmPr3', 'Logged In', '2020-09-29 20:53:45'),
(327, 41, 'T2XDvq9lxtKPZX8e', 'Created Funding Request of 199USD via Boompay', '2020-09-29 20:53:51'),
(328, 41, 'dj25Qg5cHUcTta5g', 'Logged In', '2020-10-02 18:38:29'),
(329, 41, '5SX1NbggcdMCqxTH', 'Created Funding Request of 300USD via Boompay', '2020-10-02 18:38:38'),
(330, 41, 'gKHCwPHoiy2YIPSW', 'Logged In', '2020-10-02 18:39:56'),
(331, 40, 'BUj6sxCFOgGF0sei', 'Logged In', '2020-10-03 07:09:57'),
(332, 41, 'dS6gBiJ7BlwXOEpx', 'Logged In', '2020-10-11 14:03:26'),
(333, 41, 'sYNmKCJzU68d5nCn', 'Check how much would be earned from buying Pawn', '2020-10-11 14:24:34'),
(334, 41, 'tHAMfvIhx1Gaqpa7', 'Started attempt to purchase Pawn', '2020-10-11 14:24:52'),
(335, 41, 'JlHzogUQHL9d8cIv', 'Started attempt to purchase Pawn', '2020-10-11 14:25:12'),
(336, 41, '2qcYbuDqqsEzXlTG', 'Purchased plan #Pawn', '2020-10-11 14:25:14'),
(337, 42, 'qDzIuhYtEepcX7K3', 'Logged In', '2020-12-14 19:39:51'),
(338, 42, 'gV5TJLEavR6sB8HY', 'Logged In', '2020-12-14 19:40:08'),
(339, 42, 'Tf9Jv57hNM0zQOxc', 'Created Funding Request of 100USD via Boompay', '2020-12-14 19:40:19'),
(340, 42, 'ehmkW7PgZX09yciJ', 'Logged In', '2020-12-16 05:38:56'),
(341, 42, 'sSSwXm4AuJTDEBJn', 'Changed account photo', '2020-12-16 05:39:23'),
(342, 42, 'XDOAtVeE9Yl8iqUD', 'Logged out - ::1', '2020-12-16 05:39:28'),
(343, 43, 'oFGMiZPqZvjCQ5fg', 'Logged out - ::1', '2020-12-16 05:40:00'),
(344, 42, 'iLWoRjbsr6YJPzZl', 'Logged In', '2020-12-20 18:45:05'),
(345, 42, '1JzWnb1deLJf9TUX', 'Logged In', '2020-12-21 13:12:35'),
(346, 42, 'JQnr0oqu0uBICaf6', 'Created Funding Request of 10USD via Flutterwave', '2020-12-21 13:12:44'),
(347, 42, 'zWthlNRFxhLSdkg5', 'Logged In', '2021-01-02 09:01:11'),
(348, 42, 'mX2mSVmFWa4gGQ3d', 'Created Funding Request of 100USD via Boompay', '2021-01-02 09:18:28'),
(349, 42, 'bYDOwvmRfEEqwy8B', 'Created Funding Request of 200USD via Boompay', '2021-01-02 10:22:17'),
(350, 42, 'YgjI11qZIURjxt8Q', 'Created Funding Request of 300USD via Boompay', '2021-01-02 10:33:25'),
(351, 42, 'd905bmzhUoS0CkUB', 'Created Funding Request of 100USD via Boompay', '2021-01-07 17:58:57'),
(352, 42, 'y5AVHTqffHe2sUys', 'Created Funding Request of 1000USD via Boompay', '2021-01-21 09:50:02'),
(353, 42, '58YYLSRoAa7wmW2l', 'Created Funding Request of 1000USD via Boompay', '2021-01-21 10:04:11'),
(354, 42, 'zOIynBwibxrtBLsB', 'Created Funding Request of 100USD via CoinPayment BTC', '2021-01-21 11:19:02'),
(355, 42, 'BH7U2rjKo70bt63I', 'Created Funding Request of 100USD via CoinPayment BTC', '2021-01-21 11:19:02'),
(356, 42, '96Mz9PJqp1DJafNt', 'Created Funding Request of 10000USD via CoinPayment BTC', '2021-01-21 11:23:43'),
(357, 42, 'u7pFCSYt14Io2URQ', 'Created Funding Request of 100USD via Boompay', '2021-01-22 21:08:40'),
(358, 42, '7mnLjTqg3188t3ss', 'Created Funding Request of 1000USD via Boompay', '2021-01-22 21:21:45'),
(359, 43, 'HoJd8JTGRWhIQRXr', 'Logged In', '2021-01-28 11:19:30'),
(360, 43, 'LrcBfzXqNz3Dtnhc', 'Created Funding Request of 2USD via Flutterwave', '2021-01-28 11:20:42'),
(361, 43, 'jdPDf2lXVVTPXm6n', 'Created Funding Request of 1USD via Flutterwave', '2021-01-28 11:23:45'),
(362, 43, 'cEhEsb5Ecj0HzRjT', 'Created Funding Request of 100NGN via Flutterwave', '2021-01-28 11:28:17'),
(363, 43, 'xlptWA3EsrKF0q2t', 'Verified Funding Request of 102NGN via Flutterwave', '2021-01-28 11:29:08'),
(364, 42, 'dY9yi5iJFTDktmzK', 'Logged In', '2021-02-09 18:52:25'),
(365, 42, 'EcnFAsJ60UFGOY5v', 'Created Funding Request of 1000NGN via Boompay', '2021-02-09 18:53:35'),
(366, 42, 'krVsfXHVJSnVVweC', 'Logged In', '2021-02-09 18:54:01'),
(367, 42, 'DUI44fplSSDhXggr', 'Created Funding Request of 1000NGN via Boompay', '2021-02-09 18:54:07'),
(368, 42, 'nfsfjYinYqwLp7R4', 'Logged In', '2021-02-09 20:15:35'),
(369, 42, 'Stc9OoVo9hWEEprl', 'Created Funding Request of 2000NGN via Boompay', '2021-02-09 20:15:44'),
(370, 43, 'LLwegtaWQgeEfUh5', 'Logged In', '2021-02-10 12:00:31'),
(371, 43, 'Rmy3oeTXP3sMDVri', 'Logged In', '2021-02-10 15:31:03'),
(372, 43, 'LzlnrZFKhU7JDXf8', 'Check how much would be earned from buying dddd', '2021-02-10 15:44:26'),
(373, 43, 'jCnNMAaWUKloVxQD', 'Check how much would be earned from buying dddd', '2021-02-10 15:45:01'),
(374, 43, 'uyqlguasHRTQyzz3', 'Check how much would be earned from buying dddd', '2021-02-10 15:46:17'),
(375, 43, 'T8clQg8cQO3oqCXs', 'Started attempt to purchase dddd', '2021-02-10 15:47:30'),
(376, 43, 'D5DEQ6D89jI8mdiK', 'Started attempt to purchase dddd', '2021-02-10 15:50:19'),
(377, 43, 'tEBosovNJX1Lu8Ld', 'Started attempt to purchase dddd', '2021-02-10 15:50:30'),
(378, 43, 'lK4QhKA7ZWEdHKm1', 'Started attempt to purchase dddd', '2021-02-10 15:51:11'),
(379, 43, 'LwlSs2lmO38T1p8X', 'Purchased plan #dddd', '2021-02-10 15:51:26'),
(380, 43, 'BY6Q7tAYu5armMCA', 'Cancelled Recurring payment for #FwTFdbY1izFubyqf', '2021-02-10 15:52:40'),
(381, 43, 'G18COr0TUu4PoxJF', 'Started attempt to purchase dddd', '2021-02-10 15:56:35'),
(382, 43, '2YcWCBsvZNmpSzqs', 'Purchased plan #dddd', '2021-02-10 15:56:37'),
(383, 43, 'ALwWS6GAFnW0zkww', 'Submitted withdraw requestAqMf8tCCY3yINCKe', '2021-02-10 17:05:29'),
(384, 43, '3dAzcBUiNNUGjsoO', 'Submitted withdraw request70wiHVlUi86yF0qE', '2021-02-10 17:09:46'),
(385, 43, 'DvK7FNwfd7inCf4r', 'Submitted withdraw requestAwUijkeppi13xqS1', '2021-02-10 17:10:59'),
(386, 43, 'Cq5ZifkIOGQrOXft', 'Created Funding Request of 1000NGN via Flutterwave', '2021-02-10 17:20:43'),
(387, 43, 'dj7G631J9uXlyy2p', 'Created Funding Request of 1000NGN via Stripe', '2021-02-10 17:33:32'),
(388, 43, 'DCcG8orjfAoehzDa', 'Logged In', '2021-02-11 05:48:35'),
(389, 43, 'raj1VbqWRPBr6VJi', 'Submitted withdraw requestSTL-vjLUpp', '2021-02-11 06:22:23'),
(390, 43, 'qhy1Gili3PLqjAqk', 'Submitted withdraw requestSTL-Ja4ktj', '2021-02-11 06:23:55'),
(391, 43, 'o0fkyn8g8qZgI6ju', 'Created Funding Request of 1000NGN via Flutterwave', '2021-02-11 06:24:21'),
(392, 43, 'GCjCuWUAS9StKKGw', 'Started attempt to purchase dddd', '2021-02-11 06:59:45'),
(393, 43, 'LQ0jhihlm1LZs8OK', 'Started attempt to purchase dddd', '2021-02-11 07:00:09'),
(394, 43, 'WNOqhqsOREu5nJod', 'Started attempt to purchase dddd', '2021-02-11 07:00:13'),
(395, 43, 'kFot0K7LY97gPqAT', 'Started attempt to purchase dddd', '2021-02-11 07:02:26'),
(396, 43, 'C3re0xDRDRXHwwMt', 'Started attempt to purchase dddd', '2021-02-11 07:02:49'),
(397, 43, 'c9nhLUxlAG0AtLlh', 'Started attempt to purchase dddd', '2021-02-11 07:06:47'),
(398, 43, '3Oy1JP3jIRr4t8wK', 'Started attempt to purchase dddd', '2021-02-11 07:06:52'),
(399, 43, '7EfIXIkjAB3fAg9k', 'Purchased plan #dddd', '2021-02-11 07:06:59'),
(400, 43, 'v1Lar6P3WpWIpClk', 'Started attempt to purchase dddd', '2021-02-11 08:11:36'),
(401, 43, 'gTVeKl5CzPkMow7h', 'Purchased plan #dddd', '2021-02-11 08:11:38'),
(402, 43, 'yLBOegIYeXCEakrK', 'Started attempt to purchase dddd', '2021-02-11 08:14:22'),
(403, 43, 'vjr43jQQgsjJsgNG', 'Purchased plan #dddd', '2021-02-11 08:14:24'),
(404, 43, 'E6K1xBSppNsASfBc', 'Started attempt to purchase dddd', '2021-02-11 09:04:04'),
(405, 43, 'vowNUTVDKugFQZfY', 'Purchased plan #dddd with coupon code #JBFJSS', '2021-02-11 09:04:49'),
(406, 43, '4zo0I043olgQAGqH', 'Purchased plan #dddd', '2021-02-11 09:04:49'),
(407, 43, 'svR1htluF4Eer3sI', 'Created Funding Request of 1000NGN via Voguepay', '2021-02-11 09:36:17'),
(408, 43, '0OiNSqMC8xUFAJMS', 'Logged out - ::1', '2021-02-11 09:36:41'),
(409, 43, 'u1yG82qoWZRwFfZF', 'Logged In', '2021-02-11 09:37:50'),
(410, 43, 'D9n6204eOK2QB9GO', 'Started Recurring payment for #INV-VY9HCu', '2021-02-11 09:38:22'),
(411, 43, 'Bq8p457EEsePrBil', 'Started attempt to purchase dddd', '2021-02-11 09:43:00'),
(412, 43, '2A9CCM0mmKu5X2Ry', 'Purchased plan #dddd', '2021-02-11 09:43:01'),
(413, 43, 'w2553eWsiN4puNhs', 'Cancelled Recurring payment for #INV-mJQzgC', '2021-02-11 09:50:06'),
(414, 43, 'lA5Iu3VHMLKPsAKP', 'Started Recurring payment for #INV-mJQzgC', '2021-02-11 09:50:11'),
(415, 43, 'ixw280gcfzKUEYLo', 'Cancelled Recurring payment for #INV-mJQzgC', '2021-02-11 09:50:19'),
(416, 43, 'Zmw39MIshyqg8DEO', 'Started Recurring payment for #INV-mJQzgC', '2021-02-11 09:50:24'),
(417, 43, '5QuDxd6VR8ruAvMb', 'Cancelled Recurring payment for #INV-mJQzgC', '2021-02-11 09:50:39'),
(418, 43, '4yTxFKOrSxdeS8zE', 'Logged In', '2021-02-11 15:11:19'),
(419, 43, 'fs9Cxs9uK23Pk0Ky', 'Logged In', '2021-02-12 04:46:32'),
(420, 43, 'yWp2WXT7ZQvPAPvm', 'Logged out - ::1', '2021-02-12 05:21:39'),
(421, 43, 'DgWeYHk6rouzthVu', 'Logged In', '2021-02-12 05:21:59'),
(422, 43, 'WHUUfiwtDYHRy1hP', 'Logged out - ::1', '2021-02-12 05:22:34'),
(423, 43, 'BQ2YmYyOCfbnOgSF', 'Logged In', '2021-02-12 05:23:19'),
(424, 43, 'k5TmH8YgflwUYw4x', 'Changed Password', '2021-02-12 05:26:20'),
(425, 43, '4jdqk39CFoG1EEOR', 'Started attempt to purchase Gold', '2021-02-12 05:31:03'),
(426, 43, 'm83xVYFC0icmOhPT', 'Purchased plan #Gold', '2021-02-12 05:31:05'),
(427, 43, 'GDSoVXPaDRDH6pYN', 'Started Recurring payment for #INV-g3Umwu', '2021-02-12 05:35:02'),
(428, 43, 'BKaa7UVfbH6rs3cU', 'Started attempt to purchase Gold', '2021-02-12 05:37:00'),
(429, 43, 'd09hVYwO4xC1O9Y6', 'Purchased plan #Gold', '2021-02-12 05:37:02'),
(430, 43, 'Sh77v4HfgHGpguHZ', 'Started attempt to purchase Gold', '2021-02-12 05:50:00'),
(431, 43, 'OR7ocHAEHXyfIcjK', 'Purchased plan #Gold', '2021-02-12 05:50:02'),
(432, 43, 'yKEzLHT9JKOKzBQi', 'Started Recurring payment for #INV-V8IF99', '2021-02-12 06:03:04'),
(433, 43, 'HxbtkpwtHrevypIg', 'Cancelled Recurring payment for #INV-V8IF99', '2021-02-12 06:03:14'),
(434, 43, 'osDBGaGX33W1cDqa', 'Started attempt to purchase Gold', '2021-02-12 06:09:27'),
(435, 43, 'mB3TF400SWpzOI3D', 'Purchased plan #Gold', '2021-02-12 06:09:29'),
(436, 43, 'geSI7a7Obu53TUD1', 'Started attempt to purchase Gold', '2021-02-12 06:23:46'),
(437, 43, 'xhdlbPU3yH61BH5V', 'Purchased plan #Gold', '2021-02-12 06:23:49'),
(438, 43, 'Yum7CaZ4zj7NiJ4W', 'Logged out - ::1', '2021-02-12 06:53:17'),
(439, 43, 'd9V3fJW4QN6Rui37', 'Logged In', '2021-02-12 07:07:34'),
(440, 43, '23G4hSDgo71ERvSX', 'Activated 2fa', '2021-02-12 07:09:37'),
(441, 43, 'qAjaT6fb4fAsfArb', 'Deactivated 2fa', '2021-02-12 07:11:16'),
(442, 43, 'rhy1uKWUqyblePmN', 'Updated account details', '2021-02-12 07:11:24'),
(443, 43, 'v8d156vHPfhbvK4p', 'Changed account photo', '2021-02-12 07:11:54'),
(444, 43, 'K3hvUzvDNO8q1aZq', 'Logged out - ::1', '2021-02-12 07:11:59'),
(445, 44, 'BZsunkwhvgkIlP0F', 'Submitted KYC', '2021-02-12 07:13:13'),
(446, 43, '6rLxw30GhvIUKAjb', 'Logged In', '2021-02-12 07:36:46'),
(447, 43, 'mEqBJ8P4N1BlUwhN', 'Logged out - ::1', '2021-02-12 07:37:39'),
(448, 44, 'q95I0dsggqbtW8Rw', 'Logged In', '2021-02-12 07:37:49'),
(449, 44, 'HtdzpzZfI6KPkVUa', 'Logged out - ::1', '2021-02-12 07:37:58'),
(450, 43, 'haZkXzk7oGoogHWo', 'Logged In', '2021-02-12 07:39:08'),
(451, 43, '24adUB5RZWTAPDxP', 'Started attempt to purchase Gold', '2021-02-12 07:39:19'),
(452, 43, 'HJBo4dKMmQLvx6H3', 'Purchased plan #Gold', '2021-02-12 07:39:21'),
(453, 43, 'ptR5PHzeCvgTVj6L', 'Started attempt to purchase Gold', '2021-02-12 07:51:29'),
(454, 43, 'YmhIlQb9S4RP49G4', 'Started attempt to purchase Gold', '2021-02-12 07:51:35'),
(455, 43, 'fMrmezYZoEmor9ov', 'Started attempt to purchase Gold', '2021-02-12 07:53:50'),
(456, 43, 'XVaMbKvcbEPtA2FV', 'Started attempt to purchase Gold', '2021-02-12 07:54:19'),
(457, 43, 'P7jd9b8Z1XjkIF58', 'Started attempt to purchase Gold', '2021-02-12 07:55:26'),
(458, 43, 'PKnhtZXHptZCMumn', 'Started attempt to purchase Gold', '2021-02-12 07:55:39'),
(459, 43, '7EXD7KlgK2fAj1oL', 'Started attempt to purchase Gold', '2021-02-12 07:56:03'),
(460, 43, 'ZOtAbSAS9HylEngG', 'Purchased plan #Gold', '2021-02-12 07:56:08'),
(461, 43, 'RvYe0Bqq7BWrcjgk', 'Started attempt to purchase Gold', '2021-02-12 08:09:39'),
(462, 43, 'OgXXVnONIWcaj39j', 'Purchased plan #Gold', '2021-02-12 08:09:40'),
(463, 43, 'yNva5Y5GXJgRMA9l', 'Updated account details', '2021-02-12 08:09:54'),
(464, 43, 'LkYaR3S6UfCk3KH9', 'Logged In', '2021-02-12 10:59:01'),
(465, 43, 'aHNg3kJwipFcTDDC', 'Logged In', '2021-02-13 06:13:42'),
(466, 43, 'ZL1feIrV4KiPNu57', 'Started attempt to purchase Gold', '2021-02-13 06:20:56'),
(467, 43, 'VbEMMGkKMlxqmRXz', 'Purchased plan #Gold', '2021-02-13 06:21:01'),
(468, 43, 'WwI09NrzxwZUpr4J', 'Logged In', '2021-02-13 07:08:37'),
(469, 43, 'oY9AMfVQnHOp4Ytn', 'Logged out - ::1', '2021-02-13 07:08:52'),
(470, 43, 'Dg8R7lGftRHnRKfz', 'Logged In', '2021-02-13 07:11:51'),
(471, 43, 'nOlE2S7raYWu9RNL', 'Logged out - ::1', '2021-02-13 07:16:42'),
(472, 43, 'F2j8lzAYap0sf4qs', 'Logged In', '2021-02-13 08:39:22'),
(473, 45, 'p9GqYw2iMjLS9Qrr', 'Submitted KYC', '2021-03-16 21:44:23'),
(474, 45, 'ZU62THzp4tp9MVNX', 'Logged out - 127.0.0.1', '2021-03-16 21:59:43'),
(475, 45, '6xxjjPZVLJtWUMMv', 'Logged In', '2021-03-16 22:23:14'),
(476, 45, '7YzxQcLFkbiCKhMd', 'Logged out - 127.0.0.1', '2021-03-16 22:23:17'),
(477, 45, '63KU15L2hnWkXK1R', 'Logged In', '2021-03-16 22:24:18'),
(478, 45, 'ZDbHCCfHuP9t6lPp', 'Logged out - 127.0.0.1', '2021-03-16 22:24:22'),
(479, 43, 'LSLkfwDjFy5bzu2f', 'Deposit request Approved pbhKFhjXue0JShBj', '2021-03-18 08:22:00'),
(480, 45, '5upy51pglMP1QMIB', 'Logged In', '2021-03-18 11:54:44'),
(481, 45, 'wXKqZMFfwTgxPWx2', 'Logged In', '2021-03-19 13:41:36'),
(482, 45, 'VrGS7z5uwAnfPlrb', 'Logged In', '2021-03-19 22:29:19'),
(483, 45, 'v1ag1mm2CDZpixfv', 'Logged out - 127.0.0.1', '2021-03-19 22:29:33'),
(484, 47, 'XXPbut6Kp46cSdyb', 'Created Bank Transfer Request of1000USD', '2021-03-19 22:31:17'),
(485, 47, 'JQRG0D3U0xX2APBz', 'Bank Deposit request Approved m4MAhxm4w35lwyDQ', '2021-03-19 22:32:10'),
(486, 47, 'tV8Q7uB5yeKybaiy', 'Started attempt to purchase Silver Plan', '2021-03-19 22:33:24'),
(487, 47, '6IQ5HQSZEDgV7WI8', 'Purchased plan #Silver Plan', '2021-03-19 22:34:04'),
(488, 48, 'XPEjyHRhClUwj0k7', 'Created Funding Request of 5000USD via Blockchain BTC', '2021-03-20 14:03:39'),
(489, 48, 'hbXZ6ur1vH1Pcm8U', 'Created Funding Request of 5000USD via Blockchain BTC', '2021-03-20 14:03:45'),
(490, 48, 'g2xYEs3QSpirthFl', 'Created Bank Transfer Request of10000USD', '2021-03-20 14:09:52'),
(491, 48, 'h1VREuiPwDUyKWnT', 'Bank Deposit request Approved d3LfmvZYPHyDmXas', '2021-03-20 14:11:41'),
(492, 48, 'B1RSqg998QFKqbkw', 'Deposit request Approved Ciq123bNpIDuthUo', '2021-03-20 14:13:01'),
(493, 48, 'xXhA4lSYKzIE5ih8', 'Started attempt to purchase Gold Plan', '2021-03-20 14:16:15'),
(494, 48, 'J1fE2lqijoigr6HG', 'Purchased plan #Gold Plan', '2021-03-20 14:16:37'),
(495, 48, 'PnRJOuU3g26IdU3G', 'Started Recurring payment for #INV-9m4W8g', '2021-03-20 14:16:47'),
(496, 48, 'R9kNTbryvVq8sBBv', 'Cancelled Recurring payment for #INV-9m4W8g', '2021-03-20 14:17:16'),
(497, 45, 'jdGaPCZ6ZzRo8jjv', 'Logged In', '2021-03-25 17:01:40'),
(498, 45, 'wRCjfFCUKPA6cksX', 'Logged In', '2021-03-26 19:44:25'),
(499, 45, 'FIERHJOuQouYOxC1', 'Created Funding Request of 1000USD via Blockchain BTC', '2021-03-26 19:52:39'),
(500, 45, 'ldn1QJKO1sdAw8fb', 'Created Funding Request of 10000USD via CoinPayment BTC', '2021-03-26 19:53:07'),
(501, 45, 'VNdjya8zUSURlbVv', 'Created Funding Request of 500USD via PayPal', '2021-03-26 21:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfer`
--

CREATE TABLE `bank_transfer` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `trx` varchar(32) DEFAULT NULL,
  `amount` int NOT NULL,
  `details` text NOT NULL,
  `image` varchar(32) NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_transfer`
--

INSERT INTO `bank_transfer` (`id`, `user_id`, `trx`, `amount`, `details`, `image`, `status`, `updated_at`) VALUES
(15, 47, 'm4MAhxm4w35lwyDQ', 1000, 'smart king', '1616196677_smartk.jpg', 1, '2021-03-19 22:32:10'),
(16, 48, 'd3LfmvZYPHyDmXas', 10000, 'kllkjdhgf', '1616252992_collins.jpg', 1, '2021-03-20 14:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `claimed`
--

CREATE TABLE `claimed` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `profit_id` int NOT NULL,
  `amount` double NOT NULL,
  `date` varchar(32) NOT NULL,
  `ref` varchar(32) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `claimed`
--

INSERT INTO `claimed` (`id`, `user_id`, `profit_id`, `amount`, `date`, `ref`, `updated_at`) VALUES
(26, 43, 129, 100, '2021-02-12 00:00:00', 'HIS-HDKJhq', '2021-02-12 05:40:37'),
(27, 43, 130, 1400, '2021-02-12 00:00:00', 'HIS-8BjsT0', '2021-02-12 05:56:20'),
(28, 43, 130, 5000, '2021-02-12 00:00:00', 'HIS-4Cvq41', '2021-02-12 05:56:20'),
(29, 43, 130, 1400, '2021-02-12 00:00:00', 'HIS-ZhXVGF', '2021-02-12 05:57:24'),
(30, 43, 130, 5000, '2021-02-12 00:00:00', 'HIS-cAtVoM', '2021-02-12 05:57:24'),
(31, 43, 130, 1400, '2021-02-12 00:00:00', 'HIS-uOZ1gQ', '2021-02-12 06:05:24'),
(32, 43, 130, 5000, '2021-02-12 00:00:00', 'HIS-Aw46OZ', '2021-02-12 06:05:24'),
(33, 43, 130, 1400, '2021-02-12 00:00:00', 'HIS-x0RaLR', '2021-02-12 06:05:55'),
(34, 43, 130, 5000, '2021-02-12 00:00:00', 'HIS-QIuTQJ', '2021-02-12 06:05:55'),
(38, 43, 132, 1200, '2021-02-12 00:00:00', 'HIS-V6wCOP', '2021-02-12 06:28:43'),
(39, 43, 132, 5000, '2021-02-12 00:00:00', 'HIS-XKohhb', '2021-02-12 06:28:43'),
(40, 43, 131, 1000, '2021-02-12 00:00:00', 'HIS-PcZnuD', '2021-02-12 06:32:15'),
(41, 43, 131, 0, '2021-02-13 00:00:00', 'HIS-SBqKHW', '2021-02-13 06:13:42'),
(42, 43, 131, 5000, '2021-02-13 00:00:00', 'HIS-m3W2nk', '2021-02-13 06:13:42'),
(43, 43, 133, 2225.904, '2021-03-16 00:00:00', 'HIS-6jkfSF', '2021-03-16 21:43:50'),
(44, 43, 133, 55647.6, '2021-03-16 00:00:00', 'HIS-Fclv6V', '2021-03-16 21:43:51'),
(45, 43, 134, 1745.18, '2021-03-16 00:00:00', 'HIS-PxGwGU', '2021-03-16 21:43:51'),
(46, 43, 134, 43629.5, '2021-03-16 00:00:00', 'HIS-GyoJlI', '2021-03-16 21:43:51'),
(47, 43, 135, 200, '2021-03-16 00:00:00', 'HIS-NoWQ9V', '2021-03-16 21:43:51'),
(48, 43, 135, 5000, '2021-03-16 00:00:00', 'HIS-6O7WiJ', '2021-03-16 21:43:51'),
(49, 43, 136, 0, '2021-03-16 00:00:00', 'HIS-AqI1fy', '2021-03-16 21:43:51'),
(50, 43, 136, 51069.3, '2021-03-16 00:00:00', 'HIS-FxA5pt', '2021-03-16 21:43:51'),
(51, 47, 137, 0, '2021-03-25 00:00:00', 'HIS-XTDqE8', '2021-03-25 17:01:40'),
(52, 47, 137, 198.8, '2021-03-25 00:00:00', 'HIS-pliUG1', '2021-03-25 17:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seen` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int NOT NULL,
  `code` varchar(8) NOT NULL,
  `percent` float NOT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `code`, `percent`, `status`, `updated_at`) VALUES
(3, 'JBFJSS', 10, 1, '2021-02-11 09:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `country`, `currency`, `name`, `symbol`, `status`, `updated_at`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', 0, '0000-00-00 00:00:00'),
(2, 'America', 'Dollars', 'USD', '$', 0, '2020-09-03 20:16:48'),
(3, 'Afghanistan', 'Afghanis', 'AFN', '؋', 0, '2020-09-03 20:16:48'),
(4, 'Argentina', 'Pesos', 'ARS', '$', 0, '0000-00-00 00:00:00'),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', 0, '0000-00-00 00:00:00'),
(6, 'Australia', 'Dollars', 'AUD', '$', 0, '0000-00-00 00:00:00'),
(7, 'Azerbaijan', 'New Manats', 'AZN', 'ман', 0, '0000-00-00 00:00:00'),
(8, 'Bahamas', 'Dollars', 'BSD', '$', 0, '0000-00-00 00:00:00'),
(9, 'Barbados', 'Dollars', 'BBD', '$', 0, '0000-00-00 00:00:00'),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', 0, '0000-00-00 00:00:00'),
(11, 'Belgium', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', 0, '0000-00-00 00:00:00'),
(13, 'Bermuda', 'Dollars', 'BMD', '$', 0, '0000-00-00 00:00:00'),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b', 0, '0000-00-00 00:00:00'),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', 0, '0000-00-00 00:00:00'),
(16, 'Botswana', 'Pula', 'BWP', 'P', 0, '0000-00-00 00:00:00'),
(17, 'Bulgaria', 'Leva', 'BGN', 'лв', 0, '0000-00-00 00:00:00'),
(18, 'Brazil', 'Reais', 'BRL', 'R$', 0, '0000-00-00 00:00:00'),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', 0, '0000-00-00 00:00:00'),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', 0, '0000-00-00 00:00:00'),
(21, 'Cambodia', 'Riels', 'KHR', '៛', 0, '0000-00-00 00:00:00'),
(22, 'Canada', 'Dollars', 'CAD', '$', 0, '0000-00-00 00:00:00'),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', 0, '0000-00-00 00:00:00'),
(24, 'Chile', 'Pesos', 'CLP', '$', 0, '0000-00-00 00:00:00'),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', 0, '0000-00-00 00:00:00'),
(26, 'Colombia', 'Pesos', 'COP', '$', 0, '0000-00-00 00:00:00'),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', 0, '0000-00-00 00:00:00'),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', 0, '0000-00-00 00:00:00'),
(29, 'Cuba', 'Pesos', 'CUP', '₱', 0, '0000-00-00 00:00:00'),
(30, 'Cyprus', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', 0, '0000-00-00 00:00:00'),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', 0, '0000-00-00 00:00:00'),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', 0, '0000-00-00 00:00:00'),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', 0, '0000-00-00 00:00:00'),
(35, 'Egypt', 'Pounds', 'EGP', '£', 0, '0000-00-00 00:00:00'),
(36, 'El Salvador', 'Colones', 'SVC', '$', 0, '0000-00-00 00:00:00'),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', 0, '0000-00-00 00:00:00'),
(38, 'Euro', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', 0, '0000-00-00 00:00:00'),
(40, 'Fiji', 'Dollars', 'FJD', '$', 0, '0000-00-00 00:00:00'),
(41, 'France', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(42, 'Ghana', 'Cedis', 'GHC', '¢', 0, '0000-00-00 00:00:00'),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', 0, '0000-00-00 00:00:00'),
(44, 'Greece', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', 0, '0000-00-00 00:00:00'),
(46, 'Guernsey', 'Pounds', 'GGP', '£', 0, '0000-00-00 00:00:00'),
(47, 'Guyana', 'Dollars', 'GYD', '$', 0, '0000-00-00 00:00:00'),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', 0, '0000-00-00 00:00:00'),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', 0, '0000-00-00 00:00:00'),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', 0, '0000-00-00 00:00:00'),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', 0, '0000-00-00 00:00:00'),
(53, 'India', 'Rupees', 'INR', 'Rp', 0, '0000-00-00 00:00:00'),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', 0, '0000-00-00 00:00:00'),
(55, 'Iran', 'Rials', 'IRR', '﷼', 0, '0000-00-00 00:00:00'),
(56, 'Ireland', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', 0, '0000-00-00 00:00:00'),
(58, 'Israel', 'New Shekels', 'ILS', '₪', 0, '0000-00-00 00:00:00'),
(59, 'Italy', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', 0, '0000-00-00 00:00:00'),
(61, 'Japan', 'Yen', 'JPY', '¥', 0, '0000-00-00 00:00:00'),
(62, 'Jersey', 'Pounds', 'JEP', '£', 0, '0000-00-00 00:00:00'),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', 0, '0000-00-00 00:00:00'),
(64, 'Korea (North)', 'Won', 'KPW', '₩', 0, '0000-00-00 00:00:00'),
(65, 'Korea (South)', 'Won', 'KRW', '₩', 0, '0000-00-00 00:00:00'),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', 0, '0000-00-00 00:00:00'),
(67, 'Laos', 'Kips', 'LAK', '₭', 0, '0000-00-00 00:00:00'),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', 0, '0000-00-00 00:00:00'),
(69, 'Lebanon', 'Pounds', 'LBP', '£', 0, '0000-00-00 00:00:00'),
(70, 'Liberia', 'Dollars', 'LRD', '$', 0, '0000-00-00 00:00:00'),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', 0, '0000-00-00 00:00:00'),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', 0, '0000-00-00 00:00:00'),
(73, 'Luxembourg', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', 0, '0000-00-00 00:00:00'),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', 0, '0000-00-00 00:00:00'),
(76, 'Malta', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', 0, '0000-00-00 00:00:00'),
(78, 'Mexico', 'Pesos', 'MXN', '$', 0, '0000-00-00 00:00:00'),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', 0, '0000-00-00 00:00:00'),
(80, 'Mozambique', 'Meticais', 'MZN', 'MT', 0, '0000-00-00 00:00:00'),
(81, 'Namibia', 'Dollars', 'NAD', '$', 0, '0000-00-00 00:00:00'),
(82, 'Nepal', 'Rupees', 'NPR', '₨', 0, '0000-00-00 00:00:00'),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', 0, '0000-00-00 00:00:00'),
(84, 'Netherlands', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(85, 'New Zealand', 'Dollars', 'NZD', '$', 0, '0000-00-00 00:00:00'),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', 0, '0000-00-00 00:00:00'),
(87, 'Nigeria', 'Nairas', 'NGN', '₦', 0, '2021-03-16 21:47:20'),
(88, 'North Korea', 'Won', 'KPW', '₩', 0, '0000-00-00 00:00:00'),
(89, 'Norway', 'Krone', 'NOK', 'kr', 0, '0000-00-00 00:00:00'),
(90, 'Oman', 'Rials', 'OMR', '﷼', 0, '0000-00-00 00:00:00'),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', 0, '0000-00-00 00:00:00'),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', 0, '0000-00-00 00:00:00'),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', 0, '0000-00-00 00:00:00'),
(94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.', 0, '0000-00-00 00:00:00'),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', 0, '0000-00-00 00:00:00'),
(96, 'Poland', 'Zlotych', 'PLN', 'zł', 0, '0000-00-00 00:00:00'),
(97, 'Qatar', 'Rials', 'QAR', '﷼', 0, '0000-00-00 00:00:00'),
(98, 'Romania', 'New Lei', 'RON', 'lei', 0, '0000-00-00 00:00:00'),
(99, 'Russia', 'Rubles', 'RUB', 'руб', 0, '0000-00-00 00:00:00'),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', 0, '0000-00-00 00:00:00'),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', 0, '0000-00-00 00:00:00'),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', 0, '0000-00-00 00:00:00'),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', 0, '0000-00-00 00:00:00'),
(104, 'Singapore', 'Dollars', 'SGD', '$', 0, '0000-00-00 00:00:00'),
(105, 'Slovenia', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', 0, '0000-00-00 00:00:00'),
(107, 'Somalia', 'Shillings', 'SOS', 'S', 0, '0000-00-00 00:00:00'),
(108, 'South Africa', 'Rand', 'ZAR', 'R', 0, '0000-00-00 00:00:00'),
(109, 'South Korea', 'Won', 'KRW', '₩', 0, '0000-00-00 00:00:00'),
(110, 'Spain', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', 0, '0000-00-00 00:00:00'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', 0, '0000-00-00 00:00:00'),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', 0, '0000-00-00 00:00:00'),
(114, 'Suriname', 'Dollars', 'SRD', '$', 0, '0000-00-00 00:00:00'),
(115, 'Syria', 'Pounds', 'SYP', '£', 0, '0000-00-00 00:00:00'),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', 0, '0000-00-00 00:00:00'),
(117, 'Thailand', 'Baht', 'THB', '฿', 0, '0000-00-00 00:00:00'),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', 0, '0000-00-00 00:00:00'),
(119, 'Turkey', 'Lira', 'TRY', 'TL', 0, '0000-00-00 00:00:00'),
(120, 'Turkey', 'Liras', 'TRL', '£', 0, '0000-00-00 00:00:00'),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', 0, '0000-00-00 00:00:00'),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', 0, '0000-00-00 00:00:00'),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', 0, '0000-00-00 00:00:00'),
(124, 'United States of America', 'Dollars', 'USD', '$', 1, '2021-03-16 21:47:20'),
(125, 'Uruguay', 'Pesos', 'UYU', '$U', 0, '0000-00-00 00:00:00'),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', 0, '0000-00-00 00:00:00'),
(127, 'Vatican City', 'Euro', 'EUR', '€', 0, '0000-00-00 00:00:00'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', 0, '0000-00-00 00:00:00'),
(129, 'Vietnam', 'Dong', 'VND', '₫', 0, '0000-00-00 00:00:00'),
(130, 'Yemen', 'Rials', 'YER', '﷼', 0, '0000-00-00 00:00:00'),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, '0000-00-00 00:00:00'),
(132, 'India', 'Rupees', 'INR', '₹', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `gateway_id` int DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `try` int NOT NULL DEFAULT '0',
  `secret` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `gateway_id`, `amount`, `charge`, `btc_amo`, `btc_wallet`, `trx`, `status`, `try`, `secret`, `txn_id`, `status_url`, `created_at`, `updated_at`) VALUES
(198, 42, 108, '13.3', '3.3', '0', '', 'VAbU0loSkh79YjkQ', 0, 0, 'RIYfd561', NULL, NULL, '2020-12-21 13:12:44', '2020-12-21 13:12:44'),
(205, 42, 505, '103.03', '3.0300000000000002', '0', '', 's2zem0KcbSRCyxwh', 0, 0, 'JBYw76hk', NULL, NULL, '2021-01-21 11:19:02', '2021-01-21 11:19:02'),
(206, 42, 505, '103.03', '3.0300000000000002', '0.00324292', NULL, 'nOL9YCqmzMPZA0Ns', 0, 0, 'FMf7gsEZ', NULL, NULL, '2021-01-21 11:19:02', '2021-01-21 11:22:41'),
(207, 42, 505, '10252.51', '252.51', '0.32382664', '77f90f5d5cb242bec85eb1f4ec2e5cec6afee88ed0896965bb19887811040b2a', 'qyCNiTQ5sbqlDgv5', 0, 0, 'Br2PV0zW', NULL, NULL, '2021-01-21 11:23:43', '2021-01-21 11:23:45'),
(210, 43, 108, '5.0600000000000005', '3.06', '0', '', '22hMdxtoHGg2uxZE', 0, 0, 'i33bcoey', NULL, NULL, '2021-01-28 11:20:42', '2021-01-28 11:20:42'),
(211, 43, 108, '2.01', '1.01', '0', '', 'BRWoOGAZgaoMxFGd', 0, 0, 'IEmvil8a', NULL, NULL, '2021-01-28 11:23:45', '2021-01-28 11:23:45'),
(212, 43, 108, '102', '2', '0', '', 'pQR5PXYrf9m823Ef', 1, 0, 'wzYC1XKQ', NULL, NULL, '2021-01-28 11:28:17', '2021-01-28 11:29:08'),
(216, 43, 108, '1011', '11', '0', '', 'mBCNXdsRpxQZsIVS', 0, 0, 'bzsYGTce', NULL, NULL, '2021-02-10 17:20:43', '2021-02-10 17:20:43'),
(217, 43, 103, '1020', '20', '0', '', 'FN06Z5enR19I637Z', 0, 0, 'kw1wGTww', NULL, NULL, '2021-02-10 17:33:32', '2021-02-10 17:33:32'),
(218, 43, 108, '1010', '10', '0', '', 'Hw5ucMl56x3xv2fK', 0, 0, '9WTaiYtU', NULL, NULL, '2021-02-11 06:24:21', '2021-02-11 06:24:21'),
(219, 43, 106, '1030', '30', '0', '', 'pbhKFhjXue0JShBj', 1, 0, 'YTq8YfdB', NULL, NULL, '2021-02-11 09:36:17', '2021-03-18 08:22:00'),
(220, 48, 501, '5050', '50', '0', '', '5hWdsP3H1fYqDTLz', 0, 0, 'JiemDT0V', NULL, NULL, '2021-03-20 14:03:39', '2021-03-20 14:03:39'),
(221, 48, 501, '5050', '50', '0', '', 'Ciq123bNpIDuthUo', 1, 0, 'sXqvtflL', NULL, NULL, '2021-03-20 14:03:45', '2021-03-20 14:13:01'),
(222, 45, 501, '1010', '10', '0', '', 'ZBnXaBHvfMw4GZ3v', 0, 0, 'Anbwmzvl', NULL, NULL, '2021-03-26 19:52:39', '2021-03-26 19:52:39'),
(223, 45, 505, '10051', '51', '0', '', 'ihGWiUV54KaDweQX', 0, 0, 'rVr4EG26', NULL, NULL, '2021-03-26 19:53:07', '2021-03-26 19:53:07'),
(224, 45, 101, '550', '50', '0', '', 'yZaPYgf7rHu7ra6A', 0, 0, 'QcDZ56zp', NULL, NULL, '2021-03-26 21:25:29', '2021-03-26 21:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` text NOT NULL,
  `ip_address` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `user_id`, `name`, `ip_address`, `updated_at`) VALUES
(22, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '::1', '2020-12-06 13:04:14'),
(23, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '::1', '2020-12-20 19:22:38'),
(24, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2020-12-21 13:11:55'),
(25, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '::1', '2021-01-05 11:31:04'),
(26, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '::1', '2021-01-07 18:24:13'),
(27, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '::1', '2021-01-11 07:53:47'),
(28, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-09 21:42:36'),
(29, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '::1', '2021-02-11 06:02:20'),
(30, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '::1', '2021-02-11 09:24:36'),
(31, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '::1', '2021-02-11 15:55:59'),
(32, 47, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '::1', '2021-02-12 04:46:08'),
(33, 43, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-12 05:21:59'),
(34, 43, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-12 05:23:19'),
(35, 43, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-12 07:07:34'),
(36, 44, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-12 07:12:18'),
(37, 43, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-12 07:36:46'),
(38, 44, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-12 07:37:49'),
(39, 43, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-12 07:39:08'),
(40, 43, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-12 10:59:01'),
(41, 43, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-13 06:13:42'),
(42, 43, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-13 07:08:37'),
(43, 43, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-13 07:11:51'),
(44, 43, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15', '::1', '2021-02-13 08:39:22'),
(45, 45, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0', '127.0.0.1', '2021-03-16 21:43:50'),
(46, 45, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0', '127.0.0.1', '2021-03-16 22:23:14'),
(47, 45, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0', '127.0.0.1', '2021-03-16 22:24:18'),
(48, 46, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0', '127.0.0.1', '2021-03-17 08:32:05'),
(49, 45, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '127.0.0.1', '2021-03-18 11:54:44'),
(50, 45, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '127.0.0.1', '2021-03-19 13:41:36'),
(51, 45, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '127.0.0.1', '2021-03-19 22:29:19'),
(52, 47, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '127.0.0.1', '2021-03-19 22:30:36'),
(53, 48, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '127.0.0.1', '2021-03-20 13:52:28'),
(54, 45, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '127.0.0.1', '2021-03-25 17:01:40'),
(55, 45, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0', '127.0.0.1', '2021-03-26 19:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `etemplates`
--

CREATE TABLE `etemplates` (
  `id` int UNSIGNED NOT NULL,
  `esender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emessage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twilio_sid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twilio_auth` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twilio_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etemplates`
--

INSERT INTO `etemplates` (`id`, `esender`, `mobile`, `emessage`, `twilio_sid`, `twilio_auth`, `twilio_number`, `created_at`, `updated_at`) VALUES
(1, 'support@boomchart.com.ng', '+1234567890', '<div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br />\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff; height: 271px;\" width=\"592\" align=\"center\">\r\n<tbody>\r\n<tr style=\"height: 271px;\">\r\n<td class=\"column\" style=\"padding: 0px; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 590px; height: 271px;\"><br />\r\n<div style=\"margin-left: 20px; margin-right: 20px;\"><span style=\"font-size: large;\">Hi {{name}},<br /></span>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\">&nbsp;</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\">&nbsp;</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\">\r\n<p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br /><strong>KINGSMEN</strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'AC590b33681d6cee2fd264805fef3f357c', '822ba44fbff66ddfd8494ce853aaaa8b', '+12562429305', '2018-01-09 23:45:09', '2020-06-09 14:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int NOT NULL,
  `question` text NOT NULL,
  `answer` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `updated_at`) VALUES
(43, 'What is Kingsmen?', 'Kingsmen is a registered digital asset investment firm based in the UK. The platform, which includes advanced basic and technical analysis at the source of high return performance, offers high &amp; fixed interest return. Aiming for success with its international investor network, experienced team, privileged information from business and technology world; Bynamic stands out from its competitors with its proven quality and ease of use. The company, which is managed under the leadership of people who think and foresee the future, is committed to achieving high returns from well-diversified portfolios and prioritizing clients.', '2020-09-04 08:17:24'),
(44, 'Guaranteed interest returns, but how?', 'Digital assets are a class of assets considered dangerous and inconvenient. Many reasons such as liquidity, money laundering accusation, uncertainty of regulation, access restriction', '2020-09-04 08:16:52'),
(45, 'What are company principles?', 'Successful investment management companies base their business on a core investment philosophy, and Bynamic is no different. Although we offer innovative and specific strategies through digital asset funds', '2020-09-04 08:17:03'),
(46, 'What are digital assets and how are they valued?', '<p>Digital assets distributed ledger based electronic means of exchanges. Transactions involving them are secured by cryptography, and they have dedicated servers for verification of transactions and the creation of extra units. The most popular of them are Bitcoin, Ethereum, Litecoin, etc. All digital assets are valued by price action, and as a result, almost total control is in the hand of the investing public.</p>', '2020-02-18 21:43:17'),
(50, 'How can i ask for support?', 'We are here to help you with any problems and questions you may encounter while using the platform and during your investment experience. You can always contact or turn the situation into an opportunity', '2020-09-04 08:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int UNSIGNED NOT NULL,
  `main_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minamo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `main_name`, `name`, `gateimg`, `minamo`, `maxamo`, `charge`, `val1`, `val2`, `status`, `created_at`, `updated_at`) VALUES
(101, 'PayPal', 'PayPal', 'paypal.png', '5', '1000', '10', 'blait455@gmail.com', NULL, 1, NULL, '2021-03-26 21:25:12'),
(102, 'PerfectMoney', 'Perfect Money', 'perfectmoney.png', '20', '20000', '2', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', 0, NULL, '2021-03-26 19:45:52'),
(103, 'Stripe', 'Stripe', 'stripe.png', '20', '20000', '2', 'sk_test_4eC39HqLyjWDarjtT1zdp7dc', 'G079qn4Q7XATZBqyoCkBteGRg', 0, NULL, '2021-03-26 19:46:01'),
(104, 'Skrill', 'Skrill', 'skrill.png', '10', '50000', '3', 'demoqco@sun-fish.com', 'skrill', 0, NULL, '2021-03-26 19:46:09'),
(106, 'Voguepay', 'Voguepay', 'voguepay.png', '10', '50000', '3', NULL, NULL, 0, NULL, '2021-03-26 19:46:19'),
(107, 'Paystack', 'Paystack', 'paystack.png', '10', '50000', '3', 'pk_live_293d04f581857487ef9b5cd8cd0f843f7728c3be', NULL, 0, NULL, '2021-03-26 19:46:29'),
(108, 'Flutterwave', 'Flutterwave', 'flutterwave.png', '1', '50000', '1', 'FLWPUBK-06d63b05eb29e07b774db3f6dc871b90-X', 'FLWSECK-6b1abf0e8e65353d3c18262706f164ee-X', 0, NULL, '2021-03-26 19:46:41'),
(501, 'Blockchain.info', 'Blockchain BTC', 'blockchain.png', '1', '55000', '1', 'a5f1cf3b6b418fc6304ff7e186041b73c19c2d3e16dedac6c1cafa64704d1e2e', 'xpub6CjfQJqY6Ctz1ccjTpVR7NAqKAKgJ5XDbpbxM2MTRUhznBXoE7Lo8NW749FNZheLfC9EcqAh2RRRtjbQ2ztxXJmiwVnQZNWJxgfeFSphpQM', 1, NULL, '2021-03-26 21:32:03'),
(505, 'CoinPayment - BTC', 'CoinPayment BTC', 'coinpayment.png', '1', '50000', '0.51', '77f90f5d5cb242bec85eb1f4ec2e5cec6afee88ed0896965bb19887811040b2a', 'dDe9E59433F702a7220c8c71460500DAc023E199BF95d556d1cF4d8bE90609c0', 0, NULL, '2021-03-26 21:19:49'),
(506, 'CoinPayment - ETH', 'CoinPayment ETH', 'coinpayment.png', '1', '50000', '0.51', '77f90f5d5cb242bec85eb1f4ec2e5cec6afee88ed0896965bb19887811040b2a', 'dDe9E59433F702a7220c8c71460500DAc023E199BF95d556d1cF4d8bE90609c0', 0, NULL, '2021-03-26 21:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int NOT NULL,
  `image_link` varchar(128) NOT NULL,
  `image_link2` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image_link`, `image_link2`, `updated_at`) VALUES
(1, 'images/logo_1616798940.png', 'images/favicon_1616798970.png', '2021-03-26 21:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` varchar(32) NOT NULL,
  `updated_at` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 'AML Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</p>', 1, '2019-07-31 11:43:14', '2019-11-11 01:21:30'),
(6, 'Diversity', '<header>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div>\r\n<h1>Diversity</h1>\r\n<p>Individuals. Ideas. Inspiration. Yes, we\'re open</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</header>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<div>\r\n<p>Diversity and inclusion matter in our business. An inclusive and diverse workforce makes us better leaders and contributes to a more innovative, dynamic and, ultimately, more successful company. And, variety helps us meet the needs of our diverse client base.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<h2 id=\"col1textimage\">Inclusiveness</h2>\r\n<div>\r\n<p>We promote inclusion and encourage open dialogue to draw out everyone\'s opinions and perspectives. We recognize a diverse range of contributions to keep our people energetic, engaged and inspired. And we are a signatory to the UN Standards of Conduct for Business regarding tackling LGBTI discrimination around the world.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<h2 id=\"col2textimage\">Flexibility</h2>\r\n<div>\r\n<p>We offer a modern, flexible working environment. We work where and how it\'s most appropriate according to individual, role and team requirements.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2020-02-15 23:02:32', '2020-02-16 20:47:41'),
(7, 'Sponsoring', '<div class=\"pageheadline pageheadline__base\">\r\n<h2 class=\"pageheadline__title\"><span class=\"pageheadline__hl pageheadline__hl--xsmall\">The big picture</span></h2>\r\n</div>\r\n<div class=\"leadtext leadtext__base\">\r\n<div class=\"leadtext__rte\">\r\n<p>We&rsquo;re passionate about supporting the places where we live and work. Through our long-standing sponsorships of motor sports and contemporary art, we connect with communities in new and exciting ways every day. It&rsquo;s our way of understanding how the world works, one pit stop and brush stroke at a time.</p>\r\n</div>\r\n</div>', 1, '2020-02-15 23:06:08', '2020-02-15 23:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'ronnie@gmail.com', 'IFsbuBWs5ZgZcoQGMivzLXy8XCvOne', '2018-05-16 01:28:41', NULL),
(2, 'ronnie@gmail.com', 'fHkcBEMW78ef43pmSswx8kVHqLcgDx', '2018-05-23 00:19:47', NULL),
(3, 'ronnie@gmail.com', 'tNPjzNUcsdEYeSPCutmDy8VfbECMUY', '2018-05-23 00:28:28', NULL),
(4, 'ronniearea@gmail.com', 'GXtEiyl8MGzNwMR5tNdRCEI7dTyuVX', '2018-05-27 16:02:22', NULL),
(5, 'abirkhan75@gmail.com', 'Z6sHQHOATk5fluqi0vAJeyqzEd0ZXz', '2018-05-27 05:54:38', NULL),
(6, 'haha@haha.co', 'IDx0BrjOWN6p0FGFpmOdgG6wrdtqO2', '2018-05-28 21:20:01', NULL),
(7, 'haha@haha.co', 'dD4UFej2PEFSEmBil48SJPw1l2zUSv', '2018-05-28 21:26:54', NULL),
(8, 'haha@haha.co', 'gbchqenwrcLnZPhzdjAtpR92V8vwwm', '2018-05-28 21:51:15', NULL),
(9, 'ronniearea@gmail.com', 'aDcOh1kIodnZh7xS1PIfWsQhMpgMdz', '2018-07-07 00:17:52', NULL),
(10, 'ronniearea@gmail.com', 'f1cIXMOls67f0fZTNgrabFt2gz1Tm3', '2018-07-07 00:18:43', NULL),
(11, 'ronniearea@gmail.com', 'otlQ1ZqDnK3fG4ppUJzah8vML0hbWZ', '2018-08-10 22:45:31', NULL),
(12, 'ronniearea@gmail.com', 'voucnaTSJ9zVb68fE89HFlTxpFV5ci', '2018-11-10 06:32:43', NULL),
(13, 'user@test.com', '4eUH4Lgx90OC18eXcDnlczyHNWcr2B', '2020-01-31 10:14:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `percent` varchar(32) NOT NULL,
  `duration` varchar(128) NOT NULL,
  `period` varchar(32) NOT NULL,
  `min_deposit` varchar(128) NOT NULL,
  `amount` varchar(128) NOT NULL,
  `status` int NOT NULL,
  `ref_percent` float DEFAULT NULL,
  `bonus` float DEFAULT NULL,
  `interest` varchar(32) DEFAULT NULL,
  `compound` varchar(32) DEFAULT NULL,
  `image` varchar(32) DEFAULT NULL,
  `claim` int DEFAULT NULL,
  `recurring` int DEFAULT NULL,
  `popular` int DEFAULT NULL,
  `subscribers` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `percent`, `duration`, `period`, `min_deposit`, `amount`, `status`, `ref_percent`, `bonus`, `interest`, `compound`, `image`, `claim`, `recurring`, `popular`, `subscribers`, `updated_at`) VALUES
(17, 'Silver Plan', '2', '5', 'Day', '100', '500', 1, NULL, NULL, '-90', '10', NULL, 1, 1, 1, 1, '2021-03-20 14:16:37'),
(18, 'Gold Plan', '1', '14', 'Day', '1000', '5000', 1, NULL, NULL, '-86', '14', NULL, 1, 1, 0, 1, '2021-03-20 14:16:37'),
(19, 'Diamond Plan', '1', '21', 'Day', '5100', '10000', 1, NULL, NULL, '-79', '21', NULL, 1, 1, 0, NULL, '2021-03-20 00:18:39'),
(20, 'Platinum Plan', '0.5', '30', 'Day', '11000', '50000', 1, NULL, NULL, '-85', '15', NULL, 1, 1, 0, NULL, '2021-03-20 00:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

CREATE TABLE `profits` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `plan_id` int NOT NULL,
  `amount` float NOT NULL,
  `profit` float NOT NULL,
  `real_profit` varchar(32) DEFAULT NULL,
  `claimed` varchar(32) DEFAULT NULL,
  `status` int NOT NULL,
  `trx` varchar(16) NOT NULL,
  `end_date` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `recurring` int DEFAULT '0',
  `c_r` int DEFAULT NULL,
  `bonus` double DEFAULT NULL,
  `coupon` int DEFAULT '0',
  `c_code` varchar(8) DEFAULT NULL,
  `c_percent` int DEFAULT NULL,
  `percent` varchar(32) DEFAULT NULL,
  `duration` varchar(32) DEFAULT NULL,
  `c_bonus` varchar(32) DEFAULT NULL,
  `compound` varchar(32) DEFAULT NULL,
  `interest` varchar(32) DEFAULT NULL,
  `claim` int DEFAULT NULL,
  `bonus_paid` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profits`
--

INSERT INTO `profits` (`id`, `user_id`, `plan_id`, `amount`, `profit`, `real_profit`, `claimed`, `status`, `trx`, `end_date`, `date`, `recurring`, `c_r`, `bonus`, `coupon`, `c_code`, `c_percent`, `percent`, `duration`, `c_bonus`, `compound`, `interest`, `claim`, `bonus_paid`, `updated_at`) VALUES
(130, 43, 16, 5000, 6000, '9800', NULL, 2, 'INV-V8IF99', '2021-02-11 06:50:02', '2021-01-11 06:50:02', 1, 0, NULL, 0, NULL, NULL, '4', '1 Month', '8', '120', '20', 1, NULL, '2021-03-26 19:44:25'),
(131, 43, 16, 5000, 6000, '9400', '1000', 2, 'INV-7XxUzh', '2021-02-13 07:09:29', '2021-01-13 07:09:29', 1, NULL, NULL, 0, NULL, NULL, '4', '1 Month', '8', '120', '20', 1, NULL, '2021-03-26 19:44:25'),
(132, 43, 16, 5000, 6000, '9800', NULL, 2, 'INV-fX7l1G', '2021-02-11 07:23:49', '2021-01-11 07:23:49', 1, NULL, NULL, 0, NULL, NULL, '4', '1 Month', '8', '120', '20', 1, NULL, '2021-03-26 19:44:25'),
(133, 43, 16, 55647.6, 66777.1, '37840.368', NULL, 2, 'INV-tboLva', '2021-03-12 08:39:21', '2021-02-12 08:39:21', 1, NULL, NULL, 0, NULL, NULL, '4', '1 Month', '8', '120', '20', 1, NULL, '2021-03-26 23:07:14'),
(134, 43, 16, 43629.5, 52355.4, '29668.06', NULL, 2, 'INV-svk4yL', '2021-03-14 08:56:08', '2021-02-12 08:56:08', 1, NULL, NULL, 0, NULL, NULL, '4', '30 Day', '8', '120', '20', 1, NULL, '2021-03-26 19:44:25'),
(135, 43, 16, 5000, 6000, '3400', NULL, 2, 'INV-URhnoG', '2021-03-14 09:09:40', '2021-02-12 09:09:40', 1, NULL, NULL, 0, NULL, NULL, '4', '30 Day', '8', '120', '20', 1, NULL, '2021-03-26 19:44:25'),
(136, 43, 16, 51069.3, 61283.2, '32684.352', NULL, 2, 'INV-swnXiD', '2021-03-15 07:21:01', '2021-02-13 07:21:01', 1, NULL, NULL, 0, NULL, NULL, '4', '30 Day', '8', '120', '20', 1, NULL, '2021-03-26 23:07:14'),
(137, 47, 17, 198.8, 19.88, '-178.92', NULL, 2, 'INV-8jgR4E', '2021-03-24 23:34:04', '2021-03-19 23:34:04', 1, NULL, NULL, 0, NULL, NULL, '2', '5 Day', NULL, '10', '-90', 1, NULL, '2021-03-25 17:01:40'),
(138, 48, 18, 2000, 120, '120', NULL, 1, 'INV-9m4W8g', '2021-04-03 15:16:37', '2021-03-20 15:16:37', 1, 0, NULL, 0, NULL, NULL, '1', '14 Day', NULL, '14', '-86', 1, NULL, '2021-03-26 19:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `ref_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ref_earning`
--

CREATE TABLE `ref_earning` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `plan_id` int DEFAULT NULL,
  `ref_id` varchar(16) DEFAULT NULL,
  `referral` int NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reply_support`
--

CREATE TABLE `reply_support` (
  `id` int NOT NULL,
  `ticket_id` varchar(32) NOT NULL,
  `reply` text NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply_support`
--

INSERT INTO `reply_support` (`id`, `ticket_id`, `reply`, `status`, `updated_at`) VALUES
(1, '888883', 'hello', 0, '0000-00-00 00:00:00'),
(2, '888883', 'We are working on your issue', 0, '0000-00-00 00:00:00'),
(3, '888883', 'hi', 0, '2020-02-14 08:20:58'),
(4, '888883', 'sdfg', 1, '2020-02-15 13:47:56'),
(5, '888883', 'sdfg', 1, '2020-02-15 13:48:46'),
(6, '1581775991', 'ok', 1, '2020-02-19 15:24:24'),
(7, 'sHzyERi8sSOZ17hp', 'hey', 1, '2020-06-06 15:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `image_link` varchar(32) DEFAULT NULL,
  `review` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `occupation`, `image_link`, `review`, `status`, `updated_at`) VALUES
(11, 'Jason Well', 'Forex trader', 'update_1581806819.jpg', '<p>From boarding passes to transit and movie tickets, there\'s pretty much nothing you can\'t store with Front Pay.</p>', 1, '2020-09-03 19:59:01'),
(12, 'JacK Mill', 'Market analyst', 'update_1581806843.jpg', 'From boarding passes to transit and movie tickets, there\'s pretty much nothing you can\'t store with Front Pay.', 1, '2020-02-15 21:47:23'),
(13, 'Micheal Pete', 'Forex analyst', 'update_1581806792.jpg', 'From boarding passes to transit and movie tickets, there\'s pretty much nothing you can\'t store with Front Pay.', 1, '2020-02-15 21:46:32'),
(14, 'Big brother', 'Web developer', 'update_1581806914.jpg', 'From boarding passes to transit and movie tickets, there\'s pretty much nothing you can\'t store with Front Pay.', 1, '2020-02-15 21:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `details`, `updated_at`) VALUES
(1, 'Industry best practices', 'braille', 'Kingsmen supports a variety of the most popular digital currencies.', '2020-02-18 16:28:13'),
(2, 'Protected by insurance', 'certificate', 'Cryptocurrency stored on our servers is covered by our insurance policy.', '2020-02-18 16:26:44'),
(3, 'Secure Storage Facility', 'puzzle-piece', 'We store the vast majority of the digital assets in secure offline storage.', '2020-02-18 16:31:49'),
(4, 'Account Certified Privacy', 'coffee', 'We will never share your private data without your permission', '2020-02-18 16:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `site_name` varchar(200) DEFAULT NULL,
  `site_desc` text,
  `livechat` text,
  `email` varchar(128) DEFAULT NULL,
  `mobile` varchar(128) DEFAULT NULL,
  `address` text,
  `balance_reg` double DEFAULT NULL,
  `email_notify` int DEFAULT NULL,
  `sms_notify` int DEFAULT NULL,
  `kyc` int DEFAULT NULL,
  `kyc_restriction` int DEFAULT NULL,
  `email_verification` int DEFAULT NULL,
  `sms_verification` int DEFAULT NULL,
  `registration` int DEFAULT NULL,
  `withdraw_charge` varchar(191) DEFAULT NULL,
  `transfer_charge` int DEFAULT NULL,
  `referral` int NOT NULL DEFAULT '0',
  `recaptcha` int DEFAULT '0',
  `language` int DEFAULT '1',
  `blog` int DEFAULT '1',
  `d_c` varchar(8) DEFAULT NULL,
  `m_c` varchar(8) DEFAULT NULL,
  `s_c` varchar(8) DEFAULT NULL,
  `services` int DEFAULT '0',
  `plan` int DEFAULT '0',
  `review` int DEFAULT '0',
  `team` int DEFAULT '0',
  `stat` int DEFAULT '0',
  `contact` int DEFAULT '0',
  `faq` int DEFAULT '0',
  `upgrade_status` int DEFAULT '0',
  `upgrade_fee` double DEFAULT NULL,
  `transfer` int DEFAULT '1',
  `next_settlement` varchar(32) DEFAULT NULL,
  `duration` varchar(32) DEFAULT NULL,
  `period` varchar(32) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `site_name`, `site_desc`, `livechat`, `email`, `mobile`, `address`, `balance_reg`, `email_notify`, `sms_notify`, `kyc`, `kyc_restriction`, `email_verification`, `sms_verification`, `registration`, `withdraw_charge`, `transfer_charge`, `referral`, `recaptcha`, `language`, `blog`, `d_c`, `m_c`, `s_c`, `services`, `plan`, `review`, `team`, `stat`, `contact`, `faq`, `upgrade_status`, `upgrade_fee`, `transfer`, `next_settlement`, `duration`, `period`, `updated_at`) VALUES
(1, 'The best place to invest', 'Capital-wave', 'Kingsmen platform is at your service.', NULL, 'info@capital-wave.com', '+1234567894, +2345666666', '47 Nungua Link Road 2nd Floor,\r\nBigboss,England', 10, 0, 0, 0, 0, 0, 0, 1, '4', 5, 1, 0, 1, 1, '#ffffff', '#f9f0e1', '#efb028', 1, 1, 1, 1, 1, 1, 1, 1, 10, 1, '2021-03-28 00:00:00', '2', 'Day', '2021-03-26 19:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `type`, `value`, `updated_at`) VALUES
(1, 'facebook', 'https://facebook.com/', '2020-02-09 07:09:22'),
(2, 'instagram', 'https://instagram.com/', '0000-00-00 00:00:00'),
(3, 'twitter', 'https://twitter.com/', '0000-00-00 00:00:00'),
(4, 'skype', NULL, '2020-02-15 21:59:58'),
(5, 'pinterest', NULL, '2020-02-15 22:00:20'),
(7, 'linkedin', NULL, '2020-02-15 22:00:07'),
(8, 'youtube', NULL, '2020-02-15 21:59:48'),
(9, 'whatsapp', 'https://whatsapp.com/', '2020-02-09 07:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int NOT NULL,
  `subject` text NOT NULL,
  `priority` varchar(8) NOT NULL,
  `message` text NOT NULL,
  `status` int NOT NULL,
  `user_id` int NOT NULL,
  `ticket_id` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `image` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `position`, `facebook`, `twitter`, `linkedin`, `status`, `image`, `updated_at`) VALUES
(1, 'Alexey Titov', 'Chief Executive Officer', 'https://facebook.com/boomchart', 'https://facebook.com/boomchart', 'https://facebook.com/boomchart', 1, 'team_1596040896.jpg', '2020-07-29 15:41:36'),
(2, 'Alexey Titov', 'Chief Executive Officer', 'https://facebook.com/boomchart', 'https://facebook.com/boomchart', 'https://facebook.com/boomchart', 1, 'team_1596040864.jpg', '2020-07-29 15:41:04'),
(3, 'Alexey Titov', 'Chief Executive Officer', 'https://facebook.com/boomchart', 'https://facebook.com/boomchart', 'https://facebook.com/boomchart', 1, 'team_1596040879.jpg', '2020-07-30 09:20:28'),
(4, 'Micheal Pete', 'Technical Officer', 'https://facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 1, 'team_1596040796.jpg', '2020-07-29 15:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int NOT NULL,
  `ref_id` varchar(32) NOT NULL,
  `amount` varchar(32) NOT NULL,
  `charge` int DEFAULT NULL,
  `sender_id` int NOT NULL,
  `receiver_id` int DEFAULT NULL,
  `temp` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trending`
--

CREATE TABLE `trending` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `cat_id` int NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`id`, `title`, `details`, `image`, `cat_id`, `views`, `status`, `updated_at`) VALUES
(9, 'Budget for Your Winter Trip to Cancun', '<p style=\"color:#666666;font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;background-color:#ffffff;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabom voluptatem reprehenderit qui in ea voluptate.</p>\n<p style=\"color:#666666;font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;background-color:#ffffff;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt.</p><p>\nThree main factors\n</p>\n\n<p style=\"color:#666666;font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;background-color:#ffffff;\">Consectetur adipisci velit sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam.</p>\n<ul>\n<li>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse.</li>\n<li>Nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</li>\n<li>Dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.</li>\n</ul><p>\n\n</p>\n\n<p>At vero eose accusamus iusto dignissim ducimus blanditiis praesentium voluptatum deleniti atque oddi corrupti dolores membrant.</p><p>\nMARK HARRIS\n</p>\n\n<p style=\"color:#666666;font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;background-color:#ffffff;\">Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, aut reiciendis voluptatibus maiores consequatur perferendis doloribus asperiores repellat.</p><p>\nA report conclusion\n</p>\n\n<p style=\"color:#666666;font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;background-color:#ffffff;\">Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>', 'post_1585828221.jpg', 2, 27, 1, '2021-03-23 14:48:59'),
(10, 'We are still choosing to help you grow your money and your confidence', '<p>We don&rsquo;t have a crystal ball, and can&rsquo;t predict when rates will change again, but we wanted to clearly communicate what&rsquo;s happening today. We believe that maintaining our high Protected Goals Account rates&mdash;and rewarding the choice to save&mdash;will help our customers continue to feel confident with their money.</p>', 'post_1585828243.jpg', 2, 2, 1, '2020-04-02 10:50:44'),
(11, 'Prioritize your savings goals based on what you really want.', '<p>You know you should be saving, but what should you save for first? Prioritizing your savings goals can be confusing. Here&rsquo;s how to sift through it all.</p>', 'post_1585828288.jpg', 2, 6, 1, '2020-04-03 16:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `trending_cat`
--

CREATE TABLE `trending_cat` (
  `id` int NOT NULL,
  `categories` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trending_cat`
--

INSERT INTO `trending_cat` (`id`, `categories`, `updated_at`) VALUES
(2, 'Inspiration', '0000-00-00 00:00:00'),
(3, 'Company', '0000-00-00 00:00:00'),
(4, 'Engineering', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ui_design`
--

CREATE TABLE `ui_design` (
  `id` int NOT NULL,
  `s6_title` text,
  `s7_title` text,
  `s8_title` text,
  `s8_body` text,
  `s7_body` text,
  `s7_image` varchar(32) DEFAULT NULL,
  `s6_body` text,
  `s6_image` varchar(32) DEFAULT NULL,
  `s5_title` text,
  `s5_body` text,
  `s4_title` text,
  `s4_body` text,
  `s4_image` varchar(32) DEFAULT NULL,
  `s3_title` text,
  `s3_body` text,
  `s3_image` varchar(32) DEFAULT NULL,
  `s2_image` varchar(32) DEFAULT NULL,
  `s2_title` text,
  `s2_body` text,
  `s1_title` text,
  `header_title` text,
  `header_body` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item1_title` text,
  `item1_body` text,
  `item2_title` text,
  `item2_body` text,
  `item3_title` text,
  `item3_body` text,
  `team` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ui_design`
--

INSERT INTO `ui_design` (`id`, `s6_title`, `s7_title`, `s8_title`, `s8_body`, `s7_body`, `s7_image`, `s6_body`, `s6_image`, `s5_title`, `s5_body`, `s4_title`, `s4_body`, `s4_image`, `s3_title`, `s3_body`, `s3_image`, `s2_image`, `s2_title`, `s2_body`, `s1_title`, `header_title`, `header_body`, `created_at`, `updated_at`, `item1_title`, `item1_body`, `item2_title`, `item2_body`, `item3_title`, `item3_body`, `team`) VALUES
(1, 'Focused, Active Management of  High-Growth Digital Assets.', 'Backed by strong global partners', 'Diversify your investment porfolio', 'Kingsmen is fully legit and officially registered company whose activities are regulated by the financial control authorities under the jurisdiction of the United Kingdom. Accepting our terms of coorperation, you can be absolutely sure of getting a guaranteed profit and full return on your investment.', 'Kingsmen is backed by notable investors as well as some of the best payments companies on the planet.Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus. Ac felis donec et odio pellentesque diam volutpat commodo. Tristique magna sit amet purus gravida quis blandit.', 'section4_1599159434.png', 'Kingsmen Ltd is a registered investment platform providing digital asset investment management services to individuals. We provide a dynamic investment solution to clients in need of a self-operating portfolio, as well as a smart fund with flexible time and investment amount.Kingsmen Ltd is a registered investment platform providing digital asset investment management services to individuals. We provide a dynamic investment solution to clients in need of a self-operating portfolio, as well as a smart fund with flexible time and investment amount.Kingsmen Ltd is a registered investment platform providing digital asset investment management services to individuals.', 'section6_1597714923.png', 'Build your savings without even trying.', 'Turn on Round-up Rules and start saving up effortlessly. Whenever you make a purchase, Goals make it easy to save for the things you want or want to do. There’s no need for spreadsheets or extra apps to budget and track your money.', 'The Most Trusted Trading Platform', 'Here are a few reasons why you should choose us', 'section3_1597714388.png', 'Choose your pricing policy which affordable', 'The Experts Team', 'section2_1597714376.png', 'section1_1597714368.png', 'Explore an ever-expanding world of trading', 'Kingsmen, the first and safest crypto asset investment firm, was established to provide intelligent portfolios with its expert investors, customer-priority approach, safe and high-tech investment tools. Eliminating the risk factor to earn from digital assets, the platform is created to offer exclusive interest return.', 'Market leaders use app to reach their brand & business.', 'A new standard in Trading & Investment', 'Kingsmen platform is at your service with its user-friendly features, secure infrastructure and applications that make a difference.', '2020-02-21 07:12:02', '2020-09-03 17:57:14', 'Register', 'Only 1 minute and you\'re in. Enter the information you need to become a platform trader and start right away.', 'Invest', 'Invest and sit back. You can follow your investment status at any time and invest in limited time special offers.', 'Cashout anytime', 'Your investment is eligible to withdraw anytime after the first 24 hours.', 'Our dedicated team members that ensure you get your moneys worth');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL,
  `image` varchar(32) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` text,
  `last_name` text,
  `balance` varchar(64) NOT NULL,
  `profit` varchar(64) NOT NULL DEFAULT '0',
  `ref_bonus` varchar(64) NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `ip_address` varchar(32) NOT NULL,
  `last_login` varchar(32) DEFAULT NULL,
  `kyc_link` varchar(32) DEFAULT NULL,
  `kyc_type` varchar(32) DEFAULT NULL,
  `kyc_status` int NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `address` text,
  `verification_code` varchar(191) NOT NULL,
  `sms_code` varchar(191) NOT NULL,
  `phone_verify` tinyint NOT NULL,
  `email_verify` tinyint NOT NULL,
  `email_time` datetime NOT NULL,
  `phone_time` datetime NOT NULL,
  `googlefa_secret` varchar(64) DEFAULT NULL,
  `fa_status` int DEFAULT '0',
  `trade_share` varchar(3) DEFAULT 'on',
  `total_profit` int DEFAULT '0',
  `trade_bonus` double DEFAULT '0',
  `referral` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fa_expiring` varchar(32) DEFAULT NULL,
  `upgrade` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `image`, `email`, `first_name`, `last_name`, `balance`, `profit`, `ref_bonus`, `password`, `phone`, `status`, `ip_address`, `last_login`, `kyc_link`, `kyc_type`, `kyc_status`, `remember_token`, `address`, `verification_code`, `sms_code`, `phone_verify`, `email_verify`, `email_time`, `phone_time`, `googlefa_secret`, `fa_status`, `trade_share`, `total_profit`, `trade_bonus`, `referral`, `created_at`, `updated_at`, `fa_expiring`, `upgrade`) VALUES
(42, 'sadfg', 'sadfg1608100763profile.jpeg', 'demo@boomchart.net', 'aesrdtfg', 'adsfgc', '100000', '0', '0', '$2y$10$gToFOtyOgGWE9x3ktf08q.LTjF0iq/2daSEKwsIpFvrgOXI9B4B9O', NULL, 0, '::1', '2021-02-09 21:15:35', NULL, NULL, 1, 'CNe8A39PJVXSDa1FmcNWZhCuGghjJX12UQJvP357qUSDPIZXQp7ZRfOE4pm9', NULL, 'VNWUTG', 'O5RLIB', 1, 1, '2020-11-09 18:26:06', '2020-11-09 18:26:06', NULL, 0, 'on', 0, 0, NULL, '2020-11-09 17:21:06', '2021-02-09 20:15:35', NULL, 0),
(43, 'sdfgddf', 'sdfgddf1613117514profile.jpeg', 'info@boomchart.net', 'sdfsg', 'dsfgh', '750668.93', '48570', '0', '$2y$10$gm0tjPws06kv4YNjqAjNqOZ5BZj7UNxRPVEsH5k8viG/Fg0MuqRoe', NULL, 0, '::1', '2021-02-13 09:39:22', 'sdfghj.gg', NULL, 1, 'zqTMdf31NUruZg67LPku9ehbZIFupDIGNMc3vxb8UoVCIabus8D92JQMI2go', NULL, 'PSZSWK', 'EFJKRQ', 1, 1, '2020-12-16 06:44:51', '2020-12-16 06:44:51', NULL, 0, 'on', 48570, 0, NULL, '2020-12-16 05:39:51', '2021-03-18 08:22:00', '2021-02-12 08:41:06', 0),
(44, 'qwergh', NULL, 'd@d.com', 'aesrdtyf', 'sdfgh', '10', '0', '0', '$2y$10$LVNrg5rVzixpTmptCW6JSOxhh.xm0aB3RtPpMepQL0zGKcB0LNwVi', NULL, 0, '::1', '2021-02-12 08:37:49', 'qwergh1613117593kyc.png', 'Driver license', 1, NULL, NULL, 'BMBQGM', 'Y3YHM6', 1, 1, '2021-02-12 08:17:18', '2021-02-12 08:17:18', NULL, 0, 'on', 0, 0, NULL, '2021-02-12 07:12:18', '2021-02-12 07:37:49', NULL, 0),
(45, 'blait455', NULL, 'blait@email.com', 'hgdhfgsdg', 'hgfdfhj', '208.8', '4171.084', '0', '$2y$10$FCGGRDyi.ukgvEQodJb5L.mPUH23l2ohoYtse5il65aBEjR3S0vjm', NULL, 0, '127.0.0.1', '2021-03-26 20:44:24', NULL, 'National ID', 0, NULL, NULL, 'HIXN0O', '1DLXZV', 1, 1, '2021-03-16 22:48:49', '2021-03-16 22:48:49', NULL, 0, 'on', 4171, 0, NULL, '2021-03-16 21:43:49', '2021-03-26 19:44:24', NULL, 0),
(46, 'kfklklk;le;r;l', NULL, 'fpdkfpk@gmail.com', 'kwerfjw09fpg', '64788hsms', '10', '0', '0', '$2y$10$cuyzn2cqyzeqJziRas3mNeghOkKJPYNp3uDB85KuuZCmfOFgCieCO', NULL, 0, '127.0.0.1', NULL, NULL, NULL, 0, NULL, NULL, 'C39WMD', 'FXZPQE', 1, 1, '2021-03-17 09:37:04', '2021-03-17 09:37:04', NULL, 0, 'on', 0, 0, NULL, '2021-03-17 08:32:04', '2021-03-17 08:32:04', NULL, 0),
(47, 'smartk', NULL, 'king@email.com', 'smart', 'king', '811.2', '0', '0', '$2y$10$5L9oGUX37i5ildjSTPmPe.ggeWxXrGG/4HlNnYV6oHlRg74hJiOvC', NULL, 0, '127.0.0.1', NULL, NULL, NULL, 0, NULL, NULL, 'VK1SBM', '9W1RVQ', 1, 1, '2021-03-19 23:35:36', '2021-03-19 23:35:36', NULL, 0, 'on', 0, 0, NULL, '2021-03-19 22:30:36', '2021-03-19 22:34:04', NULL, 0),
(48, 'collins', NULL, 'collins@gmail.com', 'hhuj', 'u88i', '13060', '0', '0', '$2y$10$3RuhEj.m41XiFSN0lWABk.DYvM7IJZciaH5HXycGh1mnVNkfngYB.', NULL, 0, '127.0.0.1', NULL, NULL, NULL, 0, NULL, NULL, 'VD9EO4', 'EPZZCC', 1, 1, '2021-03-20 14:57:27', '2021-03-20 14:57:27', NULL, 0, 'on', 0, 0, NULL, '2021-03-20 13:52:27', '2021-03-20 14:16:37', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawm`
--

CREATE TABLE `withdrawm` (
  `id` int NOT NULL,
  `method` varchar(128) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawm`
--

INSERT INTO `withdrawm` (`id`, `method`, `status`, `updated_at`) VALUES
(10, 'Bitcoin	', 0, '0000-00-00 00:00:00'),
(11, 'Litecoin', 0, '0000-00-00 00:00:00'),
(12, 'Bitcoin Cash', 0, '0000-00-00 00:00:00'),
(14, 'Stellar', 1, '2020-02-09 13:12:15'),
(15, 'Dash', 1, '2020-02-09 13:12:25'),
(16, 'Paypal', 1, '2020-02-09 13:12:34'),
(17, 'Perfect money', 1, '2020-02-09 13:13:12'),
(18, 'Skrill', 1, '2020-02-09 13:13:07'),
(19, 'Payu', 1, '2020-02-09 13:13:02'),
(20, 'Voguepay', 1, '2020-02-09 13:12:58'),
(21, 'Flutter wave', 1, '2020-02-09 13:12:04'),
(22, 'Paystack', 1, '2020-02-09 13:03:58'),
(23, 'Ethereum', 1, '2021-03-26 21:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `w_history`
--

CREATE TABLE `w_history` (
  `id` int NOT NULL,
  `reference` varchar(32) NOT NULL,
  `user_id` int NOT NULL,
  `amount` int NOT NULL,
  `charge` int DEFAULT NULL,
  `status` int NOT NULL,
  `coin_id` varchar(32) NOT NULL,
  `type` int NOT NULL,
  `details` text NOT NULL,
  `next_settlement` varchar(32) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `w_history`
--

INSERT INTO `w_history` (`id`, `reference`, `user_id`, `amount`, `charge`, `status`, `coin_id`, `type`, `details`, `next_settlement`, `updated_at`) VALUES
(74, 'AqMf8tCCY3yINCKe', 43, 10000, 400, 0, '17', 2, 'asdfgh', NULL, '2021-02-10 17:05:29'),
(75, '70wiHVlUi86yF0qE', 43, 40000, 1600, 0, '14', 2, 'asdfghj', NULL, '2021-02-10 17:09:46'),
(76, 'AwUijkeppi13xqS1', 43, 30000, 1200, 0, '16', 2, 'asdfghj', '2021-03-28 00:00:00', '2021-03-26 19:44:25'),
(77, 'STL-vjLUpp', 43, 20000, 800, 0, '15', 2, 'sdfghjgfd', '2021-03-28 00:00:00', '2021-03-26 19:44:25'),
(78, 'STL-Ja4ktj', 43, 30000, 1200, 0, '15', 2, 'asdfghjkhgfd', '2021-03-28 00:00:00', '2021-03-26 19:44:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_site`
--
ALTER TABLE `about_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_bank`
--
ALTER TABLE `admin_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claimed`
--
ALTER TABLE `claimed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etemplates`
--
ALTER TABLE `etemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profits`
--
ALTER TABLE `profits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_earning`
--
ALTER TABLE `ref_earning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_support`
--
ALTER TABLE `reply_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending_cat`
--
ALTER TABLE `trending_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ui_design`
--
ALTER TABLE `ui_design`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawm`
--
ALTER TABLE `withdrawm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `w_history`
--
ALTER TABLE `w_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_bank`
--
ALTER TABLE `admin_bank`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `claimed`
--
ALTER TABLE `claimed`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `etemplates`
--
ALTER TABLE `etemplates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `profits`
--
ALTER TABLE `profits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ref_earning`
--
ALTER TABLE `ref_earning`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reply_support`
--
ALTER TABLE `reply_support`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `trending`
--
ALTER TABLE `trending`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trending_cat`
--
ALTER TABLE `trending_cat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ui_design`
--
ALTER TABLE `ui_design`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `withdrawm`
--
ALTER TABLE `withdrawm`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `w_history`
--
ALTER TABLE `w_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
