-- Tampilkan nama pasien, sakit, nama dokter, spesialis

SELECT pasien.nama_pasien, opname.sakit, dokter.nama_dokter, dokter.spesialis
FROM opname
JOIN pasien ON pasien.kode_pasien = opname.kode_pasien
JOIN dokter ON dokter.kode_dokter = opname.kode_dokter;