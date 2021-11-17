pedesaanEnam(int pedesaanEnam) {
  //a
  String a =
      'Tidak bu, vaksinasi tidak bekerja secar instan. Butuh waktu minimal satu bulan agar imun dari vaksinasi terbentuk.';
  String b = 'Benar bu, ini mengapa diadakan vaksinasi sebanyak 2 kali.';
  String c =
      'Tidak bu, karena definisi dari vaksin adalah dimasukannya virus baik yang telah dilemahkan supaya menstimulasi imunitas. sehinga alat pengambilan spesimen tes COVID-19 mendeteksi virus tersebut sebagai virus Corona.';
  String d =
      'Benar bu, vaksinasi dapat gagal karena jarum suntik yang kurang higienis.';
  String e =
      'Benar bu, ini mengapa vaksinasi hanya dapat diberikan kepada warga yang imunitasnya memang sangat kuat.';
  String pertanyaan =
      '(Ibu Arini - Desa penangkol RT 03/03) Halo dik, saya ingin divaksinasi tetapi masih terdapat keraguan. Saya mendapat berita adanya warga yang terkonfirmasi positif COVID-19 setelah sebelumnya divaksinasi, apakah vaksinasi itu gagal?';
  switch (pedesaanEnam) {
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
