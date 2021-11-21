jawabanDua(int jawabanDua) {
  String a =
      'Tidak benar, Pak. Penyitas COVID-19 tidak harus menunggu 3 bulan, karena justru setelah sembuh tubuhnya menjadi sangat rentan untuk dapat terinfeksi kembali.';
  String b =
      'Tidak harus menunggu 3 bulan, Pak. Asalkan tubuh sudah kuat kembali untuk bisa menerima efek samping dari vaksinasi.';
  String c =
      'Benar, Pak. Karena sebelum 3 bulan usai dinyatakan sembuh, mereka masih memiliki kekebalan yang telah di bangun selama terinfeksi virus Corona.';
  String d =
      'Benar, Pak. Karena penyitas COVID-19 bukan fokus pemerintah untuk diberikan vaksinasi. Jadi, untuk pemerataan maka didahulukan orang yang belum pernah terinfeksi COVID-19.';
  String e =
      'Benar, Pak. Karena penyitas COVID-19 bukan fokus pemerintah untuk diberikan vaksinasi. Jadi, untuk pemerataan maka didahulukan orang yang belum pernah terinfeksi COVID-19.';
  String pertanyaan =
      '(Bapak Budi - Sol Sepatu) Apakah benar penyitas covid harus menunggu 3 bulan terlebih dahulu untuk dapat melakukan vaksinasi?';
  switch (jawabanDua) {
    case 1:
      return a;
    case 2:
      return b;
    case 3:
      return c; //benar
    case 4:
      return d;
    case 5:
      return e;
    default:
      return pertanyaan;
  }
}
