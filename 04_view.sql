CREATE VIEW v_detail_paket AS
SELECT
    p.id_paket,
    pl.nama AS nama_pengirim,
    kl.nama_layanan,
    p.berat_kg,
    p.tgl_kirim
FROM paket p
JOIN pelanggan pl
    ON p.id_pengirim = pl.id_pelanggan
JOIN kategori_layanan kl
    ON p.id_layanan = kl.id_layanan;
    
SELECT * FROM v_detail_paket;    