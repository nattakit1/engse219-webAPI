-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2025 at 05:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `stock`, `image_url`, `created_at`) VALUES
(1, 'iPhone 17 Air', 'ไอโฟนใหม่ล่าสุดจาก Apple', 39900.00, 'Smartphone', 10, 'https://example.com/iphone15.jpg', '2025-10-03 02:30:04'),
(2, 'Iphone 17 Pro Max', 'แก้ไขข้อมูล', 56000.00, 'Smartphone By Apple', 2, 'https://example.com/IP17PM.jpg', '2025-10-03 02:31:01'),
(4, 'Nike Air Max', 'รองเท้าวัยรุ่นนิยม', 4500.00, 'Shoes', 20, 'https://example.com/nike.jpg', '2025-10-03 02:33:03'),
(5, 'Adidas Ultraboost', 'รองเท้าวิ่งใส่สบาย', 5200.00, 'Shoes', 18, 'https://example.com/adidas.jpg', '2025-10-03 02:33:48'),
(6, 'Sony WH-1000XM5', 'หูฟังตัดเสียงรบกวน', 12900.00, 'Headphones', 12, 'https://example.com/sony.jpg', '2025-10-03 02:35:06'),
(7, 'Logitech MX Master 3', 'เมาส์ไร้สายระดับโปร', 3500.00, 'Accessories', 25, 'https://example.com/mx3.jpg', '2025-10-03 02:31:01'),
(8, 'Canon EOS R10', 'กล้องมิเรอร์เลสถ่ายภาพชัด', 29900.00, 'Camera', 8, 'https://example.com/eosr10.jpg', '2025-10-03 02:31:01'),
(9, 'PlayStation 5', 'เครื่องเล่นเกมรุ่นใหม่ล่าสุด', 18900.00, 'Console', 10, 'https://example.com/ps5.jpg', '2025-10-03 02:31:01'),
(10, 'Xbox Series X', 'คอนโซลเกมจาก Microsoft', 17900.00, 'Console', 9, 'https://example.com/xbox.jpg', '2025-10-03 02:31:01'),
(11, 'Apple Watch 9', 'สมาร์ทวอชสำหรับสายสุขภาพ', 13900.00, 'Wearable', 14, 'https://example.com/watch9.jpg', '2025-10-03 02:31:01'),
(12, 'GoPro Hero 12', 'กล้อง Action Camera', 15900.00, 'Camera', 11, 'https://example.com/gopro.jpg', '2025-10-03 02:31:01'),
(13, 'MSI Gaming Monitor', 'จอเกมมิ่ง 27 นิ้ว 165Hz', 12900.00, 'Monitor', 6, 'https://example.com/msi.jpg', '2025-10-03 02:31:01'),
(14, 'Dell XPS 13', 'โน้ตบุ๊กบางเบา', 49900.00, 'Laptop', 5, 'https://example.com/xps13.jpg', '2025-10-03 02:31:01'),
(15, 'MacBook Air M2', 'โน้ตบุ๊กชิป M2 จาก Apple', 42900.00, 'Laptop', 7, 'https://example.com/macbook.jpg', '2025-10-03 02:31:01'),
(16, 'Kindle Paperwhite', 'เครื่องอ่าน Ebook', 4990.00, 'Tablet', 15, 'https://example.com/kindle.jpg', '2025-10-03 02:31:01'),
(17, 'Dyson V12', 'เครื่องดูดฝุ่นไร้สาย', 19900.00, 'Home', 12, 'https://example.com/dyson.jpg', '2025-10-03 02:31:01'),
(18, 'Nintendo Switch OLED', 'เครื่องเกมพกพา', 13900.00, 'Console', 20, 'https://example.com/switch.jpg', '2025-10-03 02:31:01'),
(19, 'Bose QC45', 'หูฟังไร้สายตัดเสียงรบกวน', 11900.00, 'Headphones', 16, 'https://example.com/bose.jpg', '2025-10-03 02:31:01'),
(20, 'Razer BlackWidow V4', 'คีย์บอร์ดเกมมิ่ง Mechanical', 5900.00, 'Accessories', 22, 'https://example.com/razer.jpg', '2025-10-03 02:31:01'),
(21, 'Airpod Pro', 'หูงฟังตัดเสียงรบกวน ของ Apple', 4500.00, 'Headphones', 5, 'https://example.com/airpod.jpg', '2025-10-03 03:15:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
