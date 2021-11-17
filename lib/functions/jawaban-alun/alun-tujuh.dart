alunTujuh(int alunTujuh) {
  String a =
      'Aman-aman saja, tetapi lebih baik di bawa pulang dan sebelum di makan dihangatkan terlebih dahulu agar virus-virus yang menempel dimakanan tersebut mati.';
  String b =
      'Makanan dari luar sangat beresiko menyebarkan virus, jadi dimasa pandemi kita dilarang untuk membeli makanan dari luar.';
  String c =
      'Aman jika kita membeli di restoran saja, tidak untuk membeli makanan kaki lima karena restoran sudah jelas higienis.';
  String d =
      'Tidak masalah kita membeli makanan dan makan di tempat asalkan membawa tempat makan dan hand sanitizer sendiri.';
  String e = 'Aman-aman saja karena virus tidak dapat menempel pada makanan';
  String pertanyaan =
      '(kak Dava - Pelajar SMA) Apakah aman jika membeli makanan dari luar di masa pandemi seperti ini?';
  switch (alunTujuh) {
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
