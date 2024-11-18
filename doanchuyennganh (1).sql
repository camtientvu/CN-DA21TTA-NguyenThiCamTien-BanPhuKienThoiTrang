-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2024 lúc 04:42 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doanchuyennganh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `idbinhluan` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL,
  `danhgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`idbinhluan`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`, `danhgia`) VALUES
(23, 'oke ma', 18, 53, '04:54:56pm 31/10/2024', 4),
(24, 'sfsfsfs', 18, 53, '04:56:53pm 31/10/2024', 2),
(25, 'hello', 18, 45, '05:16:32pm 31/10/2024', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idcthoadon` int(10) NOT NULL,
  `idhoadon` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `price` int(10) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL,
  `tongtien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idcthoadon`, `idhoadon`, `idpro`, `price`, `soluong`, `tongtien`) VALUES
(124, 145, 56, 3000000, 1, 3000000),
(125, 146, 56, 3000000, 1, 3000000),
(126, 147, 57, 304, 1, 304),
(127, 148, 56, 3000000, 1, 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(39, 'Túi Xách'),
(40, 'Đồng Hồ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `idhoadon` int(10) NOT NULL,
  `iduser` int(10) DEFAULT 0,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(50) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.Thanh toán trực tiếp 2.Chuyển khoản 3.Thanh toán online',
  `ngaydathang` varchar(50) DEFAULT NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) DEFAULT 0 COMMENT '0.Đơn hàng mới 1.Đang xử lý 2.Đang giao hàng 3.Đã giao hàng 4.Hủy bỏ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`idhoadon`, `iduser`, `bill_name`, `bill_address`, `bill_tel`, `bill_email`, `bill_pttt`, `ngaydathang`, `total`, `bill_status`) VALUES
(145, 18, 'Admin123', 'TP', '0348521000', 'admin@gmail.com', 1, '08:35:03am 08/11/2024', 3000000, 3),
(146, 54, 'Nguyễn Quốc Cường', '106 Nguyễn Thiện Thành', '0348521000', 'cuong@gmail.com', 1, '06:39:19am 13/11/2024', 3000000, 0),
(147, 54, 'Nguyễn Quốc Cường', '106 Nguyễn Thiện Thành', '0348521000', 'cuong@gmail.com', 1, '07:31:01am 13/11/2024', 304, 3),
(148, 18, 'Admin123', 'TP', '0348521000', 'admin@gmail.com', 1, '12:05:16pm 15/11/2024', 3000000, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idpro` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `iddm` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `giamgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idpro`, `name`, `price`, `img`, `mota`, `iddm`, `soluong`, `luotxem`, `giamgia`) VALUES
(45, 'Đồng hồ nam đen', 1280000.00, '02.jpg', 'Đẹp', 40, 10, 0, 5),
(46, 'Đồng hồ thông minh', 95000000.00, 'images.jpg', 'Quá đẹp', 39, 97, 0, 0),
(49, 'Túi xách', 500.00, 'banner2.jpg', 'aaaaaaaaaaa', 40, 5, 0, 0),
(51, 'Laptop', 40000.00, 'Banner.jpg', 'ddddddd', 40, 12, 0, 0),
(52, 'Đồng hồ nam đen 1', 1280000.00, '02.jpg', 'Đẹp', 40, 15, 0, 0),
(53, 'Túi xách bdgdgd', 500.00, 'banner2.jpg', 'aaaaaaaaaaa', 40, 5, 0, 0),
(56, 'Máy chụp ảnh', 3000000.00, '01.jpg', 'sss', 40, 0, 0, 0),
(57, 'Mắt kính', 320.00, 'banner3.png', 'dddd', 40, 1, 0, 5),
(58, 'Laptop ASUS1', 1000000.00, '01.jpg', 'sssssss', 40, 5, 0, 20),
(61, 'hhhhhhhhh222', 2800000.00, 'banner3.png', 'dddddddddd', 40, 10, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `iduser` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`iduser`, `user`, `pass`, `hoten`, `email`, `address`, `tel`, `role`) VALUES
(18, 'Admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin123', 'admin@gmail.com', 'TP', '0348521000', 1),
(42, 'A1', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Thị Cẩm Tiên', 'nguyenthicamtien16102001@gmail.com', '106 Nguyễn Thiện Thành', '0983994030', 0),
(55, 'cuong', '999', '', 'cuong@gmail.com', '', '', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`idbinhluan`),
  ADD KEY `fk_taikhoan` (`iduser`),
  ADD KEY `fk_sanpham_binhluan` (`idpro`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`idcthoadon`),
  ADD KEY `fk_sanpham` (`idpro`),
  ADD KEY `fk_hoadon` (`idhoadon`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idhoadon`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idpro`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `idbinhluan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `idcthoadon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idhoadon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idpro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `iduser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_sanpham_binhluan` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`idpro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_taikhoan` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `fk_hoadon` FOREIGN KEY (`idhoadon`) REFERENCES `hoadon` (`idhoadon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sanpham` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`idpro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
