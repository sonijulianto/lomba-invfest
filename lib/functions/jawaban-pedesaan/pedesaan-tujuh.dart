pedesaanTujuh(int pedesaanTujuh) {
  //d
  String a = 'Sama, bu, Corona dan COVID-19 merupakan nama penyakit yang sama.';
  String b =
      'Beda, bu, Corona adalah nama virus yang bentuknya menyerupai matahari, COVID-19 adalah nama penyakit yang disebabkan oleh virus Sars nCov-19.';
  String c =
      'Sama, bu, Corona dana COVID-19 merupakan virus yang berasal dari hewan kelelawar.';
  String d =
      'Beda, bu, Corona adalah nama sederhana dari virus Sars nCov-19, COVID-19 adalah nama penyakit yang disebabkan oleh virus Corona.';
  String e =
      'Sama, bu, Corona dan COVID-19 merupakan nama sederhana dari virus Sars nCov-19.';
  String pertanyaan =
      '(Ibu Ida - Perumahan Kuwasharjo RT 02/01) Halo kak, Sebenernya Corona dan COVID-19 itu sama atau beda kak?';
  switch (pedesaanTujuh) {
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
