jawabanTiga(int jawabanTiga) {
  String a =
      'Sangat penting, Bu. Karena jika imun kita rendah maka sudah dapat dipastikan kita terinfeksi COVID-19. Maka dari itu diwajibkan untuk menjaga imunitas tubuh di masa pandemi seperti sekarang.';
  String b =
      'Imunitas tubuh hanya sebagai pelindung terakhir dalam tubuh, Bu. Jadi, untuk terhindar dari COVID-19 disarankan untuk tetap memakai masker saat keluar rumah.';
  String c =
      'Imunitas tubuh penting untuk pencegahan virus Corona. Maka kita diwajibkan untuk vaksinasi saja sebagai pencegahannya.';
  String d =
      'Tidak seberapa penting, karena dengan kita menerapkan protokol kesehatan ketika bertemu orang banyak maka aman-aman saja untuk dapat terhindar dari virus COrona.';
  String e =
      'Imunitas tubuh sangat penting, Bu. Karena virus Corona menyerang sistem kekebalan tubuh yang harus dijaga dengan menerapkan 5M. Juka imunitas rendah maka rentang terpapar COVID-19.';
  String pertanyaan =
      '(Ibu Parti - Toko Sembako) Halo, dik. Seberapa penting peran imunitas tubuh untuk mencegah penularan covid-19?';
  switch (jawabanTiga) {
    case 1:
      return a;
    case 2:
      return b;
    case 3:
      return c;
    case 4:
      return d;
    case 5:
      return e;
    default:
      return pertanyaan;
  }
}
