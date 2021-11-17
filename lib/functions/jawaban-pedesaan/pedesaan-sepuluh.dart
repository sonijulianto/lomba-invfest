pedesaanSepuluh(int pedesaanSepuluh) {
  //c
  String a =
      'Ya, benar pak. Virus tersebut ditemukan di Jepang melalui hewan kelelawar.';
  String b =
      'Tidak benar, pak. Virus tersebut datang nya bukan dari hewan kelelawar, melainkan dari burung hantu';
  String c =
      'Ya, benar pak. Virus tersebut ditemukan di Tiongkok melalui hewan kelelawar';
  String d =
      'Ya, benar pak. Virus tersebut ditemukan di Tiongkok melalui hewan burung hantu';
  String e =
      'Ya, benar pak. Virus tersebut ditemukan di Tiongkok melalui hewan babi';
  String pertanyaan =
      '(Pak Elfin - Desa Kuwasen RT 04/01) Saya ingin bertanya. Benarkan virus Sars nCov-19 berasal dari hewan kelelawar?';
  switch (pedesaanSepuluh) {
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
