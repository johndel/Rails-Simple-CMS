-- phpMyAdmin SQL Dump
-- version 3.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 03, 2012 at 07:19 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.2-1ubuntu4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gscms_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, 'Menu', '2011-12-28 13:03:46', '2011-12-29 08:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `mercury_images`
--

CREATE TABLE IF NOT EXISTS `mercury_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `mercury_images`
--

INSERT INTO `mercury_images` (`id`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`, `created_at`, `updated_at`) VALUES
(2, 'undefined', 'image/gif', 58, '2011-12-24 14:43:22', '2011-12-24 14:43:22', '2011-12-24 14:43:22'),
(3, 'undefined', 'image/gif', 825, '2011-12-24 14:43:29', '2011-12-24 14:43:29', '2011-12-24 14:43:29'),
(4, 'undefined', 'image/gif', 58, '2011-12-24 14:44:06', '2011-12-24 14:44:06', '2011-12-24 14:44:06'),
(5, 'undefined', 'image/png', 327, '2011-12-24 17:07:31', '2011-12-24 17:07:31', '2011-12-24 17:07:31'),
(6, 'undefined', 'image/png', 327, '2011-12-29 14:11:41', '2011-12-29 14:11:42', '2011-12-29 14:11:42'),
(7, 'undefined', 'image/png', 539, '2011-12-29 14:11:59', '2011-12-29 14:11:59', '2011-12-29 14:11:59'),
(8, 'undefined', 'image/png', 350, '2011-12-29 14:12:04', '2011-12-29 14:12:04', '2011-12-29 14:12:04'),
(9, 'undefined', 'image/png', 42818, '2011-12-30 10:36:43', '2011-12-30 10:36:44', '2011-12-30 10:36:44'),
(10, 'undefined', 'image/jpeg', 27587, '2011-12-31 10:08:53', '2011-12-31 10:08:53', '2011-12-31 10:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `meta_description`, `content`, `permalink`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Σχολή', 'Krav Maga - Combat Knife System - Tactical Combat System - Panantukan', 'Διδασκόμενες πολεμικές τέχνες και πρόγραμμα σχολής:\r\nKrav Maga - Combat Knife System - Tactical Combat System - Panantukan: Filipino Street Boxing, γυναικεία αυτοάμυνα. Δείτε το πρόγραμμα της σχολής. Μαθήματα καθημερινά', '', 'martial-arts', 1, '2011-12-23 21:55:25', '2011-12-30 07:18:46'),
(4, 'Σεμινάρια', 'Πρόγραμμα σεμιναρίων αυτοάμυνας και εκπαιδεύσεων', 'Πρόγραμματισμένα ταχύρρυθμα σεμινάρια στο Krav Maga στο σύλλογο πολεμικών τεχνών Α.Σ. Απόλλων Κορυδαλλού. Εκπαίδευση σε ρεαλιστικές καταστάσεις μάχης.', '<div id="left-first" class="rest-pages">\r\n\r\n<h1>Σεμινάρια αυτοάμυνας</h1>\r\nΣεμινάρια σχολής\r\n</div>', 'seminars', 1, '2011-12-28 09:34:40', '2011-12-30 13:36:00'),
(6, 'Αρχική', 'Krav Maga - Κορυδαλλός - Σχολή πολεμικών τεχνών στην Αθήνα', 'Krav Maga στην Αθήνα. Μάθετε αποτελεσματική αυτοάμυνα μέσα από τη ρεαλιστικότερη πολεμική τέχνη, το Krav Maga. Ταχύρρυθμα τμήματα και σεμινάρια.', '<div id="left-first">						<div id="instructor-photo"></div>						<div id="instructor-name">							<h1>PROTONOTARIOS CHRISTOS <br>Krav Maga Instructor</h1>						</div>						<div id="instructor-text">						<p>							Ο εκπαιδευτής της σχολής <b>Πρωτονοτάριος Χρήστος</b> με 16 χρόνια εμπειρίας στον χώρο των Πολεμικων Τεχνων, ξεκίνησε την ενασχόληση του με τις Πολεμικές Τέχνες όταν ήταν 13 ετών. <br>Είναι <b>KRAV MAGA I.H.S.A.</b> <b>INSTRUCTOR</b> με βαθμό <b>Advance Level 4</b> από την <b>HELLENIC KRAV MAGA FEDERATION</b>							<br><b>COMMANDO KRAV MAGA INSTRUCTOR Level 2</b> από την <b>Combat Survival U.S.A.</b> (Representative in Greece) και έχει επίσης ασχοληθεί με τα εξής συστήματα:						</p>							<hr size="2" width="100%">						<p>								- 5 Χρόνια Shotokan Karate, Kick Boxing<br>- 8 Χρόνια Ninjutsu							<br>- 7 Χρόνια Wing Chun: Chinese Boxing 							<br>- 6 Χρόνια Krav Maga (I.H.S.A.) &amp; Combat Knife System<br>						</p>							<hr size="2" width="100%">						<p>						Άλλες Διακρίσεις και Certifications							<br>- 2η Θέση στο Πανελλήνιο Πρωτάθλημα Ελληνικής Ομοσπονδίας Wu Shu Kung Fu στην κατηγορία -85 κιλα στο Sanda (Μάχη Πλήρους Επαφής)							<br>- Commando Krav Maga							<br>- Τactical Combat System							<br>- Panantukan						</p>						</div></div>						 <br>						<div id="left-rest">						<div>						<h2>Krav Maga<br>The Israeli Contact Combat<br><br></h2>						<p>						<br>						Ο Α.Σ. ΑΠΟΛΛΩΝ Κορυδαλλού είναι μέλος της ΕΛΛΗΝΙΚΗΣ ΟMΟΣΠΟΝΔΙΑΣ KRAV MAGA  και δεν εχει καμία σχέση με άλλη παγκόσμια ομοσπονδία.&nbsp;						<br><br>						Με την συνεργασία μας με την ISRAELI HOMELAND SECURITY ACADEMY operated by Tal Scornic είμαστε σχολή που δίνει πτυχία εκπαιδεύσεων αναγνωρισμένα από το Ισραηλινό Υπουργείο Εθνικής	Άμυνας. 						<br><br>						<strong>Επικοινωνήστε ελεύθερα μαζί μας στο τηλέφωνο 6980106958 για οποιαδήποτε απορία σχετικά με το σύστημα, την λειτουργία της σχολής ή τις εκπαίδεύσεις.</strong>						</p>						</div>						</div>', 'krav-maga', 1, '2011-12-28 10:05:27', '2011-12-30 13:27:10'),
(7, 'Videos', 'Videos εκπαίδευσης Krav Maga', 'Videos και παρουσίαση της εκπαίδευσης στο Krav Maga. Εκπαίδευση σε μαχαίρι και αντίμετώπισης του.', '<div id="left-first" class="rest-pages"><h1>Videos σχετικά με τις πολεμικές τέχνες που διδάσκονται</h1><h2>Krav Maga</h2><hr size="2" width="100%"><h2></h2>Human Weapon<iframe allowfullscreen="true" src="http://www.youtube.com/embed/DwS1JCP0uTQ?wmode=transparent" style="width: 660px; height: 450px;" frameborder="0"></iframe><br><br>Tal Skornik<br><iframe allowfullscreen="true" src="http://www.youtube.com/embed/IjzHIZg9d0s?wmode=transparent" style="width: 660px; height: 450px;" frameborder="0"></iframe><br><br><br>Krav Maga AKMA<iframe allowfullscreen="true" src="http://www.youtube.com/embed/KfgWhEAOJ9A?wmode=transparent" style="width: 660px; height: 450px;" frameborder="0"></iframe><br><br>Operational Krav Maga<iframe allowfullscreen="true" src="http://www.youtube.com/embed/kQCFMCKcB9g?wmode=transparent" style="width: 660px; height: 450px;" frameborder="0"></iframe><br><br><br>Krav Maga Strasbourg<iframe allowfullscreen="true" src="http://www.youtube.com/embed/VNkU9zyHuWw?wmode=transparent" style="width: 660px; height: 450px;" frameborder="0"></iframe><br><br><br><h2>Tactical Knife System (TCS Knfe Fighting Concept)</h2><hr size="2" width="100%"><iframe allowfullscreen="true" src="http://www.youtube.com/embed/Ee-CGZEHi2I?wmode=transparent" style="width: 660px; height: 450px;" frameborder="0"></iframe><br><br><h2>Panantukan<br></h2><hr size="2" width="100%"><iframe allowfullscreen="true" src="http://www.youtube.com/embed/UomjRDA8JjQ?wmode=transparent" style="width: 660px; height: 450px;" frameborder="0"></iframe></div>', 'training-videos', 1, '2011-12-30 07:22:58', '2011-12-30 21:44:56'),
(8, 'Φωτογραφίες', 'Φωτογραφίες από την εκπαίδευση στη σχολή Krav Maga', 'Φωτογραφίες και παρουσίαση της σχολής Α.Σ. Απόλλων Κορυδαλλού. Χώρος 150τ.μ., ιδανικά εξοπλισμένος για άρτια εκπαίδευση στο Krav Maga.', '<div id="left-first" class="rest-pages photo-gallery">\r\n\r\n<h1>Φωτογραφίες από τη σχολή μας</h1>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/85/normal_DSC00669.JPG''>\r\n<img alt='''' src=''/photogallery/85/thumb_DSC00669.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/87/normal_DSC00677.JPG''>\r\n<img alt='''' src=''/photogallery/87/thumb_DSC00677.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/89/normal_DSC00682.JPG''>\r\n<img alt='''' src=''/photogallery/89/thumb_DSC00682.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/90/normal_DSC00685.JPG''>\r\n<img alt='''' src=''/photogallery/90/thumb_DSC00685.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/91/normal_DSC00687.JPG''>\r\n<img alt='''' src=''/photogallery/91/thumb_DSC00687.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/92/normal_DSC00699.JPG''>\r\n<img alt='''' src=''/photogallery/92/thumb_DSC00699.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/93/normal_DSC00701.JPG''>\r\n<img alt='''' src=''/photogallery/93/thumb_DSC00701.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/96/normal_DSC00702.JPG''>\r\n<img alt='''' src=''/photogallery/96/thumb_DSC00702.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/97/normal_DSC00706.JPG''>\r\n<img alt='''' src=''/photogallery/97/thumb_DSC00706.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/98/normal_DSC00707.JPG''>\r\n<img alt='''' src=''/photogallery/98/thumb_DSC00707.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/99/normal_DSC00711.JPG''>\r\n<img alt='''' src=''/photogallery/99/thumb_DSC00711.JPG'' />\r\n</a>\r\n\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/100/normal_DSC00713.JPG''>\r\n<img alt='''' src=''/photogallery/100/thumb_DSC00713.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/101/normal_DSC00714.JPG''>\r\n<img alt='''' src=''/photogallery/101/thumb_DSC00714.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/102/normal_DSC00715.JPG''>\r\n<img alt='''' src=''/photogallery/102/thumb_DSC00715.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/103/normal_DSC00717.JPG''>\r\n<img alt='''' src=''/photogallery/103/thumb_DSC00717.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/104/normal_DSC00721.JPG''>\r\n<img alt='''' src=''/photogallery/104/thumb_DSC00721.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/105/normal_DSC00723.JPG''>\r\n<img alt='''' src=''/photogallery/105/thumb_DSC00723.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/106/normal_DSC00725.JPG''>\r\n<img alt='''' src=''/photogallery/106/thumb_DSC00725.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/109/normal_HPIM1120.jpg''>\r\n<img alt='''' src=''/photogallery/109/thumb_HPIM1120.jpg'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/110/normal_HPIM1121.jpg''>\r\n<img alt='''' src=''/photogallery/110/thumb_HPIM1121.jpg'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/111/normal_HPIM1123.jpg''>\r\n<img alt='''' src=''/photogallery/111/thumb_HPIM1123.jpg'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/112/normal_HPIM1124.jpg''>\r\n<img alt='''' src=''/photogallery/112/thumb_HPIM1124.jpg'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/113/normal_HPIM1126.jpg''>\r\n<img alt='''' src=''/photogallery/113/thumb_HPIM1126.jpg'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/115/normal_HPIM1131.jpg''>\r\n<img alt='''' src=''/photogallery/115/thumb_HPIM1131.jpg'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/116/normal_HPIM1130.jpg''>\r\n<img alt='''' src=''/photogallery/116/thumb_HPIM1130.jpg'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/118/normal_HPIM1132.jpg''>\r\n<img alt='''' src=''/photogallery/118/thumb_HPIM1132.jpg'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/119/normal_HPIM1134.jpg''>\r\n<img alt='''' src=''/photogallery/119/thumb_HPIM1134.jpg'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/120/normal_HPIM1136.jpg''>\r\n<img alt='''' src=''/photogallery/120/thumb_HPIM1136.jpg'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/66/normal_Scan10001.JPG''>\r\n<img alt='''' src=''/photogallery/66/thumb_Scan10001.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/67/normal_Scan10002.JPG''>\r\n<img alt='''' src=''/photogallery/67/thumb_Scan10002.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/68/normal_Scan10003.JPG''>\r\n<img alt='''' src=''/photogallery/68/thumb_Scan10003.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/69/normal_Scan10004.JPG''>\r\n<img alt='''' src=''/photogallery/69/thumb_Scan10004.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/70/normal_Scan10006.JPG''>\r\n<img alt='''' src=''/photogallery/70/thumb_Scan10006.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/72/normal_Scan10005.JPG''>\r\n<img alt='''' src=''/photogallery/72/thumb_Scan10005.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/73/normal_Scan10007.JPG''>\r\n<img alt='''' src=''/photogallery/73/thumb_Scan10007.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/74/normal_Scan10008.JPG''>\r\n<img alt='''' src=''/photogallery/74/thumb_Scan10008.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/75/normal_Scan10009.JPG''>\r\n<img alt='''' src=''/photogallery/75/thumb_Scan10009.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/76/normal_Scan10010.JPG''>\r\n<img alt='''' src=''/photogallery/76/thumb_Scan10010.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/77/normal_Scan10011.JPG''>\r\n<img alt='''' src=''/photogallery/77/thumb_Scan10011.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/78/normal_Scan10012.JPG''>\r\n<img alt='''' src=''/photogallery/78/thumb_Scan10012.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/79/normal_Scan10020.JPG''>\r\n<img alt='''' src=''/photogallery/79/thumb_Scan10020.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/80/normal_Scan10017.JPG''>\r\n<img alt='''' src=''/photogallery/80/thumb_Scan10017.JPG'' />\r\n</a>\r\n\r\n<a rel=''kravmaga'' href=''/photogallery/81/normal_Scan10018.JPG''>\r\n<img alt='''' src=''/photogallery/81/thumb_Scan10018.JPG'' />\r\n</a>\r\n\r\n</div>', 'photos', 1, '2011-12-30 07:25:08', '2011-12-31 12:37:22'),
(9, 'Συνεργαζόμενα Sites', 'Ιστοσελίδες συνεργατών εκπαιδευτών', 'Ιστοσελίδες από συνεργάτες δασκάλους που διδάσκουν σωστά και βοηθούν στην εξάπλωση των πολεμικών τεχνών Krav Maga - TCS Knife - Panantukan', '<div id="left-first" class="rest-pages">\r\n\r\n<h1>Συνεργάτες εκπαιδευτές</h1>\r\n<a href="http://www.kravmagahellas.com/" target="_blank">Krav Maga Hellas</a>\r\n<br />\r\n\r\n<a href="http://www.baraw.at/" target="_blank">TCS Knife</a>\r\n<br />\r\n\r\n<a href="http://www.panantukan-concept.com" target="_blank">www.panantukan-concept.com</a>\r\n\r\n<br />\r\n<a href="http://www.commandokravmaga.com" target="_blank">www.commandokravmaga.com</a>\r\n\r\n<br />\r\n<a href="http://www.as-kiprioti.co.nr" target="_blank">www.as-kiprioti.co.nr</a>\r\n</div>', 'links', 1, '2011-12-30 07:29:28', '2011-12-30 15:01:09'),
(10, 'Επικοινωνία', 'Επικοινωνία με τη σχολή Krav Maga', 'Στοιχεία επικοινωνίας, πληροφορίες και χάρτης για το πώς θα έρθετε στη σχολή Krav Maga. Τηλέφωνο επικοινωνίας 6980106958', '<div id="left-first" class="rest-pages">\r\n\r\n<h1>Επικοινωνία</h1>\r\n<p>\r\n<strong>Τηλέφωνο</strong>\r\n: 6980106958\r\n<br>\r\n<strong>Διευθυνση</strong>\r\n: Πόντου 10, Κορυδαλλός\r\n<br>\r\n<strong>Ε-mail</strong>\r\n:\r\n<a href="mailto:xristosproto@gmail.com">xristosproto@gmail.com</a>\r\n<br />\r\nΧάρτης προς τη σχολή:\r\n	<iframe width="645" height="450" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps/ms?ie=UTF8&hl=en&msa=0&msid=109775142333645730793.00048445563c08a556a0c&ll=37.972908,23.656375&spn=0.011282,0.027874&z=16&amp;output=embed"></iframe><br />\r\n</div>', 'contact', 1, '2011-12-30 09:05:33', '2011-12-30 16:02:00'),
(11, 'Krav Maga', 'Μαθήματα Krav Maga - Εκπαίδευση στην αυτοάμυνα', 'Μαθήματα και εκπαίδευση krav maga στη σχολή Α.Σ. Απόλλων στον Κορυδαλλό. Μάθετε περισσότερα και δείτε το πρόγραμμα της σχολής.', '<div id="left-first" class="rest-pages">\n\n<h1>Krav Maga</h1>\n\n<h2>Τι είναι το Krav Maga</h2>\n<hr size="2" width="100%">\n\n<p>Το <strong>Krav Maga</strong> (η σημασία των λέξεων στα Εβραϊκά είναι μάχη επαφής - contact fight) είναι ένα σύστημα αυτοάμυνας και μάχης που επινόησαν οι Ισραηλινοί για χρήση στα δύσκολα πεδία των μαχών της Μέσης Ανατολής μετά από μακροχρόνια πείρα και εμπόλεμες καταστάσεις. Αυτό και μόνο αποτελεί την απόδειξη της αποτελεσματικότητάς του.</p>\n\n<p>Συγκεκριμένα δημιουργήθηκε από τον <strong>Imi Lichtenfeld</strong> κατά την διάρκεια της στρατιωτικής του καριέρας στον Ισραηλινό στρατό ως Chief Instructor of Hand to Hand Combat των I .D. F. (Israeli Defense Forces).\n</p>\n\n<p><img src="http://urban-review.com/wp-content/uploads/2010/12/krav-maga.jpg" align="left">Το Krav Maga ξεκίνησε καθαρά ως επιχειρησιακό (Οperational Κrav Μaga) και διδασκόταν αποκλειστικά και μόνο σε ειδικά σώματα του στρατού, της αστυνομίας, των μυστικών υπηρεσιών και ορισμένων ομάδων συνοδευτικής ασφάλειας επισήμων προσώπων του Ισραήλ. Διδάσκεται και περιλαμβάνεται σε όλες τις εκπαιδεύσεις τους όπως αντιτρομοκρατίας, αντισαμποτάζ, ασφάλειας εγκαταστάσεων, ασφάλειας υψηλών προσώπων κ.α., και σήμερα είναι το επίσημο σύστημα αυτοάμυνας και μάχης του Ισραήλ αναγνωρισμένο από τα Υπουργεία Πολιτισμού και Εθνικής Άμυνας. Με την πάροδο των χρόνων προσαρμόστηκε και πέρασε στους Ισραηλινούς πολίτες και την Ευρώπη σαν το πιο πρακτικό και αποτελεσματικό σύστημα αυτοάμυνας. Σήμερα εξελίσσεται σε άκρως δημοφιλή τέχνη που συνδυάζει την σωματική άσκηση και αυτοπροστασία. Διασημότητες του Χόλιγουντ, όπως η Tζένιφερ Λόπεζ, Aντζελίνα Tζολί,  Kάμερον Nτίαζ, Ματ Ντέιμον το έχουν εντάξει ήδη στο πρόγραμμά τους, ενώ πάνω από 200.000 άνθρωποι σε όλο τον κόσμο μυούνται ήδη στα μυστικά του Krav Maga.</p>\n\n<p>Προσαρμοσμένο στις ανάγκες του απλού πολίτη, το Krav Maga βασίζεται στο έμφυτο ένστικτο του ανθρώπου για αυτοσυντήρηση και χρησιμοποιεί χέρια, βραχίονες, αγκώνες, πόδια, γόνατα και κεφάλι, για επιθέσεις σε ευαίσθητα σημεία του σώματος, όπως αυτιά, ματιά, λαιμό ή τη βουβωνική χώρα και άλλα, με απώτερο στόχο την αυτοπροστασία. Απευθύνεται σε όλους, ανεξαρτήτως ηλικίας ή σωματικής κατασκευής, είναι εύκολο στην εκμάθησή του, δεν απαιτεί πολύχρονη εκπαίδευση κι επιπλέον μπορεί να χρησιμοποιηθεί και από άτομα με περιορισμένες κινητικές δυνατότητες.</p>\n\n\n<h2>Imi Lichtenfeld: Ο ιδρυτής του Krav Maga</h2>\n<hr size="2" width="100%">\n<p>O Imi Lichtenfeld γεννήθηκε το 1910 στη Βουδαπέστη. Μεγάλωσε στην Μπρατισλάβα, την πρωτεύουσα της Σλοβακίας σε ένα σπίτι όπου γαλουχήθηκε στον αθλητισμό, τη δικαιοσύνη και τη δυτική μόρφωση. Ο πατέρας του, Samuel Lichtenfeld, ήταν μία ξεχωριστή προσωπικότητα. Στα 13 του ακολούθησε ένα περιπλανώμενο τσίρκο, και για τα επόμενα 20 χρόνια ασχολήθηκε με την πάλη, την άρση βαρών και γενικά με επιδείξεις δύναμης. Για αυτόν το τσίρκο ήταν ένα σχολείο, στο οποίο γνώρισε διάφορους ανθρώπους του αθλητισμού και αρκετών ανορθόδοξων σπορ. Αυτοί του έμαθαν όσα γνώριζαν για τις ενασχολήσεις τους, συμπεριλαμβανομένων και των πολεμικών τεχνών. Με την προτροπή του πατέρα του, ο Imi ασχολήθηκε με αρκετά αθλήματα.</p>\n\n<p>Στην αρχή πρώτευσε στην <img src="http://www.worldwidedojo.com/reality-based/wp-content/uploads/imi-lichtenfeld-hd.jpg" align="left">κολύμβηση και κατόπιν στη γυμναστική, την πάλη και την πυγμαχία. Το 1928 κέρδισε το εθνικό πρωτάθλημα πάλης εφήβων στη Σλοβακία και το 1929 το πρωτάθλημα ανδρών. Την ίδια χρονιά κατέκτησε το πρωτάθλημα πυγμαχίας καθώς  και ένα διεθνές πρωτάθλημα γυμναστικής. Τη δεκαετία που ακολούθησε έστρεψε το ενδιαφέρον του στην πάλη ως αθλητής και ως προπονητής. Όμως, στα μέσα της δεκαετίας του ''30 οι συνθήκες άρχισαν να αλλάζουν στην Μπρατισλάβα. Φασίστες και αντισημιτικές ομάδες άρχισαν να κάνουν την εμφάνισή τους οι οποίες στρεφόντουσαν κατά της εβραϊκής κοινότητας. Ο  Lichtenfeld τέθηκε επικεφαλής μίας ομάδας νεαρών Εβραίων οι  οποίοι είχαν «μαχητική» παιδεία και προσπαθούσαν να εμποδίσουν τις αντισημιτικές ομάδες να εισέλθουν στην περιοχή τους. Από το 1936 μέχρι το 1940, η βία ήταν ατελείωτη.Τ ο 1940 τα πράγματα άρχισαν να γίνονται δύσκολα για τον Imi με αποτέλεσμα να αφήσει φίλους και οικογένεια και να επιβιβαστεί σε ένα πλοίο μεταναστών δραπετεύοντας από τους διώκτες του. Το πλοίο μετά από ένα περιπετειώδες ταξίδι κατάφερε να φτάσει στην Παλαιστίνη και ο Imi στον προορισμό του. Κατατάχθηκε στον εβραϊκό στρατό και από το 1944 άρχισε να εκπαιδεύει στρατιώτες και κομάντος: σωματική ενδυνάμωση, κολύμβηση, πάλη, χρήση μαχαιριού και άμυνα έναντι επιθέσεων με μαχαίρι. Το 1948 όταν ιδρύθηκε το κράτος του Ισραήλ, ανέλαβε επικεφαλής εκπαιδευτής φυσικής εκγύμνασης και Krav Maga στην στρατιωτική σχολή του Ισραήλ. Υπηρέτησε για περίπου 20 χρόνια και κατά τη διάρκειά τους τελειοποίησε την ξεχωριστή του μέθοδο αυτοάμυνας και μάχης με γυμνά χέρια. Η πιο σημαντική προσφορά του ήρθε μετά την απόσυρσή του από την ενεργό δράση όταν ξεκίνησε την προσαρμογή του συστήματος στις ανάγκες ενός πολίτη.</p>\n\n<p>Το Krav Maga τροποποιήθηκε με τέτοιο τρόπο ούτως ώστε να «ταιριάζει» και σε άνδρα και σε γυναίκα χωρίς να απαιτούνται ξεχωριστές σωματικές ικανότητες. Αποτελούσε το κατάλληλο εργαλείο στα χέρια όποιου είχε ανάγκη να προστατεύσει τη ζωή του έναντι σε κάποιον κίνδυνο που θα αντιμετώπιζε στο δρόμο. Για να διαδώσει την τέχνη του ο Imi δημιούργησε δύο εκπαιδευτικά κέντρα, ένα στο Τελ Αβίβ και ένα στη Νατάνια. Ακόμη και κατά τη διάρκεια των τελευταίων ετών της ζωής του, ο Imi Lichtenfeld συνέχισε να επιτηρεί την ανάπτυξη του συστήματος και την πρόοδο των νέων εκπαιδευτών. Στις 9 Ιανουαρίου 1998 άφησε την τελευταία του πνοή.</p> \n\n<h2>Χρονολόγιο Krav Maga</h2><h2>\n<hr size="2" width="100%">\n\n<p>Γεννιέται ο Imi Lichtenfeld. Ένας αθλητής με σημαντικές διακρίσεις: <br>\n- <strong>1930</strong>: Ο Imi τελειοποιεί τη μαχητική τεχνική του στους δρόμους της Μπρατισλάβα. Η κυβέρνηση του Ισραήλ ζητάει από τον Imi Lichtenfeld να αναπτύξει ένα αποτελεσματικό σύστημα αυτοάμυνας.\nΟ Imi αφοσιώνεται στη μεταφορά του Krav Maga στην καθημερινή ζωή.<br>\n- <strong>1978</strong>: Δημιουργείται η Ένωση Krav Maga στο Ισραήλ<br>\n- <strong>1981</strong>: Ο Darren Levine διοργανώνει το 1ο Διεθνές Σεμινάριο Krav Maga στο Ισραήλ<br>\n- <strong>1983</strong>: Δημιουργείται η Αμερικανική Ένωση Krav Maga<br>\n- Σε ηλικία 88 ετών ο Imi Lichtenfeld πεθαίνει\n</p>\n</h2></div>', 'krav-maga-lessons', 1, '2011-12-30 14:21:27', '2011-12-31 10:15:43'),
(12, 'Panantukan', 'Μαθήματα Panantukan: Filipino Street Boxing', 'Παραδίδονται μαθήματα Panantukan: Filipino Street Boxing, στη σχολή Α.Σ. Απόλλων στον Κορυδαλλό. Δείτε το πρόγραμμα.', '<div id="left-first" class="rest-pages">\r\n\r\n<h1>Panantukan: Filippino Street Boxing</h1>\r\nΠληροφορίες για την πολεμική τέχνη Panantukan.\r\n</div>', 'panantukan', 1, '2011-12-30 14:23:02', '2011-12-30 16:04:56'),
(13, 'Combat Knife System', 'Combat Knife System - Israeli Knife Fighting', 'Εκπαίδευση στην χρήση μαχαιριού και στην αντιμετώπιση του μέσα από μια σειρά ειδικών μαθημάτων. ', '<div id="left-first" class="rest-pages">\r\n\r\n<h1>Combat Knife System</h1>\r\nΠληροφορίες για την πολεμική τέχνη Panantukan.\r\n</div>', 'combat-knife-system', 1, '2011-12-30 14:25:23', '2011-12-30 16:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `page_menu_mappings`
--

CREATE TABLE IF NOT EXISTS `page_menu_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `page_position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_menu_mappings_on_menu_id` (`menu_id`),
  KEY `index_page_menu_mappings_on_page_id` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `page_menu_mappings`
--

INSERT INTO `page_menu_mappings` (`id`, `page_id`, `menu_id`, `page_position`, `created_at`, `updated_at`) VALUES
(5, 6, 8, 1, '2011-12-28 13:10:30', '2011-12-28 13:10:30'),
(21, 4, 8, 3, '2011-12-29 14:14:14', '2011-12-29 14:14:14'),
(22, 2, 8, 2, '2011-12-29 14:14:17', '2011-12-29 14:14:17'),
(23, 7, 8, 5, '2011-12-30 07:58:00', '2011-12-30 07:58:00'),
(25, 8, 8, 4, '2011-12-30 07:58:04', '2011-12-30 07:58:04'),
(26, 9, 8, 6, '2011-12-30 07:58:10', '2011-12-30 07:58:10'),
(27, 10, 8, 7, '2011-12-30 09:05:54', '2011-12-30 09:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20111116145957'),
('20111116150414'),
('20111116151253'),
('20111203103544'),
('20111223223320'),
('20111224014852'),
('20111229080546');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 'homepage', NULL, NULL, '2011-12-30 07:30:46'),
(2, 'sidebar', '<div><p>A.S. APOLLON KORYDALLOU							ΔΙΕΥΘΥΝΣΗ : Ποντου 10 , Κορυδαλλος	<br>						ΕΠΙΚΟΙΝΩΝΙΑ : 6980106958							<br><br>							ΣΕΜΙΝΑΡΙΟ ΧΡΗΣΗΣ ΚΑΙ ΑΝΤΙΜΕΤΩΠΙΣΗΣ ΜΑΧΑΙΡΙΟΥ ΦΙΛΙΠΙΝΕΖΙΚΗΣ ΜΕΘΟΔΟΥ T.C.S. - KNIFE FIGHTING CONCEPT							ΗΜΕΡΟΜΗΝΙΑ : ΠΑΡΑΣΚΕΥΗ 14 ΙΑΝΟΥΑΡΙΟΥ 2012,18:00-22:00							EKΠΑΙΔΕΥΤΗΣ : ΠΡΩΤΟΝΟΤΑΡΙΟΣ ΧΡΗΣΤΟΣ							ΤΟΠΟΘΕΣΙΑ : Α.Σ. ΑΠΟΛΛΩΝ ΚΟΡΥΔΑΛΛΟΥ							<br><br>							2ος KYKΛΟΣ ΕΝΤΑΤΙΚΗΣ ΕΚΠΑΙΔΕΥΣΕΩΣ KRAV MAGA I.H.S.A.							ΕΝΑΡΞΗ:ΠΑΡΑΣΚΕΥΗ 3 ΦΕΒΡΟΥΑΡΙΟΥ 2012,09:00							ΛΗΞΗ:ΚΥΡΙΑΚΗ 5 ΦΕΒΡΟΥΑΡΙΟΥ 2012,22:00							<br><br>							ΔΙΑΡΚΕΙΑ:30 ΩΡΕΣ(10 ΩΡΕΣ ΤΗΝ ΗΜΕΡΑ)							<br><br>							ΔΙΔΑΧΘΕΙΣΑ ΥΛΗ: 3 LEVEL KRAV MAGA I.H.S.A.							<br><br>							ΤΟΠΟΘΕΣΙΑ:A.Σ. ΑΠΟΛΛΩΝ ΚΟΡΥΔΑΛΛΟΥ</p></div>', NULL, '2011-12-30 10:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'istoselidas@gmail.com', '$2a$10$IHOGOznkroBmXdIm75WqGe0YOvnDpXuv7aXzLlxrteC/RiVQTf5Ry', 'jVGmJZjBVx5Gz9HxE9rH', '2011-12-23 08:20:52', NULL, 34, '2011-12-29 14:05:26', '2011-12-29 07:58:30', '127.0.0.1', '127.0.0.1', '2011-12-04 00:25:29', '2011-12-29 14:05:26');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
