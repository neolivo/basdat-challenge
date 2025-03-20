-- Tampilkan tanggal masuk, nama pasien, kelas, harga permalam, lama opname (x "malam"), total biaya

SELECT 
opname.tanggal_masuk, 
pasien.nama_pasien, 
kelas_kamar.kelas, 
kelas_kamar.harga_permalam,
CONCAT(DATEDIFF(opname.tanggal_keluar, opname.tanggal_masuk), ' Malam') AS lama_opname,
DATEDIFF(opname.tanggal_keluar, opname.tanggal_masuk) * kelas_kamar.harga_permalam AS total_biaya

FROM opname
JOIN pasien ON pasien.kode_pasien = opname.kode_pasien
JOIN kamar ON kamar.kode_kamar = opname.kode_kamar
JOIN kelas_kamar ON kelas_kamar.kode_kelas = kamar.kode_kelas;