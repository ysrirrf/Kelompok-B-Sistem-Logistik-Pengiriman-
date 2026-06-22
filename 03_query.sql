-- 3 Query Sederhana
-- Query 1
SELECT * FROM pelanggan;

-- Query 2
SELECT *
FROM paket
WHERE berat_kg > 3;

-- Query 3
SELECT *
FROM pembayaran
WHERE status_bayar = 'Lunas';

-- 4 Query JOIN (minimal 3 tabel)
-- Query 4
SELECT
    p.id_paket,
    pl.nama,
    kl.nama_layanan
FROM paket p
JOIN pelanggan pl
    ON p.id_pengirim = pl.id_pelanggan
JOIN kategori_layanan kl
    ON p.id_layanan = kl.id_layanan;

-- Query 5
SELECT
    p.id_paket,
    pb.total_biaya,
    pb.status_bayar,
    kl.nama_layanan
FROM paket p
JOIN pembayaran pb
    ON p.id_paket = pb.id_paket
JOIN kategori_layanan kl
    ON p.id_layanan = kl.id_layanan;

-- Query 6
SELECT
    ts.id_tracking,
    p.id_paket,
    k.nama_kurir,
    ts.status_log
FROM tracking_status ts
JOIN paket p
    ON ts.id_paket = p.id_paket
JOIN kurir k
    ON ts.id_kurir = k.id_kurir;

-- Query 7
SELECT
    p.id_paket,
    pl.nama,
    r.kota_asal,
    r.kota_tujuan
FROM paket p
JOIN pelanggan pl
    ON p.id_pengirim = pl.id_pelanggan
JOIN pengiriman_rute pr
    ON p.id_paket = pr.id_paket
JOIN rute r
    ON pr.id_rute = r.id_rute;
    
 -- 2 Subquery
 -- Query 8
SELECT *
FROM paket
WHERE berat_kg >
(
    SELECT AVG(berat_kg)
    FROM paket
);

-- Query 9
SELECT *
FROM pembayaran
WHERE total_biaya =
(
    SELECT MAX(total_biaya)
    FROM pembayaran
);

-- 1 GROUP BY + HAVING
-- Query 10
SELECT
    status_bayar,
    COUNT(*) AS jumlah_transaksi
FROM pembayaran
GROUP BY status_bayar
HAVING COUNT(*) >= 1;