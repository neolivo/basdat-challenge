-- Tampilkan total pendapatan rumah sakit per bulannya
SELECT 
    MONTH(o.tanggal_masuk) AS bulan, 
    YEAR(o.tanggal_masuk) AS tahun,
    SUM(kk.harga_permalam * DATEDIFF(o.tanggal_keluar, o.tanggal_masuk)) AS total_pendapatan
FROM 
    opname o
    JOIN kamar k ON o.kode_kamar = k.kode_kamar
    JOIN kelas_kamar kk ON k.kode_kelas = kk.kode_kelas
GROUP BY 
    YEAR(o.tanggal_masuk), MONTH(o.tanggal_masuk)
ORDER BY 
    tahun, bulan
;