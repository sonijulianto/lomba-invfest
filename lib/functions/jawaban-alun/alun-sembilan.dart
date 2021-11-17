alunSembilan(int alunSembilan) {
  String a =
      'Sebaiknya melakukan olahraga ringan di rumah seperti sit-up, back-up, skipping, dll selama 30 menit perhari. Tidak disarankan di tempat umum, tetapi jika disektar rumah boleh-boleh saja asalkan tetap menggunakan masker dan jaga jarak.';
  String b =
      'Diperbolehkan olahraga di tempat umum, tetapi harus ada pembatasan jumlah orang yang ada di wilayah tersebut agar tidak usah menggunakan masker saat berolahraga.';
  String c =
      'Dianjurkan melakukan olahraga berat tetapi tidak dianjurkan untuk berolahraga di tempat umum karena wajib menggunakan masker yang justru membahayakan kesehatan.';
  String d =
      'Sebaiknya olahraga di rumah saja seperti peregangan karena pemerintah menganjurkan seperti itu, jadi diikuti saja.';
  String e =
      'Demi mencegah penularan virus, maka sebaiknya melakukan olahraga di dalam ruangan walaupun justru juga tidak sehat karana tidak terkena sinar matahari.';
  String pertanyaan =
      '(Dik Putri - Penari) Bagaimana olahraga yang aman selama pandemi COVID-19? Apakah boleh melakukan olahraga di tempat umum?';
  switch (alunSembilan) {
    case 1:
      return a; //benar
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
