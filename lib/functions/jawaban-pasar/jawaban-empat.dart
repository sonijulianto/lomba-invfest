jawabanEmpat(int jawabanEmpat) {
  String a =
      'Karena virus Corona berukuran sangat kecil sehingga tidak bisa dicegah dengan memakai APD.';
  String b =
      'Karena adanya faktor kelalaian dan ketidak disiplinan tenaga kesehatan saat pemakaian APD sehingga virus lebih mudah masuk.';
  String c =
      'Karena APD yang digunakan tidak sesuai standar sehingga tidak mampu membantu tenaga kesehatan untuk mencegah virus masuk.';
  String d =
      'Karena APD hanya alat bantu dan tidak menjamin 100% untuk tidak terpapar COVID-19, serta penurunan imunitas juga mempengaruhi kondisi tenaga medis.';
  String e =
      'Karena tenaga medis memiliki resiko yang sangat tinggi dalam penanganan COVID-19, walaupun telah menggunakan APD dengan benar, pasti tetap akan terkontaminasi.';
  String pertanyaan =
      '(Kak Restu - Toko Kain) Mengapa tenaga medis tetap ada yang terpapar walaupun sudah memakai APD?';
  switch (jawabanEmpat) {
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
