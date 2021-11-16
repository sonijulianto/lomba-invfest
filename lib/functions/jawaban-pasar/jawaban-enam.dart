jawabanEnam(int jawabanEnam) {
  String jawaban1 =
      'Diperbolehkan, Pak. Selama kondisi tubuh stabil dan tidak sedang mengalami komplikasi. Namun, dianjurkan untuk tetap berkonsultasi dengan dokter pada saat hendak vaksinasi.';
  String jawaban2 =
      'Tidak diperbolehkan, Pak. Karena justru dengan vaksinasi maka daya tahan tubuh mereka semakin menurun.';
  String jawaban3 =
      'Diperbolehkan, Pak. Karena mereka yang memiliki penyakit bawaan membutuhkan imunitas tubuh yang lebih dari pemberian vaksinasi. Apalagi ketika tubuhnya drop maka harus cepat diberi vaksinasi.';
  String jawaban4 =
      'Tidak direkomendasikan untuk melakukan vaksinasi, Pak. Tetapi harus tetap mematuhi protokol kesehatan.';
  String jawaban5 =
      'Tidak diperbolehkan, Pak. Orang yang memiliki penyakit bawaan hanya diberikan vitamin penunjang saja untuk meningkatkan imunitas tubuhnya.';
  String pertanyaan =
      '(Pak Gilang - Penjahit) Saya memiliki penyakit bawaan seperti jantung dan diabetes, apakah saya diperbolehkan melakukan vaksinasi?';
  switch (jawabanEnam) {
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
