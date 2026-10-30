# Sales Roblox Ornakuy

Dashboard brand UGC Roblox untuk grup 950136185. Semua isi dashboard dan datanya ada di satu file, `index.html`.

Ada 3 menu utama:

- **Analisis:** penjualan dari file ekspor SalesV2 (ringkasan, produk, warna & model, waktu & sesi, pembeli).
- **Marketing:** catatan postingan TikTok (tanggal, username, link, views, like, komentar, share, save) dan performa per akun.
- **Keuangan:** pembukuan payout, uang masuk, dan uang keluar, dengan saldo dan rekap bulanan.

Tombol **Export Spreadsheet (.xlsx)** mengunduh semua data ke file Excel.

> Repo ini sebaiknya **privat**. Datanya berisi User ID pembeli dan angka penjualan.

## Cara membuka dashboard

1. Buka repo ini di GitHub, klik `index.html`, lalu klik ikon **Download raw file**.
2. Klik dua kali file yang sudah diunduh. Dashboard terbuka di browser (Chrome, Edge, atau Safari).

Saat dibuka, browser perlu koneksi internet untuk memuat grafik dan font.

## Cara update data

1. Di Roblox Creator Dashboard, ekspor **Sales** grup (file `SalesV2_Group950136185_....csv` atau `.zip`).
2. Buka `index.html`, lalu klik **Upload CSV / ZIP**. Bisa juga dengan menyeret file ke halaman. Bisa beberapa file sekaligus.
3. Dashboard langsung menggabungkan data baru dengan data lama dan menampilkan jumlah transaksi baru serta item baru.

Catatan di menu Marketing dan Keuangan juga bisa ditambah, diedit, dan dihapus langsung di dashboard.

Data hasil upload dan catatan baru disimpan **di browser itu saja**. Supaya tersimpan permanen dan sama di semua perangkat:

4. Di menu Analisis, klik **Unduh dashboard (.html)**. Hasilnya file `index.html` baru yang sudah berisi semua data: sales, marketing, dan keuangan.
5. Di GitHub, klik **Add file → Upload files**, upload `index.html` baru itu (file lama otomatis tergantikan), lalu klik **Commit changes**.

Tombol **Kembali ke data bawaan** menghapus data yang tersimpan di browser dan kembali ke data yang ada di dalam file.

## Cara data digabung

- Setiap ekspor SalesV2 dianggap lengkap untuk rentang waktunya sendiri. Transaksi di rentang itu diganti dengan isi ekspor, dan transaksi di luar rentang itu (misalnya bulan-bulan sebelumnya) tetap disimpan.
- Upload file yang sama dua kali tidak membuat data dobel.
- Upload ekspor lama tidak menghapus data yang lebih baru.
- Awalan "ORNA |" di nama item dihapus otomatis.

## Folder `data/` (opsional)

Kalau mau menyimpan arsip file ekspor mentah, upload ke folder `data/`. Dashboard tidak membaca folder ini, isinya hanya untuk cadangan.
