-- Tampilkan tanggal masuk, nama pasien, sakit

SELECT opname.tanggal_masuk, pasien.nama_pasien, opname.sakit
FROM opname
JOIN pasien ON pasien.kode_pasien = opname.kode_pasien;