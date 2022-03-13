-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2022 at 11:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hahalolo_tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `avatar`
--

CREATE TABLE `avatar` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `upload_on` datetime NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `avatar`
--

INSERT INTO `avatar` (`id`, `file_name`, `upload_on`, `name`) VALUES
(41, 'userphp.png', '2022-03-13 15:48:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_comment`
--

CREATE TABLE `db_comment` (
  `id` int(11) NOT NULL,
  `user_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user-name',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_cmt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ma_tour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `db_images`
--

CREATE TABLE `db_images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_on` date NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_tour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_images`
--

INSERT INTO `db_images` (`id`, `file_name`, `uploaded_on`, `status`, `ma_tour`) VALUES
(2, 'H tech.png', '2022-01-10', '1', 'HN02'),
(3, 'img1.webp', '2022-01-10', '1', 'HN01'),
(4, 'img2.webp', '2022-01-10', '1', 'HN01'),
(5, 'img3.webp', '2022-01-10', '1', 'HN01'),
(6, 'img4.webp', '2022-01-10', '1', 'HN01'),
(7, 'img5.webp', '2022-01-10', '1', 'HN01'),
(8, 'img6.webp', '2022-01-10', '1', 'HN01'),
(9, 'img3.webp', '2022-01-10', '1', 'SG3'),
(10, 'img4.webp', '2022-01-10', '1', 'SG3'),
(11, 'img7.webp', '2022-01-10', '1', 'SG3'),
(12, 'img8.webp', '2022-01-10', '1', 'SG3'),
(13, 'img1.webp', '2022-01-10', '1', 'SG4'),
(14, 'img2.webp', '2022-01-10', '1', 'SG4'),
(15, 'img3.webp', '2022-01-10', '1', 'SG4'),
(16, 'img4.webp', '2022-01-10', '1', 'SG4'),
(17, 'img5.webp', '2022-01-10', '1', 'SG4'),
(18, 'img7.webp', '2022-01-10', '1', 'SG4'),
(19, 'img1.webp', '2022-03-13', '1', 'DN1'),
(20, 'img2.webp', '2022-03-13', '1', 'DN1'),
(21, 'img3.webp', '2022-03-13', '1', 'DN1'),
(22, 'img4.webp', '2022-03-13', '1', 'DN1'),
(23, 'img5.webp', '2022-03-13', '1', 'DN1'),
(24, 'img1.webp', '2022-03-13', '1', 'DN3'),
(25, 'img2.webp', '2022-03-13', '1', 'DN3'),
(26, 'img3.webp', '2022-03-13', '1', 'DN3'),
(27, 'img4.webp', '2022-03-13', '1', 'DN3'),
(28, 'img5.webp', '2022-03-13', '1', 'DN3'),
(29, 'img1.webp', '2022-03-13', '1', 'DN5'),
(30, 'img2.webp', '2022-03-13', '1', 'DN5'),
(31, 'img3.webp', '2022-03-13', '1', 'DN5'),
(32, 'img4.webp', '2022-03-13', '1', 'DN5'),
(33, 'img5.webp', '2022-03-13', '1', 'DN5');

-- --------------------------------------------------------

--
-- Table structure for table `db_nguoidung`
--

CREATE TABLE `db_nguoidung` (
  `ma_nguoidung` int(11) NOT NULL,
  `ten_nguoidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verification_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_nguoidung`
--

INSERT INTO `db_nguoidung` (`ma_nguoidung`, `ten_nguoidung`, `email`, `mat_khau`, `status`, `email_verification_link`, `email_verified_at`) VALUES
(9, 'admin123', 'adminTour@gmail.com', '$2y$10$5H1WoMchjxkV1Jq/uf4qGeYYH.WtpO0w.1r3DFxZqcfjzWfcBBbEy', '2', '4c5c0dd18098a778101ed69a8ad45a0e3344', '2022-01-10 16:05:38'),
(17, 'Nguyễn Huy Hoàng', 'nguyenhuyhoang080721@gmail.com', '$2y$10$7KVxnkSMOdUTSRKqwAVw5OzIGydjHXagM1omj0VTyHLI5/PQ4QSOW', '1', '5efe3b712356b3bcb1b995f3768535e83160', '2022-03-13 08:56:16');

-- --------------------------------------------------------

--
-- Table structure for table `db_thongtinchitiet`
--

CREATE TABLE `db_thongtinchitiet` (
  `ThoiGianKhoiHanh` date NOT NULL,
  `ThoiGianKetThuc` date NOT NULL,
  `DiemKhoiHanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiemDen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_ngay` int(11) NOT NULL,
  `tra_gop` tinyint(1) NOT NULL,
  `khuyen_mai` tinyint(1) NOT NULL,
  `id_tour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_thongtintour`
--

CREATE TABLE `db_thongtintour` (
  `ma_tour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chu_tour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai_tour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_tour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_diem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoi_gian` datetime NOT NULL,
  `gia_tour` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_thongtintour`
--

INSERT INTO `db_thongtintour` (`ma_tour`, `chu_tour`, `loai_tour`, `ten_tour`, `dia_diem`, `thoi_gian`, `gia_tour`, `mo_ta`) VALUES
('DN1', 'Nguyễn Huy Hiệu', 'Tour Miền Trung', 'Du lịch miền Trung', 'Đà Nẵng', '2022-02-25 21:41:36', '8.999.898', 'Đến hẹn lại lên, mùa nắng đẹp của tháng 4 chắc chắn sẽ là thời điểm thích hợp để check-in ở vùng duyên hải của Việt Nam. Đặc biệt với hành trình tour Limousine Ninh Chữ, bạn còn được ghé…'),
('DN2', 'Nguyễn Huy Hoàng ', 'Tour Miền Trung', 'Du lịch miền Trung ', 'Đà Nẵng', '2022-01-25 21:41:36', '7.889.999', 'Đến hẹn lại lên, mùa nắng đẹp của tháng 4 chắc chắn sẽ là thời điểm thích hợp để check-in ở vùng duyên hải của Việt Nam. Đặc biệt với hành trình tour Limousine Ninh Chữ, bạn còn được ghé…'),
('HN01', 'Nguyễn Ngọc Lâm', 'Tour Miền Nam', 'Hà Nam', 'Hà Nam', '2022-01-25 21:41:36', '7.999.000', 'Dù không phải là khách sạn sang chảnh, nhưng chắc chắn những homestay ở Huế –  Đà Nẵng – Hội An này sẽ làm bạn phải xiêu lòng vì thiết kế quá dễ thương. Lưu ngay lại cho chuyến du lịch trong…');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_comment`
--
ALTER TABLE `db_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nguoidung` (`user_comment`),
  ADD KEY `fk_userCommentt` (`ma_tour`);

--
-- Indexes for table `db_images`
--
ALTER TABLE `db_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_nguoidung`
--
ALTER TABLE `db_nguoidung`
  ADD PRIMARY KEY (`ma_nguoidung`);

--
-- Indexes for table `db_thongtintour`
--
ALTER TABLE `db_thongtintour`
  ADD PRIMARY KEY (`ma_tour`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `db_comment`
--
ALTER TABLE `db_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `db_images`
--
ALTER TABLE `db_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `db_nguoidung`
--
ALTER TABLE `db_nguoidung`
  MODIFY `ma_nguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_thongtinchitiet`
--
ALTER TABLE `db_thongtinchitiet`
  ADD CONSTRAINT `fk_thongtintour` FOREIGN KEY (`id_tour`) REFERENCES `db_thongtintour` (`ma_tour`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
