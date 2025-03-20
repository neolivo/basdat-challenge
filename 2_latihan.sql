-- Tampilkan nama pasien beserta nama kamar tempat ia dirawat

SELECT pasien.nama_pasien, kamar.nama_kamar
FROM opname
JOIN pasien on pasien.kode_pasien = opname.kode_pasien
JOIN kamar on kamar.kode_kamar = opname.kode_kamar;