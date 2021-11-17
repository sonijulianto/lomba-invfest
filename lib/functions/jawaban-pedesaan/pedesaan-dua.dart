pedesaanDua(int pedesaanDua) {
  //c
  String a =
      'Saya rasa bapak sudah pasti terkonfirmasi positif COVID-19, silahkan mendapatkan layanan kesehatan dirumah sakit terdekat ya pak.';
  String b =
      'Sepertinya ini merupakan gejala sakit biasa pak. Tidak apa-apa untuk tetap beraktivitas di luar rumah, karena bapak tidak menunjukan adanya virus Corona.';
  String c =
      'Sebaiknya bapak melakukan pemantauan kondisi tubuh selama 3 hari kedepan dengan menjaga pola hidup sehat, apabila gejala masih berlanjut silahkan untuk mengikuti test Swab ya pak.';
  String d =
      'Tidak apa-apa pak, asalkan bapak tidak mengalami sesak nafas kemungkinan masih aman unttuk bepergian.';
  String e =
      'Saya sarankan agar bapak langsung mengikuti vaksinasi supaya imunitas bapak cepat terbentuk dan cepat membaik';
  String pertanyaan =
      '(Bapak Udik - Desa Bukit Asri RT 01/01) Saya mengalami gejala batuk dan kondisi suhu tubuh saya sangat panas. Bagaimana ya kak?';
  switch (pedesaanDua) {
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
