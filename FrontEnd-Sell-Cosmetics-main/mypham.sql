-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 05:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypham`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `BV_MA` bigint(20) NOT NULL,
  `BV_TEN` varchar(50) NOT NULL,
  `BV_MOTANGAN` varchar(100) NOT NULL,
  `BV_NOIDUNG` varchar(1000) NOT NULL,
  `NV_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdanhgia`
--

CREATE TABLE `chitietdanhgia` (
  `ID` bigint(20) NOT NULL,
  `BINHLUAN` varchar(100) NOT NULL,
  `KH_MA` bigint(20) NOT NULL,
  `DG_MA` bigint(20) NOT NULL,
  `SP_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `ID` bigint(20) NOT NULL,
  `SOLUONG` int(10) NOT NULL,
  `SP_MA` bigint(20) NOT NULL,
  `DH_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `ID` bigint(20) NOT NULL,
  `SOLUONG` int(10) NOT NULL,
  `SP_MA` bigint(20) NOT NULL,
  `GH_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitietkhuyenmai`
--

CREATE TABLE `chitietkhuyenmai` (
  `ID` bigint(20) NOT NULL,
  `NGAYBD` date NOT NULL,
  `NGAYKT` date NOT NULL,
  `GIAKM` int(10) NOT NULL,
  `KM_MA` varchar(10) NOT NULL,
  `SP_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `ID` bigint(20) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `GIANHAP` int(11) NOT NULL,
  `PN_MA` bigint(20) NOT NULL,
  `SP_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `CV_MA` bigint(20) NOT NULL,
  `CV_TEN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`CV_MA`, `CV_TEN`) VALUES
(1, 'Quản lý kho'),
(2, 'Quản lý đơn hàng'),
(3, 'Quản lý công nợ'),
(4, 'Bảo Trì');

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `DG_MA` bigint(20) NOT NULL,
  `DG_TEN` varchar(50) NOT NULL,
  `DG_SOSAO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhgia`
--

INSERT INTO `danhgia` (`DG_MA`, `DG_TEN`, `DG_SOSAO`) VALUES
(1, '&#9733', 1),
(2, '&#9733 &#9733 ', 2),
(3, '&#9733 &#9733 &#9733', 3),
(4, '&#9733 &#9733 &#9733 &#9733', 4),
(5, '&#9733 &#9733 &#9733  &#9733 &#9733', 5);

-- --------------------------------------------------------

--
-- Table structure for table `diachinhanhang`
--

CREATE TABLE `diachinhanhang` (
  `DCNH_MA` bigint(20) NOT NULL,
  `DCNH_TEN` varchar(50) NOT NULL,
  `DCNH_DIACHI` varchar(100) NOT NULL,
  `DCNH_SDT` varchar(12) NOT NULL,
  `X_MA` bigint(20) UNSIGNED NOT NULL,
  `KH_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `DH_MA` bigint(20) NOT NULL,
  `DH_NGAYDAT` datetime NOT NULL DEFAULT current_timestamp(),
  `DH_TONGTIENHANG` int(10) NOT NULL,
  `DH_TIENVANCHUYEN` int(10) NOT NULL,
  `DH_TONGTHANHTOAN` int(10) NOT NULL,
  `DCNH_MA` bigint(20) NOT NULL,
  `KH_MA` bigint(20) NOT NULL,
  `TT_MA` bigint(20) NOT NULL,
  `NV_MA` bigint(20) NOT NULL,
  `PTTT_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `GH_MA` bigint(20) NOT NULL,
  `KH_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hinhsp`
--

CREATE TABLE `hinhsp` (
  `ID_HINH` bigint(20) NOT NULL,
  `HINH` varchar(50) NOT NULL,
  `SP_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `huyen`
--

CREATE TABLE `huyen` (
  `H_MA` bigint(20) NOT NULL,
  `H_TEN` varchar(50) NOT NULL,
  `T_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `KH_MA` bigint(20) NOT NULL,
  `KH_TEN` varchar(50) NOT NULL,
  `KH_SDT` varchar(12) NOT NULL,
  `KH_EMAIL` varchar(50) NOT NULL,
  `KH_DIACHI` varchar(100) NOT NULL,
  `KH_MATKHAU` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`KH_MA`, `KH_TEN`, `KH_SDT`, `KH_EMAIL`, `KH_DIACHI`, `KH_MATKHAU`) VALUES
(1, 'Nguyễn Văn Anh', '0123456789', 'anh@gmail.com', 'Cần Thơ', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `KM_MA` varchar(10) NOT NULL,
  `KM_TEN` varchar(50) NOT NULL,
  `KM_GIATRI` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loaihang`
--

CREATE TABLE `loaihang` (
  `L_MA` bigint(20) NOT NULL,
  `L_TEN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaihang`
--

INSERT INTO `loaihang` (`L_MA`, `L_TEN`) VALUES
(1, 'Chăm Sóc Da Mặt'),
(2, 'Mặt Nạ'),
(3, 'Sữa Rửa Mặt'),
(4, 'Nước Cân Bằng Da'),
(5, 'Tinh Chất Dưỡng/Serum'),
(6, 'Dưỡng Ẩm'),
(7, 'Dưỡng Môi'),
(8, 'Chăm Sóc Tóc'),
(9, 'Tẩy Tế Bào Chết Cơ Thể'),
(10, 'Kem Chống Nắng');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `NCC_MA` bigint(20) NOT NULL,
  `NCC_TEN` varchar(50) NOT NULL,
  `NCC_SDT` varchar(12) NOT NULL,
  `NCC_EMAIL` varchar(50) NOT NULL,
  `NCC_DIACHI` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`NCC_MA`, `NCC_TEN`, `NCC_SDT`, `NCC_EMAIL`, `NCC_DIACHI`) VALUES
(1, 'Công ty TNHH NARUKO', '0147852369', 'naruko@gmail.com', 'TP.HCM');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `NV_MA` bigint(20) NOT NULL,
  `NV_TEN` varchar(50) NOT NULL,
  `NV_SDT` varchar(12) NOT NULL,
  `NV_EMAIL` varchar(50) NOT NULL,
  `NV_MATKHAU` varchar(20) NOT NULL,
  `CV_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`NV_MA`, `NV_TEN`, `NV_SDT`, `NV_EMAIL`, `NV_MATKHAU`, `CV_MA`) VALUES
(1, 'Nguyễn Khúc Thuận', '0376194911', 'thuan2015vl@gmail.com', '123456', 1),
(2, 'Trần Kim Ngân', '0942906312', 'ngan896@gmail.com', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `PN_MA` bigint(20) NOT NULL,
  `PN_NGAY` date NOT NULL,
  `NCC_MA` bigint(20) NOT NULL,
  `NV_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phivanchuyen`
--

CREATE TABLE `phivanchuyen` (
  `PVC_MA` bigint(20) NOT NULL,
  `PVC_TEN` varchar(50) NOT NULL,
  `PVC_PHI` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phivanchuyen`
--

INSERT INTO `phivanchuyen` (`PVC_MA`, `PVC_TEN`, `PVC_PHI`) VALUES
(1, 'Ngoại Tỉnh', 30000),
(2, 'Nội Tỉnh', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `phuongthucthanhtoan`
--

CREATE TABLE `phuongthucthanhtoan` (
  `PTTT_MA` bigint(20) NOT NULL,
  `PTTT_TEN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phuongthucthanhtoan`
--

INSERT INTO `phuongthucthanhtoan` (`PTTT_MA`, `PTTT_TEN`) VALUES
(1, 'Thanh toán khi nhận hàng'),
(2, 'Ví ZALO PAY'),
(3, 'Tài Khoản Ngân Hàng');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `SP_MA` bigint(20) NOT NULL,
  `SP_TEN` varchar(50) NOT NULL,
  `SP_HINH` varchar(50) NOT NULL,
  `SP_CONGDUNG` varchar(1000) NOT NULL,
  `SP_TRONGLUONG` varchar(50) NOT NULL,
  `SP_DVT` varchar(50) NOT NULL,
  `SP_GIABAN` int(10) NOT NULL,
  `SP_SOLUONGTON` int(10) NOT NULL,
  `SP_SOLUONGDABAN` int(10) NOT NULL,
  `TH_MA` bigint(20) NOT NULL,
  `L_MA` bigint(20) NOT NULL,
  `NV_MA` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`SP_MA`, `SP_TEN`, `SP_HINH`, `SP_CONGDUNG`, `SP_TRONGLUONG`, `SP_DVT`, `SP_GIABAN`, `SP_SOLUONGTON`, `SP_SOLUONGDABAN`, `TH_MA`, `L_MA`, `NV_MA`) VALUES
(1, 'Sữa rửa mặt nhật bản NARUKO', 'sua_rua_mat_naruko_03.jpg', 'Sữa Rửa Mặt NARUKO 120ml bao gồm nhiều loại sữa rửa mặt khác nhau sẽ không chỉ giúp làm sạch được bụi bẩn và tẩy được tế bào da chết mà còn cung cấp thêm dưỡng chất giúp hỗ trợ tái tạo, hỗ trợ làm chậm tiến trình lão hóa và chăm sóc da hiệu quả.', '120ml', 'Tuýt', 165000, 100, 150, 11, 3, 2),
(2, 'Sữa rửa mặt nhật bản HATOMUGI', 'sua_rua_mat_hatomugi_04.jpg', 'Làm sạch bã nhờn, cấp ẩm cho da, làm mịn và sáng da', '120ml', 'Tuýt', 180000, 120, 100, 13, 3, 2),
(3, 'Sữa rửa mặt Simple', 'sua_rua_mat_simple_05.jpg', 'Sữa rửa mặt simple hỗ trợ làm sạch bã nhờn, cấp ẩm cho da, làm mịn và sáng da', '120ml', 'Tuýt', 140000, 120, 100, 8, 3, 2),
(4, 'Sữa rửa mặt CeraVe - Chính hãng', 'sua_rua_mat_cerave_02.jpg', 'Làm sạch da bã nhờn, cấp ẩm cho da, làm mịn và sáng da', '120ml', 'Tuýt', 220000, 150, 100, 14, 3, 2),
(5, 'Sữa rửa mặt COSRX - Thương hiệu mới', 'sua_rua_mat_cosrx_01.jpg', 'Sản phẩm dành cho da dầu làm sạch bã nhờn, làm mịn và sáng da', '120ml', 'Tuýt', 1650000, 120, 100, 12, 3, 2),
(6, 'Mặt nạ Tràm Trà NARUKO', 'mat_na_naruko_01.jpg', 'Hộp 8 Miếng Mặt Nạ Naruko Tràm Trà Kiềm Dầu Giảm Mụn 26ml/M\r\nTea Tree Shine Control and Blemish Clear Mask', '25gram', 'Miếng', 45000, 125, 325, 11, 2, 2),
(7, 'Mặt nạ cấp ẩm dưỡng da BNBG', 'mat_na_bnbg_02.jpg', 'Mặt Nạ BNBG Vita Genic Hydrating Jelly Mask là loại mặt nạ dành riêng cho các cô nàng da khô hoặc thường xuyên phải tiếp xúc với điều hòa gây nên tình trạng da mất nước, bong tróc.', '25gram', 'Miếng', 25000, 155, 125, 4, 2, 2),
(8, 'Mặt nạ cấp ẩm dưỡng da BNBG', 'mat_na_bnbg_02.jpg', 'Mặt Nạ BNBG Vita Genic Hydrating Jelly Mask là loại mặt nạ dành riêng cho các cô nàng da khô hoặc thường xuyên phải tiếp xúc với điều hòa gây nên tình trạng da mất nước, bong tróc.', '25gram', 'Miếng', 25000, 155, 125, 4, 2, 2),
(9, 'Mặt Nạ Ngủ Senka Cấp Ẩm Chuyên Sâu Dạng Gel 50g', 'mat_na_ngu_09.jpg', 'Mặt Nạ Ngủ Senka Cấp Ẩm Chuyên Sâu Dạng Gel 50g là sản phẩm mặt nạ ngủ đến từ thương hiệu mỹ phẩm chăm sóc da đình đám SENKA – thuộc tập đoàn Shisedo Nhật Bản, giúp cấp ẩm chuyên sâu & nuôi dưỡng làn da ẩm mịn tự nhiên suốt 24h, cho bạn sở hữu làn da đẹp chuẩn Nhật như chiếc bánh Mochi trong mướt!', '50gram', 'Hũ', 159000, 145, 250, 9, 2, 2),
(10, 'Mặt Nạ Naruko Ý Dĩ Nhân Đỏ Se Lỗ Chân Lông, Sáng D', 'mat_na_naruko_03.jpg', 'Mặt nạ trà tràm kiểm soát dầu và mụn Naruko Tea Tree Shine Control and Blemish Clear Mask được làm từ chất liệu than hoạt tính (miếng mặt nạ màu đen) và thành phần tinh dầu Tràm Trà (Tea Tree), giúp hấp thụ dầu thừa và ngăn ngừa mụn, tăng cường kiểm soát bã nhờn và duy trì sự cân bằng dầu - nước trên da, mang lại làn da láng mịn, sáng bóng và không tì vết.', '25ml', 'Miếng', 21000, 150, 240, 11, 2, 2),
(11, 'Serum LOreal Hyaluronic Acid Cấp Ẩm Sáng Da ', 'serum_da_01.jpg', 'Tinh Chất Siêu Cấp Ẩm Sáng Da LOreal Paris Revitalift 1.5% Hyaluronic Acid Serum là dòng sản phẩm serum đến từ thương hiệu LOréal Paris nổi tiếng của Pháp, với sự kết hợp không chỉ 1 mà đến 2 loại Hyaluronic Acid ưu việt ở nồng độ 1.5% sẽ là giải pháp chăm sóc da hiệu quả dành cho làn da khô & lão hóa, giúp cung cấp độ ẩm tối đa cho da căng mịn và tươi sáng tức thì. Với Revitalift HA đậm đặc, làn da sẽ có sự thay đổi rõ rệt, mang đến vẻ ngoài rạng rỡ cho bạn.', '30ml', 'Chai', 354000, 150, 240, 1, 1, 2),
(12, 'Serum Klairs Vitamin C Cho Da Nhạy Cảm ', 'serum_da_02.jpg', '', '35ml', 'Chai', 279000, 150, 240, 1, 1, 2),
(13, 'Serum Balance Active Formula Ngừa Mụn Mờ Thâm', 'serum_da_03.jpg', 'Tinh Chất Balance Active Formula Niacinamide 15% Blemish Recovery Serum là sản phẩm serum mới ra mắt từ thương hiệu Balance Active Formula, với dạng lỏng nhẹ như nước và nồng độ 15% Niacinamide - một loại Vitamin B3 tự nhiên giúp giảm dầu thừa, giúp lỗ chân lông được thu nhỏ lại. Đồng thời, làm giảm các nhược điểm trên da và làm mờ vết thâm, giúp cải thiện kết cấu da và khuyến khích làn da khỏe mạnh.', '30ml', 'Chai', 129000, 140, 160, 1, 1, 2),
(14, 'Serum La Roche-Posay Giúp Tái Tạo & Phục Hồi Da', 'serum_da_04.jpg', 'Hyalu B5 Serum là dòng serum chuyên biệt của thương hiệu La Roche-Posay, với hoạt chất Hyaluronic Acid Duo giúp dưỡng ẩm chuyên sâu, cho da căng mịn; Vitamin B5 làm dịu & bảo vệ da; Madecassoside cải thiện làn da hư tổn nhanh chóng Kết cấu serum cực nhẹ, thẩm thấu nhanh vào da và không hề gây nhờn rít. Chỉ sau một thời gian sử dụng, da sẽ trở nên mịn màng, ẩm mượt và rạng rỡ hơn. Sản phẩm đã được kiểm nghiệm bởi bác sĩ da liễu, tuyệt đối an toàn cho da, kể cả da nhạy cảm.', '30ml', 'Chai', 888000, 140, 160, 1, 1, 2),
(15, 'Serum Skin1004 Rau Má Giảm Mụn & Phục Hồi Da', 'serum_da_03.jpg', 'Tinh Chất Rau Má Hỗ Trợ Giảm Mụn, Phục Hồi Da Skin1004 Madagascar Centella Ampoule là dòng sản phẩm bán chạy nhất của thương hiệu chăm sóc da Skin1004 đến từ Hàn Quốc, đoạt giải thưởng Best of Beauty Award 2019 Winner của tạp chí Female Daily. Sản phẩm chứa chiết xuất từ rau má giúp làm dịu da, giảm sưng viêm mụn, hỗ trợ phục hồi da và chữa lành các thương tổn do mụn hoặc kích ứng gây ra, tái tạo làn da mới tươi sáng và mịn màng hơn.', '55ml', 'Chai', 888000, 140, 160, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `TH_MA` bigint(20) NOT NULL,
  `TH_TEN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`TH_MA`, `TH_TEN`) VALUES
(1, 'L’ORÉAL'),
(2, ' INNISFREE'),
(3, 'LANEIGE'),
(4, 'AHC'),
(5, ' DEAR KLAIRS'),
(6, ' LA ROCHE-POSAY'),
(7, 'OLAY'),
(8, 'SIMPLE'),
(9, 'SENKA'),
(10, 'COCOON'),
(11, 'NARUKO'),
(12, 'COSRX'),
(13, 'HATOMUGI'),
(14, 'CERAVE');

-- --------------------------------------------------------

--
-- Table structure for table `tinh`
--

CREATE TABLE `tinh` (
  `T_MA` bigint(20) NOT NULL,
  `T_TEN` varchar(50) NOT NULL,
  `PVC_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tinh`
--

INSERT INTO `tinh` (`T_MA`, `T_TEN`, `PVC_MA`) VALUES
(1, 'An Giang', 1),
(2, 'Bạc Liêu', 1),
(3, 'Cà Mau', 1),
(4, 'Cần Thơ', 2),
(5, 'Đồng Tháp', 1),
(6, 'Hậu Giang', 1),
(7, 'Kiên Giang', 1),
(8, 'Long An', 1),
(9, 'Tiền Giang', 1),
(10, 'Trà Vinh', 1),
(11, 'Sóc Trăng', 1),
(12, 'Vĩnh Long', 1),
(13, 'Bến Tre', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trangthai`
--

CREATE TABLE `trangthai` (
  `TT_MA` bigint(20) NOT NULL,
  `TT_TEN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trangthai`
--

INSERT INTO `trangthai` (`TT_MA`, `TT_TEN`) VALUES
(1, 'Chờ Xác Nhận'),
(2, 'Chờ Lấy Hàng'),
(3, 'Đang Giao'),
(4, 'Đã Giao'),
(5, 'Đã Hủy'),
(6, 'Trả Hàng');

-- --------------------------------------------------------

--
-- Table structure for table `xa`
--

CREATE TABLE `xa` (
  `X_MA` bigint(20) UNSIGNED NOT NULL,
  `X_TEN` varchar(50) NOT NULL,
  `H_MA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`BV_MA`),
  ADD KEY `NV_MA` (`NV_MA`);

--
-- Indexes for table `chitietdanhgia`
--
ALTER TABLE `chitietdanhgia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `KH_MA` (`KH_MA`,`DG_MA`,`SP_MA`),
  ADD KEY `DG_MA` (`DG_MA`),
  ADD KEY `SP_MA` (`SP_MA`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SP_MA` (`SP_MA`,`DH_MA`),
  ADD KEY `DH_MA` (`DH_MA`);

--
-- Indexes for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SP_MA` (`SP_MA`,`GH_MA`),
  ADD KEY `GH_MA` (`GH_MA`);

--
-- Indexes for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `KM_MA` (`KM_MA`,`SP_MA`),
  ADD KEY `SP_MA` (`SP_MA`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PN_MA` (`PN_MA`,`SP_MA`),
  ADD KEY `SP_MA` (`SP_MA`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`CV_MA`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`DG_MA`);

--
-- Indexes for table `diachinhanhang`
--
ALTER TABLE `diachinhanhang`
  ADD PRIMARY KEY (`DCNH_MA`),
  ADD KEY `X_MA` (`X_MA`,`KH_MA`),
  ADD KEY `KH_MA` (`KH_MA`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`DH_MA`),
  ADD KEY `KH_MA` (`KH_MA`,`TT_MA`,`NV_MA`,`PTTT_MA`),
  ADD KEY `PTTT_MA` (`PTTT_MA`),
  ADD KEY `TT_MA` (`TT_MA`),
  ADD KEY `NV_MA` (`NV_MA`),
  ADD KEY `DCNH_MA` (`DCNH_MA`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`GH_MA`),
  ADD KEY `KH_MA` (`KH_MA`);

--
-- Indexes for table `hinhsp`
--
ALTER TABLE `hinhsp`
  ADD PRIMARY KEY (`ID_HINH`),
  ADD KEY `SP_MA` (`SP_MA`);

--
-- Indexes for table `huyen`
--
ALTER TABLE `huyen`
  ADD PRIMARY KEY (`H_MA`),
  ADD KEY `T_MA` (`T_MA`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`KH_MA`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`KM_MA`);

--
-- Indexes for table `loaihang`
--
ALTER TABLE `loaihang`
  ADD PRIMARY KEY (`L_MA`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`NCC_MA`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`NV_MA`),
  ADD KEY `CV_MA` (`CV_MA`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`PN_MA`),
  ADD KEY `NCC_MA` (`NCC_MA`,`NV_MA`),
  ADD KEY `NV_MA` (`NV_MA`);

--
-- Indexes for table `phivanchuyen`
--
ALTER TABLE `phivanchuyen`
  ADD PRIMARY KEY (`PVC_MA`);

--
-- Indexes for table `phuongthucthanhtoan`
--
ALTER TABLE `phuongthucthanhtoan`
  ADD PRIMARY KEY (`PTTT_MA`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`SP_MA`),
  ADD KEY `TH_MA` (`TH_MA`),
  ADD KEY `LH_MA` (`L_MA`),
  ADD KEY `NV_MA` (`NV_MA`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`TH_MA`);

--
-- Indexes for table `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`T_MA`),
  ADD KEY `PVC_MA` (`PVC_MA`);

--
-- Indexes for table `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`TT_MA`);

--
-- Indexes for table `xa`
--
ALTER TABLE `xa`
  ADD PRIMARY KEY (`X_MA`),
  ADD KEY `H_MA` (`H_MA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `BV_MA` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietdanhgia`
--
ALTER TABLE `chitietdanhgia`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `CV_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `DG_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `diachinhanhang`
--
ALTER TABLE `diachinhanhang`
  MODIFY `DCNH_MA` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `DH_MA` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `GH_MA` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hinhsp`
--
ALTER TABLE `hinhsp`
  MODIFY `ID_HINH` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `huyen`
--
ALTER TABLE `huyen`
  MODIFY `H_MA` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `KH_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loaihang`
--
ALTER TABLE `loaihang`
  MODIFY `L_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `NCC_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `NV_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `PN_MA` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phivanchuyen`
--
ALTER TABLE `phivanchuyen`
  MODIFY `PVC_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phuongthucthanhtoan`
--
ALTER TABLE `phuongthucthanhtoan`
  MODIFY `PTTT_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `SP_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `TH_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tinh`
--
ALTER TABLE `tinh`
  MODIFY `T_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `trangthai`
--
ALTER TABLE `trangthai`
  MODIFY `TT_MA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `xa`
--
ALTER TABLE `xa`
  MODIFY `X_MA` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`NV_MA`) REFERENCES `nhanvien` (`NV_MA`);

--
-- Constraints for table `chitietdanhgia`
--
ALTER TABLE `chitietdanhgia`
  ADD CONSTRAINT `chitietdanhgia_ibfk_1` FOREIGN KEY (`KH_MA`) REFERENCES `khachhang` (`KH_MA`),
  ADD CONSTRAINT `chitietdanhgia_ibfk_2` FOREIGN KEY (`DG_MA`) REFERENCES `danhgia` (`DG_MA`),
  ADD CONSTRAINT `chitietdanhgia_ibfk_3` FOREIGN KEY (`SP_MA`) REFERENCES `sanpham` (`SP_MA`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`SP_MA`) REFERENCES `sanpham` (`SP_MA`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`DH_MA`) REFERENCES `donhang` (`DH_MA`);

--
-- Constraints for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `chitietgiohang_ibfk_1` FOREIGN KEY (`GH_MA`) REFERENCES `giohang` (`GH_MA`),
  ADD CONSTRAINT `chitietgiohang_ibfk_2` FOREIGN KEY (`SP_MA`) REFERENCES `sanpham` (`SP_MA`);

--
-- Constraints for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD CONSTRAINT `chitietkhuyenmai_ibfk_1` FOREIGN KEY (`SP_MA`) REFERENCES `sanpham` (`SP_MA`),
  ADD CONSTRAINT `chitietkhuyenmai_ibfk_2` FOREIGN KEY (`KM_MA`) REFERENCES `khuyenmai` (`KM_MA`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`PN_MA`) REFERENCES `phieunhap` (`PN_MA`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`SP_MA`) REFERENCES `sanpham` (`SP_MA`);

--
-- Constraints for table `diachinhanhang`
--
ALTER TABLE `diachinhanhang`
  ADD CONSTRAINT `diachinhanhang_ibfk_1` FOREIGN KEY (`KH_MA`) REFERENCES `khachhang` (`KH_MA`),
  ADD CONSTRAINT `diachinhanhang_ibfk_2` FOREIGN KEY (`X_MA`) REFERENCES `xa` (`X_MA`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`KH_MA`) REFERENCES `khachhang` (`KH_MA`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`PTTT_MA`) REFERENCES `phuongthucthanhtoan` (`PTTT_MA`),
  ADD CONSTRAINT `donhang_ibfk_3` FOREIGN KEY (`TT_MA`) REFERENCES `trangthai` (`TT_MA`),
  ADD CONSTRAINT `donhang_ibfk_4` FOREIGN KEY (`NV_MA`) REFERENCES `nhanvien` (`NV_MA`),
  ADD CONSTRAINT `donhang_ibfk_5` FOREIGN KEY (`DCNH_MA`) REFERENCES `diachinhanhang` (`DCNH_MA`);

--
-- Constraints for table `hinhsp`
--
ALTER TABLE `hinhsp`
  ADD CONSTRAINT `hinhsp_ibfk_1` FOREIGN KEY (`SP_MA`) REFERENCES `sanpham` (`SP_MA`);

--
-- Constraints for table `huyen`
--
ALTER TABLE `huyen`
  ADD CONSTRAINT `huyen_ibfk_1` FOREIGN KEY (`T_MA`) REFERENCES `tinh` (`T_MA`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`CV_MA`) REFERENCES `chucvu` (`CV_MA`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`NCC_MA`) REFERENCES `nhacungcap` (`NCC_MA`),
  ADD CONSTRAINT `phieunhap_ibfk_3` FOREIGN KEY (`NV_MA`) REFERENCES `nhanvien` (`NV_MA`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`TH_MA`) REFERENCES `thuonghieu` (`TH_MA`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`NV_MA`) REFERENCES `nhanvien` (`NV_MA`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`L_MA`) REFERENCES `loaihang` (`L_MA`);

--
-- Constraints for table `tinh`
--
ALTER TABLE `tinh`
  ADD CONSTRAINT `tinh_ibfk_1` FOREIGN KEY (`PVC_MA`) REFERENCES `phivanchuyen` (`PVC_MA`);

--
-- Constraints for table `xa`
--
ALTER TABLE `xa`
  ADD CONSTRAINT `xa_ibfk_1` FOREIGN KEY (`H_MA`) REFERENCES `huyen` (`H_MA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
