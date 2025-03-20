-- Tampilkan tanggal masuk, nama pasien, nama dokter, nama kamar, sakit

SELECT opname.tanggal_masuk, pasien.nama_pasien, dokter.nama_dokter, kamar.nama_kamar, opname.sakit
FROM opname
JOIN pasien ON pasien.kode_pasien = opname.kode_pasien
JOIN dokter ON dokter.kode_dokter = opname.kode_dokter
JOIN kamar ON kamar.kode_kamar = opname.kode_kamar;