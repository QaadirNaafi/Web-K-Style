-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2020 at 03:57 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kstyle`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `idAdmin` varchar(11) NOT NULL,
  `namaAdmin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_admin`
--

INSERT INTO `tabel_admin` (`idAdmin`, `namaAdmin`, `email`, `password`) VALUES
('1', 'admin', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kategori`
--

CREATE TABLE `tabel_kategori` (
  `idKategori` int(11) NOT NULL,
  `namaKategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_kategori`
--

INSERT INTO `tabel_kategori` (`idKategori`, `namaKategori`) VALUES
(1, 'Pria'),
(2, 'Wanita'),
(3, 'Anak-anak'),
(4, 'Couple');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_keranjang`
--

CREATE TABLE `tabel_keranjang` (
  `idKeranjang` varchar(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduk` varchar(11) NOT NULL,
  `namaProduk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_komentar`
--

CREATE TABLE `tabel_komentar` (
  `idKomen` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_komentar`
--

INSERT INTO `tabel_komentar` (`idKomen`, `nama`, `email`, `pesan`) VALUES
(1, 'Nafi', 'nafi@gmail.coom', 'Barange elek!');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `idProduk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` text NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `path` varchar(50) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_produk`
--

INSERT INTO `tabel_produk` (`idProduk`, `nama`, `gambar`, `ukuran`, `keterangan`, `kategori`, `harga`, `stock`, `path`, `size`) VALUES
(11, 'Hood Buttoner Jacket', 'HoodButtonerJacket', 'M', 'Men Hoodie Buttoner Jacket', 'pria', 250000, 4, 'image/Men/HoodButtonerJacket.jpg', 1234),
(12, 'Junlee Shirt', 'JunleeShirt', 'L', 'Men Junlee Shirt', 'pria', 150000, 7, 'image/Men/JunleeShirt.jpg', 2345),
(13, 'Plaid Shirt', 'PlaidShirt', 'L', 'Men Plaid Shirt', 'pria', 102000, 1, 'image/Men/PlaidShirt.jpg', 3456),
(17, 'High Waist Jeans', 'HighWaistJeans', 'M', 'Women HighWaist Jeans', 'wanita', 100000, 6, 'image/Women/HighWaistJeans.jpg', 25352),
(18, 'Lantern Sleeve Top', 'LanternSleeveTop', 'S', 'Women Lantern Sleeve Top', 'wanita', 90000, 5, 'image/Women/LanternSleeveTop.jpg', 48736),
(19, 'Long Sleeve Mini Dress', 'LongSleeveMiniDress', 'S', 'Long Sleeve Mini Dress', 'wanita', 200000, 4, 'image/Women/LongSleeveMiniDress.jpg', 14872),
(22, 'Couple Crane Hoodie', 'CoupleCraneHoodie', 'M', 'Couple Crane Hoodie', 'couple', 80000, 6, 'image/Couple/CoupleCraneHoodie.jpg', 8765),
(23, 'Couple Face Print Shirt', 'CoupleFacePrintShirt', 'M', 'Couple Face Print Shirt', 'couple', 80000, 5, 'image/Couple/CoupleFacePrintShirt.jpg', 87654),
(24, 'Couple Print Shirt', 'CouplePrintShirt', 'M', 'Couple Print Shirt', 'couple', 100000, 2, 'image/Couple/CouplePrintShirt.jpg', 3579),
(26, 'Frill Trim Dress', 'FrillTrimDress', 'M', 'Frill Trim Dress', 'anak', 120000, 6, 'image/Kids/FrillTrimDress.jpg', 123),
(27, 'Party Gown', 'PartyGown', 'M', 'Party Gown', 'anak', 350000, 1, 'image/Kids/PartyGown.jpg', 234),
(28, 'Block ZipSet', 'BlockZipSet', 'L', 'Block ZipSet', 'anak', 105000, 5, 'image/Kids/BlockZipSet.jpg', 345);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `idTransaksi` int(11) NOT NULL,
  `idUser` varchar(11) NOT NULL,
  `daftarBarang` text NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`idTransaksi`, `idUser`, `daftarBarang`, `tanggal`, `total`) VALUES
(6, '4', 'Batik Pria, Kategori : pria, Jumlah : 1<br>', '2019-12-10', 100000),
(7, '4', 'Batik Couple, Kategori : couple, Jumlah : 1<br>Batik Anak-anak, Kategori : anak, Jumlah : 1<br>Batik Couple, Kategori : couple, Jumlah : 1<br>', '2019-12-10', 750000),
(8, '4', 'Batik Pria, Kategori : pria, Jumlah : 1<br>', '2019-12-10', 100000),
(9, '4', 'Batik Pria, Kategori : pria, Jumlah : 1<br>Batik Pria, Kategori : pria, Jumlah : 1<br>Batik Wanita, Kategori : wanita, Jumlah : 1<br>', '2019-12-10', 400000),
(10, '5', 'Party Gown, Kategori : anak, Jumlah : 2<br>Plaid Blazer, Kategori : wanita, Jumlah : 2<br>Stripped Hoodie, Kategori : pria, Jumlah : 3<br>Junlee Shirt, Kategori : pria, Jumlah : 2<br>', '2019-12-12', 1750000),
(11, '6', 'Stripped Hoodie, Kategori : pria, Jumlah : 1<br>', '2019-12-17', 130000),
(12, '6', 'Plaid Shirt, Kategori : pria, Jumlah : 1<br>', '2019-12-17', 102000),
(13, '6', 'Plaid Shirt, Kategori : pria, Jumlah : 1<br>Plaid Shirt, Kategori : pria, Jumlah : 1<br>Plaid Shirt, Kategori : pria, Jumlah : 1<br>', '2019-12-17', 306000),
(14, '6', 'Stripped Hoodie, Kategori : pria, Jumlah : 1<br>', '2019-12-18', 130000),
(15, '7', 'Junlee Shirt, Kategori : pria, Jumlah : 1<br>', '2020-01-07', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_trolly`
--

CREATE TABLE `tabel_trolly` (
  `idTrolly` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_trolly`
--

INSERT INTO `tabel_trolly` (`idTrolly`, `idUser`, `idProduk`, `jumlah`, `harga`) VALUES
(2, 6, 20, 1, 180000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `idUser` int(11) NOT NULL,
  `namaUser` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`idUser`, `namaUser`, `email`, `password`, `alamat`, `telpon`) VALUES
(8, 'Jennie ', 'fahmiulinnuha2323@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Rusia', '085290207346');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  ADD PRIMARY KEY (`idKategori`);

--
-- Indexes for table `tabel_keranjang`
--
ALTER TABLE `tabel_keranjang`
  ADD PRIMARY KEY (`idKeranjang`);

--
-- Indexes for table `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  ADD PRIMARY KEY (`idKomen`);

--
-- Indexes for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indexes for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`idTransaksi`);

--
-- Indexes for table `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  ADD PRIMARY KEY (`idTrolly`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  MODIFY `idKomen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  MODIFY `idProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `idTransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  MODIFY `idTrolly` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
