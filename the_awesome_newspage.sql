-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 13. 06 2019 kl. 14:06:24
-- Serverversion: 10.1.30-MariaDB
-- PHP-version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the_awesome_newspage`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(128) NOT NULL,
  `article_text` varchar(800) NOT NULL,
  `article_image` varchar(128) NOT NULL,
  `article_postdate` datetime NOT NULL,
  `article_likes` int(11) NOT NULL,
  `article_is_featured` tinyint(1) NOT NULL,
  `fk_category_id` int(11) NOT NULL,
  `fk_author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `articles`
--

INSERT INTO `articles` (`article_id`, `article_title`, `article_text`, `article_image`, `article_postdate`, `article_likes`, `article_is_featured`, `fk_category_id`, `fk_author_id`) VALUES
(1, 'Politics 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '101.jpeg', '2019-06-11 09:31:00', 392, 0, 1, 9),
(2, 'Politics 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '102.jpeg', '2019-06-11 09:31:00', 231, 0, 1, 5),
(3, 'Politics 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '103.jpeg', '2019-06-11 09:31:00', 84, 0, 1, 7),
(4, 'Politics 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '104.jpeg', '2019-06-12 13:56:00', 95, 0, 1, 2),
(5, 'Breaking News 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '105.jpeg', '2019-06-12 13:58:00', 52, 0, 2, 1),
(6, 'Business 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '118.jpeg', '2019-06-12 13:59:00', 27, 0, 3, 7),
(7, 'Business 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '106.jpeg', '2019-06-12 14:00:00', 128, 0, 3, 6),
(8, 'Business 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '107.jpeg', '2019-06-12 14:01:00', 784, 0, 3, 1),
(9, 'Business 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '108.jpeg', '2019-06-12 14:03:00', 342, 0, 3, 4),
(10, 'Technology 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '109.jpeg', '2019-06-12 14:04:00', 74, 0, 4, 5),
(11, 'Technology 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '110.jpeg', '2019-06-12 14:05:00', 733, 0, 4, 6),
(12, 'Technology 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '111.jpeg', '2019-06-12 14:06:00', 132, 0, 4, 7),
(13, 'Health 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '112.jpeg', '2019-06-12 14:07:00', 53, 0, 5, 4),
(14, 'Health 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '113.jpeg', '2019-06-12 14:08:00', 37, 0, 5, 2),
(15, 'Travel 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '114.jpeg', '2019-06-12 14:10:00', 479, 0, 6, 6),
(16, 'Travel 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '115.jpeg', '2019-06-12 14:10:00', 876, 0, 6, 1),
(17, 'Travel 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '116.jpeg', '2019-06-12 14:11:00', 533, 0, 6, 4),
(18, 'Travel 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque consectetur, purus imperdiet volutpat tincidunt, eros sem mollis quam, ut placerat urna neque at massa. Proin vitae pulvinar justo. Donec vel placerat enim, at ultricies risus. In posuere luctus sem, ac dapibus felis semper quis. Integer ex ante, semper at velit nec, ultrices aliquet diam. Donec gravida non metus blandit facilisis. Cras tincidunt, lorem aliquam molestie eleifend, libero dui volutpat dui, nec sodales massa libero ut metus. Mauris pretium elit ut dapibus consequat. Nam ut lorem nec sem dignissim gravida. Duis fringilla, augue eget lacinia tincidunt, neque leo maximus sem, sed tristique enim orci id quam.', '117.jpeg', '2019-06-12 14:12:00', 244, 0, 6, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(32) NOT NULL,
  `author_image` varchar(128) NOT NULL,
  `author_title` varchar(32) NOT NULL,
  `author_about` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`, `author_image`, `author_title`, `author_about`) VALUES
(1, 'James Williams', 't1.jpg', 'Senior Editor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac.'),
(2, 'Christinne Smith', 't2.jpg', 'Senior Editor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac.'),
(3, 'Alicia Dormund', 't3.jpg', 'Senior Editor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac.'),
(4, 'Steve Duncan', 't4.jpg', 'Senior Editor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac.'),
(5, 'James Williams', 't5.jpg', 'Senior Editor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac.'),
(6, 'Christinne Smith', 't6.jpg', 'Senior Editor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac.'),
(7, 'Alicia Dormund', 't7.jpg', 'Senior Editor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac.'),
(8, 'Steve Duncan', 't8.jpg', 'Senior Editor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placerat. Sed varius leo ac leo fermentum, eu cursus nunc maximus. Integer convallis nisi nibh, et ornare neque ullamcorper ac.'),
(9, 'James Smith', '32.jpg', 'The Author', 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Politics'),
(2, 'Breaking News'),
(3, 'Business'),
(4, 'Technology'),
(5, 'Health'),
(6, 'Travel'),
(7, 'Sports');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_postdate` datetime NOT NULL,
  `comment_text` varchar(1000) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_postdate`, `comment_text`, `fk_user_id`, `fk_article_id`) VALUES
(1, '2019-04-15 13:01:00', 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.', 1, 1),
(2, '2019-04-15 13:01:00', 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.', 2, 1),
(3, '2019-04-15 13:01:00', 'Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien.', 3, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `site_info`
--

CREATE TABLE `site_info` (
  `site_info_id` int(11) NOT NULL,
  `site_info_title` varchar(128) NOT NULL,
  `site_info_email` varchar(128) NOT NULL,
  `site_info_phone` varchar(32) NOT NULL,
  `site_info_url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `site_info`
--

INSERT INTO `site_info` (`site_info_id`, `site_info_title`, `site_info_email`, `site_info_phone`, `site_info_url`) VALUES
(1, 'The News Paper', 'contact@youremail.com', '+43 5278 2883 884', '/home');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `user_email` varchar(64) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_image`) VALUES
(1, 'Christian Williams', 'ChristianWilliams@email.com', '1234', '30.jpg'),
(2, 'Sandy Doe', 'SandyDoe@email.com', '1234', '31.jpg'),
(3, 'James Smith', 'JamesSmith@email.com', '1234', '32.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `video_url` varchar(128) NOT NULL,
  `video_image` varchar(128) NOT NULL,
  `video_postdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `videos`
--

INSERT INTO `videos` (`video_id`, `video_url`, `video_image`, `video_postdate`) VALUES
(1, '', 'hero-add.gif', '2019-06-11 14:10:00');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indeks for tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indeks for tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks for tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indeks for tabel `site_info`
--
ALTER TABLE `site_info`
  ADD PRIMARY KEY (`site_info_id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks for tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tilføj AUTO_INCREMENT i tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tilføj AUTO_INCREMENT i tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tilføj AUTO_INCREMENT i tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `site_info`
--
ALTER TABLE `site_info`
  MODIFY `site_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
