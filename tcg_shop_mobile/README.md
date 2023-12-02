# TCG Shop Mobile 

![Introduction](https://img.yugioh-card.com/en/wp-content/uploads/2020/04/yugioh-share.jpg)


- Faiz Abdurrachman
- PBP B
- 2206824041


## Tugas 9

### Pengambilan Data JSON tanpa Membuat Model:

1. **Pengambilan Data JSON tanpa Model:**
   - Ya, bisa dilakukan. Tetapi, membuat model biasanya disarankan karena:
     - Membuat struktur data lebih jelas dan mudah dimengerti.
     - Mempermudah penanganan dan pengolahan data.

2. **Keuntungan Membuat Model:**
   - Type safety: Mengurangi peluang kesalahan tipe data.
   - Struktur data yang didefinisikan membantu dokumentasi dan pengembangan.
   - Meningkatkan keterbacaan kode.

### CookieRequest dan Pembagian Instance ke Komponen di Aplikasi Flutter:

1. **CookieRequest:**
   - Fungsi: Representasi permintaan HTTP yang menyimpan dan menangani cookie.
   - Instance Perlu Dibagikan: Untuk memastikan pengguna memiliki cookie yang konsisten selama sesi aplikasi, karena instance ini menyimpan dan mengelola cookie.

### Mekanisme Pengambilan Data dari JSON hingga Tampil di Flutter:

1. **Mekanisme Pengambilan Data dari JSON:**
   - Gunakan `http` package untuk membuat permintaan HTTP ke API.
   - Terima respons dalam bentuk JSON.
   - Gunakan model atau konversi manual untuk mengubah data JSON menjadi objek Dart.
   - Tampilkan data di Flutter menggunakan widget yang sesuai.

### Mekanisme Autentikasi dari Input Akun pada Flutter ke Django:

1. **Mekanisme Autentikasi:**
   - Input akun di Flutter (biasanya menggunakan `TextField`).
   - Kirim permintaan ke API Django dengan kredensial pengguna.
   - Django memeriksa dan mengautentikasi pengguna.
   - Jika berhasil, Django mengembalikan token atau informasi autentikasi.
   - Flutter menyimpan token dan menggunakan untuk permintaan berikutnya.

### Widget pada Tugas:

1. **TextField:**
   - Fungsi: Memungkinkan pengguna memasukkan teks (digunakan untuk input akun).

2. **Http Request Widget (e.g., Dio, http):**
   - Fungsi: Mengirim permintaan HTTP ke server.

3. **CookieRequest (Custom):**
   - Fungsi: Menangani permintaan HTTP dengan memastikan cookie dibagikan di seluruh aplikasi.

4. **ListView:**
   - Fungsi: Menampilkan daftar item, seperti data hasil dari permintaan HTTP.

5. **FutureBuilder:**
   - Fungsi: Membangun UI berdasarkan hasil dari Future (misalnya, hasil permintaan HTTP).

6. **Authentication Service (Custom):**
   - Fungsi: Menangani logika autentikasi, termasuk penyimpanan token.

7. **Menu Widget:**
   - Fungsi: Menampilkan menu aplikasi setelah autentikasi berhasil.

Dengan widget-widget tersebut, aplikasi Flutter dapat mengelola autentikasi, berkomunikasi dengan server Django, dan menampilkan data dengan baik.

## Tugas 8 
### Perbedaan antara Navigator.push() dan Navigator.pushReplacement()

1. **Navigator.push():**
   - Digunakan untuk menambahkan rute baru ke dalam tumpukan rute.
   - Pengguna dapat kembali ke rute sebelumnya dengan tombol kembali.
   - Contoh:
     ```dart
     Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => SecondScreen()),
     );
     ```

2. **Navigator.pushReplacement():**
   - Menggantikan rute saat ini dengan rute baru.
   - Berguna jika tidak ingin pengguna dapat kembali ke rute sebelumnya.
   - Contoh:
     ```dart
     Navigator.pushReplacement(
       context,
       MaterialPageRoute(builder: (context) => ThirdScreen()),
     );
     ```

### Layout Widget pada Flutter dan Konteks Penggunaannya

1. **Container:**
   - **Konteks Penggunaan:** Menempatkan dan mengatur tata letak widget di dalamnya.
  
2. **Row dan Column:**
   - **Konteks Penggunaan:** Mengatur widget dalam satu baris atau satu kolom secara berurutan.
  
3. **ListView:**
   - **Konteks Penggunaan:** Menampilkan daftar widget yang dapat digulir.
  
4. **AppBar:**
   - **Konteks Penggunaan:** Menyediakan baris judul dan ikon di bagian atas aplikasi.

### Elemen Input pada Form

1. **TextField:**
   - **Penggunaan:** Digunakan untuk input teks. Pada contoh checklist, digunakan untuk memberi nama pada setiap item.
  
2. **CheckboxListTile:**
   - **Penggunaan:** Elemen input ini digunakan sebagai elemen checklist untuk memilih atau menonaktifkan setiap item.

### Penerapan Clean Architecture pada Aplikasi Flutter

- **Langkah-langkah:**
  1. **Presentasi (UI):** Menyimpan tampilan dan logika UI.
  2. **Domain (Logika Bisnis):** Menyimpan logika bisnis independen dari kerangka kerja dan perangkat lunak eksternal.
  3. **Data (Sumber Daya Eksternal):** Menyimpan kode yang berhubungan dengan sumber daya eksternal seperti API atau database.


## Tugas 7


**Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?**

Perbedaan utama antara stateless dan stateful widget dalam pengembangan aplikasi Flutter adalah:

1. **Stateless Widget**:
   - Stateless widget tidak memiliki mutable (berubah) state atau data yang dapat berubah selama masa hidupnya.
   - Stateless widget umumnya digunakan untuk bagian UI yang tidak berubah atau tidak memerlukan pembaruan berdasarkan input atau perubahan data.
   - Contoh penggunaan stateless widget dalam tugas ini adalah untuk mendefinisikan tampilan tombol-tombol seperti "Lihat Item," "Tambah Item," dan "Logout" yang selalu memiliki tampilan yang sama.

2. **Stateful Widget**:
   - Stateful widget memiliki mutable state yang dapat berubah selama masa hidupnya.
   - Stateful widget digunakan ketika kita perlu melacak perubahan data atau mengubah tampilan UI berdasarkan perubahan state atau input.
   - Dalam tugas ini, kita menggunakan stateful widget untuk menyimpan data tentang tombol-tombol yang akan ditampilkan dan untuk memicu tampilan snackbar saat tombol ditekan.

**Seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing:**

Dalam tugas ini, kita menggunakan beberapa widget yang memiliki fungsi berbeda-beda:

1. **MyApp**: Ini adalah widget utama yang mewakili aplikasi Flutter. Ini adalah widget yang pertama kali dijalankan saat aplikasi dimulai.

2. **MyHomePage**: Ini adalah widget yang menampilkan tampilan utama aplikasi. Di dalamnya, kita memiliki teks "PBP Shop" dan GridView yang menampilkan daftar tombol.

3. **ShopItem**: Ini adalah kelas Dart yang digunakan untuk merepresentasikan item dalam daftar tombol. Ini memiliki atribut nama (name), ikon (icon), dan warna tombol (buttonColor).

4. **ShopCard**: Ini adalah widget yang digunakan untuk membuat kartu-kartu di dalam GridView. Masing-masing kartu menampilkan ikon dan teks dari item ShopItem yang sesuai. Ketika kartu ditekan, itu memunculkan snackbar.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial):**

Untuk mengimplementasikan checklist di atas, langkah-langkah yang diikuti adalah:

1. Membuat Proyek Flutter Baru:
   - Membuat proyek Flutter baru dengan perintah `flutter create inventory_app`.

2. Mengorganisasi Kode:
   - Mengorganisasi kode menjadi dua file: `main.dart` (untuk aplikasi utama) dan `menu.dart` (untuk definisi menu).

3. Menambahkan Warna ke Header:
   - Dalam `main.dart`, mengubah warna latar belakang header dengan mengatur `backgroundColor` dalam `appBarTheme`.

4. Membuat Kelas ShopItem:
   - Dalam `menu.dart`, membuat kelas Dart `ShopItem` untuk merepresentasikan item dalam daftar tombol dengan atribut nama, ikon, dan warna tombol.

5. Menggunakan Stateful Widget:
   - Dalam `menu.dart`, menggunakan stateful widget `ShopCard` untuk membuat kartu-kartu di dalam GridView. Ini juga digunakan untuk menampilkan snackbar ketika kartu ditekan.

6. Menyusun Daftar Tombol:
   - Dalam `menu.dart`, membuat daftar `items` yang berisi tiga objek `ShopItem` dengan warna yang berbeda untuk masing-masing tombol (Lihat Item, Tambah Item, dan Logout).

7. Menggunakan GridView:
   - Dalam `main.dart`, menggunakan GridView untuk menampilkan daftar tombol yang diambil dari daftar `items`.

8. Menampilkan Snackbar:
   - Ketika salah satu tombol di dalam `ShopCard` ditekan, kode pada `onTap` akan menampilkan snackbar dengan teks yang sesuai.
