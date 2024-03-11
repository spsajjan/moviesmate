-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 10, 2024 at 05:37 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_moviesmate`
--

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

DROP TABLE IF EXISTS `casts`;
CREATE TABLE IF NOT EXISTS `casts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `acted_in` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `first_name`, `last_name`, `img_url`, `dob`, `height`, `gender`, `acted_in`) VALUES
(1, 'hugh', 'jackman', 'hugh-jackman-6283142.jpg', '1968-10-12', '1.91 m', 'male', ''),
(2, 'madison', 'wolfe', 'madison-wolfe-sq.jpg', '2002-10-16', '1.56 m', 'female', ''),
(3, 'anthony', 'starr', 'anthony-starr.jpg', '1975-10-25', '1.8 m', 'male', ''),
(4, 'anupriya', 'goenka', 'anupriya-goenka.jpg', '1987-05-29', '', 'female', ''),
(5, 'arshad', 'warsi', 'arshad-warsi.jpg', '1968-04-19', '1.68 m', 'male', ''),
(6, 'barun', 'sobti', 'barun-sobti-sq.jpg', '1984-08-21', '1.8 m', 'male', ''),
(7, 'chris', 'hemsworth', 'chris-hemsworth-avatar.webp', '1983-08-11', '1.9 m', 'male', ''),
(8, 'Emily', 'Rudd', 'emily-rudd-avatar.webp', '1993-02-24', '1.65 m', 'female', ''),
(9, 'golshifteh', 'farahani', 'golshifteh-farahani-avatar.jpg', '1983-07-10', '1.69 m', 'female', ''),
(10, 'joey', 'king', 'joey-king.jpg', '1999-07-20', '1.63 m', 'female', ''),
(11, 'kriti', 'sanon', 'kriti-sanon.jpg', '1990-07-27', '1.74 m', 'female', ''),
(12, 'patrick', 'wilson', 'patrick-wilson.jpg', '1973-07-03', '1.83 m', 'male', ''),
(13, 'prabhas', 'raju', 'prabhas-sq.jpg', '1979-10-23', '1.86 m', 'male', ''),
(14, 'riddhi', 'dogra', 'ridhi_dogra.jpg', '1984-09-22', '', 'female', ''),
(15, 'sai dharam', 'tej', 'Sai-Dharam-Tej-1.jpg', '1986-10-15', '', 'male', ''),
(16, 'saif ali', 'khan', 'saif-ali-khan-sq.jpg', '1970-08-16', '1.7 m', 'male', ''),
(17, 'samyukta', 'menon', 'samyukta-menon-sq.jpg', '', '', 'female', ''),
(18, 'sonal', 'chauhan', 'sonal-chauhan-sq.jpg', '1987-05-16', '1.7 m', 'female', ''),
(19, 'sunny', 'singh', 'sunny-singh-s.jpg', '1985-10-06', '1.66 m', 'male', ''),
(20, 'trupti', 'tordmal', 'trupti-toradmal-sq.jpg', '1992-11-22', '', 'female', ''),
(21, 'urvi', 'singh', 'urvi-singh-sq.jpg', '2002-09-02', '', 'female', ''),
(22, 'vera', 'farmiga', 'vera-farmiga.jpg', '1973-08-06', '', 'female', ''),
(23, 'woody', 'norman', 'woody-norman-sq.jpg', '', '', 'male', ''),
(24, 'dafne', 'keen', 'dafne-keen.jpg', '2005-01-04', '1.5 m', 'female', ''),
(25, 'patrick', 'stewart', 'patrick-stewart.jpg', '1940-07-13', '', 'male', ''),
(26, 'sean', 'bean', 'sean-bean.jpg', '1959-04-17', '', 'male', ''),
(27, 'famke', 'janssen', 'famke-janssen.jpg', '1964-11-05', '1.82 m', 'female', ''),
(28, 'madison', 'iseman', 'madison-iseman-1.jpg', '1997-02-14', '1.57 m', 'female', ''),
(29, 'mackenyu', '', 'mackenyu.jpg', '', '', 'male', ''),
(30, 'paul', 'rudd', 'paul-rudd.jpg', '1969-04-06', '', 'male', ''),
(31, 'evangeline', 'lilly', 'evangeline-lilly.jpg', '1979-08-03', '', 'female', ''),
(32, 'kathryn', 'newton', 'kathryn-newton.jpg', '1997-02-08', '1.65 m', 'female', ''),
(33, 'amla', 'paul', 'amala-paul.jpg', '1991-10-16', '1.63 m', 'female', ''),
(34, 'ajay', 'devgan', 'ajay-devgan.jpg', '1969-04-02', '', 'male', ''),
(35, 'sullivan', 'jones', 'sullivan-jones.jpg', '1990-11-06', '1.93', 'male', ''),
(36, 'shein', 'mompremier', 'shein-mompremier.jpg', '', '1.75 m', 'female', ''),
(37, 'khris', 'davis', 'khris-davis.jpg', '', '', 'male', ''),
(38, 'forest', 'whitaker', 'Forest_Whitaker.jpg', '1971-07-15', '', 'male', ''),
(39, 'chadwick', 'boseman', 'chadwick-boseman.jpg', '1976-11-29', '1.83 m', 'male', ''),
(40, 'michel b', 'jordan', 'michael-b-jordan.jpg', '1987-02-09', '1.83 m', 'male', ''),
(41, 'lupita', 'nyango', 'lupita-nyongo.jpg', '1983-03-01', '', 'female', ''),
(42, 'letitia', 'wright', 'letitia-wright.jpg', '1993-10-31', '1.65', 'female', ''),
(43, 'danai', 'gurira', 'danai-gurira.jpg', '1978-02-14', '', 'female', ''),
(44, 'winston', 'duke', 'winston-duke.jpg', '1986-11-15', '1.96 m', 'male', ''),
(45, 'daniel', 'kaluuya', 'daniel-kaluuya.jpg', '1989-02-24', '1.74 m', 'male', ''),
(46, 'lizzy', 'caplan', 'lizzy-caplan.jpg', '1982-06-30', '', 'female', ''),
(47, 'cleopatra', 'coleman', 'cleopatra-coleman.jpg', '1987-10-29', '1.65 m', 'female', ''),
(48, 'ray', 'liotta', 'ray-liotta.jpg', '1954-12-18', '', 'male', ''),
(49, 'keri', 'russell', 'keri-russell.jpg', '1976-03-23', '', 'female', ''),
(50, 'jesse tyler', 'ferguson', 'jesse-tyler-ferguson.jpg', '1975-10-22', '', 'male', ''),
(51, 'oshea', 'jackson jr', 'oshea-jackson.jpg', '1991-02-24', '', 'male', ''),
(52, 'christian', 'convery', 'christian-convery.jpg', '2009-10-11', '', 'male', ''),
(53, 'brooklynn', 'prince', 'brooklynn-prince.jpg', '2010-01-01', '', 'female', ''),
(54, 'keanu', 'reeves', 'keanu-reeves.jpg', '1964-09-02', '1.86 m', 'male', ''),
(55, 'rachel', 'weisz', 'rachel-weisz.jpg', '1970-03-07', '1.68 m', 'female', ''),
(56, 'tilda', 'swinton', 'tilda-swinton.jpg', '1960-11-05', '1.8 m', 'female', ''),
(57, 'shraddha', 'kapoor', 'shraddha-kapoor.jpg', '1987-03-03', '1.62 m', 'female', ''),
(58, 'ranbir', 'kapoor', 'ranbir-kapoor.jpg', '1982-09-28', '1.83 m', 'male', ''),
(59, 'monica', 'chaudhary', 'monica-chaudhary.jpg', '1994-06-28', '', 'female', ''),
(60, 'nicolas', 'cage', 'nicolas-cage.jpg', '1964-01-07', '1.83 m', 'male', ''),
(61, 'eva', 'mendes', 'eva-mendes.jpg', '1974-03-05', '', 'female', ''),
(62, 'zeeko', 'zaki', 'zeeko-zaki.jpg', '', '', 'male', ''),
(63, 'missy', 'peregrym', 'missy-peregrym.jpg', '', '', 'female', ''),
(64, 'john', 'boyd', 'john-boyd.jpg', '', '', 'male', ''),
(65, 'jeremy', 'sisto', 'jeremy-sisto.jpg', '', '', 'male', ''),
(66, 'anna de la', 'garza', 'anna-de-la-garza.jpg', '', '', 'female', ''),
(67, 'katherine reene', 'kane', 'katherince-renee-kane.jpg', '', '', 'female', ''),
(68, 'vedette', 'lim', 'vedette-lim.jpg', '', '', 'female', ''),
(69, 'shantel', 'vanshaten', 'shantel-van-santen.jpg', '', '', 'female', ''),
(70, 'ebonee', 'noel', 'ebonee-noel.jpg', '', '', 'female', ''),
(71, 'adah', 'sharma', 'adah-sharma.jpg', '1992-05-11', '', 'female', ''),
(72, 'jason', 'mamoa', 'jason-mamoa.jpg', '1979-08-01', '1.93 m', 'male', ''),
(73, 'amber', 'heard', 'amber-heard.jpg', '1986-04-22', '', 'female', ''),
(74, 'nicole', 'kidman', 'nicole-kidman.jpg', '1967-06-20', '', 'female', ''),
(75, 'rati', 'agnihotri', 'rati-agnihotri.jpg', '', '', 'female', ''),
(76, 'amitabh', 'bachchan', 'amitabh-bachchan.jpg', '', '', 'male', ''),
(77, 'arnold', 'schwarzeneggar', 'arnold-schwarzenegger.jpg', '', '', 'male', ''),
(78, 'salman', 'khan', 'salman-khan.jpg', '', '', 'male', ''),
(79, 'aishwarya', 'rai', 'aishwarya-rai.jpg', '', '', 'female', ''),
(80, 'hritik', 'roshan', 'hritik-roshan.jpg', '', '', 'male', ''),
(81, 'amisha', 'patel', 'amisha-patel.jpg', '', '', 'female', ''),
(82, 'anupam', 'kher', 'anupam-kher.jpg', '', '', 'male', ''),
(83, 'mohnish', 'bahl', 'mohnish-bahl.jpg', '', '', 'male', ''),
(84, 'ashish', 'vidyathri', 'ashish-vidyathri.jpg', '', '', 'male', ''),
(85, 'dilip', 'tahil', 'dilip-tahil.jpg', '', '', 'male', ''),
(86, 'farida', 'jalal', 'farida-jalal.jpg', '', '', 'male', ''),
(87, 'satish', 'shah', 'satish-shah.jpg', '', '', 'male', ''),
(88, 'johnny', 'lever', 'johnny-lever.jpg', '', '', 'male', ''),
(89, 'kajol', 'mukherjee', 'kajol-mukherjee.jpg', '', '', 'female', ''),
(90, 'kareena', 'kapoor', 'kareena-kapoor.jpg', '', '', 'female', ''),
(91, 'rani', 'mukherjee', 'rani-mukherjee.jpg', '', '', 'female', ''),
(92, 'shahrukh', 'khan', 'shahrukh-khan.jpg', '', '', 'male', ''),
(93, 'jaya', 'bachchan', 'jaya-bachchan.jpg', '', '', 'female', ''),
(94, 'r', 'madhavan', 'r-madhavan.jpg', '', '', 'male', ''),
(95, 'dia', 'mirza', 'dia-mirza.jpg', '', '', 'female', ''),
(96, 'ana de', 'armas', 'ana-de-armas.jpg', '', '', 'female', ''),
(97, 'chris', 'evans', 'chris-evans.jpg', '', '', 'male', ''),
(98, 'ryan', 'reynolds', 'ryan-reynolds.jpg', '', '', 'male', ''),
(99, 'lashana', 'lynch', 'lashana-lynch.jpg', '', '', 'female', ''),
(100, 'teyonah', 'parris', 'teyonah-parris.jpg', '', '', 'female', ''),
(101, 'zawe', 'ashton', 'zawe-ashton.jpg', '', '', 'female', ''),
(102, 'iman', 'vellani', 'iman-vellani.jpg', '', '', 'female', ''),
(103, 'park seo', 'joon', 'park-seo-joon.jpg', '', '', 'male', ''),
(104, 'brie', 'larson', 'brie-larson.jpg', '', '', 'female', ''),
(105, 'millie bobby', 'brown', 'millie-bobby-brown.jpg', '', '', 'female', ''),
(106, 'brooke', 'carter', 'brooke-carter.jpg', '', '', 'female', '');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`, `img_url`) VALUES
(1, 'adventure', 'adventurer.png'),
(2, 'anime', 'anime-conan-detective-icon.png'),
(3, 'sport', 'basketball-player.png'),
(4, 'comedy', 'clown.png'),
(5, 'crime', 'crime-2040658.png'),
(6, 'mystery', 'detective-1597121.png'),
(7, 'drama', 'drama-icon-1048962.png'),
(8, 'romance', 'give-love-romance-3555625.png'),
(9, 'action', 'gun-fire-icon.png'),
(10, 'horror', 'horror-3773795.png'),
(11, 'fantasy', 'if-fairy-2913099_88825.png'),
(12, 'sci-fi', 'sci-fi-4114764.png'),
(13, 'superhero', 'superhero-1625667.png'),
(14, 'teen', 'teenager-4137049.png'),
(15, 'thriller', 'thriller-4114756.png'),
(16, 'war', 'world-war-6981408.png'),
(17, 'medical', 'medical-team.png'),
(18, 'real', 'actual-icon.png'),
(19, 'science', 'science-icon.png'),
(20, 'tech', 'tech-icon.png'),
(21, 'psychological', 'psychological-icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

DROP TABLE IF EXISTS `lang`;
CREATE TABLE IF NOT EXISTS `lang` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `language` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lang`
--

INSERT INTO `lang` (`id`, `language`) VALUES
(1, 'english'),
(2, 'hindi'),
(3, 'kannada'),
(4, 'japanese'),
(5, 'marathi'),
(6, 'tamil'),
(7, 'telugu'),
(8, 'malayalam'),
(9, 'punjabi'),
(10, 'rajasthani'),
(11, 'spanish'),
(12, 'not defined');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `casts` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lang` bigint UNSIGNED DEFAULT NULL,
  `category` bigint UNSIGNED NOT NULL,
  `type` bigint UNSIGNED NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `storyline` text COLLATE utf8mb4_general_ci NOT NULL,
  `plot` text COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `rating` tinyint NOT NULL,
  `released_dt` date DEFAULT NULL,
  `update_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `lang_conn` (`lang`),
  KEY `cat_conn` (`category`),
  KEY `type_conn` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title`, `img_url`, `casts`, `lang`, `category`, `type`, `genre`, `storyline`, `plot`, `content`, `rating`, `released_dt`, `update_dt`) VALUES
(1, 'asur', 'asur-series-02032020.jpg', '4,5,6,14', 2, 1, 1, '5,6,15,16', '', '', 'The series is about a team of forensic experts who must catch a serial killer who considers himself a reincarnation of the asura Kali. Asur follows Nikhil Nair, a forensic-expert-turned-teacher, who returns to his roots at the Central Bureau of Investigation, and along with his former mentor Dhananjay Rajpoot, finds himself caught in a cat and mouse game with a brutal serial killer. A psychopath killer with a twisted philosophy deep-seated in Indian mythology is on the loose. Two forensic officers from the CBI are close on heals to catch the serial killer.\r\nThe killer uses modern day technology such as deep fake videos and sound bomb technology, to raise havoc and destroy peace amongst humans and disrupt the harmony. The killer wants to force the birth of Kalki which will be the end of Kalyug according to Indian mythology, so he is bent on killing people and making a show of Kalyug. He finds his targets for killing, using a artificial intelligence machine which gives him the best targets.', 7, '2020-03-02', '2024-03-09 00:23:38'),
(2, 'fruit\'s basket prelude', 'fruits-basket-prelude-movie-18022022.jpg', '', 4, 2, 2, '2', '', '', '<p>Kyoko, who couldn\'t believe anything in the world and lived a desolate life, meets Katsuya Honda, who has been assigned as an educational trainee. She is at the mercy of Katsuya, who is rude and has a strong habit, and she is gradually attracted to her. However, she is disowned by her parents in the wake of an incident with her bad fellow. It\'s a punishment that I\'ve been doing as much as I like. </p><p>Kyo Sohma has been plagued by guilt since he allowed Kyoko Honda, a woman he had known as a young child, to die in order to avoid exposing his curse. Somehow, against all odds, he met her daughter Tohru, and the two fell in love. But before there was Kyo and Tohru, or even Kyo and Kyoko, there was Kyoko and Katsuya. Kyoko was a troubled teen; Katsuya a student teacher with no actual interest in education. Apart, they were a pair of misfits; together, they made Tohru.<br></p>', 3, '2022-02-18', '2024-02-25 22:17:05'),
(3, 'the quintessential quintuplets', 'the-quintessential-quintuplets-ori.jpg', '', 4, 2, 2, '2', '', '', 'The series is based on the manga by Negi Haruba and follows the story of a high school boy named Futaro Uesugi, who takes on a tutoring job for the wealthy Nakano family\'s quintuplet daughters.', 3, '2022-05-20', '2024-02-25 13:04:30'),
(4, 'super mario bros', 'super-mario-bros-poster.jpg', '', 1, 2, 2, '1,2,3', '', '', 'The super marios bro\'s defeat the all powerful Bowser - the king of the koopas from conquering the world, the anthropomorphic turtle, with help from Princess Peach from Mushroom Kingdom.', 7, '2023-04-05', '2023-07-27 04:05:37'),
(5, 'the magician\'s elephant', 'the-magicians-elephant-poster.jpg', '', 1, 2, 2, '1,2,11', '', '', '', 5, '2023-03-10', '2024-02-25 12:56:03'),
(6, 'superman red son', 'superman-red-son-poster.jpg', '', 1, 2, 2, '2,13,16', '', '', '', 5, '2020-02-24', '2024-02-25 12:56:36'),
(7, 'batman - the doom that came to gotham', 'batman-the-doom-that-came-to-gotham-movie.jpg', '', 1, 2, 2, '2,13', '', '', '', 5, '2023-03-28', '2024-02-25 20:18:58'),
(8, 'finding dori', 'finding-dori-ori.jpeg', '', 1, 2, 2, '1,2', '', '', '', 6, '2016-06-17', '2024-02-25 12:57:41'),
(9, 'finding nemo', 'finding-nemo-ori.jpeg', '', 1, 2, 2, '1,2', '', '', '', 6, '2003-05-30', '2024-02-25 12:58:11'),
(10, 'godzilla - planet of the monsters', 'godzilla-planet-of-the-monsters-poster.jpg', '', 4, 2, 2, '2,10,15', '', '', '', 6, '2017-11-17', '2024-02-25 13:02:12'),
(11, 'mummies', 'the-mummies-movie.jpg', '', 1, 2, 2, '2', '', '', 'Three mummies leave their underground secret city in ancient Egypt and end up in present-day London to search for a ring that was stolen by a greedy archaeologist. However, their mission might prove to be a little difficult.', 6, '2023-02-24', '2024-02-25 20:15:14'),
(12, 'minions - rise of gru', 'minions-rise-of-gru-poster.jpg', '', 1, 2, 2, '1,2', '', '', 'In the 1970s, young Gru tries to join a group of supervillains called the Vicious 6 after they oust their leader -- the legendary fighter Wild Knuckles. When the interview turns disastrous, Gru and his Minions go on the run with the Vicious 6 hot on their tails. Luckily, he finds an unlikely source for guidance -- Wild Knuckles himself -- and soon discovers that even bad guys need a little help from their friends.', 6, '2022-07-01', '2024-02-25 12:54:02'),
(13, 'the death and return of superman', 'death-and-return-of-superman.jpg', '', 1, 2, 2, '2,13', '', '', '', 5, '2018-07-20', '2024-02-25 12:55:26'),
(14, 'child of kamiari month', 'child-of-kamiari-month.jpg', '', 4, 2, 2, '2', '', '', 'A year after losing her mother, a little girl learns that she must journey across Japan to the annual gathering of gods in the sacred land of Izumo.', 5, '2021-10-08', '2024-02-25 20:21:05'),
(15, 'drifting home', 'drifting-home.jpeg', '', 4, 2, 2, '2', '', '', 'Kosuke and Natsume, sixth-grade students, play in an apartment building that will soon be destroyed over the summer holiday. They get evolved and entangled in a bizarre phenomenon. All they can see is a vast sea all around them.', 6, '2022-09-16', '2024-02-25 12:49:08'),
(16, 'flavours of youth', 'flavours-of-youth.jpg', '', 4, 2, 2, '2,7,8', '', '', 'Three stories of youth from different cities in China: memories locked in a bowl of steaming noodles, a fading beauty discovering her way, and a bittersweet first love.', 7, '2018-08-04', '2024-02-25 12:50:31'),
(17, 'the garden of words', 'the-garden-of-words.jpg', '', 4, 2, 2, '2,8', '', '', '', 7, '2013-05-31', '2024-02-25 13:03:42'),
(18, 'a whisker away', 'a-whisker-away.jpg', '', 4, 2, 2, '2', '', '', '', 5, '2020-06-18', '2024-02-25 13:01:42'),
(19, 'a silent voice', 'a-silent-voice.jpg', '', 4, 2, 2, '2', '', '', '<p style=\"margin: 0.5em 0px;\" class=\"\">An elementary school student named Shōya Ishida and his friends bully Shōko Nishimiya, a transfer student who was born deaf. When word of the bullying reaches the principal, Shōya is framed as the sole perpetrator by his friends. Shōya blames Shōko when she tries to help him and they get into a physical altercation, the latter being subsequently transferred to another school with Shōya keeping her notebook.﻿</p><p style=\"margin: 0.5em 0px;\">His reputation as a bully following him through middle school, Shōya becomes a depressed loner in high school who eventually believes suicide is his only absolution. But he decides to first to make amends with those he has wronged before ending his life. Shōya reconciles with Shōko when returning her notebook at the sign language center she is attending, realizing she is still lonely due to her shyness. At that time, he is also befriended by Tomohiro Nagatsuka, a similar friendless classmate who feels indebted to Shōya for saving him from a bully.</p><p style=\"margin: 0.5em 0px;\">Shōya would try to meet up with Shōko to help her feed koi in the river much to the ire of her younger sister Yuzuru, who takes advantage of Shōya illegally jumping into the river to retrieve Shōko\'s notebook to take a photo of the incident and post it online to have him suspended from school. When Yuzuru runs away from home, Shōya offers to let her stay at his house, and the two reconcile.</p><p style=\"margin: 0.5em 0px;\">Shōya helps Shōko reconnect with Miyoko Sahara, a kind classmate who genuinely befriended Shōko and is currently in the same school as Naoka Ueno, who also bullied Shōko and weasels back into Shōya\'s life. Shōko also meets Miki Kawai, her elementary school class president who now attends the same school as Shōya and is in a relationship with Satoshi Mashiba. Shōko later gives Shōya a gift and verbally confesses her feelings for him, but runs off upset when Shōya mishears her. Shōya invites Shōko to an amusement park with Tomohiro, Miyoko, Miki, and Satoshi. They are joined by Naoka, who is infatuated with Shōya while trying to reconnect him with their old friends.</p><p style=\"margin: 0.5em 0px;\">Naoka also bears a grudge on Shōko for Shōya\'s misfortune, Yuzuru secretly recording the encounter for Shōya to see. This leads to the group having a falling out when Miki exposes Shōya\'s past to the others in desperation to remain blameless in Shōko\'s bullying while Shōya isolates himself from everyone but the Nishimiyas. After Shōko and Yuzuru\'s grandmother passes away, Shōya takes them to the countryside to cheer them up, where he realizes that Shōko blames herself for everything that has happened to him. Shōya decides to devote his entire social life to the sisters.</p><p style=\"margin: 0.5em 0px;\">During a fireworks festival, Shōko leaves early, ostensibly to finish her homework. Shōya follows her to retrieve Yuzuru\'s camera, finding Shōko preparing to jump from her balcony. Shōya manages to stop her, only to fall into the river below. He is rescued by his former friends, but is rendered comatose.</p><p style=\"margin: 0.5em 0px;\">One night, Shōko dreams about receiving a farewell visit from Shōya. Shōya awakens from his coma and makes his way to the bridge, where he finds Shōko weeping. He apologizes for bullying her and tells her not to blame herself for how his life has turned out. He also admits his original plan to commit suicide, but has decided against it while asking Shōko to help him keep living, to which she agrees.</p><p style=\"margin: 0.5em 0px;\" class=\"\">When Shōya returns to school, he reunites with his friends and realizes how much they still care for him. As they all go to the school festival together, Shōya tears up, realizing he has finally redeemed himself as he stopped ignoring everyone around him.</p>', 5, '2016-09-17', '2024-03-04 00:34:13'),
(20, 'the devil\'s hour', 'the-devils-hour-29102022.jpg', '', 1, 1, 1, '6', '', '', '', 5, '2022-10-28', '2024-02-21 23:04:28'),
(21, 'naruto', 'naruto-poster.jpg', '', 4, 1, 2, '1,2,4,14', '', '', 'It tells the story of Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village.', 9, '2002-10-03', '2024-02-25 12:46:58'),
(22, 'fairy tail', 'fairy-tail-poster.jpg', '', 4, 1, 2, '1,2', '', '', '', 5, '2009-10-12', '2024-02-25 13:01:04'),
(23, 'dota - dragons blood', 'dota-dragons-blood-mini.jpg', '', 1, 1, 2, '1,2,16', '', '', '', 5, '2021-03-25', '2024-02-25 12:58:45'),
(24, 'im standing on a million lives', 'im-standing-on-a-million-lives-series.jpg', '', 4, 1, 2, '1,2', '', '', 'This is how a hectic life of adventuring began for three students who now have no choice, but to complete random quests for several phases in the fantasy world if they want to stay alive and protect the real world from the demons and monsters they encounter.', 6, '2020-10-02', '2024-02-25 20:07:32'),
(25, 'kaguyasama - love is war', 'kaguya-sama-love-is-war-poster.jpg', '', 4, 1, 2, '2,4', '', '', '', 5, '2019-01-12', '2023-07-27 04:18:48'),
(26, 'b - the beginning', 'b-the-beginning-poster.jpg', '', 4, 1, 2, '2', '', '', '<p><br></p>', 5, '2018-03-02', '2023-07-27 04:17:58'),
(27, 'tokyo ghoul', 'tokyo-ghoul-poster.jpg', '', 4, 1, 2, '2,5,15', '', '', '', 7, '2014-07-03', '2023-07-27 04:17:02'),
(28, 'tokyo ghoul : re', 'tokyo-ghoul-re-poster.jpg', '', 4, 1, 2, '1,2,5', '', '', '', 7, '2018-06-19', '2023-07-27 04:16:30'),
(29, 'cyberpunk edgerunners', 'cyberpunk-edgerunners.jpg', '', 1, 1, 2, '2,9', '', '', '<p><br></p>', 5, '2022-09-13', '2023-07-27 04:14:19'),
(30, 'chainsaw man', 'chainsaw-man.jpg', '', 4, 1, 2, '2,6,9,10', '', '', '', 6, '2022-10-12', '2023-07-27 04:13:35'),
(31, 'takt op - destiny', 'takt-op-destiny-series.jpg', '', 4, 1, 2, '2,9', '', '', '', 5, '2021-10-06', '2023-07-27 04:12:55'),
(32, 'the promised neverland', 'the-promised-neverland.jpg', '', 4, 1, 2, '2,10', '', '', '', 5, '2019-04-14', '2023-07-27 04:12:02'),
(33, 'haikyu', 'haikyu!!-series.jpg', '', 4, 1, 2, '2,3', '', '', '', 6, '2014-04-06', '2023-07-27 04:11:22'),
(34, 'the eminence in shadow (kage no jitsuryokusha ni naritakute)', 'kage-no-jitsuryokusha-ni-naritakute-the-eminence-in-shadow.jpg', '', 4, 1, 2, '2,6,9', '', '', '', 7, '2022-10-05', '2023-07-27 04:10:12'),
(35, 'knights of the zodiac', 'knights-of-the-zodiac-28042023.jpg', '26,27,28,29', 1, 2, 1, '9,11', '', '', '<p>When a headstrong street orphan unwittingly taps into hidden powers, he discovers he might be the only person alive who can protect a reincarnated goddess who was sent to watch over humanity.<br></p>', 3, '2023-04-28', '2024-02-12 22:26:22'),
(36, 'logan', 'logan-03032017.jpg', '1,24,25', 1, 2, 1, '9,13', '', '', '<p>In the near future, a weary Logan (Hugh Jackman) cares for an ailing Professor X (Patrick Stewart) at a remote outpost on the Mexican border. His plan to hide from the outside world gets upended when he meets a young mutant (Dafne Keen) who is very much like him. Logan must now protect the girl and battle the dark forces that want to capture her.<br></p>', 6, '2017-03-03', '2024-02-25 22:07:16'),
(71, 'adipurush', 'adipurish-movie-11082023.jpg', '11,13,16,18,20,21', 2, 2, 1, '1', '', '', 'Raghav, the prince of the Ikshvaku dynasty from Kosala, tries to rescue his wife, Janaki, from the demon king Lankesh.<br>', 2, '2023-08-11', '2024-02-25 21:58:15'),
(72, 'ant-man', 'ant-man-24072015.jpg', '30,31', 1, 2, 1, '9,12,13', '', '', '<p>Forced out of his own company by former protégé Darren Cross, Dr. Hank Pym (Michael Douglas) recruits the talents of Scott Lang (Paul Rudd), a master thief just released from prison. Lang becomes Ant-Man, trained by Pym and armed with a suit that allows him to shrink in size, possess superhuman strength and control an army of ants. The miniature hero must use his new skills to prevent Cross, also known as Yellowjacket, from perfecting the same technology and using it as a weapon for evil.<br></p>', 7, '2015-07-24', '2024-02-18 15:43:24'),
(73, 'ant-man and the wasp', 'ant-man-and-the-wasp-06072018.jpg', '30,31', 1, 2, 1, '9,12,13', '', '', '<p>Scott Lang is grappling with the consequences of his choices as both a superhero and a father. Approached by Hope van Dyne and Dr. Hank Pym, Lang must once again don the Ant-Man suit and fight alongside the Wasp. The urgent mission soon leads to secret revelations from the past as the dynamic duo finds itself in an epic battle against a powerful new enemy.</p>', 7, '2018-07-06', '2024-02-18 15:52:08'),
(74, 'ant-man and the wasp - quantumania', 'ant-man-and-the-wasp-quantumania-17022023.jpg', '30,31,32', 1, 2, 1, '9,12,13', '', '', '<p>Ant-Man and the Wasp find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that pushes them beyond the limits of what they thought was possible.<br></p>', 7, '2023-02-07', '2024-02-18 16:00:55'),
(75, 'bholaa', 'bhola-30032023.jpg', '33,34', 2, 2, 1, '1,5,9', '', '', '<p>After 10 years of imprisonment, Bholaa is finally going home to meet his young daughter. However, his journey is not so simple as he soon faces a pathway full of crazy obstacles, with death lurking around every corner.<br></p>', 3, '2023-03-30', '2024-02-18 18:14:37'),
(76, 'big george foreman', 'big-george-foreman-28042023.jpg', '35,36,37,38', 1, 2, 1, '3,9', '', '', '<p>From Olympic Gold medalist to World Heavyweight champion, boxer George Foreman leads a remarkable life. He finds his faith, retires and becomes a preacher. When financial hardship hits his family and church, George steps back in the ring and regains the championship at age 45, becoming the oldest heavyweight champion in boxing history.<br></p>', 3, '2023-04-28', '2024-02-18 17:02:33'),
(77, 'black panther', 'black-panther-14022018.jpg', '39,40,41,42,43,44,45', 1, 2, 1, '9,13', '', '', '<p>After the death of his father, T\'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T\'Challa\'s mettle as king -- and as Black Panther -- gets tested when he\'s drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.<br></p>', 4, '2018-02-14', '2024-02-18 18:01:57'),
(78, 'cobweb', 'cobweb-21072023.jpg', '3,23,46,47', 1, 2, 1, '10', '', '', '<p>Young Peter is plagued by a mysterious, constant noise from inside his bedroom wall -- a tapping that his parents insist is in his imagination. As his fear intensifies, he starts to believe that his parents are hiding a terrible and dangerous secret.<br></p>', 2, '2023-07-21', '2024-02-18 18:14:07'),
(79, 'cocaine bear', 'cocaine-bear-24022023.jpg', '48,49,50,51,52,53', 1, 2, 1, '1,5,9', '', '', '<p>A 227kg black bear consumes a significant amount of cocaine and embarks on a drug-fuelled rampage through a Georgia forest, endangering the lives of cops, criminals, tourists and teenagers.<br></p>', 4, '2023-09-24', '2024-02-18 18:38:07'),
(80, 'constantine', 'constantine-25022006.jpg', '54,55,56', 1, 2, 1, '6,9,10', '', '', '<p>As a suicide survivor, demon hunter John Constantine (Keanu Reeves) has literally been to hell and back -- and he knows that when he dies, he\'s got a one-way ticket to Satan\'s realm unless he can earn enough goodwill to climb God\'s stairway to heaven. While helping policewoman Angela Dodson (Rachel Weisz) investigate her identical twin\'s apparent suicide, Constantine becomes caught up in a supernatural plot involving both demonic and angelic forces. Based on the DC/Vertigo \"Hellblazer\" comics.<br></p>', 6, '2005-02-25', '2024-02-19 21:24:22'),
(81, 'tu jhoothi main makkar', 'tu-jhoothi-main-makkaar-movie-08032023.jpg', '57,58,59', 2, 2, 1, '8', '', '', '<p>Mickey, a carefree businessman and womaniser, helps couples break up. However, things change for him when he falls for Tinni, a witty and beautiful chartered accountant.<br></p>', 5, '2023-03-08', '2024-02-25 13:43:54'),
(82, 'ghost rider', 'ghost-rider-16022007.jpg', '60,61', 1, 2, 1, '9,13', '', '', '<p>Years ago, motorcycle stuntman Johnny Blaze (Nicolas Cage) sold his soul to save the life of a loved one. Now, he transforms into a fiery, avenging agent of justice at night wherever evil roams. As the only one who can walk in both worlds, Johnny is charged by Mephistopheles (Donal Logue) himself to destroy Blackheart (Wes Bentley), a demon that wants to overthrow Mephistopheles and create a worse hell than the one that currently exists.<br></p>', 7, '2007-02-16', '2024-02-20 02:48:59'),
(83, 'fbi', 'fbi-series-25092018.jpg', '62,63,64,65,66,67,68,69,70', 1, 1, 1, '1,5,9', '', '', '<p>The series&nbsp;centers on inner workings of the New York City field office criminal division of the Federal Bureau of Investigation (FBI). This elite unit brings to bear all their talents, intellect, and technical expertise on major cases in order to keep New York and the country safe.<br></p>', 7, '2018-09-25', '2024-02-20 22:50:15'),
(84, 'game of thrones', 'game-of-thrones-17042011.jpg', '', 1, 1, 1, '1,11', '', '', '<p>The planet on which Westeros is found has seasons of variable lengths, with summers and winters often lasting for many years.&nbsp;The series focuses on several noble houses of Westeros and a complicated, multiparty war for the Iron Throne that features shifting conflicts, alliances, and betrayals<br></p>', 8, '2011-04-17', '2024-02-20 23:01:18'),
(85, 'gotham knights', 'gotham-knights-21102022.jpg', '', 1, 1, 1, '9,13', '', '', '', 2, '2022-10-21', '2024-02-20 23:45:54'),
(86, 'greys anatomy', 'greys-anatomy-series-27032005.jpg', '', 1, 1, 1, '8,17', '', '', '', 7, '2005-03-27', '2024-02-25 19:44:21'),
(87, 'hawkeye', 'hawkeye-24112021.jpg', '', 1, 1, 1, '1,9,13', '', '', '', 7, '2021-11-24', '2024-02-20 23:45:00'),
(88, 'house of the dragon', 'house-of-the-dragon-21082022.jpg', '', 1, 1, 1, '1,9,11', '', '', '', 7, '2022-08-21', '2024-02-20 23:44:43'),
(89, 'legacies', 'legacies-25102018.jpeg', '', 1, 1, 1, '9,11', '', '', '', 4, '2018-10-25', '2024-02-20 23:48:25'),
(90, 'fbi - most wanted', 'fbi-most-wanted-07012020.jpg', '', 1, 1, 1, '1,5,9', '', '', '', 6, '2020-01-07', '2024-02-21 21:16:55'),
(91, 'moon knight', 'moon-knight-30032022.jpg', '', 1, 1, 1, '9,13', '', '', '', 5, '2022-03-30', '2024-02-21 21:18:33'),
(92, 'see', 'see-series-01112019.jpg', '', 1, 1, 1, '1,9,15', '', '', '', 5, '2019-11-01', '2024-02-21 21:19:38'),
(93, 'superman and lois', 'superman-and-lois-series-23022021.jpg', '', 1, 1, 1, '9,13', '', '', '', 4, '2021-02-23', '2024-02-21 21:20:59'),
(94, 'supernatural', 'supernatural-series-13092005.jpg', '', 1, 1, 1, '1,9,10,15', '', '', '', 9, '2005-09-13', '2024-02-21 21:22:35'),
(95, 'swamp thing', 'swamp-thing-series-31052019.jpg', '', 1, 1, 1, '1,9,10', '', '', '', 5, '2019-05-31', '2024-02-21 21:23:59'),
(96, 'sweet tooth', 'sweet-tooth-series-04062021.jpg', '', 1, 1, 1, '1,9,11', '', '', '', 6, '2021-06-04', '2024-02-21 21:25:44'),
(97, 'the last of us', 'the-last-of-us-series-15012023.jpg', '', 1, 1, 1, '1,9,10', '', '', '', 5, '2023-01-15', '2024-02-21 21:27:01'),
(98, 'the night agent', 'the-night-agent-series-23032023.jpg', '', 1, 1, 1, '9,15', '', '', '', 5, '2023-03-23', '2024-02-21 21:30:49'),
(99, 'silo', 'the-silo-series-05052023.jpg', '', 1, 1, 1, '1,9,15', '', '', '', 7, '2023-05-05', '2024-02-21 21:33:09'),
(100, 'the witcher blood origin', 'the-witcher-blood-origin-series-25122022.jpg', '', 1, 1, 1, '1,9', '', '', '', 9, '2022-12-25', '2024-02-21 21:38:58'),
(101, 'the witcher', 'the-witcher-series-20122019.jpg', '', 1, 1, 1, '1,9', '', '', '', 9, '2019-12-20', '2024-02-21 21:40:36'),
(102, 'titans', 'titans-series-12102018.jpg', '', 1, 1, 1, '1,9,13', '', '', '', 9, '2018-10-12', '2024-02-21 21:41:44'),
(103, 'true blood', 'true-blood-series-07092008.jpg', '', 1, 1, 1, '1,6,9,10,15', '', '', '', 9, '2008-09-07', '2024-02-21 21:46:19'),
(104, 'wednesday', 'wednesday-series-23112022.jpg', '', 1, 1, 1, '1,9,10', '', '', '', 7, '2022-11-23', '2024-02-21 21:47:55'),
(105, '65', '65-movie-02032023.jpg', '', 1, 2, 1, '1,9', '', '', '', 3, '2023-03-02', '2024-02-21 22:04:37'),
(106, 'avengers', 'avengers-movie-27042012.jpg', '', 1, 2, 1, '9,13,15', '', '', '', 9, '2012-04-27', '2024-02-21 22:07:36'),
(107, 'black adam', 'black-adam-movie-21102022.jpg', '', 1, 2, 1, '9,13', '', '', '', 8, '2022-10-21', '2024-02-21 22:08:53'),
(108, 'black widow', 'black-widow-movie-09072021.jpg', '', 1, 2, 1, '9,13', '', '', '', 9, '2021-07-09', '2024-02-21 22:10:09'),
(109, 'brightburn', 'brightburn-movie-24052019.jpg', '', 1, 2, 1, '9,10', '', '', '', 5, '2019-05-24', '2024-02-21 22:11:39'),
(110, 'extraction', 'extraction-movie-24042020.jpg', '', 1, 2, 1, '1,5,9', '', '', '', 7, '2020-04-24', '2024-02-21 22:22:17'),
(111, 'extraction 2', 'extraction-2-movie-16062023.jpg', '', 1, 2, 1, '1,9,15', '', '', '', 7, '2023-06-16', '2024-02-21 22:24:07'),
(112, 'grimcutty', 'grimcutty-movie-06102022.jpg', '', 1, 2, 1, '10', '', '', '', 5, '2022-10-06', '2024-02-21 22:26:25'),
(113, 'it chapter 1', 'it-chapter-one-movie-08092017.jpg', '', 1, 2, 1, '1,10', '', '', '', 6, '2017-09-08', '2024-02-21 22:28:53'),
(114, 'it chapter 2', 'it-chapter-two-movie-06092019.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2019-09-06', '2024-02-21 22:30:19'),
(115, 'kantara', 'kantara-movie-30092022.jpg', '', 3, 2, 1, '1,10', '', '', '', 6, '2022-09-30', '2024-02-21 22:31:56'),
(116, 'limitless', 'limitless-movie-29042011.jpg', '', 1, 2, 1, '1,9', '', '', '', 6, '2011-04-29', '2024-02-25 11:50:57'),
(117, 'mama', 'mama-movie-08022013.jpg', '', 1, 2, 1, '10', '', '', '', 6, '2013-02-08', '2024-02-21 22:37:34'),
(118, 'mirrors', 'mirrors-movie-15082008.jpg', '', 1, 2, 1, '10', '', '', '', 4, '2008-08-15', '2024-02-21 22:39:14'),
(119, 'oculus', 'oculus_movie-11042014.jpg', '', 1, 2, 1, '10', '', '', '', 4, '2014-04-11', '2024-02-21 22:40:30'),
(120, 'prey', 'prey-movie-21072022.jpg', '', 1, 2, 1, '9,10', '', '', '', 6, '2022-07-21', '2024-02-21 22:43:06'),
(121, 'rings', 'rings-movie-01022017.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2017-02-01', '2024-02-21 22:44:09'),
(122, 'shazam fury of the gods', 'shazam-fury-of-the-gods-movie-17032023.jpg', '', 1, 2, 1, '9,13', '', '', '', 4, '2023-03-17', '2024-02-21 22:46:47'),
(123, 'shazam', 'shazam-movie-05042019.jpg', '', 1, 2, 1, '9,13', '', '', '', 4, '2019-04-05', '2024-02-21 22:48:25'),
(124, 'spiderman', 'spiderman-movie-24052002.jpg', '', 1, 2, 1, '9,13', '', '', '', 8, '2002-05-24', '2024-02-21 22:50:03'),
(125, 'terminator', 'terminator-movie-26101984.jpg', '', 1, 2, 1, '9,15', '', '', 'A cybernetic organism time travels from 2029 to 1984 Los Angeles; the cyborg is an assassin known as a Terminator, disguised as a man and programmed to hunt and kill a woman named Sarah Connor. Separately, a human soldier named Kyle Reese also time travels from 2029, intent on stopping the Terminator.', 8, '1984-10-26', '2024-03-03 23:18:30'),
(126, 'the grudge', 'the-grudge-movie-22102004.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2004-10-22', '2024-02-21 22:54:58'),
(127, 'the grudge 2', 'the-grudge-2-movie-13102006.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2006-10-13', '2024-02-21 22:56:42'),
(128, 'the grudge 3', 'the-grudge-3-movie-12052009.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2009-05-12', '2024-02-21 22:57:40'),
(129, 'vikrant rona', 'vikrant-rona-movie-28072022.jpg', '', 3, 2, 1, '6,9', '', '', '', 5, '2022-07-28', '2024-02-25 13:51:12'),
(130, 'virupaksha', 'virupaksha-21042023.jpg', '', 7, 2, 1, '8,10', '', '', '', 3, '2023-04-21', '2024-02-21 23:01:01'),
(131, 'megan', 'megan-movie-06012023.jpg', '', 1, 2, 1, '10,12', '', '', '', 4, '2023-01-06', '2024-02-25 13:44:59'),
(132, 'cursed', 'cursed-series-17072020.jpg', '', 1, 1, 1, '1,9', '', '', '', 5, '2020-07-17', '2024-02-21 23:34:08'),
(133, 'the kerala story', 'the-kerala-story-05052023.jpg', '71', 1, 2, 1, '5', '', '', '<p>Shalini Unnikrishnan leads an ordinary life as a college student in Kerala until her identity, relationships, dreams and faith dissipate in the abyss of religious terrorism.<br></p>', 4, '2023-05-05', '2024-02-25 11:10:17'),
(134, 'aashiq banaya aapne', 'aashiq-banaya-aapne-movie-02092005.jpg', '', 2, 2, 1, '7,8', '', '', '<p>Karan loves Sneha and is happy to see her smile though he cannot express his feelings to her. Things get complicated when Vicky, Karan\'s extroverted friend, attracts Sneha\'s attention towards him.<br></p>', 7, '2005-09-02', '2024-02-25 13:43:08'),
(135, 'the marvels', 'the-marvels-movie-10112023.jpeg', '99,100,101,102,103,104', 1, 2, 1, '9,13', '', '', '', 7, '2023-11-10', '2024-03-03 23:03:26'),
(136, 'aquaman the lost kingdom', 'aquaman-the-lost-kingdom-movie-22112023.jpg', '12,72,73,74', 1, 2, 1, '1,9,13', '', '', '<div>Four years after becoming king of Atlantis,[a] Arthur Curry has married Mera and had a son, Arthur Jr., while splitting his life between land and sea. Meanwhile, David Kane / Black Manta continues to seek revenge against Arthur for his father\'s death, working with marine biologist Stephen Shin to find Atlantean artifacts. When Shin accidentally discovers a cavern in Antarctica, Manta finds a Black Trident that possesses him, its creator promising to give him the power to destroy Arthur.</div><div><br></div><div>Five months later, Manta attacks Atlantis and breaks into its Orichalcum reserves to steal them to power his Atlantean machines that are ancient but are of unknown design to modern Atlanteans. They are caught midway and chased by Atlantean forces, with Mera injured in the ensuing battle. Arthur learns that this usage of Orichalcum, which emits high quantities of greenhouse gases, has not only raised planetary temperatures and caused extreme weather and ocean acidification but nearly caused a planetary extinction in the past when used by an ancient Atlantean kingdom. To learn where Manta is hiding, Arthur breaks his half-brother Orm out of prison, and they visit a pirate haven called the Sunken Citadel, meeting Kingfish to learn of Manta\'s whereabouts.</div><div><br></div><div>The information they obtain leads them to a volcanic island in the South Pacific, where they battle Manta\'s forces after getting themselves through flora and fauna mutated by the Orichalcum. There, Orm comes into contact with the Black Trident, which shows him visions of its provenance. Orm learns the trident was created by Kordax, the brother of King Atlan and ruler of the lost kingdom of Necrus. Kordax was imprisoned with blood magic following a failed attempt to usurp the throne. Realizing the blood of any of Atlan\'s descendants could release Kordax; the pair learn that Manta has kidnapped Arthur Jr. The Atlanteans, with Shin\'s help, determine that Necrus\' prison is located in Antarctica.</div><div><br></div><div>In Necrus, Arthur fights Manta and is almost killed before Mera arrives and saves him. Manta throws the Black Trident at Mera, but Orm catches it before it strikes her. The spirit of Kordax leaves Manta for Orm, who proceeds to fight Arthur and uses Arthur\'s blood to free Kordax. Arthur convinces his brother to give up his hatred for him, allowing him to destroy both Kordax and the Black Trident. With Kordax\'s magic vanishing, Necrus starts to collapse. Manta refuses Arthur\'s help and allows himself to fall into a fissure. The Atlanteans and Shin escape to safety and decide that Orm has redeemed himself. They plan to inform Atlantis that Orm died on the condition that he remains hidden, vacating to the surface world. Believing the unification of the underwater kingdoms and the surface world is necessary to prevent further damage to the oceans, Arthur reveals Atlantis\' existence through an announcement at the United Nations and declares his intentions of making the kingdom a member state.</div>', 7, '2023-11-22', '2024-02-27 16:17:03'),
(137, 'aquaman', 'aquaman-movie-14122018.jpg', '12,72,73,74', 1, 2, 1, '1,9,13', '', '', '<div>In 1985 Maine, lighthouse keeper Thomas Curry rescues Atlanna, queen of the underwater kingdom of Atlantis, during a storm. They fall in love and have a son named Arthur, who has the power to communicate with sea creatures. When Atlantean soldiers sent by King Orvax (the ruler of Atlantis) arrive for Atlanna, who fled her arranged marriage, she is forced to leave her family to protect them from her people. She promises to return when it\'s safe and goes back to Atlantis, entrusting her advisor, Nuidis Vulko, to train Arthur. Becoming a skilled warrior, Arthur rejects Atlantis upon learning that Atlanna was executed by Orvax for loving a human and for Arthur\'s illegitimate birth.</div><div><br></div><div>In the present, Arthur has become known as the metahuman dubbed as the \"Aquaman\" by the public. One year after Steppenwolf\'s defeat,[a] Arthur confronts pirates hijacking a Russian Akula-class submarine. Their leader, Jesse Kane, is killed, leading his son David to vow revenge against Arthur, after he refused to help save Jesse in retaliation for murdering innocent people. King Orm Marius, Orvax\'s son (now Atlantis\'s new ruler) and Arthur\'s younger half-brother, convinces King Nereus of Xebel to help unite Atlantis and destroy the surface world for polluting the oceans. If Orm unites all four kingdoms, he will receive the title of Ocean Master, commander of the most powerful force on Earth. They are ambushed by a submarine, causing Orm to feel obligated to send a tsunami.</div><div><br></div><div>Nereus\' daughter Mera, betrothed to Orm, refuses to aid them and requests Arthur\'s help, and Arthur accompanies her to Atlantis after Orm\'s tsunami nearly kills his father. Vulko urges him to find the Trident of Atlan, a powerful artifact of Atlantis\' first ruler, to reclaim his rightful place as king. They are ambushed by Orm\'s men, and Arthur is captured. Orm blames him for Atlanna\'s death and nearly kills him in a duel before Mera rescues him. Arthur and Mera journey to the fallen Kingdom of the Deserters hidden under the Sahara, where the trident was forged, and unlock a holographic message that leads them to Sicily, where they retrieve the trident\'s coordinates.</div><div><br></div><div>Orm gives David an Atlantean battle suit to kill Arthur, imprisons Vulko, and coerces the Kingdom of the Fishermen to pledge their allegiance to him by killing their king. It is revealed that Orm hired him and Jesse to hijack the Russian submarine to win Nereus\'s support. Rechristening himself as \"Black Manta\", David battles Arthur, but Arthur defeats him. Arthur and Mera fend off amphibious monsters of the Trench, and a wormhole transports them to an uncharted sea at the center of the Earth. They are reunited with Atlanna, who managed to survive and escape into the uncharted sea, but unable to find her way back.</div><div><br></div><div>Arthur faces the Karathen, a mythical sea monster and guardian of the trident, and reclaims the trident, which grants him control over the seven seas. Orm leads his army against the Kingdom of the Brine to declare himself Ocean Master, while Arthur leads an army of marine creatures against him. Orm\'s followers embrace Arthur as the true king upon learning that he wields Atlan\'s trident. Arthur spares Orm\'s life after beating him in a duel, and Orm accepts his imprisonment after discovering that Arthur rescued their mother. Atlanna reunites with Thomas, while Arthur ascends to the throne. In a mid-credits scene, Manta is rescued by Dr. Stephen Shin, a marine scientist and conspiracy theorist obsessed with Atlantis, and agrees to lead Shin there in exchange for help in his revenge on Arthur.</div>', 7, '2018-12-14', '2024-02-27 16:16:14'),
(138, 'aksar', 'aksar-movie-03022006.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2006-02-03', '2024-02-25 20:31:36'),
(139, 'aitraaz', 'aitraaz-movie-12112004.jpg', '', 2, 2, 1, '7,8', '', '', '', 5, '2004-11-12', '2024-02-25 20:34:50'),
(140, 'legion', 'legion-movie-22012010.jpg', '', 1, 2, 1, '1,6,9,10,11', '', '', '', 6, '2010-01-22', '2024-02-25 20:47:26'),
(141, 'the book of eli', 'the-book-of-eli-movie-19032010.jpg', '', 1, 2, 1, '1,9', '', '', '', 5, '2010-03-19', '2024-02-25 20:51:43'),
(142, 'a nightmare on elm street', 'a-nightmare-on-elm-street-movie-30042010.jpg', '', 1, 2, 1, '10', '', '', '', 5, '2010-04-30', '2024-02-25 20:54:25'),
(143, 'salt', 'salt-movie-23072010.jpg', '', 1, 2, 1, '9,15', '', '', '', 5, '2010-07-23', '2024-02-25 21:01:13'),
(144, 'clash of the titans', 'clash-of-the-titans-movie-03042010.jpg', '', 1, 2, 1, '1,9,11', '', '', '', 5, '2010-04-02', '2024-02-25 21:09:58'),
(145, 'inception', 'inception-movie-16072010.jpg', '', 1, 2, 1, '1,9,12', '', '', '', 6, '2010-07-16', '2024-02-25 21:13:22'),
(146, 'predators', 'predators-movie-07072010.jpg', '', 1, 2, 1, '9,10', '', '', '', 6, '2010-07-07', '2024-02-25 21:18:13'),
(147, 'the social network', 'the-social-network-movie-12112010.jpg', '', 1, 2, 1, '7', '', '', '', 5, '2010-11-12', '2024-02-25 21:21:51'),
(148, 'badmaash company', 'badmaash-company-movie-07052010.jpg', '', 2, 2, 1, '9', '', '', '', 4, '2010-05-07', '2024-02-25 21:25:19'),
(149, 'the conjuring', 'the-conjuring-movie-19072013.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2013-07-19', '2024-02-25 21:51:03'),
(150, 'the conjuring 2', 'the-conjuring-2-movie-10062016.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2016-06-10', '2024-02-25 21:54:22'),
(151, 'the nun', 'the-nun-movie-07092018.jpg', '', 1, 2, 1, '10', '', '', '', 8, '2018-09-07', '2024-02-25 22:05:00'),
(152, 'the nun 2', 'the-nun-2-movie-08092023.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2023-09-08', '2024-02-25 22:05:57'),
(153, 'insidious', 'insidious-movie-01042011.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2011-04-01', '2024-02-25 22:21:50'),
(154, 'the insidious 2', 'insidious-2-movie-13092013.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2013-09-13', '2024-02-25 22:25:16'),
(155, 'insidious 3', 'insidious-3-movie-05062015.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2015-06-05', '2024-02-25 22:31:03'),
(156, 'insidious 4 - the last key', 'insidious-4-the-last-key-movie-05012018.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2018-01-05', '2024-02-25 22:33:40'),
(157, 'insidious 5 - the red door', 'insidious-5-movie-05072023.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2023-07-05', '2024-02-25 22:36:35'),
(158, 'blue beetle', 'blue-beetle-movie-18082023.jpg', '', 1, 2, 1, '9,13', '', '', '', 7, '2023-08-18', '2024-02-25 22:44:16'),
(159, 'the boogeyman', 'the-boogeyman-movie-02062023.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2023-06-02', '2024-02-25 22:48:06'),
(160, 'evil dead rise', 'evil-dead-rise-movie-21042023.jpg', '', 1, 2, 1, '10', '', '', '', 7, '2023-04-21', '2024-02-25 22:50:50'),
(161, 'wish', 'wish-movie-24112023.jpg', '', 1, 2, 2, '1,11', '', '', '', 5, '2023-11-24', '2024-03-08 23:59:27'),
(162, 'anjaana anjaani', 'anjaana-anjaani-movie-01102010.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2010-10-01', '2024-02-27 09:04:09'),
(163, 'karthik calling karthik', 'karthik-calling-karthik-movie-26022010.jpg', '', 2, 2, 1, '7,8,21', '', '', '<p style=\"margin: 0.5em 0px 0px; padding-bottom: 0.5em;\">Karthik Narayan is an introvert who lacks confidence and feels trapped in his average job at a construction company. He is continuously troubled by an incident from his childhood: His elder brother, Kumar, used to torture him, but whenever he complained to his parents, they did not believe him. One day, Kumar took Karthik to a well and tried to throw him in it, but Karthik escaped. Kumar accidentally fell inside the well and died. Karthik has thought himself responsible for his brother\'s death ever since.</p><p style=\"margin: 0.5em 0px 0px; padding-bottom: 0.5em;\"><br></p><p style=\"margin: 0.5em 0px 0px; padding-bottom: 0.5em;\">Shonali Mukherjee is a co-worker at Karthik\'s company, whom Karthik secretly loved though she remains unaware of his existence, much less his feelings. After being derided by his boss Mr Kamath yet again; Karthik figures his life can\'t get any worse and decides to commit suicide. Just as he is about to, a stranger with the same, exact voice as his, calls and says that he is also Karthik, convincing him that he has the ability to change his life. These phone calls become Karthik\'s life guide. His chats take place every day at 5:00 a.m. and the caller provides advice on Karthik\'s problems, guiding him to become a successful man, win Shonali\'s heart, and bring color to his otherwise dreary life.</p><p style=\"margin: 0.5em 0px 0px; padding-bottom: 0.5em;\"><br></p><p style=\"margin: 0.5em 0px 0px; padding-bottom: 0.5em;\">However, when Karthik tells Shonali and his psychiatrist about the phone calls, despite being warned not to, the mysterious caller gets angry and tells Karthik that if he could bring him up, he could also bring him down. As per his word, things start going downhill. Karthik\'s boss throws him out and Shonali leaves him. Karthik decides that if he goes somewhere he does not know, then the caller wouldn\'t know where he is either and stop calling him. Karthik travels to an unknown place, takes shelter in a small hotel, and asks the receptionist to remove the telephone and room number plate.</p><p style=\"margin: 0.5em 0px 0px; padding-bottom: 0.5em;\"><br></p><p style=\"margin: 0.5em 0px 0px; padding-bottom: 0.5em;\">After a few months, Karthik is comfortably living in Cochin with a decent job. His life is back to normal except for the fact that he refuses to have a phone line. Upon his boss\'s request, he is forced to purchase a landline. He goes to great lengths to ensure that he himself is unaware of the phone number. However, one day at exactly 5 a.m, he receives a call from the mysterious caller, who threatens to kill him. Meanwhile, Shonali is contacted by Dr. Shweta Kapadia, who reveals the twist: Karthik actually suffers from schizophrenia, a mental disorder characterized by abnormal social behavior and failure to understand reality. He has an alter-ego that is more assertive and advises him on how to live life.It is revealed that the strange caller was Karthik himself. He has been dealing with this condition from a young age, when he made up an imaginary brother named Kumar (which is why his parents never believed him). Karthik\'s phone has the feature to record messages and play it back at a scheduled time. Karthik would wake up in the middle of the night, leave himself messages as his alter ego, and return to sleep, where he would awake once again at 5 AM to take his own calls.</p><p style=\"margin: 0.5em 0px 0px; padding-bottom: 0.5em;\"><br></p><p style=\"margin: 0.5em 0px 0px; padding-bottom: 0.5em;\">Eventually, Karthik becomes so disturbed that he attempts to commit suicide again. Shonali, realizing the truth, arrives at the right time to save him. They reconcile and she stands by him, helping him with his condition. After a few months, Karthik is in the process of dealing with his disorder and lives a happy and rehabilitated life with Shonali by his side.</p>', 5, '2010-02-26', '2024-03-09 20:28:00'),
(164, 'i hate luv storys', 'i-hate-luv-storys-movie-02072010.jpg', '', 2, 2, 1, '7,8', '', '', '', 5, '2010-07-02', '2024-02-27 09:13:16'),
(165, 'khatta meetha', 'khatta-meetha-movie-23072010.jpg', '', 2, 2, 1, '4,7,8', '', '', '', 5, '2010-07-23', '2024-02-27 09:17:54'),
(166, 'the a team', 'the-a-team-movie-25062010.jpg', '', 1, 2, 1, '1,9', '', '', '', 5, '2010-06-25', '2024-02-27 16:14:33'),
(167, 'avatar the last airbender', 'avatar-series-22022024.jpg', '', 1, 1, 1, '1,9,11', '', '', '', 6, '2024-02-22', '2024-03-02 17:43:25'),
(168, 'sex education', 'sex-education-series-11012019.jpg', '', 1, 1, 1, '1,4,7,8', '', '', '', 7, '2019-01-11', '2024-03-02 17:54:34'),
(169, 'the blacklist', 'the-blacklist-series-23092013.jpg', '', 1, 1, 1, '1,5,9,15', '', '', '', 7, '2013-09-23', '2024-03-02 18:01:40'),
(170, 'lucifer', 'lucifer-series-25012016.jpg', '', 1, 1, 1, '1,5,9,15', '', '', '', 7, '2016-01-25', '2024-03-02 18:10:02'),
(171, 'warrior nun', 'warrior-nun-series-02072020.jpg', '', 1, 1, 1, '1,9', '', '', '', 7, '2020-07-02', '2024-03-02 18:13:05'),
(172, 'the walking dead', 'the-walking-dead-series-31102010.jpg', '', 1, 1, 1, '1,9,10,11,15', '', '', '', 7, '2010-10-31', '2024-03-02 18:18:10'),
(173, 'elite', 'elite-series-05102018.jpg', '', 11, 1, 1, '1,5,14,15', '', '', '', 6, '2018-10-05', '2024-03-02 18:29:59'),
(174, 'never have i ever', 'never-have-i-ever-series-27042020.jpg', '', 1, 1, 1, '7,8', '', '', '', 6, '2020-04-27', '2024-03-02 18:26:17'),
(175, 'black lightening', 'black-lightening-series-16012018.jpg', '', 1, 1, 1, '9,13', '', '', '', 3, '2018-01-16', '2024-03-02 18:33:11'),
(176, 'stranger things', 'stranger-things-series-15072016.jpg', '', 1, 1, 1, '1,9,10,11,15', '', '', '', 8, '2016-07-15', '2024-03-02 19:15:25'),
(177, 'altered carbon', 'altered-carbon-series-02022018.jpg', '', 1, 1, 1, '9,10,12', '', '', '', 5, '2018-02-02', '2024-03-02 19:18:25'),
(178, 'detective conan', 'detective-conan-series-08011996.jpg', '', 1, 1, 2, '1,5,9', 'It has been on the air from 1996 to the present time. Detective Conan is about a teenage detective named Shinichi Kudo, who is poisoned by an evil group called \"The Black Organization\". The poison was supposed to kill him. However, the poison instead turned him into a small child.', 'Jimmy Kudo (Japanese name: Shinichi Kudo) is a high school detective who sometimes works with the police to solve cases. During an investigation, he is ambushed and incapacitated by a member of a crime syndicate known as the Black Organization. In an attempt to murder the young detective, they force-fed him a dangerous experimental drug. However, instead of killing him, it shrinks his body into the size of an elementary school child. Adopting the pseudonym Conan Edogawa and keeping his true identity a secret, Kudo lives with his childhood friend Rachel Moore (Ran Mori) and her father Richard (Kogoro Mori), who is a private detective. Throughout the series, he tags along on Richard\'s cases. Nonetheless, after Kudo solves one, he will use Dr. Agasa\'s hidden tranquilizer to sedate Richard and then uses a voice changer to simulate his voice to reveal the solution. He also enrolls in Teitan Elementary School where he makes friends with a group of classmates who form their own Junior Detective League (Detective Boys). While he continues to dig deeper into the Black Organization, he frequently interacts with other characters, including his neighbor, Dr. Agasa, Ran\'s friend Serena Sebastian (Sonoko Suzuki), a fellow teenage detective Harley Hartwell (Heiji Hattori), assorted police detectives from different regions, and a phantom thief called Kaito Kid.\r\n\r\nKudo later encounters an elementary school transfer student, Anita Hailey (Ai Haibara), who reveals herself to be a former member of the Black Organization under the code name \"Sherry\" and the creator of the experimental drug that shrunk him. She too had ingested it to evade the pursuit of the organization. She soon joins the Junior Detectives. During a rare encounter with the Black Organization, Conan helps the FBI plant a CIA agent, Kir, inside the Black Organization as a spy.', '', 10, '1996-01-08', '2024-03-09 15:00:33'),
(179, 'shadow hunters', 'shadow-hunters-series-12012016.jpg', '', 1, 1, 1, '11', '', '', '', 5, '2016-01-12', '2024-03-02 19:31:05'),
(180, 'princess mononoke', 'princess-mononoke-movie-12071997.jpg', '', 12, 2, 1, '1,2,9', '', '', 'In the 14th century, the harmony that humans, animals and gods have enjoyed begins to crumble. The protagonist, young Ashitaka - infected by an animal attack, seeks a cure from the deer-like god Shishigami. In his travels, he sees humans ravaging the earth, bringing down the wrath of wolf god Moro and his human companion Princess Mononoke. Hiskattempts to broker peace between her and the humans brings only conflict.', 7, '1997-07-12', '2024-03-03 23:21:59'),
(181, 'locke and key', 'locke-and-key-series-07022020.jpg', '', 1, 1, 1, '1,9,10,15', '', '', '', 8, '2020-02-07', '2024-03-02 19:39:37'),
(182, 'mirzapur', 'mirzapur-series-16112018.jpg', '', 2, 1, 1, '1,5,7,8,9', '', '', '', 7, '2018-11-16', '2024-03-02 19:42:52'),
(183, 'ae dil hai mushkil', 'ae-dil-hai-mushkil-movie-28102016.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2016-10-28', '2024-03-02 19:48:01'),
(184, 'ram leela', 'ram-leela-movie-15112013.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2013-11-15', '2024-03-02 19:52:31'),
(185, 'kgf chapter 1', 'kgf-chapter-1-movie-21122018.jpg', '', 3, 2, 1, '1,5,7,9', '', '', '', 9, '2018-12-21', '2024-03-02 19:59:04'),
(186, 'kgf chapter 2', 'kgf-chapter-2-movie-14042022.jpg', '', 3, 2, 1, '1,5,9', '', '', '', 7, '2022-04-14', '2024-03-02 20:00:51'),
(187, 'padmaavat', 'padmaavar-movie-25012018.jpg', '', 2, 2, 1, '16', '', '', '', 6, '2018-01-25', '2024-03-02 20:04:25'),
(188, 'love aaj kal', 'love-aaj-kal-movie-31072009.jpg', '', 1, 2, 1, '8', '', '', '', 5, '2009-07-31', '2024-03-02 20:08:14'),
(189, 'uri - the surgical strike', 'uri-the-surgical-strike-movie-11012019.jpg', '', 2, 2, 1, '9,18', '', '', '', 8, '2019-01-11', '2024-03-02 20:16:51'),
(190, 'sanam teri kasam', 'sanam-teri-kasam-movie-05012016.jpg', '', 2, 2, 1, '7,8', '', '', '', 6, '2016-01-05', '2024-03-02 20:22:39'),
(191, 'oh my god 1', 'oh-my-god-1-movie-28092012.jpg', '', 2, 2, 1, '6,7', '', '', '', 6, '2012-09-28', '2024-03-02 20:27:11'),
(192, 'kaminey', 'kaminey-movie-14082009.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2009-08-14', '2024-03-02 20:31:06'),
(193, '13b', '13b-movie-06032009.jpg', '', 2, 2, 1, '10', '', '', '', 7, '2009-03-13', '2024-03-02 20:35:01'),
(194, '1920 the movie', '1920-movie-12092008.jpg', '', 2, 2, 1, '10', '', '', '', 5, '2008-09-12', '2024-03-02 20:38:06'),
(195, 'creature 3d', 'creature-movie-12092014.jpg', '', 2, 2, 1, '10', '', '', '', 3, '2014-09-12', '2024-03-02 20:42:40'),
(196, 'alone', 'alone-movie-16012015.jpg', '', 2, 2, 1, '10', '', '', '', 5, '2015-01-16', '2024-03-02 20:46:42'),
(197, 'rehnaa hai terre dil mein', 'rehnaa-hai-terre-dil-mein-movie-19102001.jpg', '16,94,95', 2, 2, 1, '8', '', '', '', 7, '2001-10-19', '2024-03-03 21:31:24'),
(198, 'hero', 'hero-movie-11092015.jpg', '', 2, 2, 1, '8,9', '', '', '', 5, '2015-09-11', '2024-03-02 20:54:56'),
(199, 'hum tum', 'hum-tum-movie-28052004.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2004-05-28', '2024-03-02 20:57:39'),
(200, 'salaam e ishq', 'salam-e-ishq-movie-25012007.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2007-01-25', '2024-03-02 21:02:12'),
(201, 'dil chahata hai', 'dil-chahata-hai-movie-10082001.jpg', '', 2, 2, 1, '8', '', '', '', 6, '2001-08-10', '2024-03-02 21:06:40'),
(202, 'bang bang', 'bang-bang-movie-02102014.jpg', '', 2, 2, 1, '8,9', '', '', '', 5, '2014-10-02', '2024-03-02 21:12:08'),
(203, 'raees', 'raees-movie-25012017.jpg', '', 2, 2, 1, '8,9', '', '', '', 6, '2017-01-25', '2024-03-02 21:16:49'),
(204, 'boss', 'boss-movie-16102013.jpg', '', 2, 2, 1, '4,9', '', '', '', 5, '2013-10-16', '2024-03-02 21:20:46'),
(205, 'kurbaan', 'kurbaan-movie-20112009.jpg', '', 2, 2, 1, '5,8', '', '', '', 5, '2009-11-20', '2024-03-02 21:25:37'),
(206, 'kidnap', 'kidnap-movie-02102008.jpg', '', 2, 2, 1, '8,9', '', '', '', 5, '2008-10-02', '2024-03-02 21:29:30'),
(207, 'jab we met', 'jab-we-met-movie-26102007.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2007-10-26', '2024-03-02 21:33:11'),
(208, '36 china town', '36-china-town-movie-21042006.jpg', '', 2, 2, 1, '7,9', '', '', '', 4, '2006-04-21', '2024-03-02 21:39:20'),
(209, 'ek villain', 'ek-villain-movie-27062014.jpg', '', 2, 2, 1, '5,8,9', '', '', '', 5, '2014-06-27', '2024-03-02 21:44:15'),
(210, 'de dana dan', 'de-dana-dan-movie-27112009.jpg', '', 2, 2, 1, '4,8', '', '', '', 5, '2009-11-27', '2024-03-02 22:22:56'),
(211, 'chennai express', 'chennai-express-movie-08082013.jpg', '', 2, 2, 1, '4,7,8,9', '', '', '', 6, '2013-08-08', '2024-03-02 22:27:58');
INSERT INTO `media` (`id`, `title`, `img_url`, `casts`, `lang`, `category`, `type`, `genre`, `storyline`, `plot`, `content`, `rating`, `released_dt`, `update_dt`) VALUES
(212, 'jane tu ya jane na', 'jane-tu-ya-jane-na-movie-04072008.jpg', '', 2, 2, 1, '7,8', '', '', '', 7, '2008-07-04', '2024-03-02 22:31:16'),
(213, 'ajab prem ki gazhab kahani', 'ajab-prem-ki-gazhab-kahani-movie-06112009.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2009-11-06', '2024-03-02 22:35:03'),
(214, 'welcome', 'welcome-movie-21122007.jpg', '', 2, 2, 1, '4,8', '', '', '', 6, '2007-12-21', '2024-03-02 22:43:08'),
(215, 'rustom', 'rustom-movie-12082016.jpg', '', 2, 2, 1, '1,7,8,9,18', '', '', '', 6, '2016-08-12', '2024-03-02 22:47:50'),
(216, 'munna bhai mbbs', 'munna-bhai-mbbs-movie-19122203.jpg', '', 2, 2, 1, '4,7,8', '', '', '', 6, '2003-12-19', '2024-03-02 22:51:26'),
(217, 'om shanti om', 'om-shani-om-movie-09112007.jpg', '', 2, 2, 1, '7,8', '', '', '', 5, '2007-11-09', '2024-03-02 22:58:07'),
(218, 'bluffmaster', 'bluffmaster-movie-16122005.jpg', '', 2, 2, 1, '9', '', '', '', 4, '2005-12-16', '2024-03-02 23:07:38'),
(219, 'billu barber', 'billu-barber-movie-13022009.jpg', '', 2, 2, 1, '4', '', '', '', 5, '2009-02-13', '2024-03-02 23:14:53'),
(220, 'dostana', 'dostana-movie-14122008.jpg', '', 2, 2, 1, '4,8', '', '', '', 5, '2008-12-14', '2024-03-02 23:17:41'),
(221, 'kal ho naa ho', 'kal-ho-naa-ho-movie-28112003.jpg', '', 2, 2, 1, '8', '', '', '', 6, '2003-11-28', '2024-03-02 23:28:51'),
(222, 'jab tak hai jaan', 'jab-tak-hai-jaan-movie-13122012.jpg', '', 2, 2, 1, '8,16', '', '', '', 6, '2012-12-13', '2024-03-02 23:39:46'),
(223, 'hum dil de chuke sanam', 'hum-dil-de-chuke-sanam-movie-18061999.jpg', '34,78,79', 2, 2, 1, '7,8', '', '', '', 5, '1999-06-18', '2024-03-03 20:30:59'),
(224, 'jodhaa akbar', 'jodhaa-akbar-movie-15022008.jpg', '', 2, 2, 1, '8,16', '', '', '', 6, '2008-02-15', '2024-03-02 23:49:06'),
(225, 'pk', 'pk-movie-19122014.jpg', '', 2, 2, 1, '4,12', '', '', '', 5, '2014-12-19', '2024-03-02 23:52:32'),
(226, 'ghajini', 'ghajini-movie-24122008.jpg', '', 2, 2, 1, '7,9', '', '', '', 5, '2008-12-24', '2024-03-03 00:00:58'),
(227, 'saawariya', 'saawariya-movie-09112007.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2007-11-09', '2024-03-03 00:05:44'),
(228, 'bajirao mastani', 'bajirao-mastani-movie-18122015.jpg', '', 2, 2, 1, '8,16', '', '', '', 6, '2015-12-18', '2024-03-03 00:09:57'),
(229, 'fanaa', 'fanaa-movie-26052006.jpg', '', 2, 2, 1, '8', '', '', '', 6, '2006-05-26', '2024-03-03 00:14:33'),
(230, 'barfi', 'barfi-movie-14092012.jpg', '', 2, 2, 1, '7,8', '', '', '', 6, '2012-09-14', '2024-03-03 00:19:39'),
(231, 'rocket singh', 'rocket-singh-movie-11122009.jpg', '', 2, 2, 1, '7', '', '', '', 5, '2009-12-11', '2024-03-03 00:23:46'),
(232, 'airlift', 'airlift-movie-22012016.jpg', '', 2, 2, 1, '7', '', '', '', 5, '2016-01-22', '2024-03-03 00:27:34'),
(233, 'bubble', 'bubble-movie-13052022.jpg', '', 1, 2, 2, '1,2', '', '', '', 6, '2022-05-13', '2024-03-03 02:20:10'),
(234, 'the wind rises', 'the-wind-rises-movie-20072013.jpg', '', 1, 2, 2, '2,8', '', '', '', 5, '2013-07-20', '2024-03-03 02:25:36'),
(235, 'ponyo', 'ponyo-movie-19072008.jpg', '', 4, 2, 2, '2', '', '', '', 5, '2008-07-19', '2024-03-03 02:29:55'),
(236, 'spirited away', 'spirited-away-movie-20072001.jpg', '', 4, 2, 2, '1,2', '', '', '', 7, '2001-07-20', '2024-03-03 02:35:22'),
(237, 'paprika', 'paprika-movie-25112006.jpg', '', 4, 2, 2, '2', '', '', '', 5, '2006-11-25', '2024-03-03 02:38:51'),
(238, 'my hero academia', 'my-hero-academia-movie-06082021.jpg', '', 4, 2, 2, '1,2,9', '', '', '', 7, '2021-08-06', '2024-03-03 02:41:34'),
(239, 'arrietty', 'arrietty-movie-17072010.jpg', '', 4, 2, 2, '2', '', '', '', 7, '2010-07-17', '2024-03-03 02:44:36'),
(240, 'kikis delivery service', 'kikis-delivery-service-movie-01011989.jpg', '', 4, 2, 2, '1,2', '', '', '<p><span style=\"font-size: 1rem;\">Kiki, a young witch, decides to go out on her own, which all young witches must do, taking her talking black cat, Jiji, with her. Her mother insists that she take her mother\'s old, reliable broomstick. Kiki flies off into the night, searching for a new town to settle into.</span><br></p>', 7, '1989-01-01', '2024-03-03 23:20:01'),
(241, 'yobi five tailed fox', 'yobi-five-tailed-fox-movie-25012007.jpg', '', 4, 2, 2, '2', '', '', '', 8, '2007-01-25', '2024-03-03 03:04:02'),
(242, 'howls moving castle', 'howls-moving-castle-movie-20112004.jpg', '', 4, 2, 2, '2', '', '', '', 7, '2004-11-20', '2024-03-03 03:08:33'),
(243, 'kaho na pyaar hai', 'kaho-na-pyaar-hai-movie-14012000.jpg', '80,81,82,83,84,85,86,87', 2, 2, 1, '8,9', '', '', '', 7, '2000-01-14', '2024-03-03 21:03:17'),
(244, 'kabhi khushi kabhie gham', 'kabhi-khushi-kabhie-gham-movie-14122001.jpg', '76,80,90,91,92,93', 2, 2, 1, '7,8', '', '', '', 6, '2001-12-14', '2024-03-03 21:26:56'),
(245, 'coolie', 'coolie-movie-02121983.jpg', '75,76', 2, 2, 1, '1,9', '', '', 'The film stars Amitabh Bachchan as Iqbal Aslam Khan, a railway coolie, who was separated from his mother Salma due to Zafar\'s obsession with her. This obsession causes the destruction of her family and her mental breakdown.', 5, '1983-12-02', '2024-03-04 15:57:06'),
(246, 'raaz', 'raaz-movie-01022002.jpg', '', 2, 2, 1, '8', '', '', '', 6, '2002-02-01', '2024-03-03 10:23:28'),
(247, 'gangster', 'gangster-movie-28042006.jpg', '', 2, 2, 1, '8', '', '', '', 5, '2006-04-28', '2024-03-03 10:28:10'),
(248, 'taxi no. 9 2 11', 'taxi-no-9211-movie-24022006.jpg', '', 2, 2, 1, '4,7,9', '', '', '', 5, '2006-02-24', '2024-03-03 10:32:11'),
(249, 'kabhi alvida na kehna', 'kabhi-alvida-na-kehna-movie-11082006.jpg', '', 2, 2, 1, '7,8', '', '', '', 5, '2006-08-11', '2024-03-03 10:38:04'),
(250, 'rang de basanti', 'rang-de-basanti-movie-26012006.jpg', '', 2, 2, 1, '7,8', '', '', '', 5, '2006-01-26', '2024-03-03 10:42:43'),
(251, 'megamind', 'megamind-movie-24122010.jpg', '', 1, 2, 2, '2,9', '', '', '', 6, '2010-12-24', '2024-03-03 22:23:11'),
(252, 'ghosted', 'ghosted-movie-21042023.jpg', '96,97', 1, 2, 1, '9,15', '', '', '', 7, '2023-04-21', '2024-03-03 22:39:39'),
(253, 'tales from earthsea', 'tales-from-earthsea-movie-29072006.jpg', '', 4, 2, 2, '1,2', '', '', '', 6, '2006-07-29', '2024-03-04 15:26:35'),
(254, 'my neighbour totoro', 'my-neighbor-totoro-movie-16041988.jpg', '', 4, 2, 2, '1,2', '', '', '', 7, '1988-04-16', '2024-03-04 15:32:07'),
(255, 'the cat returns', 'the-cat-returns-movie-20072002.jpg', '', 4, 2, 2, '2', '', '', '', 6, '2002-07-20', '2024-03-04 15:36:14'),
(256, 'damsel', 'damsel-movie-08032024.jpg', '105,106', 1, 2, 1, '1,9,11', 'In this new fantasy film, a young woman who thinks she is being married to a perfect prince is thrown into a pit where she discovers she\'s not going to be a princess after all, but a sacrifice to appease a bloodthirsty dragon. Trying to survive long enough until someone can save her, she soon realizes that no one is coming and this \"damsel\" must save herself.', 'A dutiful damsel agrees to marry a handsome prince, only to find the royal family has recruited her as a sacrifice to repay an ancient debt.', '<div>After a brief prologue, with knights facing a fire-breathing dragon, we see Elodie chopping wood “centuries later in a faraway land. She and her adored younger sister Floria live in a remote, snowy community that is in dire circumstances. They are down to selling the drapes in their castle for food. But then a messenger arrives with a letter, closed with a royal seal. A queen is proposing that Elodie become the bride of her son, the prince, with a handsome dowry that will restore their land to prosperity. Elodie is reluctant, but willing to do whatever is necessary to help her people. “I know you always wanted to travel,” her father says, trying to make the prospect sound more appealing.</div><div><br></div><div>Elodie and Floria are dazzled by the warmth, bounty, and luxury of the Queen’s home, and heartened by their welcome. Prince Henry seems to be as charming as fairy tale princes are expected to be. His mother, is another story, regal but remote, coolly rebuffing the attempt at friendship from Elodie’s stepmother, Lady Bayford.</div><div><br></div><div>Despite Lady Bayford’s increasing concerns that something is wrong, the wedding goes through, with all the pomp and circumstance a fantasy royal wedding deserves. The wedding scene is spectacular. Elodie is helped into her spectacular bridal gown by servants.</div><div><br></div><div>After the wedding there is a strange ceremony near the mouth of a cavern. Ominously, the courtiers are masked. Isabelle runs her dagger across the newlyweds’ palms and mixes their blood. And then, it turns out Elodie is to be sacrificed to the dragon inside the cavern, a part of the centuries-old arrangement that keeps the dragon from preying on the kingdom.</div><div><br></div><div>Elodie tries to escape from the dragon, the bridal gown has a corset busk (the stiff board stuck down the bodice), scraping it against the cavern wall Elodie sharpens it into a dagger. She also uses some of the fabric as protection and rips off a lot of it to give her more freedom of movement, always resulting in very fetching tatters. Elodie also finds some resources in the cave along with a few dead bodies of other princesses. There is a whole wall covered with their names, written as they despaired of escape. She discovers bio-luminescent worms to help light her way. She faces one obstacle after another, making some progress but not enough.&nbsp;</div><div><br></div><div>As she reaches the escape she hears her father\'s voice her father has entered the cave to save his daughter. Elodie comes running to her father to see the dragon killing her father and he confesses his mistake as he could not live with the guilt any longer, he asks Elodie to run away, and to get on the boat on which her sister and mother are waiting on the coastline. The dragon is distracted by the noise made by other guys her father came with, the dragon follows the voice as the dragon is away Elodie talks to her father who is on his last moments of death. Later she runs away as she see\'s the dragon returning, makes it to the top of the cave by climbing a wall full of crystals and takes the horse to run away, but the dragon is already out and see the horse, mean whole damsel drop down from the horse and hides under a stone. The dragon burns away the horse, a day passes as she sleeps under the stone, meanwhile the dragon angrily breathes fire all around the cave mountain making a hideous fire storm. This is seen by the royal family and the family heads to the ship Elodie\'s step mother and sister is on, they forcefully enter the ship and take away Elodie\'s sister as another sacrifice as they had promised a daughter to the royal family, the step mother is stabbed as she tries to stop the royal guards from taking her daughter.&nbsp;</div><div><br></div><div>Moments later as Elodie rides towards the shore she see\'s her mother wounded riding the horse as she informs her that her sister is being taken to sacrifice hearing this Elodie returns to the cave to find they have dropped her sister down the cave, she enters the cave once again and faces the dragon and fights it, convincing it that the dragon has been fooled that she is not the royal family, but a innocent girl from faraway kingdom.</div><div><br></div><div>CLIMAX :- Elodie sees that the king had killed the dragons kids, three of them that is the reason the dragon takes three sacrifices every generation. She explains the dragon that she\'s been killing innocent princesses and not the royal kids.</div><div><br></div><div>During the fight the dragon is wounded, the dragon asks to end its mistake but sweet damsel does not kill the dragon but heals it with luminous bugs which were found in cave, later the dragon and damsel strikes down the royal family this ending the feud. Now the dragon is free and follows damsel to her home as she returns to the ship with her sister and step mother and the story ends.</div>', 7, '2024-03-08', '2024-03-09 14:51:55'),
(257, 'morbius', 'morbius-movie-01042022.jpg', '', 1, 2, 1, '1,9,10,13', 'Dangerously ill with a rare blood disorder and determined to save others from the same fate, Dr. Morbius attempts a desperate gamble. While at first it seems to be a radical success, a darkness inside of him is soon unleashed.', 'Throughout his childhood, Dr. Michael Morbius has struggled to live with a rare, but deadly blood illness. Therefore, he goes on a worldwide search for a cure that could hopefully help both him and other patients currently suffering from similar ailments. However, as he searches on and on, he comes across a solution in the form of vampire bat DNA. With the help of his assistant, Martine, Michael manages to introduce the DNA to his own bloodstream. The solution itself begins to reveal its benefits, but soon, terrible side effects begin to arise. With these new symptoms on the rise, Michael must find a way to combat his urges for human blood, while also discovering new abilities that come with it.', '<p>At a hospital in Greece, 10-year-old Michael Morbius welcomes his surrogate brother Lucien, whom he renames Milo; they bond over their shared blood illness and desire to be \"normal\". Their adoptive father and hospital director Nicholas arranges for Morbius to attend medical school in New York while he focuses on caring for Milo.<br style=\"\"><br style=\"\">25 years later, Morbius publicly declines a Nobel Prize for his work with synthetic blood. His colleague Martine Bancroft discovers he has secretly captured dozens of vampire bats from Costa Rica hoping to splice their genes with his own to cure his condition. After informing Milo of his planned illegal experiment, Morbius receives funding from him to outfit a private mercenary vessel in international waters with his equipment. While the cure works, it transforms Morbius into a vampire, who kills and drains the crew of their blood after they attack him out of fear. Once his bloodlust subsides and he regains his senses, a horrified Morbius erases all CCTV footage of his experiment before contacting the authorities and jumping overboard.<br style=\"\"><br style=\"\">Morbius returns to New York and discovers he now has superhuman strength, speed, reflexes, and echolocation, with his vampire bats treating him as a bat. To control his bloodlust, he subsists on his synthetic blood until it gradually ceases to satisfy his needs. FBI agents Simon Stroud and Al Rodriguez investigate Morbius\' victims and deduce his involvement. Milo learns Morbius is cured, but becomes furious when Morbius refuses to cure him as well. While checking on a hospitalized Bancroft, Morbius finds a dead nurse, drained of her blood. Believing he was responsible, he attempts to escape before being cornered and arrested. In prison, he is visited by Milo, who offers to use his wealth to free him. Upon realizing Milo took his cure and killed the nurse, Morbius escapes to confront him. An unrepentant Milo confesses to his bloodlust-induced crime and urges Morbius to embrace his powers as he has. Unwilling to hurt his brother, Morbius flees.<br style=\"\"><br style=\"\">Morbius meets Bancroft to explain what Milo has done before acquiring a new lab and developing an antibody against vampirism to stop and kill Milo; he also plans to use it on himself since he will become unable to resist his bloodlust. Stroud and Rodriguez find footage of one of Milo\'s attacks and, believing Morbius\' vampirism to be spreading, release it to the media. Nicholas recognizes Milo and pleads with him to stop. Angered by Nicholas\' perceived preference for Morbius, Milo wounds and forces him to call Morbius, who watches Nicholas die while Milo attacks Bancroft. Morbius returns to Bancroft, but she dies in his arms and he drinks her blood. Morbius confronts Milo and summons an army of bats to restrain him and inject the antibody. Milo dies and Morbius flies off with the bats, mourning his loved ones and embracing his identity as a vampire. Unbeknownst to him, Bancroft is revived as a vampire herself elsewhere, having ingested a drop of Morbius\' blood whilst he was feeding on her.<br></p>', 7, '2022-04-01', '2024-03-09 01:39:15'),
(258, 'the flash', 'the-flash-movie-16062023.jpg', '', 1, 2, 1, '9,13', 'Worlds collide when the Flash uses his superpowers to travel back in time to change the events of the past. However, when his attempt to save his family inadvertently alters the future, he becomes trapped in a reality in which General Zod has returned, threatening annihilation. With no other superheroes to turn to, the Flash looks to coax a very different Batman out of retirement and rescue an imprisoned Kryptonian albeit not the one he\'s looking for.\r\n', '', '', 7, '2023-06-16', '2024-03-09 01:46:18'),
(259, 'sisu', 'sisu-movie-27012023.jpg', '', 1, 2, 1, '1,9', '', '', '', 6, '2023-01-27', '2024-03-09 12:48:15'),
(260, 'black panther - wakanda forever', 'blackpanther-wakanda-forever-movie-11112022.jpg', '', 1, 2, 1, '9,13', '', '', '', 7, '2022-11-11', '2024-03-09 13:24:53'),
(261, 'firestarter', 'firestarter-movie-13052022.jpg', '', 1, 2, 1, '9', '', '', '', 6, '2022-05-13', '2024-03-09 13:33:30'),
(262, 'avatar - the way of water', 'avatar-the-way-of-water-movie-16122022.jpg', '', 1, 2, 1, '1,9', '', '', '', 8, '2022-12-16', '2024-03-09 13:39:00'),
(263, 'doctor strange in the multiverse of madness', 'doctor-strange-multiverse-of-madness-movie-06052022.jpg', '', 1, 2, 1, '1,9,13', '', '', '', 8, '2022-05-06', '2024-03-09 13:43:10'),
(264, 'thor - love and thunder', 'thor-love-and-thunder-movie-06072022.jpg', '', 1, 2, 1, '9,13', '', '', '', 8, '2022-07-06', '2024-03-09 13:46:03'),
(265, 'antlers', 'antlers-movie-29102021.jpg', '', 1, 2, 1, '10', '', '', '', 5, '2021-10-29', '2024-03-09 13:49:50'),
(266, 'no one gets out alive', 'no-one-gets-out-alive-movie-29092021.jpg', '', 1, 2, 1, '10', '', '', '', 5, '2021-09-29', '2024-03-09 13:54:38'),
(267, 'ghostbusters afterlife', 'ghostbusters-afterlife-movie-19112021.jpg', '', 1, 2, 1, '1,9,10', '', '', '', 6, '2021-11-19', '2024-03-09 13:58:14'),
(268, 'chaos walking', 'chaos-walking-movie-05032021.jpg', '', 1, 2, 1, '1', '', '', '', 6, '2021-03-05', '2024-03-09 14:00:41'),
(269, 'godzilla vs kong', 'godzilla-vs-kong-movie-31032021.jpg', '', 1, 2, 1, '9', '', '', '', 8, '2021-03-31', '2024-03-09 14:04:41'),
(270, 'jungle cruise', 'jungle-cruise-movie-30072021.jpg', '', 1, 2, 1, '1', '', '', '', 7, '2021-07-30', '2024-03-09 14:08:23'),
(271, 'red notice', 'red-notice-movie-04112021.jpg', '', 1, 2, 1, '9', '', '', '', 5, '2021-11-04', '2024-03-09 14:19:22'),
(272, 'suicide squad', 'the-suicide-squad-movie-30072021.jpg', '', 1, 2, 1, '9,13', '', '', '', 7, '2021-07-30', '2024-03-09 14:21:58'),
(273, 'mortal kombat', 'mortal-kombat-movie-23042021.jpg', '', 1, 2, 1, '9', '', '', '', 6, '2021-04-23', '2024-03-09 14:27:50'),
(274, 'hitman\'s wife\'s bodyguard', 'hitmans-wifes-bodyguard-movie-16062021.jpg', '', 1, 2, 1, '9', '', '', '', 5, '2021-06-16', '2024-03-09 14:31:54'),
(275, 'kate', 'kate-movie-10092021.jpg', '', 1, 2, 1, '9', '', '', '', 5, '2021-09-10', '2024-03-09 14:36:56'),
(276, 'snake eyes', 'snake-eyes-movie-23072021.jpg', '', 1, 2, 1, '9', '', '', '', 6, '2021-07-23', '2024-03-09 14:40:17'),
(277, 'the unholy', 'the-unholy-movie-02042021.jpg', '', 1, 2, 1, '10', '', '', '', 5, '2021-04-02', '2024-03-09 14:45:29'),
(278, 'nimona', 'nimona-movie-14062023.jpg', '', 1, 2, 2, '1,9', '', '', '', 5, '2023-06-14', '2024-03-09 20:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `media_category`
--

DROP TABLE IF EXISTS `media_category`;
CREATE TABLE IF NOT EXISTS `media_category` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media_category`
--

INSERT INTO `media_category` (`id`, `category`) VALUES
(1, 'series'),
(2, 'movie');

-- --------------------------------------------------------

--
-- Table structure for table `media_type`
--

DROP TABLE IF EXISTS `media_type`;
CREATE TABLE IF NOT EXISTS `media_type` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media_type`
--

INSERT INTO `media_type` (`id`, `type`) VALUES
(1, 'live'),
(2, 'anime');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `cat_conn` FOREIGN KEY (`category`) REFERENCES `media_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lang_conn` FOREIGN KEY (`lang`) REFERENCES `lang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `type_conn` FOREIGN KEY (`type`) REFERENCES `media_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
