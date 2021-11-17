pedesaanLima(int pedesaanLima) {
  //d
  String a =
      'Karena dengan masker 2 lapis, kakak tidak aka bisa menyebarkan virus Corona yang mungkin ada di dalam tubuh kakak.';
  String b =
      'Karena dengan masker 2 lapis, kakak tidak akan terpapar COVID-19.';
  String c =
      'Karena dengan masker 2 lapis, kakak tidak perlu lagi melaksanakan protokos kesehatan yang lain.';
  String d =
      'Karena dengan masker 2 lapis dapat mengurangi risiko terpapar COVID-19 hingga 85%.';
  String e = 'Karena dengan masker 2 lapis, imunitas kakak akan terbentuk.';
  String pertanyaan =
      '(Kak Haidar - Desa Bapangan RT 03/02) Halo, dik. Mengapa sekarang dianjurkan untuk menggunakan masker 2 lapis?';
  switch (pedesaanLima) {
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
