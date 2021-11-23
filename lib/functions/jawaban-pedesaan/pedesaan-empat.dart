pedesaanEmpat(int pedesaanEmpat) {
  //a
  String a =
      'Ya, benar pak. Ini alasan mengapa seseorang harus dilakukan screening kesehatan dahulu sebelum divaksinasi.';
  String b =
      'Tidak seperti itu, pak. Vaksinasi COVID-19 tidak memiliki efek samping, dan kemungkinan orang tersebut memang meiliki penyakit yang kebetulan kambuh setelah divaksinasi.';
  String c =
      'Ya, benar pak. ini adalah efek samping dari vaksinai COVID-19 dan sampai saat ini belum ditemukan solusinya.';
  String d =
      'Tidak seperti itu, pak. Setiap imunisasi memang meiliki efek samping yang terjadi pada sepersekian persen popoluasi, dan dapat terjadi pad orang yang memiliki kelainan imunitas.';
  String e =
      'Tidak seperti itu, pak. Kemungkinan orang tersebut tidak menjaga pola hidup sehat setalah divaksin, yang menyebebkan turunnya imunitas secara drastis';
  String pertanyaan =
      '(Bapak Nasrul - Desa Panggang RT 05/02) Halo, mengenai berita adanya warga yang jatuh sakit setelah divaksinasi, separah inikah efek dari vaksinasi COVID-19';
  switch (pedesaanEmpat) {
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
