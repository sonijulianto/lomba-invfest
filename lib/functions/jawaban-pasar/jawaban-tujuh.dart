jawabanTujuh(int jawabanTujuh) {
  String jawaban1 =
      'Tidak terlalu diperlukan, Pak. Karena hand sanitizer sudah cukup untuk terhindar dari COVID-19.';
  String jawaban2 =
      'Tetap menggunakan masker ya, pak. Karena ini adalah anjuran pemerintah, alangkah baiknya kita menuruti saja.';
  String jawaban3 =
      'Tetap menggunakan masker ya, Pak. Karena penyebaran virus Corona tidak hanya melalui tangan saja, melainkan dapat melalui droplet dari batuk maupun bersin.';
  String jawaban4 =
      'Tidak terlalu diperlukan, pak. Cukup memilih salah satu saja, masker atau hand sanitizer.';
  String jawaban5 =
      'Tetap menggunakan masker ya, Pak. Karena hand sanitizer merupakan fasilitas yang hanya diberikan kepada pengunjung.';
  String pertanyaan =
      '(Bapak Ahmad - Distributor Buah) Lalu, Bolehkah kita tidak menggunakan masker lagi? Karena sudah disediakan hand sanitizer dan tempat cuci tangan di tiap sudut.';
  switch (jawabanTujuh) {
    case 1:
      return jawaban1;
    case 2:
      return jawaban2;
    case 3:
      return jawaban3;
    case 4:
      return jawaban4;
    case 5:
      return jawaban5;
    default:
      return pertanyaan;
  }
}
