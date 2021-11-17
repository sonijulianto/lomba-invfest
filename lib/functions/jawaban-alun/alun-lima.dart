alunLima(int alunLima) {
  String a =
      'Rokok tidak berpengaruh sama sekali dengan imunitas tubuh seseorang, Kak. Bagi sebagian orang, merokok merupakan salah satu cara untuk mengurangi stress.';
  String b =
      'Benar, pak. Tetapi tergantung apakah perokok tersebut sudah melakukan vaksinasi atau belum.';
  String c =
      'Tidak semua perokok rentan terinfeksi COVID-19 karena tergantung kehigienisan tangan ketika sedang merokok.';
  String d =
      'Benar, Pak. Karena kandungan nikotin yang ada di dalam rokok mampu menurunkan kekebalan tubuh. Selain itu, merokok dapat mengakibatkan gangguan saluran pernapasan.';
  String e =
      'Ya, karena rokok mengandung senyawa kimia yang berbahaya bagi kesehatan sehingga sudah pasti perokok akan terinfeksi COVID-19.';
  String pertanyaan =
      '(Kak Tika - Pesepeda) Apakah perokok lebih rentan terinfeksi COVID-19?';
  switch (alunLima) {
    case 1:
      return a;
    case 2:
      return b;
    case 3:
      return c;
    case 4:
      return d; //benar
    case 5:
      return e;
    default:
      return pertanyaan;
  }
}
