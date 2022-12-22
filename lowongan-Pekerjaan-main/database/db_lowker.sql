/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - db_lowker
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_lowker` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_lowker`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(51) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_nama` (`admin_nama`),
  CONSTRAINT `fk_admin_login` FOREIGN KEY (`admin_id`) REFERENCES `login` (`login_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `admin` */

/*Table structure for table `calon_pekerja` */

DROP TABLE IF EXISTS `calon_pekerja`;

CREATE TABLE `calon_pekerja` (
  `calon_pekerja_id` int(11) NOT NULL,
  `calon_pekerja_nama_lengkap` varchar(51) NOT NULL,
  `calon_pekerja_alamat` varchar(101) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL,
  `calon_pekerja_jenis_kelamin` enum('L','P') DEFAULT NULL,
  `calon_pekerja_tempat_lahir` varchar(51) DEFAULT NULL,
  `calon_pekerja_tanggal_lahir` date DEFAULT NULL,
  `calon_pekerja_status_pernikahan` enum('Lajang','Menikah','Janda/Duda') DEFAULT NULL,
  `calon_pekerja_email` varchar(51) NOT NULL,
  `calon_pekerja_telepon` varchar(13) DEFAULT NULL,
  `calon_pekerja_pendidikan_terakhir` enum('SD','SMP','SMA','S1','S2') DEFAULT NULL,
  `calon_pekerja_tempat_pendidikan_terakhir` varchar(51) DEFAULT NULL,
  `calon_pekerja_tempat_bekerja_terakhir` varchar(51) DEFAULT NULL,
  `calon_pekerja_pekerjaan_bekerja_terakhir` varchar(51) DEFAULT NULL,
  `calon_pekerja_file_cv` varchar(101) DEFAULT NULL,
  PRIMARY KEY (`calon_pekerja_id`),
  KEY `fk_calon_pekerja_kota` (`kota_id`),
  CONSTRAINT `fk_calon_pekerja_kota` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_calon_pekerja_login` FOREIGN KEY (`calon_pekerja_id`) REFERENCES `login` (`login_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `calon_pekerja` */

insert  into `calon_pekerja`(`calon_pekerja_id`,`calon_pekerja_nama_lengkap`,`calon_pekerja_alamat`,`kota_id`,`calon_pekerja_jenis_kelamin`,`calon_pekerja_tempat_lahir`,`calon_pekerja_tanggal_lahir`,`calon_pekerja_status_pernikahan`,`calon_pekerja_email`,`calon_pekerja_telepon`,`calon_pekerja_pendidikan_terakhir`,`calon_pekerja_tempat_pendidikan_terakhir`,`calon_pekerja_tempat_bekerja_terakhir`,`calon_pekerja_pekerjaan_bekerja_terakhir`,`calon_pekerja_file_cv`) values 
(30,'Aldo','',1,'L','','0000-00-00','Lajang','aldo','','SD','','','',''),
(33,'BAGUS BUDI SATOTO','',1,'L','','0000-00-00','Lajang','bagusbudi1308@gmail.com','','SD','','','',''),
(36,'Aldo','',1,'L','','0000-00-00','Lajang','aldo@z','','SD','','','',''),
(37,'Contoh','',1,'L','','0000-00-00','Lajang','contoh','','SD','','','',''),
(38,'budi','',1,'L','','0000-00-00','Lajang','budi123','','SD','','','',''),
(39,'JokoWI','',1,'L','','0000-00-00','Lajang','jokowi@gmail.com','','SD','','','',''),
(41,'widi','',1,'L','','0000-00-00','Lajang','kadekwidi868@gmail.com','','SD','','','',''),
(42,'kevin','Bali',25,'L','Nyalian','2022-12-20','Lajang','mutiaraorlanda9f23@gmail.com','0776876','SD','SMA 7','Bali','Manager','kevin20221220104817.jfif'),
(46,'I KADEK WIDI ADNYANA','',1,'L','','0000-00-00','Lajang','ikdwidiadnyana@gmail.com','','SD','','','',''),
(47,'BAYU JAWA','',1,'L','','0000-00-00','Lajang','BAYU@GMAIL.COM','','SD','','','',''),
(48,'jikode','',1,'L','','0000-00-00','Lajang','jikode@gmail.com','','SD','','','','');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(100) NOT NULL,
  PRIMARY KEY (`kategori_id`),
  UNIQUE KEY `kategori_nama` (`kategori_nama`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kategori` */

insert  into `kategori`(`kategori_id`,`kategori_nama`) values 
(22,'Keberangkatan Ke Arab'),
(20,'Keberangkatan Ke Australia'),
(15,'Keberangkatan Ke India'),
(19,'Keberangkatan Ke Inggris'),
(14,'Keberangkatan Ke Jepang'),
(18,'Keberangkatan Ke Jerman'),
(16,'Keberangkatan Ke Korea'),
(21,'Keberangkatan Ke Malaysia'),
(17,'Keberangkatan Ke Taiwan');

/*Table structure for table `kota` */

DROP TABLE IF EXISTS `kota`;

CREATE TABLE `kota` (
  `kota_id` int(11) NOT NULL AUTO_INCREMENT,
  `kota_nama` varchar(51) NOT NULL,
  PRIMARY KEY (`kota_id`),
  UNIQUE KEY `kota_nama` (`kota_nama`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kota` */

insert  into `kota`(`kota_id`,`kota_nama`) values 
(1,'Aceh'),
(32,'Ambon'),
(13,'Bandung'),
(22,'Banjarmasin'),
(12,'Banten'),
(7,'Bengkulu'),
(17,'Denpasar'),
(11,'DKI Jakarta'),
(26,'Golrongtalo'),
(6,'Jambi'),
(34,'Jayapura'),
(30,'Kendari'),
(5,'Kepulauan Riau'),
(31,'Kepulauan Tidore'),
(19,'Kupang'),
(10,'Lampung'),
(29,'Makasar'),
(25,'Manado'),
(33,'Manokwari'),
(28,'Manuju'),
(18,'Mataram'),
(8,'Palembang'),
(27,'Palu'),
(9,'Pangkal Pinang'),
(21,'Pangkal Raya'),
(20,'Pontianak'),
(4,'Riau'),
(23,'Samarinda'),
(14,'Semarang'),
(3,'Sumatra Barat'),
(2,'Sumatra Utara'),
(16,'Surabaya'),
(24,'Tanjung Kelor'),
(15,'Yogyakarta');

/*Table structure for table `lamaran` */

DROP TABLE IF EXISTS `lamaran`;

CREATE TABLE `lamaran` (
  `lamaran_id` int(11) NOT NULL AUTO_INCREMENT,
  `lowongan_id` int(11) NOT NULL,
  `calon_pekerja_id` int(11) NOT NULL,
  `lamaran_status_lolos` enum('Menunggu','Lolos','Tidak Lolos') NOT NULL,
  PRIMARY KEY (`lamaran_id`),
  UNIQUE KEY `lowongan_id` (`lowongan_id`,`calon_pekerja_id`),
  KEY `calon_pekerja_id` (`calon_pekerja_id`),
  CONSTRAINT `lamaran_ibfk_1` FOREIGN KEY (`calon_pekerja_id`) REFERENCES `calon_pekerja` (`calon_pekerja_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lamaran_ibfk_2` FOREIGN KEY (`lowongan_id`) REFERENCES `lowongan` (`lowongan_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

/*Data for the table `lamaran` */

insert  into `lamaran`(`lamaran_id`,`lowongan_id`,`calon_pekerja_id`,`lamaran_status_lolos`) values 
(30,39,42,'Menunggu'),
(31,39,46,'Menunggu'),
(32,40,47,'Menunggu'),
(33,39,47,'Menunggu'),
(35,38,42,'Menunggu');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_username` varchar(26) NOT NULL,
  `login_password` varchar(101) NOT NULL,
  `login_role` enum('Admin','Perusahaan','Calon Pekerja') NOT NULL DEFAULT 'Calon Pekerja',
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `login_username` (`login_username`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

insert  into `login`(`login_id`,`login_username`,`login_password`,`login_role`) values 
(30,'aldo123','9d1ec50ba9ceb580b76d015dbd49c17e','Calon Pekerja'),
(31,'amikom1','5dff486265aba54f208746a70b90dd57','Perusahaan'),
(32,'kemendikbud','e8eb532791a8d8a1096e7c09f8f9c4a3','Perusahaan'),
(33,'bagus1','7c457429df01c6b7eb2d921178f839f3','Calon Pekerja'),
(34,'surya1','7b60abc0ee9578b7967511fbc15dd93f','Perusahaan'),
(36,'aldo12','a93adb944da930dc654d862da1739f56','Calon Pekerja'),
(37,'contoh1','30097045d61b412e13350c9d37221329','Calon Pekerja'),
(38,'budi2','cc119701be06f8de7c4e87acfc504723','Calon Pekerja'),
(39,'jokowi','7d00ff54a263fe80825b9297804a982c','Calon Pekerja'),
(40,'amikomjogja','afe8f002b9c5f8bc07d0080816887ec1','Perusahaan'),
(41,'widiasik','202cb962ac59075b964b07152d234b70','Calon Pekerja'),
(42,'gekari','8561d40328df0f032394acbc5b17f13b','Calon Pekerja'),
(43,'widi','d49b9709c6ca14577f08b2ab21ab7964','Perusahaan'),
(44,'meika','827ccb0eea8a706c4c34a16891f84e7b','Perusahaan'),
(45,'Disnaker Bali','78610a3b965f0158b50d475019ea6787','Perusahaan'),
(46,'widiadnyana','827ccb0eea8a706c4c34a16891f84e7b','Calon Pekerja'),
(47,'BAYU','033bd94b1168d7e4f0d644c3c95e35bf','Calon Pekerja'),
(48,'jikode','33f625119e7aec50fa749355466c8147','Calon Pekerja'),
(49,'laLPK','55886788b63d8b26b07ac07de0dc55b5','Perusahaan'),
(50,'disnakerambon','cab0df6b590b54b36f77a33e405ff640','Perusahaan'),
(51,'disnaker bandung','21e8217c04dfa9fdf42e9b4483fefbc9','Perusahaan'),
(52,'disnaker banjarmasin','c1c838433a334dbfb8fae31db15ee7a4','Perusahaan'),
(53,'disnakerbanten','082bcf9c2c85fd86e31c394d21f6eaeb','Perusahaan');

/*Table structure for table `lowongan` */

DROP TABLE IF EXISTS `lowongan`;

CREATE TABLE `lowongan` (
  `lowongan_id` int(11) NOT NULL AUTO_INCREMENT,
  `perusahaan_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `lowongan_judul` varchar(51) NOT NULL,
  `lowongan_deskripsi` text NOT NULL,
  `lowongan_tgl_buka` date NOT NULL,
  `lowongan_tgl_tutup` date NOT NULL,
  PRIMARY KEY (`lowongan_id`),
  KEY `fk_lowongan_perusahaan` (`perusahaan_id`),
  KEY `fk_lowongan_kategori` (`kategori_id`),
  CONSTRAINT `fk_lowongan_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lowongan_perusahaan` FOREIGN KEY (`perusahaan_id`) REFERENCES `perusahaan` (`perusahaan_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

/*Data for the table `lowongan` */

insert  into `lowongan`(`lowongan_id`,`perusahaan_id`,`kategori_id`,`lowongan_judul`,`lowongan_deskripsi`,`lowongan_tgl_buka`,`lowongan_tgl_tutup`) values 
(38,45,20,'LPK TERAKOYA BALI','Lembaga Pelatihan Kerja Ke Australia','2022-11-23','2022-12-23'),
(39,45,14,'LPK ASIK','LPK asik bisa ketemu wibu ','2022-11-24','2022-12-20'),
(40,45,15,'LPK ASOY','YUK GABUNG LPK KAMI','2022-11-24','2022-12-24'),
(41,45,16,'LPK UHUYYY','HIJIJ','2022-11-12','2022-12-30'),
(42,49,15,'LPK ACEH','Lembaga pelatihan kerja resmi di aceh dengan keberangkatan ke india','2022-12-17','2023-01-17'),
(43,49,20,'LPK BANDA ACEH','Lembaga Pelatihan Kerja resmi di Banda Aceh dengan keberangkatan ke australia','2022-12-17','2023-01-17'),
(44,50,14,'LPK SUSHI AMBON','Lembaga Pelatihan Kerja resmi di ambon dengan keberangkatan ke jepang','2022-12-17','2023-01-17'),
(45,51,22,'LPK BANDUNG','Lembaga Pelatihan Resmi di Bandung dengan keberangkatan ke Arab','2022-12-17','2023-01-17'),
(46,52,19,'LPK Banjarmasin','Lembaga Pelatihan Kerja resmi di banjarmasin dengan keberangkatan ke inggris','2022-12-17','2023-01-17'),
(47,53,18,'LPK Banten ','Lembaga Pelatihan Kerja resmi di Banten dengan keberangkatan ke Jerman','2022-12-17','2023-01-17');

/*Table structure for table `lowongan_jobdesc` */

DROP TABLE IF EXISTS `lowongan_jobdesc`;

CREATE TABLE `lowongan_jobdesc` (
  `lowongan_jobdesc_id` int(11) NOT NULL AUTO_INCREMENT,
  `lowongan_id` int(11) NOT NULL,
  `lowongan_jobdesc_isi` varchar(101) NOT NULL,
  PRIMARY KEY (`lowongan_jobdesc_id`),
  KEY `fk_jobdesc_lowongan` (`lowongan_id`),
  CONSTRAINT `fk_jobdesc_lowongan` FOREIGN KEY (`lowongan_id`) REFERENCES `lowongan` (`lowongan_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

/*Data for the table `lowongan_jobdesc` */

insert  into `lowongan_jobdesc`(`lowongan_jobdesc_id`,`lowongan_id`,`lowongan_jobdesc_isi`) values 
(39,38,''),
(40,39,'harus jadi wibu'),
(41,40,'belajar bahasa india'),
(42,41,''),
(43,42,'Tertarik mempelajari bahasa india'),
(44,44,'Belajar Perkenalan Diri Dalam Bahasa Jepang'),
(45,46,'Belajar Perkenalan Diri Dalam Bahasa inggris'),
(46,47,'Mempu melakakuan Pelatihan secara penuh');

/*Table structure for table `lowongan_syarat` */

DROP TABLE IF EXISTS `lowongan_syarat`;

CREATE TABLE `lowongan_syarat` (
  `lowongan_syarat_id` int(11) NOT NULL AUTO_INCREMENT,
  `lowongan_id` int(11) NOT NULL,
  `lowongan_syarat` varchar(101) NOT NULL,
  PRIMARY KEY (`lowongan_syarat_id`),
  KEY `fk_syarat_lowongan` (`lowongan_id`),
  CONSTRAINT `fk_syarat_lowongan` FOREIGN KEY (`lowongan_id`) REFERENCES `lowongan` (`lowongan_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

/*Data for the table `lowongan_syarat` */

insert  into `lowongan_syarat`(`lowongan_syarat_id`,`lowongan_id`,`lowongan_syarat`) values 
(28,38,''),
(29,39,'minat belajar bahasa jepang'),
(30,40,'minat bahasa india'),
(31,41,''),
(32,42,'Minimal Lulusan SMP/Sederajat'),
(33,44,'Minimal Lulusan SMP/Sederajat'),
(34,46,'Minimal Lulusan SMP/Sederajat'),
(35,47,'Minimal Lulusan SMP/Sederajat');

/*Table structure for table `perusahaan` */

DROP TABLE IF EXISTS `perusahaan`;

CREATE TABLE `perusahaan` (
  `perusahaan_id` int(11) NOT NULL,
  `perusahaan_nama` varchar(51) NOT NULL,
  `perusahaan_alamat` varchar(101) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL,
  `perusahaan_email` varchar(51) NOT NULL,
  `perusahaan_telepon` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`perusahaan_id`),
  UNIQUE KEY `perusahaan_nama` (`perusahaan_nama`),
  KEY `fk_perusahaan_kota` (`kota_id`),
  CONSTRAINT `fk_perusahaan_kota` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_perusahaan_login` FOREIGN KEY (`perusahaan_id`) REFERENCES `login` (`login_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `perusahaan` */

insert  into `perusahaan`(`perusahaan_id`,`perusahaan_nama`,`perusahaan_alamat`,`kota_id`,`perusahaan_email`,`perusahaan_telepon`) values 
(45,'DISNAKER BALI','Jimbaran, Bali',17,'disnaker@bali.com',''),
(49,'LPK Resmi Aceh','',1,'lpk.aceh@gmail.com',''),
(50,'Disnaker ambon','',32,'disnaker@ambon.com',''),
(51,'Disnaker Bandung','',13,'disnaker@bandung.com',''),
(52,'Disnaker Banjarmasin','',22,'disnaker@banjarmasin.com',''),
(53,'Disnaker Banten','',12,'disnaker@banten.com','');

/* Trigger structure for table `calon_pekerja` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `check_role_calon_pekerja` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `check_role_calon_pekerja` BEFORE INSERT ON `calon_pekerja` FOR EACH ROW BEGIN
		IF (SELECT login_role FROM login WHERE login_id = NEW.calon_pekerja_id) != 'Calon Pekerja' THEN 
			SIGNAL SQLSTATE '45000';
		END IF;
	END */$$


DELIMITER ;

/* Trigger structure for table `perusahaan` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `check_role_perusahaan` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `check_role_perusahaan` BEFORE INSERT ON `perusahaan` FOR EACH ROW BEGIN
		IF (SELECT login_role FROM login WHERE login_id = NEW.perusahaan_id) != 'Perusahaan' THEN 
			SIGNAL SQLSTATE '45000';
		END IF;
	END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
