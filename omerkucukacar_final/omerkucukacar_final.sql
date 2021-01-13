-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Oca 2021, 10:01:59
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `omerkucukacar_final`
--
CREATE DATABASE IF NOT EXISTS `omerkucukacar_final` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `omerkucukacar_final`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitapveri`
--

CREATE TABLE `kitapveri` (
  `kkn` int(11) NOT NULL COMMENT 'Kitap tablosunun ana anahtarı',
  `kkt` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın veri tabanına kayıt tarihi',
  `ki` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın ISBN numarası',
  `ka` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın tam adı',
  `kf` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın temel fiziksel özellikleri',
  `kadet` int(11) NOT NULL COMMENT 'Kitap sayısı hakkında genel bilgi',
  `kbyeri` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın oluşturulduğu yer',
  `kbtarih` year(4) NOT NULL COMMENT 'Kitabın basım tarihi',
  `kdili` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın ana dili',
  `yykn` int(11) NOT NULL COMMENT 'Yayınevi kayıt numarası anahtar alanı',
  `yazarkayitno` int(11) NOT NULL COMMENT 'Yazar Numarası artan no\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap İle İlgili Temel Bilgiler';

--
-- Tablo döküm verisi `kitapveri`
--

INSERT INTO `kitapveri` (`kkn`, `kkt`, `ki`, `ka`, `kf`, `kadet`, `kbyeri`, `kbtarih`, `kdili`, `yykn`, `yazarkayitno`) VALUES
(1, '2020-11-03 15:37:56', '9789751027589', 'Çalıkuşu', '110 Sayfa', 4, 'İstanbul', 2018, 'Türkçe', 1, 1),
(3, '2020-11-03 15:43:49', '8794685764312', 'Süt Lekesi', '264 Sayfa', 7, 'Ankara', 2018, 'Türkçe', 3, 3),
(4, '2020-11-03 15:44:53', '8976987895478', 'Camdaki Kız', '352 Sayfa', 2, 'Ankara', 2019, 'Türkçe', 4, 4),
(5, '2020-11-03 15:45:43', '4785698796458', 'Hayvan Çiftliği', '152 Sayfa', 1, 'İstanbul', 2020, 'Türkçe', 5, 5),
(6, '2020-11-03 15:47:23', '9875898796578', 'Ben Kirke', '408 Sayfa', 5, 'İstanbul', 2019, 'Türkçe', 6, 6),
(7, '2020-11-03 15:48:07', '8796878984567', 'Beyaz Zambaklar Ülkesinde', '330 Sayfa', 3, 'Ankara', 2018, 'Türkçe', 7, 7),
(8, '2020-11-03 15:49:09', '8976987896547', 'Körlük', '336 Sayfa ', 7, 'İstanbul', 2017, 'Türkçe', 8, 8),
(9, '2020-11-03 15:51:22', '8798564587962', 'Şeker Portakalı', '200 Sayfa ', 11, 'Ankara', 2000, 'Türkçe', 9, 9),
(10, '2020-11-03 15:52:38', '8975632457891', 'Sineklerin Tanrısı', '262 Sayfa', 9, 'Ankara', 2006, 'Türkçe', 10, 10),
(11, '2020-11-03 15:54:51', '8975641789642', 'Cesur Yeni Dünya', '272 Sayfa', 9, 'İstanbul', 2003, 'Türkçe', 11, 11),
(13, '2020-11-30 15:15:18', '8965789879643', 'Marie Sophie', '69 Sayfa', 7, 'Ankara', 2015, 'Türkçe', 13, 13),
(14, '2020-11-30 15:16:28', '8965987698789', 'İki Güzel (Hamamcı Ülfet) ', ' 64 Sayfa', 5, 'Ankara', 2015, 'İngilizce', 12, 12),
(15, '2020-11-30 15:17:20', '89865987968', 'Yorgun Zaman Düşleri', '64 Sayfa', 8, 'İstanbul', 2009, 'Türkçe', 15, 15),
(16, '2020-11-30 15:18:09', '8976987896542', 'Çavdar Tarlasında Çocuklar', '176 Sayfa', 11, 'Ankara', 2006, 'Türkçe', 16, 16),
(112, '2021-01-13 08:59:02', '89657845632', 'Wesg', 'sw', 11, 'ASDF', 1999, 'EASFCB', 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yykn` int(11) NOT NULL COMMENT 'Yayınevi bilgilerinin anahtar numarası',
  `yykt` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevi sisteme kayıt tarihi',
  `yya` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi tam adı',
  `yyu` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevine ait detaylı bilgi',
  `yye` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevine ait E-posta bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yayınevi Hakkında Genel Bilgiler';

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`yykn`, `yykt`, `yya`, `yyu`, `yye`) VALUES
(1, '2020-11-03 15:08:26', 'İnkılap Yayınevi', 'https://www.inkilap.com/', 'siparis@inkilap.com'),
(3, '2020-11-03 15:56:54', 'Destek Yayınları', 'https://destekdukkan.com/anasayfa', 'info@destekyayinlari.com'),
(4, '2020-11-03 15:57:57', 'Doğan Kitap', 'https://www.dogankitap.com.tr/anasayfa', 'iletisim@dogankitap.com.tr'),
(5, '2020-11-03 15:58:58', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com '),
(6, '2020-12-01 15:59:01', 'İthaki Yayınları', 'http://www.ithaki.com.tr/', 'info@ithaki.com.tr'),
(7, '2020-11-03 16:00:16', 'Koridor Yayıncılık ', 'https://www.koridoryayincilik.com.tr/', '\r\ninfo@koridoryayincilik.com.tr'),
(8, '2020-11-03 16:01:12', 'Kırmızı Kedi', 'https://www.kirmizikedi.com/', 'info@kirmizikedi.com'),
(9, '2020-11-03 16:05:00', 'Can Çocuk Yayınları', 'https://www.cancocuk.com/', ' cancocuk@cancocuk.com'),
(10, '2020-11-03 16:05:52', 'İş Bankası Kültür Yayınları ', 'https://www.iskultur.com.tr/', ' bilgi@iskultur.com.tr'),
(11, '2020-11-30 15:19:48', 'Palto Yayınevi', 'https://www.idefix.com/Yayinevi/palto-yayinevi/s=7703', 'M. bilgi@idefix.com'),
(12, '2020-11-30 15:20:19', 'Mavi Çatı Yayınları', 'https://www.mavicatiyayinlari.com/', 'info[@]mavicatiyayinlari.com'),
(13, '2020-11-30 15:22:02', 'Destek Kitap', 'https://www.destekkitap.com/', ' info@destekkitap.com'),
(15, '2020-11-30 20:15:54', 'Yapı Kredi Yayınları', 'https://www.yapikrediyayinlari.com.tr/', 'iletisim@ykykultur.com.tr'),
(16, '2020-11-30 20:33:12', 'Metis Yayıncılık', 'https://www.metiskitap.com/', 'bilgi@metiskitap.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarveri`
--

CREATE TABLE `yazarveri` (
  `yazarkayitno` int(11) NOT NULL COMMENT 'Yazar Tablosunun Anahtar alanı',
  `ykt` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yazar Kayıt Tarihi',
  `ya` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar Tam Adı',
  `ys` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar Soyadı',
  `yu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yazara Ait URL bilgisi '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yazarlar Hakkında Genel Bilgiler';

--
-- Tablo döküm verisi `yazarveri`
--

INSERT INTO `yazarveri` (`yazarkayitno`, `ykt`, `ya`, `ys`, `yu`) VALUES
(1, '2020-11-03 14:51:46', 'Reşat Nuri ', 'Güntekin', 'https://tr.wikipedia.org/wiki/Re%C5%9Fat_Nuri_G%C3%BCntekin'),
(3, '2020-11-03 16:07:53', 'Esra', 'Ezmeci', 'https://www.google.com/search?q=Esra+Ezmeci&oq=Esra+Ezmeci&aqs=chrome..69i57j46i433j46j0l5.337j0j4&s'),
(4, '2020-11-03 16:08:45', 'Gülseren ', 'Budayıcıoğlu', 'https://tr.wikipedia.org/wiki/G%C3%BClseren_Buday%C4%B1c%C4%B1o%C4%9Flu'),
(5, '2020-11-03 16:09:18', ' Miller', 'Madeline', 'https://en.wikipedia.org/wiki/Madeline_Miller'),
(6, '2020-12-01 15:58:17', 'Aldous ', 'Huxley', 'https://tr.wikipedia.org/wiki/Aldous_Huxley'),
(7, '2020-11-03 16:10:32', 'Grigory ', 'Petrov', 'https://tr.wikipedia.org/wiki/Grigori_Petrov'),
(8, '2020-11-03 16:10:57', 'Jose ', 'Saramago', 'tr.wikipedia.org/wiki/José_Saramago'),
(9, '2020-11-03 16:11:17', 'Jose ', 'Mauro de Vasconcelos', 'https://tr.wikipedia.org/wiki/Jos%C3%A9_Mauro_de_Vasconcelos'),
(10, '2020-11-03 16:11:43', 'William ', 'Golding', 'https://tr.wikipedia.org/wiki/William_Golding'),
(11, '2020-11-30 15:24:14', 'Serkan Ozan ', 'Özağaç', 'https://tr.wikipedia.org/wiki/Serkan_Ozan_%C3%96za%C4%9Fa%C3%A7#:~:text=G%C3%BCn%C3%BCm%C3%BCz%20%C5'),
(12, '2020-11-30 15:24:52', 'Ahmet ', 'Rasim', 'https://tr.wikipedia.org/wiki/Ahmet_Rasim'),
(13, '2020-11-30 15:25:33', 'Suat', 'Ak', 'https://kidega.com/yazar/suat-ak-164488#:~:text=Suat%20Ak%2C%20Biyografi%2C%20Edebiyat%20kategoriler'),
(15, '2020-12-01 15:34:59', 'George ', 'Orwell', 'https://tr.wikipedia.org/wiki/George_Orwell#:~:text=George%20Orwell%2C%20ya%20da%20as%C4%B1l,B%C3%BC'),
(16, '2020-12-01 15:44:12', 'J. D. ', 'Salinger', 'https://tr.wikipedia.org/wiki/J._D._Salinger'),
(66, '2021-01-13 08:47:52', 'waesrdg', 'wersg', 'dfgb');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitapveri`
--
ALTER TABLE `kitapveri`
  ADD PRIMARY KEY (`kkn`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`yykn`);

--
-- Tablo için indeksler `yazarveri`
--
ALTER TABLE `yazarveri`
  ADD PRIMARY KEY (`yazarkayitno`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitapveri`
--
ALTER TABLE `kitapveri`
  MODIFY `kkn` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun ana anahtarı', AUTO_INCREMENT=113;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yykn` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi bilgilerinin anahtar numarası', AUTO_INCREMENT=40;

--
-- Tablo için AUTO_INCREMENT değeri `yazarveri`
--
ALTER TABLE `yazarveri`
  MODIFY `yazarkayitno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yazar Tablosunun Anahtar alanı', AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
