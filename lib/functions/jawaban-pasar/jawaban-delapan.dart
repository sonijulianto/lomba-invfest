jawabanDelapan(int jawabanDelapan) {
  String jawaban1 =
      'Menurut penelitian, ibu hamil yang terinfeksi tidak banyak bedanya dengan orang lain yang terinfeksi, hanya saja ketika lahir anak tersebut kemungkinan masih terinfeksi COVID-19.';
  String jawaban2 =
      'Harus diberikan penanganan khusus karena rentan terjadi komplikasi. Menurut penelitian, virus tersebut tidak menular ke kandungan tetapi tidak menutup kemungkinan bayi tersebut terinfeksi ketika lahir dan kontak dekat dengan ibunya yang terpapar COVID-19.';
  String jawaban3 =
      'Ibu hamil terutama pada trimester ketiga sangat rentan terjadi gangguan pernapasan dan komplikasi. Maka, disarankan agar mempercepat melakukan proses kelahiran walaupun janin tersebut tidak akan terinfeksi COVID-19.';
  String jawaban4 =
      'Penularan oleh ibu hamil ke janinnya tergantung pada proses kelahirannya. Janin tidak akan tertular ketika proses kelahiran dengan operasi caesar.';
  String jawaban5 =
      'Ibu hamil tidak akan menularkan virus COrona ke janinnya, jika terinfeksi COVID-19 namun tidak bergejala.';
  String pertanyaan =
      '(Bu Fitri - Permak Pakaian) Bagaimana jika ibu hamil terinfeksi COVID-19? Apakah menular ke kandungannya?';
  switch (jawabanDelapan) {
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
