jawabanSepuluh(int jawabanSepuluh) {
  String jawaban1 =
      'Jika dalam keadaan sehat dan tidak memiliki penyakit bawaan maka dipastikan sangat kecil kemungkinan untuk terkena COVID-19.';
  String jawaban2 =
      'Tetap rentan, Kak. Tetapi hanya pada lansia atau orang-orang yang mempunyai penyakit bawaan seperti komplikasi jantung, penyakit aru-paru, dan lain sebagainya.';
  String jawaban3 =
      'Iya, Kak. Walaupun dalan keadaan sehat kita harus tetap disiplin menerapkan 5M, karena virus ini dapat menyerang siapa saja dan dimana saja.';
  String jawaban4 =
      'Iya, Kak. Dalam keadaan sehat juga sangat rawan terkena virus ini jika belum melakukan vaksinasi. Karena vaksinasi satu-satunya cara mencegah virus Corona.';
  String jawaban5 =
      'Tidak, Kak. Kita tidak akan terkontaminasi virus ini jika mengkonsumsi vitamin dan berjemur saja.';
  String pertanyaan =
      '(Kak Lia - Penjual Kue) Saat ini saya dalam keadaan sehat-sehat saja, apakah tanpa disadari kita tetap rentan terinfeksi covid-19?';
  switch (jawabanSepuluh) {
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
