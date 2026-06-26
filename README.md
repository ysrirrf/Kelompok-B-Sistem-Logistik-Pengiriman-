# LogiTrack - Sistem Informasi Logistik dan Pengiriman Barang

LogiTrack merupakan proyek perancangan basis data yang dikembangkan sebagai tugas mata kuliah Basis Data Program Studi Statistika, Fakultas Matematika dan Ilmu Pengetahuan Alam, Universitas Jenderal Soedirman.

Database ini dirancang untuk mengelola seluruh proses operasional perusahaan logistik, mulai dari pengelolaan pelanggan, paket, kurir, rute, tarif, pembayaran, hingga pelacakan (tracking) pengiriman menggunakan MySQL.

---

## Anggota Kelompok B

| Nama | NIM |
|------|------|
| Ramy Farras Irsyady | K1D024045 |
| Eriani Hardianti | K1D024062 |
| Emanuel Christmas | K1D024065 |
| Rey El Islamay | K1D024070 |
| Rexitalia Zarisma | K1D024075 |

Program Studi Statistika  
Fakultas Matematika dan Ilmu Pengetahuan Alam  
Universitas Jenderal Soedirman

---

# Deskripsi Proyek

LogiTrack merupakan sistem basis data relasional yang dirancang untuk membantu perusahaan logistik dalam mengelola proses pengiriman barang secara terintegrasi.

Sistem ini mendukung pengelolaan data pelanggan, paket, kurir, rute pengiriman, tarif layanan, transaksi pembayaran, serta pelacakan status paket secara real-time. Basis data dirancang menggunakan pendekatan Entity Relationship Diagram (ERD), proses normalisasi hingga Third Normal Form (3NF), dan diimplementasikan menggunakan MySQL.

---

# Fitur Sistem

- Manajemen data pelanggan
- Manajemen data paket
- Manajemen data kurir
- Pengelolaan rute pengiriman
- Pengelolaan tarif layanan
- Pengelolaan transaksi pembayaran
- Tracking status paket
- Riwayat tugas kurir
- Implementasi View, Stored Procedure, Function, dan Trigger

---

# Struktur Repository

```
SQL/
│
├── 01_ddl.sql
├── 02_dml.sql
├── 03_query.sql
├── 04_view.sql
├── 05_procedure.sql
├── 06_Function.sql
├── 07_trigger.sql
│
├── LAPORAN PROJECT BASIS DATA.pdf
├── PPT Kelompok B Sistem Logistik.pdf
└── README.md
```

---

# Struktur Basis Data

Database terdiri atas sepuluh tabel utama sebagai berikut.

| No | Tabel | Deskripsi |
|----|--------|-----------|
| 1 | pelanggan | Menyimpan data pengirim dan penerima paket |
| 2 | kategori_layanan | Menyimpan jenis layanan pengiriman |
| 3 | rute | Menyimpan informasi rute pengiriman |
| 4 | kurir | Menyimpan data kurir |
| 5 | paket | Menyimpan informasi paket |
| 6 | tarif | Menyimpan tarif berdasarkan rute dan layanan |
| 7 | pembayaran | Menyimpan transaksi pembayaran |
| 8 | pengiriman_rute | Menyimpan urutan rute pengiriman paket |
| 9 | tracking_status | Menyimpan riwayat pelacakan paket |
| 10 | riwayat_tugas_kurir | Menyimpan riwayat tugas kurir |

---

# Implementasi

Repository ini mencakup beberapa komponen utama sebagai berikut.

## DDL (Data Definition Language)

- Pembuatan database
- Pembuatan tabel
- Primary Key
- Foreign Key
- Constraint
- Index

## DML (Data Manipulation Language)

- Data dummy pelanggan
- Data dummy paket
- Data dummy kurir
- Data dummy tarif
- Data dummy pembayaran
- Data dummy tracking
- Data dummy riwayat tugas

## Query SQL

Meliputi implementasi berbagai jenis query, antara lain:

- Query sederhana
- Query JOIN
- Subquery
- GROUP BY
- HAVING

---

# Objek Database

## View

**v_detail_paket**

Menampilkan informasi lengkap paket yang terdiri atas data pengirim, penerima, layanan, berat paket, dan tanggal pengiriman.

## Stored Procedure

**tampil_semua_paket()**

Digunakan untuk menampilkan seluruh data paket yang tersimpan pada database.

## Function

**hitung_ppn()**

Menghitung nilai Pajak Pertambahan Nilai (PPN) sebesar 11% dari total biaya pengiriman.

## Trigger

**trg_cek_berat**

Melakukan validasi sebelum proses INSERT pada tabel paket. Data tidak akan disimpan apabila berat paket kurang dari atau sama dengan nol.

Contoh pengujian:

```sql
INSERT INTO paket
VALUES ('PKT999', -1, 'Tes', '2026-06-15', 1, 2, 1);
```

Hasil:

```
Error Code: 1644
Berat paket harus lebih dari 0
```

---

# Cara Menjalankan

1. Clone repository.

```bash
git clone https://github.com/ysrirrf/Kelompok-B-Sistem-Logistik-Pengiriman.git
```

2. Buka MySQL Workbench atau DBMS MySQL lainnya.

3. Jalankan file SQL secara berurutan.

```
01_ddl.sql
```

```
02_dml.sql
```

```
03_query.sql
```

```
04_view.sql
```

```
05_procedure.sql
```

```
06_Function.sql
```

```
07_trigger.sql
```

---

# Teknologi

- MySQL
- SQL
- MySQL Workbench
- Git
- GitHub

---

# Dokumentasi

Repository ini juga menyertakan dokumen pendukung sebagai berikut.

- Laporan Project Basis Data
- PowerPoint Presentasi
- Script SQL lengkap

---

# Tujuan Proyek

Proyek ini bertujuan untuk:

- Merancang sistem basis data relasional untuk proses logistik dan pengiriman barang.
- Menerapkan normalisasi basis data hingga Bentuk Normal Ketiga (3NF).
- Mengimplementasikan objek lanjutan pada MySQL seperti View, Stored Procedure, Function, dan Trigger.
- Menguji integritas, konsistensi, serta fungsionalitas basis data menggunakan data dummy dan berbagai skenario query.

---

# Lisensi

Repository ini dibuat untuk keperluan akademik sebagai tugas mata kuliah Basis Data Program Studi Statistika, Fakultas Matematika dan Ilmu Pengetahuan Alam, Universitas Jenderal Soedirman.

© 2026 Kelompok B
