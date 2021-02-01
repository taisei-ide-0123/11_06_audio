-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 2 月 01 日 16:30
-- サーバのバージョン： 10.4.17-MariaDB
-- PHP のバージョン: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsmcf_d7_06`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `voiceRecorder_table`
--

CREATE TABLE `voiceRecorder_table` (
  `id` int(12) NOT NULL,
  `title` varchar(128) NOT NULL,
  `voice` varchar(128) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `voiceRecorder_table`
--

INSERT INTO `voiceRecorder_table` (`id`, `title`, `voice`, `created_at`, `updated_at`) VALUES
(1, '犬', 'upload/20210131022046beee7f91c2578b8f380e090741b4ca82.wav', '2021-01-31 10:20:46', '2021-01-31 10:20:46'),
(2, '子犬', 'upload/20210131122512488707e69fad540e86d292b332e512b9.wav', '2021-01-31 20:25:12', '2021-01-31 20:25:12'),
(3, '猫', 'upload/20210131132928332c8e5bca36f6d77d12b40741fd7970.wav', '2021-01-31 21:29:28', '2021-01-31 21:29:28'),
(4, '子猫', 'upload/20210131132948a9aa9a03f18e846838d4320b0bcc7bb6.wav', '2021-01-31 21:29:48', '2021-01-31 21:29:48'),
(5, '小鳥', 'upload/2021013113300818baa6228e4f6839d934086ebcbfdcf0.wav', '2021-01-31 21:30:08', '2021-01-31 21:30:08'),
(6, '犬', 'upload/2021013113373756ed1252a0ab7f229974255688fe843e.wav', '2021-01-31 21:37:37', '2021-01-31 21:37:37'),
(7, '子犬', 'upload/20210131133757201f997a4f53d8969a511c628a72b76a.wav', '2021-01-31 21:37:57', '2021-01-31 21:37:57'),
(8, '猫', 'upload/20210131133819639b9e8714b7d7cf82615b99978792cd.wav', '2021-01-31 21:38:19', '2021-01-31 21:38:19'),
(9, '子猫', 'upload/20210131133833206727c285e21ab8bac3e6acd86a1ef8.wav', '2021-01-31 21:38:33', '2021-01-31 21:38:33'),
(10, '小鳥', 'upload/20210131133847bf1bedde43e422bc2dbad3e0800b3acf.wav', '2021-01-31 21:38:47', '2021-01-31 21:38:47'),
(11, '犬', 'upload/20210131134003543315fdc31dc4095f6838a0b0553e4b.wav', '2021-01-31 21:40:03', '2021-01-31 21:40:03'),
(12, '子犬', 'upload/202101311340156285a6c4ae7cee6e036412236883b5ee.wav', '2021-01-31 21:40:15', '2021-01-31 21:40:15'),
(13, '猫', 'upload/20210131134038e1a9ec3f320f5e41210d6058686900fe.wav', '2021-01-31 21:40:38', '2021-01-31 21:40:38'),
(14, '子猫', 'upload/20210131134058fcd6c44bb992bd6ccad68b37999aab53.wav', '2021-01-31 21:40:58', '2021-01-31 21:40:58'),
(15, '小鳥', 'upload/202101311341213c2d18cc212ff3d9b6035d8251521b08.wav', '2021-01-31 21:41:21', '2021-01-31 21:41:21');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `voiceRecorder_table`
--
ALTER TABLE `voiceRecorder_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `voiceRecorder_table`
--
ALTER TABLE `voiceRecorder_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
