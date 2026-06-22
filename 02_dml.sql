INSERT INTO pelanggan VALUES
(1,'Budi Santoso','081234567890','budi@gmail.com','Jakarta'),
(2,'Andi Wijaya','081234567891','andi@gmail.com','Bandung'),
(3,'Siti Rahma','081234567892','siti@gmail.com','Semarang'),
(4,'Dewi Lestari','081234567893','dewi@gmail.com','Yogyakarta'),
(5,'Rizky Pratama','081234567894','rizky@gmail.com','Surabaya'),
(6,'Fajar Nugroho','081234567895','fajar@gmail.com','Solo'),
(7,'Nanda Putri','081234567896','nanda@gmail.com','Malang'),
(8,'Yoga Saputra','081234567897','yoga@gmail.com','Bogor'),
(9,'Rina Maharani','081234567898','rina@gmail.com','Bekasi'),
(10,'Ahmad Fauzi','081234567899','ahmad@gmail.com','Depok'),
(11,'Taufik Hidayat','081234567900','taufik@gmail.com','Purwokerto'),
(12,'Lina Marlina','081234567901','lina@gmail.com','Cilacap'),
(13,'Rudi Hartono','081234567902','rudi@gmail.com','Tegal'),
(14,'Maya Sari','081234567903','maya@gmail.com','Pekalongan'),
(15,'Arif Setiawan','081234567904','arif@gmail.com','Magelang'),
(16,'Nur Azizah','081234567905','nur@gmail.com','Kudus'),
(17,'Bagus Pratama','081234567906','bagus@gmail.com','Jepara'),
(18,'Citra Dewi','081234567907','citra@gmail.com','Pati'),
(19,'Yusuf Ramadhan','081234567908','yusuf@gmail.com','Blora'),
(20,'Intan Permata','081234567909','intan@gmail.com','Salatiga');

INSERT INTO kategori_layanan VALUES
(1,'Express',1),
(2,'Reguler',3),
(3,'Cargo',7);

INSERT INTO rute VALUES
(1,'Jakarta','Bandung'),
(2,'Bandung','Semarang'),
(3,'Semarang','Surabaya'),
(4,'Yogyakarta','Solo'),
(5,'Jakarta','Yogyakarta'),
(6,'Surabaya','Malang'),
(7,'Bogor','Jakarta'),
(8,'Bekasi','Bandung'),
(9,'Solo','Semarang'),
(10,'Depok','Jakarta');

INSERT INTO kurir VALUES
(1,'Joko Susilo','081111111111','Jakarta'),
(2,'Agus Setiawan','082222222222','Bandung'),
(3,'Dedi Kurniawan','083333333333','Semarang'),
(4,'Wahyu Prasetyo','084444444444','Surabaya'),
(5,'Bambang Saputra','085555555555','Yogyakarta');

INSERT INTO paket VALUES
('PKT001',2.50,'Laptop','2026-06-01',1,2,1),
('PKT002',1.20,'Dokumen','2026-06-02',3,4,2),
('PKT003',5.00,'Printer','2026-06-02',5,6,3),
('PKT004',3.50,'Monitor','2026-06-03',7,8,1),
('PKT005',1.80,'Buku','2026-06-03',9,10,2),
('PKT006',4.00,'Keyboard','2026-06-04',2,3,1),
('PKT007',2.20,'Mouse','2026-06-04',4,5,2),
('PKT008',7.50,'Komponen PC','2026-06-05',6,7,3),
('PKT009',3.30,'Headset','2026-06-05',8,9,1),
('PKT010',6.00,'Speaker','2026-06-06',10,1,2),
('PKT011',2.10,'Flashdisk','2026-06-06',11,12,1),
('PKT012',4.30,'Harddisk','2026-06-07',13,14,2),
('PKT013',1.50,'Dokumen Kontrak','2026-06-07',15,16,1),
('PKT014',8.00,'Mesin Printer','2026-06-08',17,18,3),
('PKT015',3.70,'Monitor LED','2026-06-08',19,20,2),
('PKT016',2.40,'Keyboard Gaming','2026-06-09',12,13,1),
('PKT017',5.60,'Router','2026-06-09',14,15,2),
('PKT018',7.80,'Scanner','2026-06-10',16,17,3),
('PKT019',2.90,'Buku Kuliah','2026-06-10',18,19,1),
('PKT020',4.50,'Perangkat CCTV','2026-06-11',20,11,2);

INSERT INTO pembayaran (total_biaya, metode_bayar, status_bayar, id_paket) VALUES
(50000,'Transfer','Lunas','PKT001'),
(25000,'Tunai','Lunas','PKT002'),
(75000,'Transfer','Belum Lunas','PKT003'),
(60000,'E-Wallet','Lunas','PKT004'),
(30000,'Transfer','Lunas','PKT005'),
(45000,'Tunai','Lunas','PKT006'),
(28000,'Transfer','Belum Lunas','PKT007'),
(95000,'E-Wallet','Lunas','PKT008'),
(52000,'Transfer','Lunas','PKT009'),
(70000,'Tunai','Belum Lunas','PKT010'),
(35000,'Transfer','Lunas','PKT011'),
(65000,'E-Wallet','Lunas','PKT012'),
(22000,'Tunai','Lunas','PKT013'),
(120000,'Transfer','Belum Lunas','PKT014'),
(55000,'E-Wallet','Lunas','PKT015'),
(40000,'Transfer','Lunas','PKT016'),
(70000,'Tunai','Belum Lunas','PKT017'),
(115000,'Transfer','Lunas','PKT018'),
(32000,'E-Wallet','Lunas','PKT019'),
(85000,'Transfer','Belum Lunas','PKT020');

INSERT INTO tarif (harga_per_kg,id_rute,id_layanan) VALUES
(10000,1,1),
(8000,1,2),
(6000,1,3),

(12000,2,1),
(9000,2,2),
(7000,2,3),

(13000,3,1),
(10000,3,2),
(8000,3,3),

(11000,4,1),
(8500,4,2),
(6500,4,3);

INSERT INTO pengiriman_rute (urutan_rute,id_paket,id_rute) VALUES
(1,'PKT001',1),
(1,'PKT002',2),
(1,'PKT003',3),
(1,'PKT004',4),
(1,'PKT005',5),
(1,'PKT006',6),
(1,'PKT007',7),
(1,'PKT008',8),
(1,'PKT009',9),
(1,'PKT010',10),
(1,'PKT011',1),
(1,'PKT012',2),
(1,'PKT013',3),
(1,'PKT014',4),
(1,'PKT015',5),
(1,'PKT016',6),
(1,'PKT017',7),
(1,'PKT018',8),
(1,'PKT019',9),
(1,'PKT020',10);

INSERT INTO tracking_status (status_log,waktu_update,lokasi_sekarang,id_paket,id_kurir) VALUES
('Diterima','2026-06-01 08:00:00','Jakarta','PKT001',1),
('Dalam Perjalanan','2026-06-01 14:00:00','Bandung','PKT001',1),
('Diterima','2026-06-02 09:00:00','Semarang','PKT002',2),
('Dalam Perjalanan','2026-06-02 15:00:00','Yogyakarta','PKT002',2),
('Diterima','2026-06-02 10:00:00','Surabaya','PKT003',3),
('Diterima','2026-06-03 11:00:00','Yogyakarta','PKT004',4),
('Diterima','2026-06-03 13:00:00','Bekasi','PKT005',5),
('Diterima','2026-06-04 08:30:00','Bandung','PKT006',1),
('Diterima','2026-06-04 09:15:00','Malang','PKT007',2),
('Diterima','2026-06-05 10:00:00','Jakarta','PKT008',3),
('Diterima','2026-06-05 12:00:00','Semarang','PKT009',4),
('Diterima','2026-06-06 08:45:00','Depok','PKT010',5),
('Diterima','2026-06-06 08:00:00','Purwokerto','PKT011',1),
('Diterima','2026-06-07 09:00:00','Cilacap','PKT012',2),
('Diterima','2026-06-07 10:00:00','Tegal','PKT013',3),
('Diterima','2026-06-08 08:30:00','Pekalongan','PKT014',4),
('Diterima','2026-06-08 09:15:00','Magelang','PKT015',5),
('Diterima','2026-06-09 08:00:00','Kudus','PKT016',1),
('Diterima','2026-06-09 10:00:00','Jepara','PKT017',2),
('Diterima','2026-06-10 09:30:00','Pati','PKT018',3);

INSERT INTO riwayat_tugas_kurir (tgl_tugas,jenis_tugas,id_kurir,id_paket) VALUES
('2026-06-01','Pickup',1,'PKT001'),
('2026-06-01','Delivery',1,'PKT001'),
('2026-06-02','Pickup',2,'PKT002'),
('2026-06-02','Delivery',2,'PKT002'),
('2026-06-02','Pickup',3,'PKT003'),
('2026-06-03','Delivery',4,'PKT004'),
('2026-06-03','Pickup',5,'PKT005'),
('2026-06-04','Pickup',1,'PKT006'),
('2026-06-04','Delivery',2,'PKT007'),
('2026-06-05','Pickup',3,'PKT008'),
('2026-06-05','Delivery',4,'PKT009'),
('2026-06-06','Pickup',5,'PKT010'),
('2026-06-06','Pickup',1,'PKT011'),
('2026-06-07','Delivery',2,'PKT012'),
('2026-06-07','Pickup',3,'PKT013'),
('2026-06-08','Delivery',4,'PKT014'),
('2026-06-08','Pickup',5,'PKT015'),
('2026-06-09','Delivery',1,'PKT016'),
('2026-06-09','Pickup',2,'PKT017'),
('2026-06-11','Delivery',5,'PKT020');

-- Cek
SELECT COUNT(*) AS pelanggan FROM pelanggan;
SELECT COUNT(*) AS paket FROM paket;
SELECT COUNT(*) AS pembayaran FROM pembayaran;
SELECT COUNT(*) AS tracking_status FROM tracking_status;
SELECT COUNT(*) AS riwayat_tugas_kurir FROM riwayat_tugas_kurir;