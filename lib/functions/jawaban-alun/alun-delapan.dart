alunDelapan(int alunDelapan) {
  String a =
      'Benar, tetapi kemungkinan sangat kecil karena penularan utama virus ini adalah antar manusia. Untuk itu, masyarakat diharapkan rutin berkonsultasi dan memeriksakan peliharaannya.';
  String b =
      'Hewan peliharaan dapat terkontaminasi virus Corona tetapi tidak dapat manularkan kepada orang lain.';
  String c =
      'Hewan-hewan tersebut dapat tertular dan menularkan karena belum adanya upaya pencegahan terkait virus Corona terhadap hewan. Maka dari itu, disarankan bagi pemilik hewan peliharaan untuk tidak kontak erat dengan hewan tersebut.';
  String d =
      'Hewan peliharaan tidak akan menularkan COVID-19 ketika hewan tersebut sudah ikut divaksin ataupun diberi antibiotik.';
  String e =
      'Belum ada penelitian tentang hal tersebut, maka dari itu kita menunggu upaya dari pemerintah saja.';
  String pertanyaan =
      '(Kak Thauriq - Mahasiswa Akhir) Apakah benar hewan peliharaan seperti kucing ataupun anjing dapat menularkan virus Corona?';
  switch (alunDelapan) {
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
