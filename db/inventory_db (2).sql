-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 05, 2025 at 03:58 AM
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
-- Database: `inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `activityId` varchar(50) NOT NULL,
  `partName` varchar(255) DEFAULT NULL,
  `categoryId` varchar(50) DEFAULT NULL,
  `actionType` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `orderId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`activityId`, `partName`, `categoryId`, `actionType`, `details`, `user_id`, `created_at`, `orderId`) VALUES
('20250805084921702', 'NVIDIA RTX 5060TI 16GB', 'GPU013', 'Stock Added', 'Added new part to inventory', 1, '2025-08-05 00:49:21', NULL),
('20250805085232432', 'NVIDIA RTX 2060', 'GPU014', 'Stock Added', 'Added new part to inventory', 1, '2025-08-05 00:52:32', NULL),
('20250805085457846', 'NVIDIA RTX 1060', 'GPU015', 'Stock Added', 'Added new part to inventory', 1, '2025-08-05 00:54:57', NULL),
('20250805085617366', 'Intel Core i7-12700K', 'CPU001', 'Update', 'Updated part details', 1, '2025-08-05 00:56:17', NULL),
('20250805085622031', 'Intel Core i7-12700K', 'CPU001', 'Update', 'Updated part details', 1, '2025-08-05 00:56:22', NULL),
('20250805090658244', 'Order Group ORD002', 'N/A', 'Order Deleted', 'Deleted entire order ORD002 with 3 items', 1, '2025-08-05 01:06:58', 'ORD002'),
('20250805090700631', 'Order Group ORD003', 'N/A', 'Order Deleted', 'Deleted entire order ORD003 with 2 items', 1, '2025-08-05 01:07:00', 'ORD003'),
('20250805090701940', 'Order Group ORD004', 'N/A', 'Order Deleted', 'Deleted entire order ORD004 with 1 items', 1, '2025-08-05 01:07:01', 'ORD004'),
('20250805090703146', 'Order Group ORD005', 'N/A', 'Order Deleted', 'Deleted entire order ORD005 with 1 items', 1, '2025-08-05 01:07:03', 'ORD005'),
('20250805090707274', 'Intel Core i7-12700K', 'CPU001', 'Add Part to Order', 'Added 2 units of Intel Core i7-12700K to new order', 1, '2025-08-05 01:07:07', NULL),
('20250805090708041', 'Intel Core i7-12700K', 'CPU001', 'Create Order', 'Created order ORD002 for 2 units (Status: Pending)', 1, '2025-08-05 01:07:08', 'ORD002'),
('20250805090731922', 'NVIDIA RTX 3060', 'GPU001', 'Add Part to Order', 'Added 1 units of NVIDIA RTX 3060 to existing order ORD002', 1, '2025-08-05 01:07:31', 'ORD002'),
('20250805090733125', 'Intel Core i7-12700K', 'CPU001', 'create_order', 'Created order #ORD002 for 2 units of Intel Core i7-12700K', 0, '2025-08-05 01:07:33', 'ORD002'),
('20250805090733250', 'NVIDIA RTX 3060', 'GPU001', 'create_order', 'Created order #ORD002 for 1 units of NVIDIA RTX 3060', 0, '2025-08-05 01:07:33', 'ORD002'),
('20250805090733297', 'Order ORD002', 'N/A', 'Update Order', 'Updated order ORD002 with 2 items: 2x Intel Core i7-12700K, 1x NVIDIA RTX 3060', 1, '2025-08-05 01:07:33', 'ORD002'),
('20250805091009255', 'Corsair Vengeance 16GB', 'RAM001', 'Add Part to Order', 'Added 2 units of Corsair Vengeance 16GB to new order', 1, '2025-08-05 01:10:09', NULL),
('20250805091010247', 'Corsair Vengeance 16GB', 'RAM001', 'create_order', 'Created order #ORD003 for 2 units of Corsair Vengeance 16GB', 0, '2025-08-05 01:10:10', 'ORD003'),
('20250805091010284', 'Corsair Vengeance 16GB', 'RAM001', 'Create Order', 'Created order ORD003 for 2 units (Status: Pending)', 1, '2025-08-05 01:10:10', 'ORD003'),
('20250805091213048', 'Samsung 970 EVO 1TB', 'STORAGE001', 'Add Part to Order', 'Added 1 units of Samsung 970 EVO 1TB to existing order ORD002', 1, '2025-08-05 01:12:13', 'ORD002'),
('20250805091214048', 'Intel Core i7-12700K', 'CPU001', 'create_order', 'Created order #ORD002 for 2 units of Intel Core i7-12700K', 0, '2025-08-05 01:12:14', 'ORD002'),
('20250805091214189', 'NVIDIA RTX 3060', 'GPU001', 'create_order', 'Created order #ORD002 for 1 units of NVIDIA RTX 3060', 0, '2025-08-05 01:12:14', 'ORD002'),
('20250805091214319', 'Samsung 970 EVO 1TB', 'STORAGE001', 'create_order', 'Created order #ORD002 for 1 units of Samsung 970 EVO 1TB', 0, '2025-08-05 01:12:14', 'ORD002'),
('20250805091214357', 'Order ORD002', 'N/A', 'Update Order', 'Updated order ORD002 with 3 items: 2x Intel Core i7-12700K, 1x NVIDIA RTX 3060, 1x Samsung 970 EVO 1TB', 1, '2025-08-05 01:12:14', 'ORD002'),
('20250805091253065', 'NVIDIA RTX 3060', 'GPU001', 'Add Part to Order', 'Added 1 units of NVIDIA RTX 3060 to existing order ORD003', 1, '2025-08-05 01:12:53', 'ORD003'),
('20250805091254161', 'Corsair Vengeance 16GB', 'RAM001', 'create_order', 'Created order #ORD003 for 2 units of Corsair Vengeance 16GB', 0, '2025-08-05 01:12:54', 'ORD003'),
('20250805091254304', 'NVIDIA RTX 3060', 'GPU001', 'create_order', 'Created order #ORD003 for 1 units of NVIDIA RTX 3060', 0, '2025-08-05 01:12:54', 'ORD003'),
('20250805091254351', 'Order ORD003', 'N/A', 'Update Order', 'Updated order ORD003 with 2 items: 2x Corsair Vengeance 16GB, 1x NVIDIA RTX 3060', 1, '2025-08-05 01:12:54', 'ORD003'),
('20250805091402773', 'Order ORD002', 'N/A', 'Update Order', 'Updated order ORD002 with 2 items: 1x NVIDIA RTX 3060, 1x Samsung 970 EVO 1TB', 1, '2025-08-05 01:14:02', 'ORD002'),
('20250805091416322', 'Intel Core i7-12700K', 'CPU001', 'Add Part to Order', 'Added 1 units of Intel Core i7-12700K to existing order ORD002', 1, '2025-08-05 01:14:16', 'ORD002'),
('20250805091417426', 'Order ORD002', 'N/A', 'Update Order', 'Updated order ORD002 with 3 items: 1x NVIDIA RTX 3060, 1x Samsung 970 EVO 1TB, 1x Intel Core i7-12700K', 1, '2025-08-05 01:14:17', 'ORD002'),
('20250805091811034', 'Intel Core i7-12700K', 'CPU001', 'Add Part to Order', 'Added 1 units of Intel Core i7-12700K to new order', 1, '2025-08-05 01:18:11', NULL),
('20250805091812010', 'Intel Core i7-12700K', 'CPU001', 'Create Order', 'Created order ORD002 for 1 units (Status: Pending)', 1, '2025-08-05 01:18:12', 'ORD002'),
('20250805091825291', 'Intel Core i7-12700K', 'CPU001', 'Deletion', 'Deleted part from inventory', 1, '2025-08-05 01:18:25', NULL),
('20250805091825376', 'Intel Core i7-12700K', 'CPU001', 'Deleted', 'Removed part from inventory', 1, '2025-08-05 01:18:25', NULL),
('20250805091936098', 'Intel Core i9-12900K', 'CPU002', 'Add Part to Order', 'Added 1 units of Intel Core i9-12900K to new order', 1, '2025-08-05 01:19:36', NULL),
('20250805091936750', 'Intel Core i9-12900K', 'CPU002', 'Create Order', 'Created order ORD002 for 1 units (Status: Pending)', 1, '2025-08-05 01:19:36', 'ORD002'),
('20250805091947996', 'Intel Core i9-12900K', 'N/A', 'Deleted', 'Deleted order ORD002 for 1 units of Intel Core i9-12900K', 1, '2025-08-05 01:19:48', 'ORD002'),
('20250805092313340', 'Intel Core i9-12900K', 'CPU002', 'Create Order', 'Created order ORD002 for 1 units (Status: Pending)', 1, '2025-08-05 01:23:13', 'ORD002'),
('20250805092424115', 'NVIDIA RTX 3060', 'GPU001', 'Create Order', 'Created order ORD003 for 1 units (Status: Pending)', 1, '2025-08-05 01:24:24', 'ORD003'),
('20250805092445439', 'Order ORD002', 'N/A', 'Update Order', 'Updated order ORD002 with 2 items: 1x Intel Core i9-12900K, 1x Intel Core i5-12600K', 1, '2025-08-05 01:24:45', 'ORD002'),
('20250805092718103', 'Order ORD002', 'N/A', 'Update Order', 'Updated order ORD002 with 3 items: 1x Intel Core i9-12900K, 1x Intel Core i5-12600K, 1x NVIDIA RTX 3060', 1, '2025-08-05 01:27:18', 'ORD002'),
('20250805093832188', 'NVIDIA RTX 3060', 'N/A', 'Deleted', 'Deleted order ORD003 for 1 units of NVIDIA RTX 3060', 1, '2025-08-05 01:38:32', 'ORD003'),
('20250805093843933', 'Order ORD002', 'N/A', 'Update Order', 'Updated order ORD002 with 4 items: 1x Intel Core i9-12900K, 1x Intel Core i5-12600K, 1x NVIDIA RTX 3060, 1x RM850x 850W', 1, '2025-08-05 01:38:43', 'ORD002'),
('20250805093949392', 'Order ORD002', 'N/A', 'Update Order', 'Updated order ORD002 with 5 items: 1x Intel Core i9-12900K, 1x Intel Core i5-12600K, 1x NVIDIA RTX 3060, 1x RM850x 850W, 1x Corsair Vengeance 16GB', 1, '2025-08-05 01:39:49', 'ORD002'),
('20250805094043149', 'Order ORD003', 'N/A', 'Create Order', 'Created order ORD003 with 1 items: 1x Intel Core i9-12900K', 1, '2025-08-05 01:40:43', 'ORD003'),
('20250805094052042', 'Order ORD003', 'N/A', 'Update Order', 'Updated order ORD003 with 2 items: 1x Intel Core i9-12900K, 1x NVIDIA RTX 3070', 1, '2025-08-05 01:40:52', 'ORD003'),
('20250805094317963', 'Order ORD004', 'N/A', 'Update Order', 'Updated order ORD004 with 2 items: 1x AMD Ryzen 7 5800X, 1x Corsair Vengeance 16GB', 1, '2025-08-05 01:43:17', 'ORD004'),
('20250805094327583', 'AMD Ryzen 7 5800X, Corsair Vengeance 16GB', 'N/A', 'Deleted', 'Deleted order ORD004 for 2 units of AMD Ryzen 7 5800X, Corsair Vengeance 16GB', 1, '2025-08-05 01:43:27', 'ORD004'),
('20250805094331683', 'Order ORD004', 'N/A', 'Create Order', 'Created order ORD004 with 1 items: 2x Corsair Vengeance 16GB', 1, '2025-08-05 01:43:31', 'ORD004'),
('20250805094457018', 'partName', 'categoryId', 'Create Order', 'Created order ORD005 with 1 items: 1x AMD Ryzen 9 5900X', 1, '2025-08-05 01:44:57', 'ORD005'),
('20250805094700731', 'AMD Ryzen 9 5900X', 'N/A', 'Deleted', 'Deleted order ORD005 for 1 units of AMD Ryzen 9 5900X', 1, '2025-08-05 01:47:00', 'ORD005'),
('20250805094704718', 'Intel Core i9-12900K', 'CPU002', 'Add Part to Order', 'Added 1 units of Intel Core i9-12900K to order', 1, '2025-08-05 01:47:04', NULL),
('20250805094705511', 'Intel Core i9-12900K', 'CPU002', 'Create Order', 'Created order ORD005 for 1 units of Intel Core i9-12900K', 1, '2025-08-05 01:47:05', 'ORD005'),
('20250805094739860', 'NVIDIA RTX 3060', 'GPU001', 'Add Part to Order', 'Added 1 units of NVIDIA RTX 3060 to order', 1, '2025-08-05 01:47:39', 'ORD005'),
('20250805094740661', 'Intel Core i9-12900K', 'CPU002', 'Update Order', 'Updated order ORD005 for 1 units of Intel Core i9-12900K', 1, '2025-08-05 01:47:40', 'ORD005'),
('20250805094740756', 'NVIDIA RTX 3060', 'GPU001', 'Update Order', 'Updated order ORD005 for 1 units of NVIDIA RTX 3060', 1, '2025-08-05 01:47:40', 'ORD005'),
('20250805094834518', 'Intel Core i9-12900K', 'CPU002', 'Update Order', 'Updated order ORD005 for 1 units of Intel Core i9-12900K', 1, '2025-08-05 01:48:34', 'ORD005'),
('20250805094834613', 'NVIDIA RTX 3060', 'GPU001', 'Update Order', 'Updated order ORD005 for 1 units of NVIDIA RTX 3060', 1, '2025-08-05 01:48:34', 'ORD005'),
('20250805094854141', 'Order ORD005', 'N/A', 'Update Order', 'Updated order ORD005 with 3 items: 1x Intel Core i9-12900K, 1x NVIDIA RTX 3060, 1x NVIDIA RTX 3080', 1, '2025-08-05 01:48:54', 'ORD005'),
('20250805094954892', 'Order ORD004', 'N/A', 'Update Order', 'Updated order ORD004 with 2 items: 2x Corsair Vengeance 16GB, 2x Intel Core i5-12600K', 1, '2025-08-05 01:49:54', 'ORD004'),
('20250805095132733', 'Order ORD003', 'N/A', 'Update Order', 'Updated order ORD003 with 3 items: 1x Intel Core i9-12900K, 1x NVIDIA RTX 3070, 1x ROG STRIX B660-F', 1, '2025-08-05 01:51:32', 'ORD003'),
('20250805095329368', 'RM850x 850W', 'PSU001', 'Add Part to Order', 'Added 1 units of RM850x 850W to order', 1, '2025-08-05 01:53:29', 'ORD005'),
('20250805095331364', 'Order ORD005', 'N/A', 'Update Order', 'Updated order ORD005 with 4 items: 1x Intel Core i9-12900K, 1x NVIDIA RTX 3060, 1x NVIDIA RTX 3080, 1x RM850x 850W', 1, '2025-08-05 01:53:31', 'ORD005'),
('ACT001', 'Intel Core i7-12700K', 'CPU001', 'Stock Added', 'Added 10 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT002', 'Intel Core i9-12900K', 'CPU002', 'Stock Added', 'Added 5 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT003', 'Intel Core i5-12600K', 'CPU003', 'Stock Added', 'Added 15 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT004', 'AMD Ryzen 7 5800X', 'CPU004', 'Stock Added', 'Added 8 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT005', 'AMD Ryzen 9 5900X', 'CPU005', 'Stock Added', 'Added 6 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT006', 'AMD Ryzen 5 5600X', 'CPU006', 'Stock Added', 'Added 12 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT007', 'Intel Core i7-12700KF', 'CPU007', 'Stock Added', 'Added 7 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT008', 'AMD Ryzen 7 5800X3D', 'CPU008', 'Stock Added', 'Added 4 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT009', 'Intel Core i3-12100F', 'CPU009', 'Stock Added', 'Added 20 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT010', 'AMD Ryzen 3 4100', 'CPU010', 'Stock Added', 'Added 18 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT011', 'NVIDIA RTX 3060', 'GPU001', 'Stock Added', 'Added 5 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT012', 'NVIDIA RTX 3070', 'GPU002', 'Stock Added', 'Added 4 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT013', 'NVIDIA RTX 3080', 'GPU003', 'Stock Added', 'Added 3 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT014', 'NVIDIA RTX 3090', 'GPU004', 'Stock Added', 'Added 2 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT015', 'RTX 4060 Ti Gaming X', 'GPU005', 'Stock Added', 'Added 6 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT016', 'RTX 4060 Ti Aero', 'GPU006', 'Stock Added', 'Added 5 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT017', 'RTX 4060 Ti Ice', 'GPU007', 'Stock Added', 'Added 4 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT018', 'RTX 4070 Gaming OC', 'GPU008', 'Stock Added', 'Added 3 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT019', 'RTX 4070 Ventus 3X', 'GPU009', 'Stock Added', 'Added 4 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT020', 'RX 6700 XT Gaming X', 'GPU010', 'Stock Added', 'Added 5 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT021', 'RX 6800 XT Red Devil', 'GPU011', 'Stock Added', 'Added 3 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT022', 'RX 6900 XT Nitro+', 'GPU012', 'Stock Added', 'Added 2 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT023', 'Corsair Vengeance 16GB', 'RAM001', 'Stock Added', 'Added 15 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT024', 'Corsair Vengeance 32GB', 'RAM002', 'Stock Added', 'Added 10 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT025', 'G.Skill Ripjaws V 16GB', 'RAM003', 'Stock Added', 'Added 12 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT026', 'G.Skill Trident Z 32GB', 'RAM004', 'Stock Added', 'Added 8 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT027', 'Kingston Fury Beast 16GB', 'RAM005', 'Stock Added', 'Added 14 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT028', 'Kingston Fury Renegade 32GB', 'RAM006', 'Stock Added', 'Added 9 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT029', 'Crucial Ballistix 16GB', 'RAM007', 'Stock Added', 'Added 13 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT030', 'TeamGroup T-Force 32GB', 'RAM008', 'Stock Added', 'Added 7 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT031', 'Patriot Viper Steel 16GB', 'RAM009', 'Stock Added', 'Added 11 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT032', 'HyperX Fury 32GB', 'RAM010', 'Stock Added', 'Added 6 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT033', 'Samsung 970 EVO 1TB', 'STORAGE001', 'Stock Added', 'Added 8 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT034', 'Samsung 980 PRO 1TB', 'STORAGE002', 'Stock Added', 'Added 6 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT035', 'WD Black SN850 1TB', 'STORAGE003', 'Stock Added', 'Added 7 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT036', 'WD Blue SN570 1TB', 'STORAGE004', 'Stock Added', 'Added 12 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT037', 'Crucial P5 1TB', 'STORAGE005', 'Stock Added', 'Added 9 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT038', 'Crucial P3 2TB', 'STORAGE006', 'Stock Added', 'Added 5 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT039', 'Kingston KC2500 1TB', 'STORAGE007', 'Stock Added', 'Added 8 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT040', 'Sabrent Rocket 4.0 1TB', 'STORAGE008', 'Stock Added', 'Added 4 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT041', 'Seagate Barracuda 2TB', 'STORAGE009', 'Stock Added', 'Added 15 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT042', 'Toshiba P300 3TB', 'STORAGE010', 'Stock Added', 'Added 10 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT043', 'ROG STRIX B660-F', 'MB001', 'Stock Added', 'Added 6 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT044', 'ROG STRIX Z690-E', 'MB002', 'Stock Added', 'Added 4 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT045', 'MEG Z690 ACE', 'MB003', 'Stock Added', 'Added 5 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT046', 'MPG B660I EDGE', 'MB004', 'Stock Added', 'Added 7 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT047', 'Z690 AORUS ELITE', 'MB005', 'Stock Added', 'Added 6 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT048', 'B660M AORUS PRO', 'MB006', 'Stock Added', 'Added 8 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT049', 'B550 AORUS PRO', 'MB007', 'Stock Added', 'Added 9 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT050', 'X570 AORUS MASTER', 'MB008', 'Stock Added', 'Added 3 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT051', 'RM850x 850W', 'PSU001', 'Stock Added', 'Added 8 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT052', 'HX1000 1000W', 'PSU002', 'Stock Added', 'Added 5 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT053', 'Focus GX-850 850W', 'PSU003', 'Stock Added', 'Added 7 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT054', 'Prime TX-1000 1000W', 'PSU004', 'Stock Added', 'Added 4 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT055', 'EVGA SuperNOVA 750W', 'PSU005', 'Stock Added', 'Added 10 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT056', 'be quiet! Straight Power 11', 'PSU006', 'Stock Added', 'Added 6 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT057', 'Noctua NH-D15', 'COOL001', 'Stock Added', 'Added 10 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT058', 'Corsair H150i ELITE', 'COOL002', 'Stock Added', 'Added 6 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT059', 'NZXT Kraken X73', 'COOL003', 'Stock Added', 'Added 7 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT060', 'Arctic Liquid Freezer II', 'COOL004', 'Stock Added', 'Added 9 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT061', 'Cooler Master Hyper 212', 'COOL005', 'Stock Added', 'Added 15 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT062', 'be quiet! Dark Rock Pro 4', 'COOL006', 'Stock Added', 'Added 8 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT063', 'NZXT H510', 'CASE001', 'Stock Added', 'Added 12 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT064', 'Corsair 4000D', 'CASE002', 'Stock Added', 'Added 10 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT065', 'Fractal Design Meshify C', 'CASE003', 'Stock Added', 'Added 8 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT066', 'Phanteks P400A', 'CASE004', 'Stock Added', 'Added 9 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT067', 'Logitech G Pro X', 'PERI001', 'Stock Added', 'Added 15 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT068', 'Razer DeathAdder V3', 'PERI002', 'Stock Added', 'Added 18 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT069', 'SteelSeries Arctis 7', 'PERI003', 'Stock Added', 'Added 12 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT070', 'Corsair K70 RGB', 'PERI004', 'Stock Added', 'Added 8 units to inventory', 1, '2025-08-05 00:20:17', NULL),
('ACT071', 'Intel Core i7-12700K', 'CPU001', 'Order Created', 'Order ORD001 created', 1, '2025-08-05 00:20:17', 'ORD001'),
('ACT072', 'NVIDIA RTX 3060', 'GPU001', 'Order Created', 'Order ORD002 created', 1, '2025-08-05 00:20:17', 'ORD002');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(50) NOT NULL,
  `categoryId` varchar(50) DEFAULT NULL,
  `partName` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderId`, `categoryId`, `partName`, `date`, `quantity`, `status`, `created_at`) VALUES
(71, 'ORD001', 'CPU001', 'Intel Core i7-12700K', '2025-07-28', 2, 'Completed', '2025-08-05 00:20:17'),
(128, 'ORD002', 'CPU002', 'Intel Core i9-12900K', '2025-08-05', 1, 'Pending', '2025-08-05 01:39:48'),
(129, 'ORD002', 'CPU003', 'Intel Core i5-12600K', '2025-08-05', 1, 'Pending', '2025-08-05 01:39:49'),
(130, 'ORD002', 'GPU001', 'NVIDIA RTX 3060', '2025-08-05', 1, 'Pending', '2025-08-05 01:39:49'),
(131, 'ORD002', 'PSU001', 'RM850x 850W', '2025-08-05', 1, 'Pending', '2025-08-05 01:39:49'),
(132, 'ORD002', 'RAM001', 'Corsair Vengeance 16GB', '2025-08-05', 1, 'Pending', '2025-08-05 01:39:49'),
(149, 'ORD004', 'RAM001', 'Corsair Vengeance 16GB', '2025-08-05', 2, 'Pending', '2025-08-05 01:49:54'),
(150, 'ORD004', 'CPU003', 'Intel Core i5-12600K', '2025-08-05', 2, 'Pending', '2025-08-05 01:49:54'),
(151, 'ORD003', 'CPU002', 'Intel Core i9-12900K', '2025-08-05', 1, 'Pending', '2025-08-05 01:51:32'),
(152, 'ORD003', 'GPU002', 'NVIDIA RTX 3070', '2025-08-05', 1, 'Pending', '2025-08-05 01:51:32'),
(153, 'ORD003', 'MB001', 'ROG STRIX B660-F', '2025-08-05', 1, 'Pending', '2025-08-05 01:51:32'),
(154, 'ORD005', 'CPU002', 'Intel Core i9-12900K', '2025-08-05', 1, 'Pending', '2025-08-05 01:53:31'),
(155, 'ORD005', 'GPU001', 'NVIDIA RTX 3060', '2025-08-05', 1, 'Pending', '2025-08-05 01:53:31'),
(156, 'ORD005', 'GPU003', 'NVIDIA RTX 3080', '2025-08-05', 1, 'Pending', '2025-08-05 01:53:31'),
(157, 'ORD005', 'PSU001', 'RM850x 850W', '2025-08-05', 1, 'Pending', '2025-08-05 01:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` int(11) NOT NULL,
  `categoryId` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `alertThreshold` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `categoryId`, `name`, `brand`, `category`, `price`, `quantity`, `alertThreshold`, `status`, `created_at`) VALUES
(97, 'CPU002', 'Intel Core i9-12900K', 'Intel', 'Processor (CPU)', 25000, 2, 2, 'In Stock', '2025-08-05 00:20:17'),
(98, 'CPU003', 'Intel Core i5-12600K', 'Intel', 'Processor (CPU)', 12000, 12, 5, 'In Stock', '2025-08-05 00:20:17'),
(99, 'CPU004', 'AMD Ryzen 7 5800X', 'AMD', 'Processor (CPU)', 16000, 8, 3, 'In Stock', '2025-08-05 00:20:17'),
(100, 'CPU005', 'AMD Ryzen 9 5900X', 'AMD', 'Processor (CPU)', 22000, 6, 2, 'In Stock', '2025-08-05 00:20:17'),
(101, 'CPU006', 'AMD Ryzen 5 5600X', 'AMD', 'Processor (CPU)', 10000, 12, 4, 'In Stock', '2025-08-05 00:20:17'),
(102, 'CPU007', 'Intel Core i7-12700KF', 'Intel', 'Processor (CPU)', 17000, 7, 3, 'In Stock', '2025-08-05 00:20:17'),
(103, 'CPU008', 'AMD Ryzen 7 5800X3D', 'AMD', 'Processor (CPU)', 19000, 4, 2, 'In Stock', '2025-08-05 00:20:17'),
(104, 'CPU009', 'Intel Core i3-12100F', 'Intel', 'Processor (CPU)', 8000, 20, 8, 'In Stock', '2025-08-05 00:20:17'),
(105, 'CPU010', 'AMD Ryzen 3 4100', 'AMD', 'Processor (CPU)', 6000, 18, 7, 'In Stock', '2025-08-05 00:20:17'),
(106, 'GPU001', 'NVIDIA RTX 3060', 'NVIDIA', 'Graphic Card (GPU)', 28000, 4, 2, 'In Stock', '2025-08-05 00:20:17'),
(107, 'GPU002', 'NVIDIA RTX 3070', 'NVIDIA', 'Graphic Card (GPU)', 35000, 3, 2, 'In Stock', '2025-08-05 00:20:17'),
(108, 'GPU003', 'NVIDIA RTX 3080', 'NVIDIA', 'Graphic Card (GPU)', 45000, 2, 1, 'In Stock', '2025-08-05 00:20:17'),
(109, 'GPU004', 'NVIDIA RTX 3090', 'NVIDIA', 'Graphic Card (GPU)', 65000, 2, 1, 'In Stock', '2025-08-05 00:20:17'),
(110, 'GPU005', 'RTX 4060 Ti Gaming X', 'MSI', 'Graphic Card (GPU)', 32000, 6, 2, 'In Stock', '2025-08-05 00:20:17'),
(111, 'GPU006', 'RTX 4060 Ti Aero', 'Gigabyte', 'Graphic Card (GPU)', 31000, 5, 2, 'In Stock', '2025-08-05 00:20:17'),
(112, 'GPU007', 'RTX 4060 Ti Ice', 'Gigabyte', 'Graphic Card (GPU)', 31500, 4, 2, 'In Stock', '2025-08-05 00:20:17'),
(113, 'GPU008', 'RTX 4070 Gaming OC', 'Gigabyte', 'Graphic Card (GPU)', 38000, 3, 1, 'In Stock', '2025-08-05 00:20:17'),
(114, 'GPU009', 'RTX 4070 Ventus 3X', 'MSI', 'Graphic Card (GPU)', 37500, 4, 2, 'In Stock', '2025-08-05 00:20:17'),
(115, 'GPU010', 'RX 6700 XT Gaming X', 'MSI', 'Graphic Card (GPU)', 28000, 5, 2, 'In Stock', '2025-08-05 00:20:17'),
(116, 'GPU011', 'RX 6800 XT Red Devil', 'PowerColor', 'Graphic Card (GPU)', 42000, 3, 1, 'In Stock', '2025-08-05 00:20:17'),
(117, 'GPU012', 'RX 6900 XT Nitro+', 'Sapphire', 'Graphic Card (GPU)', 48000, 2, 1, 'In Stock', '2025-08-05 00:20:17'),
(118, 'RAM001', 'Corsair Vengeance 16GB', 'Corsair', 'Memory (RAM)', 3500, 12, 5, 'In Stock', '2025-08-05 00:20:17'),
(119, 'RAM002', 'Corsair Vengeance 32GB', 'Corsair', 'Memory (RAM)', 6500, 10, 3, 'In Stock', '2025-08-05 00:20:17'),
(120, 'RAM003', 'G.Skill Ripjaws V 16GB', 'G.Skill', 'Memory (RAM)', 3200, 12, 4, 'In Stock', '2025-08-05 00:20:17'),
(121, 'RAM004', 'G.Skill Trident Z 32GB', 'G.Skill', 'Memory (RAM)', 6800, 8, 3, 'In Stock', '2025-08-05 00:20:17'),
(122, 'RAM005', 'Kingston Fury Beast 16GB', 'Kingston', 'Memory (RAM)', 3300, 14, 5, 'In Stock', '2025-08-05 00:20:17'),
(123, 'RAM006', 'Kingston Fury Renegade 32GB', 'Kingston', 'Memory (RAM)', 6200, 9, 3, 'In Stock', '2025-08-05 00:20:17'),
(124, 'RAM007', 'Crucial Ballistix 16GB', 'Crucial', 'Memory (RAM)', 3100, 13, 4, 'In Stock', '2025-08-05 00:20:17'),
(125, 'RAM008', 'TeamGroup T-Force 32GB', 'TeamGroup', 'Memory (RAM)', 6000, 7, 3, 'In Stock', '2025-08-05 00:20:17'),
(126, 'RAM009', 'Patriot Viper Steel 16GB', 'Patriot', 'Memory (RAM)', 3000, 11, 4, 'In Stock', '2025-08-05 00:20:17'),
(127, 'RAM010', 'HyperX Fury 32GB', 'HyperX', 'Memory (RAM)', 6400, 6, 2, 'In Stock', '2025-08-05 00:20:17'),
(128, 'STORAGE001', 'Samsung 970 EVO 1TB', 'Samsung', 'Storage', 6000, 8, 2, 'In Stock', '2025-08-05 00:20:17'),
(129, 'STORAGE002', 'Samsung 980 PRO 1TB', 'Samsung', 'Storage', 8500, 6, 2, 'In Stock', '2025-08-05 00:20:17'),
(130, 'STORAGE003', 'WD Black SN850 1TB', 'Western Digital', 'Storage', 8200, 7, 2, 'In Stock', '2025-08-05 00:20:17'),
(131, 'STORAGE004', 'WD Blue SN570 1TB', 'Western Digital', 'Storage', 4500, 12, 4, 'In Stock', '2025-08-05 00:20:17'),
(132, 'STORAGE005', 'Crucial P5 1TB', 'Crucial', 'Storage', 5800, 9, 3, 'In Stock', '2025-08-05 00:20:17'),
(133, 'STORAGE006', 'Crucial P3 2TB', 'Crucial', 'Storage', 7500, 5, 2, 'In Stock', '2025-08-05 00:20:17'),
(134, 'STORAGE007', 'Kingston KC2500 1TB', 'Kingston', 'Storage', 6200, 8, 3, 'In Stock', '2025-08-05 00:20:17'),
(135, 'STORAGE008', 'Sabrent Rocket 4.0 1TB', 'Sabrent', 'Storage', 7800, 4, 2, 'In Stock', '2025-08-05 00:20:17'),
(136, 'STORAGE009', 'Seagate Barracuda 2TB', 'Seagate', 'Storage', 3500, 15, 5, 'In Stock', '2025-08-05 00:20:17'),
(137, 'STORAGE010', 'Toshiba P300 3TB', 'Toshiba', 'Storage', 4200, 10, 3, 'In Stock', '2025-08-05 00:20:17'),
(138, 'MB001', 'ROG STRIX B660-F', 'ASUS', 'Motherboard', 12000, 5, 2, 'In Stock', '2025-08-05 00:20:17'),
(139, 'MB002', 'ROG STRIX Z690-E', 'ASUS', 'Motherboard', 18000, 4, 2, 'In Stock', '2025-08-05 00:20:17'),
(140, 'MB003', 'MEG Z690 ACE', 'MSI', 'Motherboard', 16000, 5, 2, 'In Stock', '2025-08-05 00:20:17'),
(141, 'MB004', 'MPG B660I EDGE', 'MSI', 'Motherboard', 11000, 7, 3, 'In Stock', '2025-08-05 00:20:17'),
(142, 'MB005', 'Z690 AORUS ELITE', 'Gigabyte', 'Motherboard', 14000, 6, 2, 'In Stock', '2025-08-05 00:20:17'),
(143, 'MB006', 'B660M AORUS PRO', 'Gigabyte', 'Motherboard', 9500, 8, 3, 'In Stock', '2025-08-05 00:20:17'),
(144, 'MB007', 'B550 AORUS PRO', 'Gigabyte', 'Motherboard', 9000, 9, 3, 'In Stock', '2025-08-05 00:20:17'),
(145, 'MB008', 'X570 AORUS MASTER', 'Gigabyte', 'Motherboard', 15000, 3, 1, 'In Stock', '2025-08-05 00:20:17'),
(146, 'PSU001', 'RM850x 850W', 'Corsair', 'Power Supply', 8500, 6, 3, 'In Stock', '2025-08-05 00:20:17'),
(147, 'PSU002', 'HX1000 1000W', 'Corsair', 'Power Supply', 12000, 5, 2, 'In Stock', '2025-08-05 00:20:17'),
(148, 'PSU003', 'Focus GX-850 850W', 'Seasonic', 'Power Supply', 7800, 7, 3, 'In Stock', '2025-08-05 00:20:17'),
(149, 'PSU004', 'Prime TX-1000 1000W', 'Seasonic', 'Power Supply', 11000, 4, 2, 'In Stock', '2025-08-05 00:20:17'),
(150, 'PSU005', 'EVGA SuperNOVA 750W', 'EVGA', 'Power Supply', 7000, 10, 4, 'In Stock', '2025-08-05 00:20:17'),
(151, 'PSU006', 'be quiet! Straight Power 11', 'be quiet!', 'Power Supply', 9500, 6, 2, 'In Stock', '2025-08-05 00:20:17'),
(152, 'COOL001', 'Noctua NH-D15', 'Noctua', 'Cooling System', 4500, 10, 3, 'In Stock', '2025-08-05 00:20:17'),
(153, 'COOL002', 'Corsair H150i ELITE', 'Corsair', 'Cooling System', 6500, 6, 2, 'In Stock', '2025-08-05 00:20:17'),
(154, 'COOL003', 'NZXT Kraken X73', 'NZXT', 'Cooling System', 5800, 7, 3, 'In Stock', '2025-08-05 00:20:17'),
(155, 'COOL004', 'Arctic Liquid Freezer II', 'Arctic', 'Cooling System', 4200, 9, 3, 'In Stock', '2025-08-05 00:20:17'),
(156, 'COOL005', 'Cooler Master Hyper 212', 'Cooler Master', 'Cooling System', 2500, 15, 5, 'In Stock', '2025-08-05 00:20:17'),
(157, 'COOL006', 'be quiet! Dark Rock Pro 4', 'be quiet!', 'Cooling System', 3800, 8, 3, 'In Stock', '2025-08-05 00:20:17'),
(158, 'CASE001', 'NZXT H510', 'NZXT', 'Computer Case', 3500, 12, 4, 'In Stock', '2025-08-05 00:20:17'),
(159, 'CASE002', 'Corsair 4000D', 'Corsair', 'Computer Case', 4000, 10, 3, 'In Stock', '2025-08-05 00:20:17'),
(160, 'CASE003', 'Fractal Design Meshify C', 'Fractal Design', 'Computer Case', 4500, 8, 3, 'In Stock', '2025-08-05 00:20:17'),
(161, 'CASE004', 'Phanteks P400A', 'Phanteks', 'Computer Case', 3800, 9, 3, 'In Stock', '2025-08-05 00:20:17'),
(162, 'PERI001', 'Logitech G Pro X', 'Logitech', 'Peripheral', 2800, 15, 5, 'In Stock', '2025-08-05 00:20:17'),
(163, 'PERI002', 'Razer DeathAdder V3', 'Razer', 'Peripheral', 2200, 18, 6, 'In Stock', '2025-08-05 00:20:17'),
(164, 'PERI003', 'SteelSeries Arctis 7', 'SteelSeries', 'Peripheral', 3200, 12, 4, 'In Stock', '2025-08-05 00:20:17'),
(165, 'PERI004', 'Corsair K70 RGB', 'Corsair', 'Peripheral', 4500, 8, 3, 'In Stock', '2025-08-05 00:20:17'),
(166, 'GPU013', 'NVIDIA RTX 5060TI 16GB', 'NVIDIA', 'Graphic Card (GPU)', 28000, 5, 5, 'Low Stock', '2025-08-05 00:49:21'),
(167, 'GPU014', 'NVIDIA RTX 2060', 'NVIDIA', 'Graphic Card (GPU)', 10000, 5, 5, 'Low Stock', '2025-08-05 00:52:32'),
(168, 'GPU015', 'NVIDIA RTX 1060', 'Gigabyte', 'Graphic Card (GPU)', 8000, 5, 5, 'Low Stock', '2025-08-05 00:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(50) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password_digest`, `password`, `created_at`, `role`) VALUES
(1, 'admin', '', 'admin@example.com', '$2a$12$X/VxIgmmLhZgRwFJrLGFXe2aUEC.Ie/9VezBy1zdzZ0TE.pGpcSvi', '', '2025-07-28 05:55:39', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`activityId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoryId` (`categoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
