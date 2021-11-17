pedesaanDelapan(int pedesaanDelapan) {
  //a
  String a = 'COVID-19 merupakan singkaatan dari Corona Virus Disease';
  String b = 'COVID-19 merupakan singkaatan dari nCov Virus Disease';
  String c = 'COVID-19 merupakan singkaatan dari Corona Virus Diseases';
  String d = 'COVID-19 merupakan singkaatan dari Corona Virtual Disease';
  String e = 'COVID-19 merupakan singkaatan dari nCov Virus Disease';
  String pertanyaan =
      '(Ibu Yektana - Desa Tahunan RT 11/02) Permisi kak, mau tanya nih. Apa sih kak kepanjangan dari COVID-19 itu ?';
  switch (pedesaanDelapan) {
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
