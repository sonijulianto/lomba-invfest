alunDua(int alunDua) {
  String a =
      'Ketika kasus positif COVID-19 sudah menipis sehingga masyarakat sudah bisa bebas masker.';
  String b =
      'Lockdown berakhir ketika kasus positif COVID-19 menurun tajam. Tetapi, masyarakat harus tetap mematuhi protokol kesehatan yang berlaku.';
  String c =
      'Lockdown berakhir jika semua masyarakatnya sudah di vaksinasi sehingga tidak ada lagi yang akan tertular virus Corona.';
  String d =
      'Lockdown akan berakhir jika selama 14 hari tidak ada satupun masyarakat yang berkumpul atau pergi ke fasilitas umum.';
  String e =
      'Ketika angka kasus positif COVID-19 stabil dan tidak ada lonjakan maka lockdown bisa dinyatakan berakhir.';
  String pertanyaan =
      '(Pak Zaenal - Pejalan Kaki) Kapan lockdown di suatu tempat dinyatakan berakhir? apa syaratnya?';
  switch (alunDua) {
    case 1:
      return a;
    case 2:
      return b; //benar
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
