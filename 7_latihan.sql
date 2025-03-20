-- Tampilkan tanggal masuk, nama pasien, nama dokter, nama kamar, kelas, lama opname

SELECT 
opname.tanggal_masuk, pasien.nama_pasien, dokter.nama_dokter, kamar.nama_kamar,
kelas_kamar.kelas, CONCAT(DATEDIFF(opname.tanggal_keluar, opname.tanggal_masuk), ' Hari')
AS lama_masuk -- mengganti nama kolom supaya tampilannya menjadi lebih baik

FROM opname
JOIN pasien ON pasien.kode_pasien = opname.kode_pasien
JOIN dokter ON dokter.kode_dokter = opname.kode_dokter
JOIN kamar ON kamar.kode_kamar = opname.kode_kamar
JOIN kelas_kamar ON kelas_kamar.kode_kelas = kamar.kode_kelas;