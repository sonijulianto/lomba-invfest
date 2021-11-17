alunEnam(int alunEnam) {
  String a =
      'Mengurangi stress dan mangatur pola tidur 4-5 jam perhari bagi orang dewasa.';
  String b = 'Melakukan olahraga berat setiap hari agar badan menjadi bugar.';
  String c =
      'Mengkonsumsi makanan bergizi seperti makanan cepat saji serta menghindari alkohol.';
  String d =
      'Melakukan vaksinasi saja sudah bisa untuk membentuk imunitas di dalam tubuh.';
  String e =
      'Untuk meningkatkan imunitas, kita disarankan berjemur 10-15 menit di pagi hari dan selalu mangkonsumsi vitamin.';
  String pertanyaan =
      '(Bu Avia - Penari) bagaimana cara meningkatkan imunitas tubuh agar terhindar dari COVID-19?';
  switch (alunEnam) {
    case 1:
      return a;
    case 2:
      return b;
    case 3:
      return c;
    case 4:
      return d;
    case 5:
      return e; //benar
    default:
      return pertanyaan;
  }
}
