pedesaanSatu(int pedesaanSatu) {
  //b
  String a = 
      'Diutamakan untuk selalu menjaga pola hidup sehat kak, karena dengan begini sistem imun kakak akan kuat, dan tidak ada masalah untuk beraktivitas di luar rumah.';
  String b =
      'Keduanya sama penting kak, Disamping terbentuknya imun, kakak juga disarankan untuk mengurangi aktivitas diluar rumah, karena ada kemungkinan kakak berperan sebagai jembatan virus kepada orang lain.';
  String c =
      'Diutamakan untuk mengurangi aktifitas diluar rumah ya kak, Karena bagaimanapun juga rumah adalah tempat paling aman untuk terhindar dari COVID-19.';
  String d =
      'Keduanya sama penting kak. Karena dengan mengurangi aktivitas di luar rumah, pola hidup sehat akan mengikuti.';
  String e =
      'Boleh dilakukan dan boleh tidak kak, karena kakak masih muda dan risiko COVID-19 sangatlah rendah.';
  String pertanyaan =
      '(Kak Rahma - Desa Mambak RT 02/04) Halo, dik. Mana yang lebih penting ya, menjaga pola hidup sehat atau mengurangi aktivitas di luar rumah ?';
  switch (pedesaanSatu) {
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
