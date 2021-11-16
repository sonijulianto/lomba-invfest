jawabanLima(int jawabanLima) {
  String jawaban1 =
      'Benar bu, akan tetapi tetap harus waspada karena hanya mengurangi resiko dan pasar tetap menjadi kluster penyebaran.';
  String jawaban2 =
      'Benar bu, karena secara tidak langsung juga mengurangi persentase pengunjung.';
  String jawaban3 =
      'Benar bu, sehingga pedagang sudah tidak perlu melaksanakan protokol kesehatan 5M.';
  String jawaban4 =
      'Benar bu, sehingga risiko para pedagang terpapar sangat sedikit, tidak seperti para pengunjung pasar bu.';
  String jawaban5 =
      'Benar bu, sehingga tidak perlu khawatir lagi akan terpapar COVID-19.';
  String pertanyaan =
      '(Ibu Puji - Penjual Sayuran) Halo dikm meski sudah diberi jarak tiap pedagang, apakah resiko penyebaran sudah berkurang?';
  switch (jawabanLima) {
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
