jawabanSatu(int jawabanSatu) {
  String a =
      'Sinar matahari saja sudah bisa untuk mematikan virus pada permukaan benda, tetapi sinar matahari tidak memiliki parameter yang jelas. Sehingga tetap diperlukan disinfektan untuk membantu mematikan virus Corona.';
  String b =
      'Disinfektan saja sudah cukup untuk mematikan virus-virus di permukaan benda, karena sinar matahari hanya bisa untuk mematikan virus di tubuh. Jadi, tidak diperlukan lagi sinar matahari untuk mematikan virus.';
  String c =
      'Sinar matahari lebih efektif untuk mematikan virus daripada disinfektan, karena disinfektan terdapat kandungan alkohol yang justru dapat membahayakan.';
  String d =
      'Baik sinar matahari maupun disinfektan tidak berpengaruh karena virus yang ada pada benda akan hilang dengan sendirinya.';
  String e =
      'Jika benda tersebut sudah terkena sinar matahari maka tidak diperlukan lagi menggunakan disinfektan, begitu pula sebaliknya.';
  String pertanyaan =
      '(Kak Pangaribawa - Penjual Ikan Segar) Apakah sinar matahari dapat mematikan virus di permukaan benda? Atau disinfektan masih diperlukan untuk mematikan virus?';
  switch (jawabanSatu) {
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
