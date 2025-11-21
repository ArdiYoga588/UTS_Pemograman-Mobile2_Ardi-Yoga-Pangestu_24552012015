# UTS_Pemograman-Mobile2_Ardi-Yoga-Pangestu_24552012015
##soal 1
Cubit dan Bloc adalah dua class yang disediakan oleh package flutter_bloc, namun memiliki perbedaan utama pada cara kerja dan kompleksitasnya.
Cubit
Lebih sederhana dibanding Bloc.
Mengubah state menggunakan fungsi langsung yang memanggil emit().
Tidak menggunakan event.
Cocok untuk logic yang tidak terlalu kompleks atau aplikasi kecil-menengah.
Lebih sedikit boilerplate.

Bloc
Menggunakan Event dan State terpisah.
Untuk mengubah state, UI mengirimkan event, kemudian Bloc memprosesnya dan mem-emit state baru.
Cocok untuk aplikasi besar, alur kompleks, atau kasus butuh kontrol penuh terhadap event-state.
#soal no 2
1. Kode lebih rapi dan terstruktur
Setiap bagian memiliki tugas yang jelas:
Model → menyimpan data
Logika bisnis → mengelola proses & perhitungan
UI → menampilkan data di layar
Tidak bercampur sehingga mudah dibaca.
2. Mudah di-maintain
Ketika ada error atau ingin menambah fitur, kita tahu harus mengubah bagian mana tanpa merusak bagian lain.
3. Reusable
Model dan cubit dapat digunakan ulang di halaman lain tanpa menulis ulang kode UI.
4. Lebih mudah untuk melakukan testing
Unit test cukup menguji logic di cubit.
Tidak perlu menjalankan seluruh UI.
5. Mempercepat pengembangan tim
Frontend developer bisa fokus UI
Backend/logic developer bisa fokus Cubit/Bloc
Tidak saling mengganggu.
#soal no 3
1. State: List<ProductModel> (cart items)
Fungsi:
Menyimpan daftar produk yang saat ini ada di keranjang.
Setiap kali product ditambah / dihapus / qty diubah → emit state baru.
2. TotalItemsState (bersifat turunan dari list)
Fungsi:
Menghitung jumlah item di keranjang.
Digunakan untuk menampilkan badge jumlah item atau summary checkout.
3. TotalPriceState (juga turunan dari list)
Fungsi:
Menghitung total harga dari semua produk di keranjang.
Dipakai di halaman summary/checkout.
