pedesaanTiga(int pedesaanTiga) {
  //d
  String a = '3M : Mencuci tangan, memakai masker, menjaga jarak.';
  String b =
      '5M : Mencuci tangan, memakai masker, menggunakan hand sanitizer, mengurangi bepergian, menghindari kerumunan.';
  String c = '3M : Mencuci tangan, memakai masker, menggunakan hand sanitizer.';
  String d =
      '5M : Mencuci tangan, memakai masker, menjaga jarak, menghindari kerumunan, mengurangi mobilitas.';
  String e =
      '3M : Menjaga pola hidup sehat, memakai masker, menggunakan hand sanitizer.';
  String pertanyaan =
      '(Dik Rizal - Desa Demaan RT 004/002) Halo, apa saja protokol kesehatan yang harus kami lakukan saat ini?';
  switch (pedesaanTiga) {
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
