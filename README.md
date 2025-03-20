# Proyek Basis Data Praktik - Sistem Manajemen Rumah Sakit

## Deskripsi Proyek

Proyek ini merupakan hasil pekerjaan untuk mata kuliah "Basis Data Praktik". Proyek ini berisi implementasi database untuk sistem manajemen rumah sakit menggunakan MariaDB. Database ini dirancang untuk mengelola data pasien, dokter, kamar, kelas kamar, dan informasi rawat inap (opname) di rumah sakit.

## Struktur Database

Database `rumah_sakit` terdiri dari beberapa tabel yang saling berelasi:

### 1. Tabel `dokter`

Tabel ini menyimpan informasi tentang dokter yang bekerja di rumah sakit.

**Struktur:**
- `kode_dokter` (varchar(6)) - Primary Key
- `nama_dokter` (varchar(50))
- `spesialis` (varchar(30))
- `alamat` (varchar(100))
- `telpon` (varchar(14))

### 2. Tabel `pasien`

Tabel ini menyimpan data pasien yang terdaftar di rumah sakit.

**Struktur:**
- `kode_pasien` (varchar(6)) - Primary Key
- `nama_pasien` (varchar(50))
- `alamat` (varchar(100))
- `telpon` (varchar(14))

### 3. Tabel `kelas_kamar`

Tabel ini berisi informasi tentang kelas kamar dan tarifnya.

**Struktur:**
- `kode_kelas` (varchar(3)) - Primary Key
- `kelas` (varchar(10))
- `harga_permalam` (int(11))

### 4. Tabel `kamar`

Tabel ini menyimpan informasi tentang kamar-kamar yang tersedia di rumah sakit.

**Struktur:**
- `kode_kamar` (varchar(6)) - Primary Key
- `nama_kamar` (varchar(30))
- `kode_kelas` (varchar(3)) - Foreign Key yang merujuk ke tabel `kelas_kamar`

### 5. Tabel `opname`

Tabel ini mencatat informasi tentang rawat inap pasien.

**Struktur:**
- `kode_opname` (int(6)) - Primary Key (Auto Increment)
- `kode_pasien` (varchar(6)) - Foreign Key yang merujuk ke tabel `pasien`
- `kode_dokter` (varchar(6)) - Foreign Key yang merujuk ke tabel `dokter`
- `kode_kamar` (varchar(6)) - Foreign Key yang merujuk ke tabel `kamar`
- `tanggal_masuk` (date)
- `tanggal_keluar` (date)
- `sakit` (varchar(30))

## Relasi Antar Tabel

1. Tabel `kamar` terhubung dengan tabel `kelas_kamar` melalui `kode_kelas`
2. Tabel `opname` terhubung dengan:
    - Tabel `pasien` melalui `kode_pasien`
    - Tabel `dokter` melalui `kode_dokter`
    - Tabel `kamar` melalui `kode_kamar`

## Konfigurasi Database

Database ini dikonfigurasi menggunakan MariaDB versi 10.4.24 dengan pengaturan berikut:
- Character set: utf8mb4
- Collation: default
- Time Zone: '+00:00'
- Engine: InnoDB (untuk mendukung foreign key)

## Sampel Data

Setiap tabel telah diisi dengan sampel data untuk mempermudah pengujian dan demonstrasi. Data ini mencakup informasi tentang dokter dengan berbagai spesialisasi, pasien dari berbagai daerah, berbagai jenis kamar dengan kelas yang berbeda, serta beberapa catatan rawat inap.

## Cara Penggunaan

1. Import file dump SQL ke dalam MariaDB:
    ```bash
    mysql -u username -p rumah_sakit < rumah_sakit.sql
    ```

2. Atau bisa juga menggunakan aplikasi seperti phpMyAdmin untuk mengimpor file dump.

3. Setelah berhasil diimpor, database siap digunakan untuk operasi query, pengembangan aplikasi, atau keperluan analisis lainnya.

## Catatan Penting

- Database ini dirancang untuk tujuan pembelajaran dalam konteks mata kuliah Basis Data Praktik.
- Struktur dan relasi tabel dapat dikembangkan lebih lanjut sesuai kebutuhan.
- Data yang terdapat dalam dump adalah data contoh dan tidak mewakili data nyata.

## Kontributor

Tim Proyek Basis Data Praktik - 2025

---

*Proyek ini dibuat sebagai bagian dari penilaian mata kuliah Basis Data Praktik*