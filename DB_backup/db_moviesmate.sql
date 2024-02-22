-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 21, 2024 at 06:06 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(70, 'ebonee', 'noel', 'ebonee-noel.jpg', '', '', 'female', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(17, 'medical', 'medical-team.png');

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

DROP TABLE IF EXISTS `lang`;
CREATE TABLE IF NOT EXISTS `lang` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `language` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(11, 'other'),
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
  `lang` int DEFAULT '11',
  `category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `rating` tinyint NOT NULL,
  `released_dt` date DEFAULT NULL,
  `added_dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title`, `img_url`, `casts`, `lang`, `category`, `type`, `genre`, `content`, `rating`, `released_dt`, `added_dt`) VALUES
(1, 'asur', 'asur-02032020.jpg', '4,5,6,14', 2, '1', '1', '5,6,15,16', '<p><font face=\"sans-serif\"><span style=\"font-size: 14px;\">The series is about a team of forensic experts who must catch a serial killer who considers himself a reincarnation of the asura Kali.&nbsp;Asur follows Nikhil Nair, a forensic-expert-turned-teacher, who returns to his roots at the Central Bureau of Investigation, and along with his former mentor Dhananjay Rajpoot, finds himself caught in a cat and mouse game with a brutal serial killer.&nbsp;</span></font><span style=\"font-size: 14px; font-family: sans-serif;\">A psychopath killer with a twisted philosophy deep-seated in Indian mythology is on the loose. Two forensic officers from the CBI are close on heals to catch the serial killer.</span></p><p><span style=\"font-size: 14px; font-family: sans-serif;\">The killer uses modern day technology such as deep fake videos and sound bomb technology, to raise havoc and destroy peace amongst humans and disrupt the harmony. The killer wants to force the birth of Kalki which will be the end of Kalyug according to Indian mythology, so he is bent on killing people and making a show of Kalyug. He finds his targets for killing, using a artificial intelligence machine which gives him the best targets.</span></p><p><fontnface=\"sans-serif\"><span style=\"font-size: 14px;\"><br></span><br></fontnface=\"sans-serif\"></p>', 7, '2020-03-02', '2024-02-21 23:03:04'),
(2, 'fruit\'s basket prelude', 'fruits-basket-prelude-poster.jpg', '', 4, '2', '2', '2', '<p>Kyoko, who couldn\'t believe anything in the world and lived a desolate life, meets Katsuya Honda, who has been assigned as an educational trainee. She is at the mercy of Katsuya, who is rude and has a strong habit, and she is gradually attracted to her. However, she is disowned by her parents in the wake of an incident with her bad fellow. It\'s a punishment that I\'ve been doing as much as I like. </p><p>Kyo Sohma has been plagued by guilt since he allowed Kyoko Honda, a woman he had known as a young child, to die in order to avoid exposing his curse. Somehow, against all odds, he met her daughter Tohru, and the two fell in love. But before there was Kyo and Tohru, or even Kyo and Kyoko, there was Kyoko and Katsuya. Kyoko was a troubled teen; Katsuya a student teacher with no actual interest in education. Apart, they were a pair of misfits; together, they made Tohru.<br></p>', 3, '1970-01-01', '2023-07-27 03:24:21'),
(3, 'the quintessential quintuplets', 'the-quintessential-quintuplets-ori.jpg', '', 4, '2', '2', '2', 'The series is based on the manga by Negi Haruba and follows the story of a high school boy named Futaro Uesugi, who takes on a tutoring job for the wealthy Nakano family\'s quintuplet daughters.', 3, '1970-01-01', '2023-07-27 03:50:07'),
(4, 'super mario bros', 'super-mario-bros-poster.jpg', '', 1, '2', '2', '1,2,3', 'The super marios bro\'s defeat the all powerful Bowser - the king of the koopas from conquering the world, the anthropomorphic turtle, with help from Princess Peach from Mushroom Kingdom.', 7, '2023-04-05', '2023-07-27 04:05:37'),
(5, 'the magician\'s elephant', 'the-magicians-elephant-poster.jpg', '', 1, '2', '2', '1,2,11', '', 5, '0000-00-00', '2023-07-15 22:12:24'),
(6, 'superman red son', 'superman-red-son-poster.jpg', '', 1, '2', '2', '2,13,16', '', 5, '0000-00-00', '2023-07-15 22:12:36'),
(7, 'batman - the doom that came to gotham', 'batman-the-doom-that-came-to-gotham-poster.jpg', '', 1, '2', '2', '2,13', '', 5, '0000-00-00', '2023-07-15 22:12:52'),
(8, 'finding dori', 'finding-dori-ori.jpeg', '', 1, '2', '2', '1,2', '', 6, '0000-00-00', '2023-07-15 22:13:06'),
(9, 'finding nemo', 'finding-nemo-ori.jpeg', '', 1, '2', '2', '1,2', '', 6, '0000-00-00', '2023-07-15 22:13:22'),
(10, 'godzilla - planet of the monsters', 'godzilla-planet-of-the-monsters-poster.jpg', '', 4, '2', '2', '2,10,15', '', 6, NULL, '2023-06-18 13:23:48'),
(11, 'mummies', 'mummies-poster.jpg', '', 1, '2', '2', '2', '', 6, '0000-00-00', '2023-07-15 22:11:54'),
(12, 'minions - rise of gru', 'minions-rise-of-gru-poster.jpg', '', 1, '2', '2', '1,2', '', 6, '0000-00-00', '2023-07-15 22:14:00'),
(13, 'the death and return of superman', 'death-and-return-of-superman.jpg', '', 1, '2', '2', '2,13', '', 5, '0000-00-00', '2023-07-15 22:14:11'),
(14, 'child of kamiari month', 'child-of-kamiari-month.jpeg', '', 4, '2', '2', '2', '', 5, NULL, '2023-06-18 13:25:59'),
(15, 'drifting home', 'drifting-home.jpeg', '', 4, '2', '2', '2', '', 6, NULL, '2023-06-18 13:26:21'),
(16, 'flavours of youth', 'flavours-of-youth.jpg', '', 4, '2', '2', '2,7,8', '', 7, NULL, '2023-06-18 13:26:44'),
(17, 'the garden of words', 'the-garden-of-words.jpg', '', 4, '2', '2', '2,8', '', 7, NULL, '2023-06-18 13:27:08'),
(18, 'a whisker away', 'a-whisker-away.jpg', '', 4, '2', '2', '2', '', 5, NULL, '2023-06-18 13:27:29'),
(19, 'a silent voice', 'a-silent-voice.jpg', '', 4, '2', '2', '2', '<p style=\"margin: 0.5em 0px;\" class=\"\">An elementary school student named Shōya Ishida and his friends bully Shōko Nishimiya, a transfer student who was born deaf. When word of the bullying reaches the principal, Shōya is framed as the sole perpetrator by his friends. Shōya blames Shōko when she tries to help him and they get into a physical altercation, the latter being subsequently transferred to another school with Shōya keeping her notebook.﻿</p><p style=\"margin: 0.5em 0px;\">His reputation as a bully following him through middle school, Shōya becomes a depressed loner in high school who eventually believes suicide is his only absolution. But he decides to first to make amends with those he has wronged before ending his life. Shōya reconciles with Shōko when returning her notebook at the sign language center she is attending, realizing she is still lonely due to her shyness. At that time, he is also befriended by Tomohiro Nagatsuka, a similar friendless classmate who feels indebted to Shōya for saving him from a bully.</p><p style=\"margin: 0.5em 0px;\">Shōya would try to meet up with Shōko to help her feed koi in the river much to the ire of her younger sister Yuzuru, who takes advantage of Shōya illegally jumping into the river to retrieve Shōko\'s notebook to take a photo of the incident and post it online to have him suspended from school. When Yuzuru runs away from home, Shōya offers to let her stay at his house, and the two reconcile.</p><p style=\"margin: 0.5em 0px;\">Shōya helps Shōko reconnect with Miyoko Sahara, a kind classmate who genuinely befriended Shōko and is currently in the same school as Naoka Ueno, who also bullied Shōko and weasels back into Shōya\'s life. Shōko also meets Miki Kawai, her elementary school class president who now attends the same school as Shōya and is in a relationship with Satoshi Mashiba. Shōko later gives Shōya a gift and verbally confesses her feelings for him, but runs off upset when Shōya mishears her. Shōya invites Shōko to an amusement park with Tomohiro, Miyoko, Miki, and Satoshi. They are joined by Naoka, who is infatuated with Shōya while trying to reconnect him with their old friends.</p><p style=\"margin: 0.5em 0px;\">Naoka also bears a grudge on Shōko for Shōya\'s misfortune, Yuzuru secretly recording the encounter for Shōya to see. This leads to the group having a falling out when Miki exposes Shōya\'s past to the others in desperation to remain blameless in Shōko\'s bullying while Shōya isolates himself from everyone but the Nishimiyas. After Shōko and Yuzuru\'s grandmother passes away, Shōya takes them to the countryside to cheer them up, where he realizes that Shōko blames herself for everything that has happened to him. Shōya decides to devote his entire social life to the sisters.</p><p style=\"margin: 0.5em 0px;\">During a fireworks festival, Shōko leaves early, ostensibly to finish her homework. Shōya follows her to retrieve Yuzuru\'s camera, finding Shōko preparing to jump from her balcony. Shōya manages to stop her, only to fall into the river below. He is rescued by his former friends, but is rendered comatose.</p><p style=\"margin: 0.5em 0px;\">One night, Shōko dreams about receiving a farewell visit from Shōya. Shōya awakens from his coma and makes his way to the bridge, where he finds Shōko weeping. He apologizes for bullying her and tells her not to blame herself for how his life has turned out. He also admits his original plan to commit suicide, but has decided against it while asking Shōko to help him keep living, to which she agrees.</p><p style=\"margin: 0.5em 0px;\" class=\"\">When Shōya returns to school, he reunites with his friends and realizes how much they still care for him. As they all go to the school festival together, Shōya tears up, realizing he has finally redeemed himself as he stopped ignoring everyone around him.</p>', 5, '1970-01-01', '2024-02-20 20:37:53'),
(20, 'the devil\'s hour', 'the-devils-hour-29102022.jpg', '', 1, '1', '1', '6', '', 5, '2022-10-28', '2024-02-21 23:04:28'),
(21, 'naruto', 'naruto-poster.jpg', '', 4, '1', '2', '1,2,4,14', '', 9, NULL, '2023-06-25 19:55:53'),
(22, 'fairy tail', 'fairy-tail-poster.jpg', '', 4, '1', '2', '1,2', '', 5, NULL, '2023-06-25 19:56:20'),
(23, 'dota - dragons blood', 'dota-dragons-blood-mini.jpg', '', 1, '1', '2', '1,2,16', '', 5, '0000-00-00', '2023-07-15 22:14:34'),
(24, 'im standing on a million lives', 'im-standing-on-a-million-lives-poster.jpg', '', 4, '1', '2', '1,2', '', 6, NULL, '2023-06-25 19:57:36'),
(25, 'kaguyasama - love is war', 'kaguya-sama-love-is-war-poster.jpg', '', 4, '1', '2', '2,4', '', 5, '2019-01-12', '2023-07-27 04:18:48'),
(26, 'b - the beginning', 'b-the-beginning-poster.jpg', '', 4, '1', '2', '2', '<p><br></p>', 5, '2018-03-02', '2023-07-27 04:17:58'),
(27, 'tokyo ghoul', 'tokyo-ghoul-poster.jpg', '', 4, '1', '2', '2,5,15', '', 7, '2014-07-03', '2023-07-27 04:17:02'),
(28, 'tokyo ghoul : re', 'tokyo-ghoul-re-poster.jpg', '', 4, '1', '2', '1,2,5', '', 7, '2018-06-19', '2023-07-27 04:16:30'),
(29, 'cyberpunk edgerunners', 'cyberpunk-edgerunners.jpg', '', 1, '1', '2', '2,9', '<p><br></p>', 5, '2022-09-13', '2023-07-27 04:14:19'),
(30, 'chainsaw man', 'chainsaw-man.jpg', '', 4, '1', '2', '2,6,9,10', '', 6, '2022-10-12', '2023-07-27 04:13:35'),
(31, 'takt op - destiny', 'takt-op-destiny-series.jpg', '', 4, '1', '2', '2,9', '', 5, '2021-10-06', '2023-07-27 04:12:55'),
(32, 'the promised neverland', 'the-promised-neverland.jpg', '', 4, '1', '2', '2,10', '', 5, '2019-04-14', '2023-07-27 04:12:02'),
(33, 'haikyu', 'haikyu!!-series.jpg', '', 4, '1', '2', '2,3', '', 6, '2014-04-06', '2023-07-27 04:11:22'),
(34, 'the eminence in shadow (kage no jitsuryokusha ni naritakute)', 'kage-no-jitsuryokusha-ni-naritakute-the-eminence-in-shadow.jpg', '', 4, '1', '2', '2,6,9', '', 7, '2022-10-05', '2023-07-27 04:10:12'),
(35, 'knights of the zodiac', 'knights-of-the-zodiac-28042023.jpg', '26,27,28,29', 1, '2', '1', '9,11', '<p>When a headstrong street orphan unwittingly taps into hidden powers, he discovers he might be the only person alive who can protect a reincarnated goddess who was sent to watch over humanity.<br></p>', 3, '2023-04-28', '2024-02-12 22:26:22'),
(36, 'logan', 'logan-03032017.jpg', '1,24,25', 1, '2', '1', '9,13', '<p>In the near future, a weary Logan (Hugh Jackman) cares for an ailing Professor X (Patrick Stewart) at a remote outpost on the Mexican border. His plan to hide from the outside world gets upended when he meets a young mutant (Dafne Keen) who is very much like him. Logan must now protect the girl and battle the dark forces that want to capture her.<br></p>', 6, '2023-04-28', '2024-02-12 22:26:11'),
(71, 'adipurush', 'adipurish-11082023.jpg', '11,13,16,18,20,21', 2, '2', '1', '1', 'Raghav, the prince of the Ikshvaku dynasty from Kosala, tries to rescue his wife, Janaki, from the demon king Lankesh.<br>', 2, '2023-08-11', '2024-02-12 22:25:29'),
(72, 'ant-man', 'ant-man-24072015.jpg', '30,31', 1, '2', '1', '9,12,13', '<p>Forced out of his own company by former protégé Darren Cross, Dr. Hank Pym (Michael Douglas) recruits the talents of Scott Lang (Paul Rudd), a master thief just released from prison. Lang becomes Ant-Man, trained by Pym and armed with a suit that allows him to shrink in size, possess superhuman strength and control an army of ants. The miniature hero must use his new skills to prevent Cross, also known as Yellowjacket, from perfecting the same technology and using it as a weapon for evil.<br></p>', 7, '2015-07-24', '2024-02-18 15:43:24'),
(73, 'ant-man and the wasp', 'ant-man-and-the-wasp-06072018.jpg', '30,31', 1, '2', '1', '9,12,13', '<p>Scott Lang is grappling with the consequences of his choices as both a superhero and a father. Approached by Hope van Dyne and Dr. Hank Pym, Lang must once again don the Ant-Man suit and fight alongside the Wasp. The urgent mission soon leads to secret revelations from the past as the dynamic duo finds itself in an epic battle against a powerful new enemy.</p>', 7, '2018-07-06', '2024-02-18 15:52:08'),
(74, 'ant-man and the wasp - quantumania', 'ant-man-and-the-wasp-quantumania-17022023.jpg', '30,31,32', 1, '2', '1', '9,12,13', '<p>Ant-Man and the Wasp find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that pushes them beyond the limits of what they thought was possible.<br></p>', 7, '2023-02-07', '2024-02-18 16:00:55'),
(75, 'bholaa', 'bhola-30032023.jpg', '33,34', 2, '2', '1', '1,5,9', '<p>After 10 years of imprisonment, Bholaa is finally going home to meet his young daughter. However, his journey is not so simple as he soon faces a pathway full of crazy obstacles, with death lurking around every corner.<br></p>', 3, '2023-03-30', '2024-02-18 18:14:37'),
(76, 'big george foreman', 'big-george-foreman-28042023.jpg', '35,36,37,38', 1, '2', '1', '3,9', '<p>From Olympic Gold medalist to World Heavyweight champion, boxer George Foreman leads a remarkable life. He finds his faith, retires and becomes a preacher. When financial hardship hits his family and church, George steps back in the ring and regains the championship at age 45, becoming the oldest heavyweight champion in boxing history.<br></p>', 3, '2023-04-28', '2024-02-18 17:02:33'),
(77, 'black panther', 'black-panther-14022018.jpg', '39,40,41,42,43,44,45', 1, '2', '1', '9,13', '<p>After the death of his father, T\'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T\'Challa\'s mettle as king -- and as Black Panther -- gets tested when he\'s drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.<br></p>', 4, '2018-02-14', '2024-02-18 18:01:57'),
(78, 'cobweb', 'cobweb-21072023.jpg', '3,23,46,47', 1, '2', '1', '10', '<p>Young Peter is plagued by a mysterious, constant noise from inside his bedroom wall -- a tapping that his parents insist is in his imagination. As his fear intensifies, he starts to believe that his parents are hiding a terrible and dangerous secret.<br></p>', 2, '2023-07-21', '2024-02-18 18:14:07'),
(79, 'cocaine bear', 'cocaine-bear-24022023.jpg', '48,49,50,51,52,53', 1, '2', '1', '1,5,9', '<p>A 227kg black bear consumes a significant amount of cocaine and embarks on a drug-fuelled rampage through a Georgia forest, endangering the lives of cops, criminals, tourists and teenagers.<br></p>', 4, '2023-09-24', '2024-02-18 18:38:07'),
(80, 'constantine', 'constantine-25022006.jpg', '54,55,56', 1, '2', '1', '6,9,10', '<p>As a suicide survivor, demon hunter John Constantine (Keanu Reeves) has literally been to hell and back -- and he knows that when he dies, he\'s got a one-way ticket to Satan\'s realm unless he can earn enough goodwill to climb God\'s stairway to heaven. While helping policewoman Angela Dodson (Rachel Weisz) investigate her identical twin\'s apparent suicide, Constantine becomes caught up in a supernatural plot involving both demonic and angelic forces. Based on the DC/Vertigo \"Hellblazer\" comics.<br></p>', 6, '2005-02-25', '2024-02-19 21:24:22'),
(81, 'tu jhoothi main makkar', 'tu-jhoothi-main-makkaar-08032023.jpg', '57,58,59', 2, '2', '1', '8', '<p>Mickey, a carefree businessman and womaniser, helps couples break up. However, things change for him when he falls for Tinni, a witty and beautiful chartered accountant.<br></p>', 5, '2023-03-08', '2024-02-19 22:33:52'),
(82, 'ghost rider', 'ghost-rider-16022007.jpg', '60,61', 1, '2', '1', '9,13', '<p>Years ago, motorcycle stuntman Johnny Blaze (Nicolas Cage) sold his soul to save the life of a loved one. Now, he transforms into a fiery, avenging agent of justice at night wherever evil roams. As the only one who can walk in both worlds, Johnny is charged by Mephistopheles (Donal Logue) himself to destroy Blackheart (Wes Bentley), a demon that wants to overthrow Mephistopheles and create a worse hell than the one that currently exists.<br></p>', 7, '2007-02-16', '2024-02-20 02:48:59'),
(83, 'fbi', 'fbi-series-25092018.jpg', '62,63,64,65,66,67,68,69,70', 1, '1', '1', '1,5,9', '<p>The series&nbsp;centers on inner workings of the New York City field office criminal division of the Federal Bureau of Investigation (FBI). This elite unit brings to bear all their talents, intellect, and technical expertise on major cases in order to keep New York and the country safe.<br></p>', 7, '2018-09-25', '2024-02-20 22:50:15'),
(84, 'game of thrones', 'game-of-thrones-17042011.jpg', '', 1, '1', '1', '1,11', '<p>The planet on which Westeros is found has seasons of variable lengths, with summers and winters often lasting for many years.&nbsp;The series focuses on several noble houses of Westeros and a complicated, multiparty war for the Iron Throne that features shifting conflicts, alliances, and betrayals<br></p>', 8, '2011-04-17', '2024-02-20 23:01:18'),
(85, 'gotham knights', 'gotham-knights-21102022.jpg', '', 1, '1', '1', '9,13', '', 2, '2022-10-21', '2024-02-20 23:45:54'),
(86, 'greys anatomy', 'greys-anatomy-27032005.jpg', '', 1, '1', '1', '8,17', '', 7, '2005-03-27', '2024-02-20 23:45:38'),
(87, 'hawkeye', 'hawkeye-24112021.jpg', '', 1, '1', '1', '1,9,13', '', 7, '2021-11-24', '2024-02-20 23:45:00'),
(88, 'house of the dragon', 'house-of-the-dragon-21082022.jpg', '', 1, '1', '1', '1,9,11', '', 7, '2022-08-21', '2024-02-20 23:44:43'),
(89, 'legacies', 'legacies-25102018.jpeg', '', 1, '1', '1', '9,11', '', 4, '2018-10-25', '2024-02-20 23:48:25'),
(90, 'fbi - most wanted', 'fbi-most-wanted-07012020.jpg', '', 1, '1', '1', '1,5,9', '', 6, '2020-01-07', '2024-02-21 21:16:55'),
(91, 'moon knight', 'moon-knight-30032022.jpg', '', 1, '1', '1', '9,13', '', 5, '2022-03-30', '2024-02-21 21:18:33'),
(92, 'see', 'see-series-01112019.jpg', '', 1, '1', '1', '1,9,15', '', 5, '2019-11-01', '2024-02-21 21:19:38'),
(93, 'superman and lois', 'superman-and-lois-series-23022021.jpg', '', 1, '1', '1', '9,13', '', 4, '2021-02-23', '2024-02-21 21:20:59'),
(94, 'supernatural', 'supernatural-series-13092005.jpg', '', 1, '1', '1', '1,9,10,15', '', 9, '2005-09-13', '2024-02-21 21:22:35'),
(95, 'swamp thing', 'swamp-thing-series-31052019.jpg', '', 1, '1', '1', '1,9,10', '', 5, '2019-05-31', '2024-02-21 21:23:59'),
(96, 'sweet tooth', 'sweet-tooth-series-04062021.jpg', '', 1, '1', '1', '1,9,11', '', 6, '2021-06-04', '2024-02-21 21:25:44'),
(97, 'the last of us', 'the-last-of-us-series-15012023.jpg', '', 1, '1', '1', '1,9,10', '', 5, '2023-01-15', '2024-02-21 21:27:01'),
(98, 'the night agent', 'the-night-agent-series-23032023.jpg', '', 1, '1', '1', '9,15', '', 5, '2023-03-23', '2024-02-21 21:30:49'),
(99, 'silo', 'the-silo-series-05052023.jpg', '', 1, '1', '1', '1,9,15', '', 7, '2023-05-05', '2024-02-21 21:33:09'),
(100, 'the witcher blood origin', 'the-witcher-blood-origin-series-25122022.jpg', '', 1, '1', '1', '1,9', '', 9, '2022-12-25', '2024-02-21 21:38:58'),
(101, 'the witcher', 'the-witcher-series-20122019.jpg', '', 1, '1', '1', '1,9', '', 9, '2019-12-20', '2024-02-21 21:40:36'),
(102, 'titans', 'titans-series-12102018.jpg', '', 1, '1', '1', '1,9,13', '', 9, '2018-10-12', '2024-02-21 21:41:44'),
(103, 'true blood', 'true-blood-series-07092008.jpg', '', 1, '1', '1', '1,6,9,10,15', '', 9, '2008-09-07', '2024-02-21 21:46:19'),
(104, 'wednesday', 'wednesday-series-23112022.jpg', '', 1, '1', '1', '1,9,10', '', 7, '2022-11-23', '2024-02-21 21:47:55'),
(105, '65', '65-movie-02032023.jpg', '', 1, '2', '1', '1,9', '', 3, '2023-03-02', '2024-02-21 22:04:37'),
(106, 'avengers', 'avengers-movie-27042012.jpg', '', 1, '2', '1', '9,13,15', '', 9, '2012-04-27', '2024-02-21 22:07:36'),
(107, 'black adam', 'black-adam-movie-21102022.jpg', '', 1, '2', '1', '9,13', '', 8, '2022-10-21', '2024-02-21 22:08:53'),
(108, 'black widow', 'black-widow-movie-09072021.jpg', '', 1, '2', '1', '9,13', '', 9, '2021-07-09', '2024-02-21 22:10:09'),
(109, 'brightburn', 'brightburn-movie-24052019.jpg', '', 1, '2', '1', '9,10', '', 5, '2019-05-24', '2024-02-21 22:11:39'),
(110, 'extraction', 'extraction-movie-24042020.jpg', '', 1, '2', '1', '1,5,9', '', 7, '2020-04-24', '2024-02-21 22:22:17'),
(111, 'extraction 2', 'extraction-2-movie-16062023.jpg', '', 1, '2', '1', '1,9,15', '', 7, '2023-06-16', '2024-02-21 22:24:07'),
(112, 'grimcutty', 'grimcutty-movie-06102022.jpg', '', 1, '2', '1', '10', '', 5, '2022-10-06', '2024-02-21 22:26:25'),
(113, 'it chapter 1', 'it-chapter-one-movie-08092017.jpg', '', 1, '2', '1', '1,10', '', 6, '2017-09-08', '2024-02-21 22:28:53'),
(114, 'it chapter 2', 'it-chapter-two-movie-06092019.jpg', '', 1, '2', '1', '10', '', 7, '2019-09-06', '2024-02-21 22:30:19'),
(115, 'kantara', 'kantara-movie-30092022.jpg', '', 3, '2', '1', '1,10', '', 6, '2022-09-30', '2024-02-21 22:31:56'),
(116, 'limitless', 'limitless-movie-29042011.jpg', '', 1, '2', '1', '1,9', '', 6, '2011-04-29', '2024-02-21 22:33:13'),
(117, 'mama', 'mama-movie-08022013.jpg', '', 1, '2', '1', '10', '', 6, '2013-02-08', '2024-02-21 22:37:34'),
(118, 'mirrors', 'mirrors-movie-15082008.jpg', '', 1, '2', '1', '10', '', 4, '2008-08-15', '2024-02-21 22:39:14'),
(119, 'oculus', 'oculus_movie-11042014.jpg', '', 1, '2', '1', '10', '', 4, '2014-04-11', '2024-02-21 22:40:30'),
(120, 'prey', 'prey-movie-21072022.jpg', '', 1, '2', '1', '9,10', '', 6, '2022-07-21', '2024-02-21 22:43:06'),
(121, 'rings', 'rings-movie-01022017.jpg', '', 1, '2', '1', '10', '', 7, '2017-02-01', '2024-02-21 22:44:09'),
(122, 'shazam fury of the gods', 'shazam-fury-of-the-gods-movie-17032023.jpg', '', 1, '2', '1', '9,13', '', 4, '2023-03-17', '2024-02-21 22:46:47'),
(123, 'shazam', 'shazam-movie-05042019.jpg', '', 1, '2', '1', '9,13', '', 4, '2019-04-05', '2024-02-21 22:48:25'),
(124, 'spiderman', 'spiderman-movie-24052002.jpg', '', 1, '2', '1', '9,13', '', 8, '2002-05-24', '2024-02-21 22:50:03'),
(125, 'terminator', 'terminator-movie-26101984.jpg', '', 1, '2', '1', '9,15', '', 8, '1984-10-26', '2024-02-21 22:55:29'),
(126, 'the grudge', 'the-grudge-movie-22102004.jpg', '', 1, '2', '1', '10', '', 7, '2004-10-22', '2024-02-21 22:54:58'),
(127, 'the grudge 2', 'the-grudge-2-movie-13102006.jpg', '', 1, '2', '1', '10', '', 7, '2006-10-13', '2024-02-21 22:56:42'),
(128, 'the grudge 3', 'the-grudge-3-movie-12052009.jpg', '', 1, '2', '1', '10', '', 7, '2009-05-12', '2024-02-21 22:57:40'),
(129, 'vikrant rona', 'vikrant-rona-28072022.jpg', '', 3, '2', '1', '6,9', '', 5, '2022-07-28', '2024-02-21 22:59:02'),
(130, 'virupaksha', 'virupaksha-21042023.jpg', '', 7, '2', '1', '8,10', '', 3, '2023-04-21', '2024-02-21 23:01:01'),
(131, 'megan', 'megan-movie-06012023.jpg', '', 1, '2', '1', '10,12', '', 4, '2023-01-06', '2024-02-21 23:32:38'),
(132, 'cursed', 'cursed-series-17072020.jpg', '', 1, '1', '1', '1,9', '', 5, '2020-07-17', '2024-02-21 23:34:08');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
