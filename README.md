* Nama : Taruna Isra
* Kelas : 2B TRPL
* NIM : 362458302073

**Tugas 1**: Geocoding (Alamat dari Koordinat)
Saat ini kita hanya menampilkan Lat/Lng. Buatlah agar aplikasi menampilkan alamat
(nama jalan, kota, dll) dari koordinat yang didapat.
Petunjuk:
1. Anda sudah menambahkan paket geocoding di pubspec.yaml.
2. Import paketnya: import ’package:geocoding/geocoding.dart’;
3. Buat variabel String? currentAddress; di MyHomePageState.
4. Buat fungsi baru getAddressFromLatLng(Position position).
5.  Panggil fungsi getAddressFromLatLng( currentPosition!) di dalam getLocation
dan startTracking (di dalam .listen()) setelah setState untuk currentPosition.
6. Tampilkan currentAddress di UI Anda, di bawah Lat/Lng.
 
 
 dari semua langkah yang sudah dijelaskan dan diimplementasikan
 saya mulai sedikit memahami bagaimana kita menelaah semua proses
 pembuatan Geocoding ini, perlu banyak dan sering latihan untuk membiasakan hal ini

![WhatsApp Image 2025-11-10 at 15 45 59_a8481f9f](https://github.com/user-attachments/assets/fcb386d0-5392-4735-9c37-4627abf1cbfb)

![WhatsApp Image 2025-11-10 at 15 45 59_71380abc](https://github.com/user-attachments/assets/f5c40577-6e21-4dd7-ae46-fd4a239b7b5b)


# Tugas 2
Aplikasi ini dibuat sebagai tugas praktikum untuk mempelajari penggunaan Geolocator dan Geocoding pada Flutter.
Aplikasi ini mampu:

-  Mengambil lokasi pengguna saat ini
-  Melacak pergerakan lokasi secara real–time (live tracking)
-  Mengubah koordinat menjadi alamat (Reverse Geocoding)
-   Menghitung jarak antara posisi pengguna dan titik tertentu

## Fitur Utama
 1. Ambil Lokasi Saat Ini

Menampilkan latitude dan longitude pengguna

Menggunakan Geolocator.getCurrentPosition()

 2. Live Tracking Lokasi (Stream)

Lokasi diperbarui otomatis saat pengguna berpindah

Menggunakan Geolocator.getPositionStream()

 3. Geocoding: Koordinat → Alamat

Mengubah titik koordinat menjadi alamat lengkap

Menggunakan package geocoding

 4. Hitung Jarak ke Lokasi Tertentu

Contoh yang digunakan: titik lokasi kampus (contoh: Poliwangi/PNB)
Menampilkan jarak pengguna ke titik acuan dalam satuan meter/kilometer.

Teknologi & Package
| Package      | Versi | Fungsi                      |
| ------------ | ----- | --------------------------- |
| `geolocator` | ^10.x | Mengambil & melacak lokasi  |
| `geocoding`  | ^2.x  | Mengubah koordinat ↔ alamat |
| `flutter`    | 3.x   | UI Framework                |
Pembelajaran yang Didapat

Melalui tugas ini, saya mempelajari:

Cara mendapatkan izin akses lokasi di Flutter

Perbedaan pengambilan lokasi once vs stream

Cara mengonversi koordinat menjadi alamat

Penggunaan library geolocation pada aplikasi mobile
