alunSepuluh(int alunSepuluh) {
  String a =
      'Keduanya efektif dalam membunuh virus-virus yang ada di fasilitas umum bahkan juga di pakaian. Karena dalam desinfektan mengandung bahan kimia berupa alkohol yang dapat cepat membunuh miktoorganisme.';
  String b =
      'Keduanya belum efektif dalam upaya preventif COVID-19 karena virus tersebut hanya bisa di cegah dengan peningkatan imunitas di dalam tubuh kita sendiri.';
  String c =
      'Box sterilisasi lebih efektif karena langsung tertuju pada orang-orang yang akan pergi ke suatu tempat atau keluar dari suatu tempat. Sedangkan penyemprotan dijalan kurang efektif karena penularanya yang sangat minim.';
  String d =
      'Penyemprotan desinfektan dapat membunuh mikroorganisme tetapi juga dapat berisiko mengiritasi kulit. Jadi, lebih efektif penggunaan desinfektan ke fasilitas umum bukan ke tubuh manusia.';
  String e =
      'Keduanya efektif jika kandungan cairan desinfektan menggunakan senyawa kimia yang konsentrasinya tinggi sehingga dapat membunuh virus yang ada di jalan maupun tubuh manusia.';
  String pertanyaan =
      '(Kak Umi - Pesepeda) Apakah penyemprotan disinfektan di jalan raya dan juga di box sterilisasi efektif membunuh virus?';
  switch (alunSepuluh) {
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
