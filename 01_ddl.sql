CREATE DATABASE sistem_logistik;
USE sistem_logistik;

-- TABEL PELANGGAN

CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    no_telp VARCHAR(15) NOT NULL,
    email VARCHAR(100),
    alamat TEXT NOT NULL
);

-- TABEL KATEGORI_LAYANAN

CREATE TABLE kategori_layanan (
    id_layanan INT PRIMARY KEY,
    nama_layanan VARCHAR(50) NOT NULL,
    estimasi_hari INT NOT NULL CHECK (estimasi_hari > 0)
);

-- TABEL RUTE

CREATE TABLE rute (
    id_rute INT PRIMARY KEY,
    kota_asal VARCHAR(50) NOT NULL,
    kota_tujuan VARCHAR(50) NOT NULL
);

-- TABEL KURIR

CREATE TABLE kurir (
    id_kurir INT PRIMARY KEY,
    nama_kurir VARCHAR(100) NOT NULL,
    no_telp_kurir VARCHAR(15) NOT NULL,
    wilayah_tugas VARCHAR(100) NOT NULL
);

-- TABEL PAKET

CREATE TABLE paket (
    id_paket VARCHAR(20) PRIMARY KEY,
    berat_kg DECIMAL(5,2) NOT NULL CHECK (berat_kg > 0),
    deskripsi TEXT,
    tgl_kirim DATE NOT NULL,

    id_pengirim INT NOT NULL,
    id_penerima INT NOT NULL,
    id_layanan INT NOT NULL,

    FOREIGN KEY (id_pengirim)
        REFERENCES pelanggan(id_pelanggan),

    FOREIGN KEY (id_penerima)
        REFERENCES pelanggan(id_pelanggan),

    FOREIGN KEY (id_layanan)
        REFERENCES kategori_layanan(id_layanan)
);

-- TABEL PEMBAYARAN

CREATE TABLE pembayaran (
    id_pembayaran INT AUTO_INCREMENT PRIMARY KEY,

    total_biaya DECIMAL(12,2) NOT NULL
        CHECK (total_biaya >= 0),

    metode_bayar VARCHAR(20) NOT NULL,

    status_bayar VARCHAR(20) NOT NULL
        CHECK (status_bayar IN ('Lunas','Belum Lunas')),

    id_paket VARCHAR(20) NOT NULL UNIQUE,

    FOREIGN KEY (id_paket)
        REFERENCES paket(id_paket)
);

-- TABEL TARIF

CREATE TABLE tarif (
    id_tarif INT AUTO_INCREMENT PRIMARY KEY,

    harga_per_kg DECIMAL(10,2) NOT NULL
        CHECK (harga_per_kg > 0),

    id_rute INT NOT NULL,
    id_layanan INT NOT NULL,

    FOREIGN KEY (id_rute)
        REFERENCES rute(id_rute),

    FOREIGN KEY (id_layanan)
        REFERENCES kategori_layanan(id_layanan)
);

-- TABEL PENGIRIMAN_RUTE

CREATE TABLE pengiriman_rute (
    id_detail_rute INT AUTO_INCREMENT PRIMARY KEY,

    urutan_rute INT NOT NULL
        CHECK (urutan_rute > 0),

    id_paket VARCHAR(20) NOT NULL,
    id_rute INT NOT NULL,

    FOREIGN KEY (id_paket)
        REFERENCES paket(id_paket),

    FOREIGN KEY (id_rute)
        REFERENCES rute(id_rute)
);

-- TABEL TRACKING_STATUS

CREATE TABLE tracking_status (
    id_tracking INT AUTO_INCREMENT KEY,

    status_log VARCHAR(50) NOT NULL,

    waktu_update TIMESTAMP NOT NULL,

    lokasi_sekarang VARCHAR(100) NOT NULL,

    id_paket VARCHAR(20) NOT NULL,
    id_kurir INT NOT NULL,

    FOREIGN KEY (id_paket)
        REFERENCES paket(id_paket),

    FOREIGN KEY (id_kurir)
        REFERENCES kurir(id_kurir)
);

-- TABEL RIWAYAT_TUGAS_KURIR

CREATE TABLE riwayat_tugas_kurir (
    id_riwayat INT AUTO_INCREMENT PRIMARY KEY,

    tgl_tugas DATE NOT NULL,

    jenis_tugas VARCHAR(50) NOT NULL,

    id_kurir INT NOT NULL,
    id_paket VARCHAR(20) NOT NULL,

    FOREIGN KEY (id_kurir)
        REFERENCES kurir(id_kurir),

    FOREIGN KEY (id_paket)
        REFERENCES paket(id_paket)
);

-- INDEX

CREATE INDEX idx_paket_pengirim
ON paket(id_pengirim);

CREATE INDEX idx_tracking_paket
ON tracking_status(id_paket);

CREATE INDEX idx_tracking_kurir
ON tracking_status(id_kurir);

CREATE INDEX idx_pengiriman_rute
ON pengiriman_rute(id_paket);

SHOW CREATE TABLE pembayaran;