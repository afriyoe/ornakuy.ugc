# ORNA KUY — Dashboard Analisis Penjualan Roblox UGC

Dashboard satu halaman untuk brand pakaian UGC Roblox **ORNA KUY** (TikTok group 950136185).

## Fitur

- **Analisis Penjualan** — revenue, pcs, pembeli, tren harian/mingguan/bulanan
- **Produk & Kategori** — ranking produk dengan sort interaktif, Publishing Advance Rebates
- **Top Pembeli** — 10 pembeli terbanyak + distribusi frekuensi
- **Marketing** — tracking postingan endorse (eksternal) & internal TikTok
- **Keuangan** — pembukuan pemasukan vs pengeluaran, KPI, transaksi cepat
- **TikTok Ads** — detail pengeluaran iklan

## Cara Build

Dashboard dibangun dari file sumber asli (`source/index.html`) melalui rantai patch Python:

```bash
# Build dari awal (patch1 → patch20)
python3 -I patches/patch.py source/index.html build/new.html
python3 -I patches/patch2.py build/new.html build/new2.html
# ... seterusnya sampai patch20
python3 -I patches/patch20.py build/new19.html build/new20.html

# Hasil akhir
cp build/new20.html index.html
```

Atau jalankan build script:

```bash
bash build.sh
```

## Struktur File

```
├── index.html              # Dashboard final (hasil build)
├── build.sh                # Build script otomatis
├── source/
│   └── index.html          # File sumber asli (ekspor SalesV2)
├── patches/
│   ├── patch.py            # Patch 1: setup awal
│   ├── patch2.py           # Patch 2
│   ├── ...
│   └── patch20.py          # Patch 20: Publishing Advance Rebates
└── README.md
```

## Data

Data penjualan di-embed langsung dalam `<script>` tags di HTML:
- `ornakuy-data` — data sales dari ekspor SalesV2
- `ornakuy-records` — records: endorse posts, keuangan, pembukuan, akun internal

## Teknologi

- HTML/CSS/JS murni (single file, tanpa framework)
- Chart.js 4.4.1 (CDN)
- Responsive desktop layout
