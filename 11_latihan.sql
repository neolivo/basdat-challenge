-- pasien, alamat, telpon dan nama kamarnya yang bernama"Anggrek"

SELECT
pasien.nama_pasien,
pasien.alamat,
pasien.telpon,
kamar.nama_kamar

FROM opname
JOIN pasien ON pasien.kode_pasien = opname.kode_pasien
JOIN kamar ON kamar.kode_kamar = opname.kode_kamar
JOIN kelas_kamar ON kelas_kamar.kode_kelas = kamar.kode_kelas
WHERE kamar.nama_kamar LIKE '%Anggrek%';
-- yang penting ada "Anggrek" nya 