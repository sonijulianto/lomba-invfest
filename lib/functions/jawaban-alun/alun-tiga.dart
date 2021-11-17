alunTiga(int alunTiga) {
  String a =
      'Disarankan seperti itu, Kak. Agar memberikan perlindungan tubuh yang maksimal terhadap infeksi COVID-19. Satu dosis saja diperbolehkan tetapi ketika di masa genting seperti stok vaksin yang langka atau menipis.';
  String b =
      'Tidak wajib 2 dosis, Kak. Pemberian vaksin berbeda-beda setiap orang tergantung tingkat kekebalan tubuhnya. Jadi, sebelum divaksinasi wajib melakukan cek kesehatan terlebih dahulu.';
  String c =
      'Wajib 2 dosis, kak. Karena jika hanya 1 dosis belum bisa membentuk antibody dan masih rentan untuk terpapar COVID-19.';
  String d =
      'Pemerintah mewajibkan 2 dosis, Kak. Agar setelah divaksinasi terbentuk antibodi yang kuat dan sudah tidak perlu protokol kesehatan. Jika hanya 1 dosis maka antibodi yang terbentuk belum maksimal.';
  String e =
      'Untuk masyarakat biasa hanya diwajibkan 1 dosis saja, Kak. Sedangkan 2 dosis hanya untuk penyitas COVID-19 dan para tenaga kesehatan.';
  String pertanyaan =
      '(Dik Jovanka - Pelari) Apakah vaksinasi COVID-19 wajib 2 dosis? Bagaimana jika hanya melakukan 1 dosis saja?';
  switch (alunTiga) {
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
