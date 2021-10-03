# Host: localhost  (Version 5.5.5-10.4.14-MariaDB)
# Date: 2020-12-15 06:40:23
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "dompet_statuses"
#

DROP TABLE IF EXISTS `dompet_statuses`;
CREATE TABLE `dompet_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "dompet_statuses"
#

INSERT INTO `dompet_statuses` VALUES (1,'Aktif'),(2,'Tidak Active');

#
# Structure for table "dompets"
#

DROP TABLE IF EXISTS `dompets`;
CREATE TABLE `dompets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referensi` bigint(20) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "dompets"
#

INSERT INTO `dompets` VALUES (1,'Dompet Utama',52700072502,'Bank BCA',1),(2,'Dompet Tagihan',52700072503,'Bank BCA',1),(3,'Dompet Cadangan',52700072504,'Bank Permata',1);

#
# Structure for table "kategori_statuses"
#

DROP TABLE IF EXISTS `kategori_statuses`;
CREATE TABLE `kategori_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "kategori_statuses"
#

INSERT INTO `kategori_statuses` VALUES (1,'Aktif'),(2,'Tidak Active');

#
# Structure for table "kategoris"
#

DROP TABLE IF EXISTS `kategoris`;
CREATE TABLE `kategoris` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "kategoris"
#

INSERT INTO `kategoris` VALUES (1,'Pengluaran','Kategori untuk Pengluaran',1),(2,'Pemasukan','Kategori Pengluaran',1),(3,'Lain-lain','Kategori Lain-lain',1);

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1,'2020_08_02_181259_create_table_pembayaran_bulan',1),(2,'2020_08_04_183544_create_table_user',1),(3,'2020_08_04_184716_create_table_role',1),(4,'2020_12_14_044005_create_dompets_table',1),(5,'2020_12_14_044108_create_dompet__statuses_table',1),(6,'2020_12_14_044215_create_kategori__statuses_table',1),(7,'2020_12_14_045056_create_kategoris_table',1),(8,'2020_12_14_045430_create_transaksis_table',1),(9,'2020_12_14_045449_create_transaksi__statuses_table',1);

#
# Structure for table "roles"
#

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "roles"
#

INSERT INTO `roles` VALUES (1,'Admin',NULL,NULL),(2,'Author',NULL,NULL);

#
# Structure for table "transaksi_statuses"
#

DROP TABLE IF EXISTS `transaksi_statuses`;
CREATE TABLE `transaksi_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "transaksi_statuses"
#

INSERT INTO `transaksi_statuses` VALUES (1,'masuk'),(2,'keluar');

#
# Structure for table "transaksis"
#

DROP TABLE IF EXISTS `transaksis`;
CREATE TABLE `transaksis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `nilai` decimal(30,0) NOT NULL,
  `dompet_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kode` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "transaksis"
#

INSERT INTO `transaksis` VALUES (1,'TSM001','Buat Bayar','2020-12-15',1000000,3,2,1),(2,'TSM002','Sisaa gajian','2020-12-15',1000000,2,1,2);

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(1) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(1) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT 0,
  `current_sign_in_at` timestamp NULL DEFAULT NULL,
  `last_sign_in_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,1,'Demo',NULL,NULL,'demo@example.com',NULL,'$2y$10$E17Zj3iwjMIIr/4XmdAi9.JkjgZvvuYN83O32sui59scB49evHqNO',NULL,NULL,'2020-08-27 03:40:01',NULL,'2020-12-15 01:27:30',NULL,NULL,NULL,0,'2020-12-15 01:27:30','2020-12-14 16:04:01'),(10,NULL,'bernard',NULL,NULL,'bernard@gmail.com',NULL,'$2y$10$N1VVXKGlZb6EDwz.w1Vxx.lAWaqBtO7gluAZefDI6M6SrLykEN5u.',NULL,NULL,'2020-11-14 19:34:39',NULL,'2020-11-14 19:34:39',NULL,NULL,NULL,0,'2020-11-14 19:34:39','2020-11-14 19:34:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
