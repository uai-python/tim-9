-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2017 at 02:57 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuispython`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE IF NOT EXISTS `biodata` (
  `id` int(10) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `umur` int(10) NOT NULL,
  `kota` varchar(10) NOT NULL,
  `nama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE IF NOT EXISTS `pertanyaan` (
  `idpertanyaan` int(10) NOT NULL,
  `pertanyaan` varchar(500) NOT NULL,
  `jawaban` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`idpertanyaan`, `pertanyaan`, `jawaban`) VALUES
(1, 'ada berapa stasiun TV yang sudah beroperasi di Provinsi DKI Jakarta?', '38'),
(2, 'pada tahun 2013 ada berapakah jumlah posyandu di Jakarta?', '4371'),
(3, 'Ada berapakah kecamatan di wilayah Jakarta Pusat yang sering banjir?', '3'),
(4, 'Dari 779 balai pengobatan umum di Jakarta tahun 2013, berapakah balai pengobatan gigi?', '125'),
(5, 'Berapa rata-rata LSM yang aktif di Jakarta dari tahun 2011?', '106'),
(6, 'Berapa persentase terbesar komposisi sampah organik maupun non organik di Jakarta dari tahun 2005-2011?', '55.37%'),
(7, 'Berapa jumlah rata-rata perokok di kecamatan Cilandak pada bulan juli 2016? ', '986,4'),
(8, 'Jumlah dokter umum tertinggi di Jakarta adalah 2886, data tersebut diambil pada tahun?', '2012'),
(9, 'Berapa jumlah kematian bayi laki-laki di Jakarta Selatan sepanjang tahun 2015?', '59'),
(10, 'Berapa banyak taman lingkungan di Jakarta Barat sampai akhir tahun 2016?', '184'),
(11, 'Berapa banyak jumlah event internasional yang diselenggarakan di Jakarta sepanjang tahun 2015?', '38'),
(12, 'Ada berapa banyak siswa SMA yang putus sekolah di Jakarta tahun ajaran 2013-2014?', '164'),
(13, 'Berapa jumlah SD Swasta di Jakarta Pusat?', '104'),
(14, 'Dari 779 balai pengobatan umum di Jakarta tahun 2013, berapakah balai pengobatan gigi?', '125'),
(15, 'Ada berapakah kecamatan di wilayah Jakarta Pusat yang sering banjir?', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`idpertanyaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `idpertanyaan` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
