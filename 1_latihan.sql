-- Tampilkan nama kamar beserta harga permalamnya

SELECT kamar.nama_kamar, kelas_kamar.harga_permalam
FROM kamar
JOIN kelas_kamar on kelas_kamar.kode_kelas = kamar.kode_kelas;