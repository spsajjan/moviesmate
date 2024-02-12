-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 12, 2024 at 07:29 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(23, 'woody', 'norman', 'woody-norman-sq.jpg', '', '', 'male', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(9, 'action', 'gun-pistol-bullets-illustration.jpg'),
(10, 'horror', 'horror-3773795.png'),
(11, 'fantasy', 'if-fairy-2913099_88825.png'),
(12, 'sci-fi', 'sci-fi-4114764.png'),
(13, 'superhero', 'superhero-1625667.png'),
(14, 'teen', 'teenager-4137049.png'),
(15, 'thriller', 'thriller-4114756.png'),
(16, 'war', 'world-war-6981408.png');

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title`, `img_url`, `casts`, `lang`, `category`, `type`, `genre`, `content`, `rating`, `released_dt`, `added_dt`) VALUES
(1, 'asur', 'asur-poster.jpg', '4,5,6,14', 2, '1', '1', '5,6,15,16', '<p><font face=\"sans-serif\"><span style=\"font-size: 14px;\">The series is about a team of forensic experts who must catch a serial killer who considers himself a reincarnation of the asura Kali.&nbsp;Asur follows Nikhil Nair, a forensic-expert-turned-teacher, who returns to his roots at the Central Bureau of Investigation, and along with his former mentor Dhananjay Rajpoot, finds himself caught in a cat and mouse game with a brutal serial killer.&nbsp;</span></font><span style=\"font-size: 14px; font-family: sans-serif;\">A psychopath killer with a twisted philosophy deep-seated in Indian mythology is on the loose. Two forensic officers from the CBI are close on heals to catch the serial killer.</span></p><p><span style=\"font-size: 14px; font-family: sans-serif;\">The killer uses modern day technology such as deep fake videos and sound bomb technology, to raise havoc and destroy peace amongst humans and disrupt the harmony. The killer wants to force the birth of Kalki which will be the end of Kalyug according to Indian mythology, so he is bent on killing people and making a show of Kalyug. He finds his targets for killing, using a artificial intelligence machine which gives him the best targets.</span></p><p><fontnface=\"sans-serif\"><span style=\"font-size: 14px;\"><br></span><br></fontnface=\"sans-serif\"></p>', 7, '2020-03-02', '2024-02-12 12:24:57'),
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
(19, 'a silent voice', 'a-silent-voice.jpg', '', 4, '2', '2', '2', '<p style=\"margin: 0.5em 0px;\" class=\"\"><span style=\"font-size: 18px;\">An elementary school student named Shōya Ishida and his friends bully Shōko Nishimiya, a transfer student who was born deaf. When word of the bullying reaches the principal, Shōya is framed as the sole perpetrator by his friends. Shōya blames Shōko when she tries to help him and they get into a physical altercation, the latter being subsequently transferred to another school with Shōya keeping her notebook.</span><span style=\"font-size: 18px;\">﻿</span></p><p style=\"margin: 0.5em 0px;\"><span style=\"font-size: 18px;\">His reputation as a bully following him through middle school, Shōya becomes a depressed loner in high school who eventually believes suicide is his only absolution. But he decides to first to make amends with those he has wronged before ending his life. Shōya reconciles with Shōko when returning her notebook at the sign language center she is attending, realizing she is still lonely due to her shyness. At that time, he is also befriended by Tomohiro Nagatsuka, a similar friendless classmate who feels indebted to Shōya for saving him from a bully.</span></p><p style=\"margin: 0.5em 0px;\"><span style=\"font-size: 18px;\">Shōya would try to meet up with Shōko to help her feed koi in the river much to the ire of her younger sister Yuzuru, who takes advantage of Shōya illegally jumping into the river to retrieve Shōko\'s notebook to take a photo of the incident and post it online to have him suspended from school. When Yuzuru runs away from home, Shōya offers to let her stay at his house, and the two reconcile.</span></p><p style=\"margin: 0.5em 0px;\"><span style=\"font-size: 18px;\">Shōya helps Shōko reconnect with Miyoko Sahara, a kind classmate who genuinely befriended Shōko and is currently in the same school as Naoka Ueno, who also bullied Shōko and weasels back into Shōya\'s life. Shōko also meets Miki Kawai, her elementary school class president who now attends the same school as Shōya and is in a relationship with Satoshi Mashiba. Shōko later gives Shōya a gift and verbally confesses her feelings for him, but runs off upset when Shōya mishears her. Shōya invites Shōko to an amusement park with Tomohiro, Miyoko, Miki, and Satoshi. They are joined by Naoka, who is infatuated with Shōya while trying to reconnect him with their old friends.</span></p><p style=\"margin: 0.5em 0px;\"><span style=\"font-size: 18px;\">Naoka also bears a grudge on Shōko for Shōya\'s misfortune, Yuzuru secretly recording the encounter for Shōya to see. This leads to the group having a falling out when Miki exposes Shōya\'s past to the others in desperation to remain blameless in Shōko\'s bullying while Shōya isolates himself from everyone but the Nishimiyas. After Shōko and Yuzuru\'s grandmother passes away, Shōya takes them to the countryside to cheer them up, where he realizes that Shōko blames herself for everything that has happened to him. Shōya decides to devote his entire social life to the sisters.</span></p><p style=\"margin: 0.5em 0px;\"><span style=\"font-size: 18px;\">During a fireworks festival, Shōko leaves early, ostensibly to finish her homework. Shōya follows her to retrieve Yuzuru\'s camera, finding Shōko preparing to jump from her balcony. Shōya manages to stop her, only to fall into the river below. He is rescued by his former friends, but is rendered comatose.</span></p><p style=\"margin: 0.5em 0px;\"><span style=\"font-size: 18px;\">One night, Shōko dreams about receiving a farewell visit from Shōya. Shōya awakens from his coma and makes his way to the bridge, where he finds Shōko weeping. He apologizes for bullying her and tells her not to blame herself for how his life has turned out. He also admits his original plan to commit suicide, but has decided against it while asking Shōko to help him keep living, to which she agrees.</span></p><p style=\"margin: 0.5em 0px;\" class=\"\"><span style=\"font-size: 18px;\">When Shōya returns to school, he reunites with his friends and realizes how much they still care for him. As they all go to the school festival together, Shōya tears up, realizing he has finally redeemed himself as he stopped ignoring everyone around him.</span></p>', 5, NULL, '2023-06-23 12:15:57'),
(20, 'the devil\'s hour', 'the-devils-hour-poster.jpg', '', 1, '1', '1', '6', '', 5, '0000-00-00', '2023-07-15 22:03:30'),
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
(35, 'knights of the zodiac', 'knights-of-the-zodiac-poster.jpg', '', 1, '2', '1', '9,11', '<p>When a headstrong street orphan unwittingly taps into hidden powers, he discovers he might be the only person alive who can protect a reincarnated goddess who was sent to watch over humanity.<br></p>', 3, '2023-04-28', '2023-07-29 21:22:17'),
(36, 'logan', 'logan-poster.jpg', '', 1, '2', '1', '9,13', '<p><br></p>', 6, '2023-04-28', '2023-07-29 21:27:12');

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
