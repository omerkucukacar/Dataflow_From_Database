-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Kas 2020, 17:13:43
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
-- Veritabanı: `omerkucukacar_01`
--
CREATE DATABASE IF NOT EXISTS `omerkucukacar_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `omerkucukacar_01`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitapveri`
--

CREATE TABLE `kitapveri` (
  `KitapKayitNo` smallint(6) NOT NULL COMMENT 'Kitap tablosunun ana anahtarı',
  `KitapKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Kitabın veri tabanına kayıt tarihi',
  `KitapİSBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın ISBN numarası',
  `KitapAdi` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın tam adı',
  `KitapFiziksel` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın temel fiziksel özellikleri',
  `KitapAdet` int(11) NOT NULL COMMENT 'Kitap sayısı hakkında genel bilgi',
  `KitapBasımYeri` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın oluşturulduğu yer',
  `KitapBasımTarih` year(4) NOT NULL COMMENT 'Kitabın basım tarihi',
  `KitapDili` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın ana dili'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap İle İlgili Temel Bilgiler';

--
-- Tablo döküm verisi `kitapveri`
--

INSERT INTO `kitapveri` (`KitapKayitNo`, `KitapKayitTarih`, `KitapİSBN`, `KitapAdi`, `KitapFiziksel`, `KitapAdet`, `KitapBasımYeri`, `KitapBasımTarih`, `KitapDili`) VALUES
(2, '2020-11-03 15:37:56', '9789751027589', 'Çalıkuşu', '110 Sayfa', 4, 'İstanbul', 2018, 'Türkçe'),
(3, '2020-11-03 15:43:49', '8794685764312', 'Süt Lekesi', '264 Sayfa', 7, 'Ankara', 2018, 'Türkçe'),
(4, '2020-11-03 15:44:53', '8976987895478', 'Camdaki Kız', '352 Sayfa', 2, 'Ankara', 2019, 'Türkçe'),
(5, '2020-11-03 15:45:43', '4785698796458', 'Hayvan Çiftliği', '152 Sayfa', 1, 'İstanbul', 2020, 'Türkçe'),
(6, '2020-11-03 15:47:23', '9875898796578', 'Ben Kirke', '408 Sayfa', 5, 'İstanbul', 2019, 'Türkçe'),
(7, '2020-11-03 15:48:07', '8796878984567', 'Beyaz Zambaklar Ülkesinde', '330 Sayfa', 3, 'Ankara', 2018, 'Türkçe'),
(8, '2020-11-03 15:49:09', '8976987896547', 'Körlük', '336 Sayfa ', 7, 'İstanbul', 2017, 'Türkçe'),
(9, '2020-11-03 15:51:22', '8798564587962', 'Şeker Portakalı', '200 Sayfa ', 11, 'Ankara', 2000, 'Türkçe'),
(10, '2020-11-03 15:52:38', '8975632457891', 'Sineklerin Tanrısı', '262 Sayfa', 8, 'Ankara', 2006, 'Türkçe'),
(11, '2020-11-03 15:54:51', '8975641789642', 'Cesur Yeni Dünya', '272 Sayfa', 9, 'İstanbul', 2003, 'Türkçe');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yayineviKayitNo` int(11) NOT NULL COMMENT 'Yayınevi bilgilerinin anahtar numarası',
  `yayineviKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yayınevi sisteme kayıt tarihi',
  `yayineviAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevi tam adı',
  `yayineviURL` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevine ait detaylı bilgi',
  `yayineviEposta` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yayınevine ait E-posta bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yayınevi Hakkında Genel Bilgiler';

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`yayineviKayitNo`, `yayineviKayitTarih`, `yayineviAdi`, `yayineviURL`, `yayineviEposta`) VALUES
(2, '2020-11-03 15:08:26', 'İnkılap Yayınevi', 'https://www.inkilap.com/', 'siparis@inkilap.com'),
(3, '2020-11-03 15:56:54', 'Destek Yayınları', 'https://destekdukkan.com/anasayfa', 'info@destekyayinlari.com'),
(4, '2020-11-03 15:57:57', 'Doğan Kitap', 'https://www.dogankitap.com.tr/anasayfa', 'iletisim@dogankitap.com.tr'),
(5, '2020-11-03 15:58:58', 'Can Yayınları', 'https://canyayinlari.com/', 'dosya@canyayinlari.com '),
(6, '2020-11-03 15:59:36', 'İthaki Yayınları', 'http://www.ithaki.com.tr/', 'info@ithaki.com.tr'),
(7, '2020-11-03 16:00:16', 'İndigo Kitap', 'https://www.indigodukkan.com/', '\r\nsiparis@indigokitap.com'),
(8, '2020-11-03 16:01:12', 'Kırmızı Kedi', 'https://www.kirmizikedi.com/', 'info@kirmizikedi.com'),
(9, '2020-11-03 16:05:00', 'Can Çocuk Yayınları', 'https://www.cancocuk.com/', ' cancocuk@cancocuk.com'),
(10, '2020-11-03 16:05:52', 'İş Bankası Kültür Yayınları ', 'https://www.iskultur.com.tr/', ' bilgi@iskultur.com.tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarveri`
--

CREATE TABLE `yazarveri` (
  `yazarKayitNo` smallint(6) NOT NULL COMMENT 'Yazar Tablosunun Anahtar alanı',
  `yazarKayitTarih` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Yazar Kayıt Tarihi',
  `yazarAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar Tam Adı',
  `yazarSoyadi` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yazar Soyadı',
  `yazarURL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yazara Ait URL bilgisi '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yazarlar Hakkında Genel Bilgiler';

--
-- Tablo döküm verisi `yazarveri`
--

INSERT INTO `yazarveri` (`yazarKayitNo`, `yazarKayitTarih`, `yazarAdi`, `yazarSoyadi`, `yazarURL`) VALUES
(1, '2020-11-03 14:51:46', 'Reşat Nuri ', 'Güntekin', 'https://tr.wikipedia.org/wiki/Re%C5%9Fat_Nuri_G%C3%BCntekin'),
(3, '2020-11-03 16:07:53', 'Esra', 'Ezmeci', 'https://www.google.com/search?q=Esra+Ezmeci&oq=Esra+Ezmeci&aqs=chrome..69i57j46i433j46j0l5.337j0j4&s'),
(4, '2020-11-03 16:08:45', 'Gülseren ', 'Budayıcıoğlu', 'https://tr.wikipedia.org/wiki/G%C3%BClseren_Buday%C4%B1c%C4%B1o%C4%9Flu'),
(5, '2020-11-03 16:09:18', ' Miller', 'Madeline', 'https://en.wikipedia.org/wiki/Madeline_Miller'),
(6, '2020-11-03 16:09:46', 'Petrov', 'Grigory', 'https://tr.wikipedia.org/wiki/Grigori_Petrov'),
(7, '2020-11-03 16:10:32', 'José ', 'Saramago', 'https://tr.wikipedia.org/wiki/Jos%C3%A9_Saramago'),
(8, '2020-11-03 16:10:57', 'Jose ', 'Mauro De Vasconcelos', 'https://tr.wikipedia.org/wiki/Jos%C3%A9_Mauro_de_Vasconcelos'),
(9, '2020-11-03 16:11:17', 'William ', 'Golding', 'https://tr.wikipedia.org/wiki/William_Golding'),
(10, '2020-11-03 16:11:43', ' Aldous ', 'Huxley', 'https://tr.wikipedia.org/wiki/Aldous_Huxley');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitapveri`
--
ALTER TABLE `kitapveri`
  ADD PRIMARY KEY (`KitapKayitNo`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`yayineviKayitNo`);

--
-- Tablo için indeksler `yazarveri`
--
ALTER TABLE `yazarveri`
  ADD PRIMARY KEY (`yazarKayitNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitapveri`
--
ALTER TABLE `kitapveri`
  MODIFY `KitapKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun ana anahtarı', AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yayineviKayitNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi bilgilerinin anahtar numarası', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yazarveri`
--
ALTER TABLE `yazarveri`
  MODIFY `yazarKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazar Tablosunun Anahtar alanı', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
