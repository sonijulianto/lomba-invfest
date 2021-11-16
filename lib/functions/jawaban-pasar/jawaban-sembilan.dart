jawabanSembilan(int jawabanSembilan) {
  String jawaban1 =
      'Tidak adanya masyarakat yang patuh akan protokol kesehatan yang dianjurkan pemerintah.';
  String jawaban2 =
      'Virus Corona memiliki ridge yang lebih padat sehingga membuat lebih mudah menempel pada sel manusia.';
  String jawaban3 =
      'Penemuan vaksin yang tergolong lama sehingga tidak adanya vaksinasi untuk mencegah penyebaran.';
  String jawaban4 =
      'Virus Corona memiliki banyak sekali varian yang bermutasi sehingga tidak dapat dicegah penyebarannya.';
  String jawaban5 =
      'Kurangnya edukasi kepada masyarakat mengenai bahaya virus Corona.';
  String pertanyaan =
      '(Kak Riski - Penjual Buah) Apa yang membuat virus covid-19 cepat menyebar?';
  switch (jawabanSembilan) {
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
