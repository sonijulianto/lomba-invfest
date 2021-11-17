pedesaanSembilan(int pedesaanSembilan) {
  //c
  String a = 'Aman kok, dik. Vaksinasi akan membuat adik benar-benar sehat.';
  String b =
      'Tidak terlalu, dik. hanya usia di atas 18 tahun yang diperbolehkan vaksin.';
  String c =
      'Aman kok, dik. Sama seperti vaksinasi campak dan sejenisnya, hal ini bertujuan untuk mengurangi risiko terkena penyakit COVID-19.';
  String d =
      'Tik terlalku, dik. Bila adik tidak memiliki cukup imun, adik akan dengan mudah terpapar virus penyakit COVID-19.';
  String e =
      'AMman kok, dik. Ketika adik telak divaksinasi adik tidak akan terkenan penyakit COVID-19 lagi selamanya.';
  String pertanyaan =
      '(Dik Jehan - Desa Saripan RT 04/01) Hai, kak. Sebenernya vkasinasi COVID-19 ITU aman atau tidak ya?';
  switch (pedesaanSembilan) {
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
