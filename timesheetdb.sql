-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 29, 2021 at 11:17 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timesheetdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `task_category`
--

CREATE TABLE `task_category` (
  `id` int(11) NOT NULL,
  `cat_en_name` varchar(100) NOT NULL,
  `cat_la_name` varchar(100) NOT NULL,
  `cat_number` int(11) NOT NULL,
  `cat_create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_category`
--

INSERT INTO `task_category` (`id`, `cat_en_name`, `cat_la_name`, `cat_number`, `cat_create_at`) VALUES
(1, 'Open New Account', '', 1, '2021-10-28 11:01:07'),
(2, 'Vacation', '', 2, '2021-10-28 11:02:19'),
(3, 'Close Account', '', 3, '2021-10-28 11:02:36'),
(4, 'Meeting', '', 4, '2021-10-28 11:03:00'),
(5, 'No Work', '', 5, '2021-10-28 11:03:17'),
(6, 'Training', '', 6, '2021-10-28 11:04:01'),
(7, 'Main Work Teller', '', 7, '2021-10-28 11:05:21'),
(8, 'Transfer', '', 8, '2021-10-28 11:07:31'),
(9, 'Western Union', '', 9, '2021-10-28 11:07:48'),
(10, 'Bill Payment', '', 10, '2021-10-28 11:08:06'),
(11, 'ATM', '', 11, '2021-10-28 11:08:20'),
(12, 'Mobile Application', '', 12, '2021-10-28 11:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `task_name`
--

CREATE TABLE `task_name` (
  `id` int(11) NOT NULL,
  `n_en_name` varchar(100) NOT NULL,
  `n_la_name` varchar(100) NOT NULL,
  `task_category_id` int(11) NOT NULL,
  `n_create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_name`
--

INSERT INTO `task_name` (`id`, `n_en_name`, `n_la_name`, `task_category_id`, `n_create_at`) VALUES
(1, 'Siron KYC', '', 1, '2021-10-28 11:15:52'),
(2, 'Open New Account', '', 1, '2021-10-28 11:16:06'),
(3, 'Update Customer Data', '', 1, '2021-10-28 11:16:23'),
(4, 'Find ID Customer', '', 1, '2021-10-28 11:16:41'),
(5, 'Issue Bank Statement', '', 1, '2021-10-28 11:17:01'),
(6, 'Issue Bank Certificate', '', 1, '2021-10-28 11:17:19'),
(7, 'Issue Cheque Book', '', 1, '2021-10-28 11:17:33'),
(8, 'Issue new Passbook', '', 1, '2021-10-28 11:17:51'),
(9, 'Scan Customer Signature', '', 1, '2021-10-28 11:18:41'),
(10, 'Block and Unlock Account', '', 1, '2021-10-28 11:18:59'),
(11, 'Notify reply and proved document to internal-external auditor', '', 1, '2021-10-28 11:19:54'),
(12, 'Annual Leave', '', 2, '2021-10-28 11:21:29'),
(13, 'Bank Holiday', '', 2, '2021-10-28 11:21:45'),
(14, 'Close CA Account', '', 3, '2021-10-28 11:23:37'),
(15, 'Close FD Account', '', 3, '2021-10-28 11:23:50'),
(16, 'Branch Meeting', '', 4, '2021-10-28 11:25:39'),
(17, 'Client Meeting', '', 4, '2021-10-28 11:25:56'),
(18, 'No Work', '', 5, '2021-10-28 11:27:46'),
(19, 'Training Dept Training', '', 6, '2021-10-28 11:28:20'),
(20, 'Service Dept Training', '', 6, '2021-10-28 11:28:36'),
(21, 'Till to vaul', '', 7, '2021-10-28 11:30:13'),
(22, 'Vaul to till', '', 7, '2021-10-28 11:30:27'),
(23, 'Cash Deposit Transaction', '', 7, '2021-10-28 11:30:46'),
(24, 'Cash withdraw transaction', '', 7, '2021-10-28 11:31:12'),
(25, 'Fixed Deposit', '', 7, '2021-10-28 11:31:30'),
(26, 'Closed Account', '', 7, '2021-10-28 11:32:29'),
(27, 'Exchange', '', 7, '2021-10-28 11:32:42'),
(28, 'Summary cash on hand', '', 7, '2021-10-28 11:33:06'),
(29, 'Pay dividens on bonds', '', 7, '2021-10-28 11:33:27'),
(30, 'Payment Land Tax', '', 7, '2021-10-28 11:33:44'),
(31, 'Payment Road Tax', '', 7, '2021-10-28 11:33:55'),
(32, 'Domestic Transfer', '', 8, '2021-10-28 11:34:25'),
(33, 'International Transfer via swift', '', 8, '2021-10-28 11:34:53'),
(34, 'NPS', '', 8, '2021-10-28 11:35:05'),
(35, 'Remittance', '', 8, '2021-10-28 11:35:21'),
(36, 'Pay Roll', '', 8, '2021-10-28 11:35:35'),
(37, 'Auto Debit', '', 8, '2021-10-28 11:35:49'),
(38, 'VISA Cheque', '', 8, '2021-10-28 11:36:04'),
(39, 'Send Money', '', 9, '2021-10-28 11:36:22'),
(40, 'Receive Money', '', 9, '2021-10-28 11:36:35'),
(41, 'Payment Easy Tax', '', 10, '2021-10-28 11:37:00'),
(42, 'Payment EDL', '', 10, '2021-10-28 11:37:11'),
(43, 'Payment NPP', '', 10, '2021-10-28 11:37:19'),
(44, 'Payment LAO Social Security', '', 10, '2021-10-28 11:37:38'),
(45, 'Lottery, Telecom, Internet etc', '', 10, '2021-10-28 11:38:02'),
(46, 'Payment Leasing', '', 10, '2021-10-28 11:38:25'),
(47, 'Issue New ATM', '', 11, '2021-10-28 11:38:48'),
(48, 'Reset New Pin', '', 11, '2021-10-28 11:39:01'),
(49, 'Lost ATM Card and issue new one', '', 11, '2021-10-28 11:39:24'),
(50, 'Update new mobile number', '', 11, '2021-10-28 11:39:45'),
(51, 'Add/Remove Account to ATM Card', '', 11, '2021-10-28 11:40:19'),
(52, 'Close ATM', '', 11, '2021-10-28 11:40:32'),
(53, 'Register Mobile Application', '', 12, '2021-10-28 11:40:52'),
(54, 'Reset New Password', '', 12, '2021-10-28 11:41:06'),
(55, 'Update new mobile number', '', 12, '2021-10-28 11:41:27'),
(56, 'SMS Alert', '', 12, '2021-10-28 11:41:39'),
(57, 'Issue Mobile QR Pay', '', 12, '2021-10-28 11:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`id`, `name`) VALUES
(1, 'cat'),
(2, 'dog');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task_category`
--
ALTER TABLE `task_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_name`
--
ALTER TABLE `task_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task_category`
--
ALTER TABLE `task_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `task_name`
--
ALTER TABLE `task_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
