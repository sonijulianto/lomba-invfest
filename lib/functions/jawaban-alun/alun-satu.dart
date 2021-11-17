alunSatu(int alunSatu) {
  String a =
      'Dianjurkan, Pak. Selama menggunakan masker yang tipis sehingga tetap ada sirkulasi udara yang masuk ke hidung.';
  String b =
      'Diperbolehkan, Pak. Karena penggunaan masker tidak mengganggu kesehatan selama berolahraga dalam intensitas ringan hingga sedang.';
  String c =
      'Penggunaan masker tidak dianjurkan, Pak. Karena dapat menghambat pernapasan. Yang penting tetap menjaga jarak dan menggunakan hand sanitizer saja.';
  String d =
      'Sebaiknya mengikuti anjuran pemerintah untuk tetap memakai masker. Jika tidak maka kita akan ditegur ataupun didenda.';
  String e =
      'Tidak diperbolehkan, Pak. Berolahraga menggunakan masker akan menurunkan intensitas daya tahan tubuh sehingga akan lebih memungkinkan untuk terinfeksi.';
  String pertanyaan =
      '(Kak Alvin - Olahragawan) Halo, apakah penggunaan masker dalam berolahraga diperbolehkan?';
  switch (alunSatu) {
    case 1:
      return a;
    case 2:
      return b; //benar
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
