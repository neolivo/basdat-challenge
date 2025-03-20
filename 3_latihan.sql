-- Tampilkan nama pasien, sakit, dan nama dokter yang menanganinya

SELECT pasien.nama_pasien, opname.sakit, dokter.nama_dokter
FROM opname
JOIN pasien on pasien.kode_pasien = opname.kode_pasien
JOIN dokter on dokter.kode_dokter = opname.kode_dokter;