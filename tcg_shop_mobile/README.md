#TCG Shop Mobile 

![Introduction](https://img.yugioh-card.com/en/wp-content/uploads/2020/04/yugioh-share.jpg)


- Faiz Abdurrachman
- PBP B
- 2206824041



## Tugas 1 


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
