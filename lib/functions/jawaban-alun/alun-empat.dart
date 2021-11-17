alunEmpat(int alunEmpat) {
  String a =
      'Benar, Kak. Orang tersebut sudah terbentuk antibodi dalam tubuhnya sehingga dapat mencegah virus yang akan masuk.';
  String b =
      'Benar, Kak. Orang tersebut sudah kebal karena terbentuknya antibodi, tetapi harus tetap menjaga jarak saja.';
  String c =
      'Tidak, Kak. Orang tersebut masih bisa terpapar karena terbentuknya antibodi dalam tubuh hanya meringankan gejala dan tidak sepenuhnya mencegah virus masuk.';
  String d =
      'Tidak, Kak. Karena virus ini dapat menyerang siapa saja yang tidak memakai masker.';
  String e =
      'Benar, Kak. Asalkan orang tersebut sudah melaksanakan vaksinasi maka akan terbentuk kekebalan di tubuh nya, sehingga sudah pasti terhindar dari COVID-19.';
  String pertanyaan =
      '(Kak Edo - Mahasiswa Baru) Jika ada orang yang telah dinyatakan sembuh dari COVID-19, apakah orang tersebut sudah kebal dari virus ini dan tidak akan kembali terpapar COVID-19?';
  switch (alunEmpat) {
    case 1:
      return a;
    case 2:
      return b;
    case 3:
      return c; //benar
    case 4:
      return d;
    case 5:
      return e;
    default:
      return pertanyaan;
  }
}
