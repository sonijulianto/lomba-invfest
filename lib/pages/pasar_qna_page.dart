import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-delapan.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-dua.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-empat.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-enam.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-lima.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-satu.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-sembilan.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-sepuluh.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-tiga.dart';
import 'package:lomba/functions/jawaban-pasar/jawaban-tujuh.dart';
import 'package:lomba/functions/sounds/sound.dart';
import 'package:lomba/pages/bonus_page.dart';
import 'package:lomba/widgets/chat_card.dart';
import 'package:lomba/widgets/chat_gambar_card.dart';
import 'package:lomba/widgets/jawaban.dart';

class PasarQnaPage extends StatefulWidget {
  PasarQnaPage({Key? key}) : super(key: key);

  @override
  _PasarQnaPageState createState() => _PasarQnaPageState();
}

class _PasarQnaPageState extends State<PasarQnaPage> {
  int index = 0;
  int jawaban1 = 0;
  int jawaban2 = 0;
  int jawaban3 = 0;
  int jawaban4 = 0;
  int jawaban5 = 0;
  int jawaban6 = 0;
  int jawaban7 = 0;
  int jawaban8 = 0;
  int jawaban9 = 0;
  int jawaban10 = 0;

  int benar = 0;
  int salah = 0;

  final controller = ScrollController();
  void scrollDown() {
    final double end = 2562.6428571428573;
    controller.jumpTo(end);
    print(end);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Pasar Tajur',
            style: whiteTextStyle,
          ),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 25, 178, 238),
                Color.fromARGB(255, 21, 236, 229),
                Color.fromARGB(255, 255, 236, 229),
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: ListView(
                    controller: controller,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            playSound();
                            index == 0 ? index += 1 : index += 0;
                          });
                        },
                        child: ChatCard(
                            people: '',
                            alignment: Alignment.bottomRight,
                            message:
                                'Selamat datang untuk seluruh warga desa tari kolot, sebagai Duta Covidiolog saya akan membagikan sosialisasi tentang pandemi COVID-19 dan mnegajak para warga untuk bersama-sama peduli terhadap kesehatan kita dan orang lain.'),
                      ),
                      index >= 1
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  playSound();
                                  index == 1 ? index += 1 : index += 0;
                                });
                              },
                              child: ChatCard(
                                people: '',
                                alignment: Alignment.bottomRight,
                                message:
                                    'Berikut saya lampirkan vidio penjelasan yang saya buat, spesial untuk warga desa tari kolot',
                              ),
                            )
                          : SizedBox(),
                      index >= 2
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  playSound();
                                  index == 2 ? index += 1 : index += 0;
                                });
                              },
                              child: ChatGambar(
                                gambar: 'assets/pasar.jpg',
                                alignment: Alignment.bottomRight,
                              ),
                            )
                          : SizedBox(),
                      index >= 3
                          ? GestureDetector(
                              onTap: () {
                                soundMessage();
                                setState(() {
                                  index == 3 ? index += 1 : index += 0;
                                  scrollDown();
                                });
                              },
                              child: ChatCard(
                                people: '',
                                alignment: Alignment.bottomRight,
                                message:
                                    'Baik, apakah ada pertanyaan terkait sosialisasi yang saya berikan?',
                              ),
                            )
                          : SizedBox(),
                      // pertanyaan 1
                      index >= 4
                          ? ChatCard(
                            warna:
                                  sepuluhTextStyle.copyWith(fontWeight: bold),
                              people: 'Kak Pangaribawa - Penjual Ikan Segar',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Apakah sinar matahari dapat mematikan virus di permukaan benda? Atau disinfektan masih diperlukan untuk mematikan virus?',
                            )
                          : SizedBox(),
                      index >= 5
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: jawabanSatu(jawaban1),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 2
                      index >= 6
                          ? ChatCard(
                            warna:
                                  sembilanTextStyle.copyWith(fontWeight: bold),
                              people: 'Bapak Budi - Sol Sepatu',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Apakah benar penyitas covid harus menunggu 3 bulan terlebih dahulu untuk dapat melakukan vaksinasi?',
                            )
                          : SizedBox(),
                      index >= 7
                          ? ChatCard(
                              people: 'Bapak Budi - Sol Sepatu',
                              jawaban: true,
                              message: jawabanDua(jawaban2),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 3
                      index >= 8
                          ? ChatCard(
                            warna:
                                  delapanTextStyle.copyWith(fontWeight: bold),
                              people: 'Ibu Parti - Toko Sembako',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Halo, dik. Seberapa penting peran imunitas tubuh untuk mencegah penularan covid-19?',
                            )
                          : SizedBox(),
                      index >= 9
                          ? ChatCard(
                              people: 'Ibu Parti - Toko Sembako',
                              jawaban: true,
                              message: jawabanTiga(jawaban3),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 4
                      index >= 10
                          ? ChatCard(
                            warna: tujuhTextStyle.copyWith(fontWeight: bold),
                              people: 'Kak Restu - Toko Kain',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Mengapa tenaga medis tetap ada yang terpapar walaupun sudah memakai APD?',
                            )
                          : SizedBox(),
                      index >= 11
                          ? ChatCard(
                              people: 'Kak Restu - Toko Kain',
                              jawaban: true,
                              message: jawabanEmpat(jawaban4),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 5
                      index >= 12
                          ? ChatCard(
                            warna: enamTextStyle.copyWith(fontWeight: bold),
                              people: 'Ibu Puji - Penjual Sayuran',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Halo dikm meski sudah diberi jarak tiap pedagang, apakah resiko penyebaran sudah berkurang?',
                            )
                          : SizedBox(),
                      index >= 13
                          ? ChatCard(
                              people: 'Ibu Puji - Penjual Sayuran',
                              jawaban: true,
                              message: jawabanLima(jawaban5),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 6
                      index >= 14
                          ? ChatCard(
                            warna: limaTextStyle.copyWith(fontWeight: bold),
                              people: 'Pak Gilang - Penjahit',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Saya memiliki penyakit bawaan seperti jantung dan diabetes, apakah saya diperbolehkan melakukan vaksinasi?',
                            )
                          : SizedBox(),
                      index >= 15
                          ? ChatCard(
                              people: 'Pak Gilang - Penjahit',
                              jawaban: true,
                              message: jawabanEnam(jawaban6),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 7
                      index >= 16
                          ? ChatCard(
                            warna: empatTextStyle.copyWith(fontWeight: bold),
                              people: 'Bapak Ahmad - Distributor Buah',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Lalu, Bolehkah kita tidak menggunakan masker lagi? Karena sudah disediakan hand sanitizer dan tempat cuci tangan di tiap sudut.',
                            )
                          : SizedBox(),
                      index >= 17
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: jawabanTujuh(jawaban7),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 8
                      index >= 18
                          ? ChatCard(
                            warna: tigaTextStyle.copyWith(fontWeight: bold),
                              people: 'Bu Fitri - Permak Pakaian',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Bagaimana jika ibu hamil terinfeksi COVID-19? Apakah menular ke kandungannya?',
                            )
                          : SizedBox(),
                      index >= 19
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: jawabanDelapan(jawaban8),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 9
                      index >= 20
                          ? ChatCard(
                            warna: duaTextStyle.copyWith(fontWeight: bold),
                              people: 'Kak Riski - Penjual Buah',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Apa yang membuat virus covid-19 cepat menyebar?',
                            )
                          : SizedBox(),
                      index >= 21
                          ? ChatCard(
                              people: 'Kak Riski - Penjual Buah',
                              jawaban: true,
                              message: jawabanSembilan(jawaban9),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 10
                      index >= 22
                          ? ChatCard(
                            warna: satuTextStyle.copyWith(fontWeight: bold),
                              people: 'Kak Lia - Penjual Kue',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Saat ini saya dalam keadaan sehat-sehat saja, apakah tanpa disadari kita tetap rentan terinfeksi covid-19?',
                            )
                          : SizedBox(),
                      index >= 23
                          ? ChatCard(
                              people: 'Kak Lia - Penjual Kue',
                              jawaban: true,
                              message: jawabanSepuluh(jawaban10),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: whiteColor),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 147, 217, 249),
                        Color.fromARGB(255, 206, 236, 250),
                      ],
                    ),
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                        24,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Jawaban(
                            color: jawaban1 == 1
                                ? greenColor
                                : jawaban1 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban2 == 3
                                ? greenColor
                                : jawaban2 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban3 == 5
                                ? greenColor
                                : jawaban3 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban4 == 4
                                ? greenColor
                                : jawaban4 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban5 == 1
                                ? greenColor
                                : jawaban5 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban6 == 1
                                ? greenColor
                                : jawaban6 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban7 == 3
                                ? greenColor
                                : jawaban7 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban8 == 2
                                ? greenColor
                                : jawaban8 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban9 == 2
                                ? greenColor
                                : jawaban9 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban10 == 3
                                ? greenColor
                                : jawaban10 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            // jawaban 1
                            // 1
                            index == 4
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        benar++;
                                        jawaban1 = 1;
                                      });
                                      playSoundTrue();
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;
                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSatu(1),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 2
                            index == 4
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban1 = 2;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;
                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSatu(2),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 3
                            index == 4
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban1 = 3;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;
                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSatu(3),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 4
                            index == 4
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban1 = 4;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSatu(4),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 5
                            index == 4
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban1 = 5;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSatu(5),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // jawaban 2
                            // 1
                            index == 6
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban2 = 1;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanDua(1),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 2
                            index == 6
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban2 = 2;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanDua(2),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 3
                            index == 6
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        benar++;
                                        jawaban2 = 3;
                                        playSoundTrue();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanDua(3),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 4
                            index == 6
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban2 = 4;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanDua(4),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 5
                            index == 6
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban2 = 5;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanDua(5),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // jawaban 3
                            // 1
                            index == 8
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban3 = 1;
                                      });
                                      playSoundFalse();
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;
                                          //
                                        });
                                      });
                                      scrollDown();
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanTiga(1),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 2
                            index == 8
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban3 = 2;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanTiga(2),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 3
                            index == 8
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban3 = 3;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanTiga(3),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 4
                            index == 8
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban3 = 4;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanTiga(4),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 5
                            index == 8
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        benar++;
                                        jawaban3 = 5;
                                        playSoundTrue();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanTiga(5),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // jawaban 4
                            // 1
                            index == 10
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban4 = 1;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanEmpat(1),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 2
                            index == 10
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban4 = 2;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanEmpat(2),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 3
                            index == 10
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban4 = 3;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanEmpat(3),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 4
                            index == 10
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        benar++;
                                        jawaban4 = 4;
                                        playSoundTrue();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanEmpat(4),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 5
                            index == 10
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban4 = 5;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanEmpat(5),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // jawaban 5
                            // 1
                            index == 12
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        benar++;
                                        jawaban5 = 1;
                                        playSoundTrue();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanLima(1),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 2
                            index == 12
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban5 = 2;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanLima(2),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 3
                            index == 12
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban5 = 3;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanLima(3),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 4
                            index == 12
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban5 = 4;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanLima(4),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 5
                            index == 12
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban5 = 5;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanLima(5),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // jawaban 6
                            // 1
                            index == 14
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        benar++;
                                        jawaban6 = 1;
                                        playSoundTrue();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanEnam(1),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 2
                            index == 14
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban6 = 2;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanEnam(2),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 3
                            index == 14
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban6 = 3;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanEnam(3),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 4
                            index == 14
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban6 = 4;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanEnam(4),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 5
                            index == 14
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban6 = 5;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanEnam(5),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // jawaban 7
                            // 1
                            index == 16
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban7 = 1;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanTujuh(1),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 2
                            index == 16
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban7 = 2;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanTujuh(2),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 3
                            index == 16
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        benar++;
                                        jawaban7 = 3;
                                        playSoundTrue();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanTujuh(3),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 4
                            index == 16
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban7 = 4;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanTujuh(4),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 5
                            index == 16
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban7 = 5;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanTujuh(5),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // jawaban 8
                            // 1
                            index == 18
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban8 = 1;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanDelapan(1),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 2
                            index == 18
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        benar++;
                                        jawaban8 = 2;
                                        playSoundTrue();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanDelapan(2),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 3
                            index == 18
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban8 = 3;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanDelapan(3),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 4
                            index == 18
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban8 = 4;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanDelapan(4),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 5
                            index == 18
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban8 = 5;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanDelapan(5),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // jawaban 9
                            // 1
                            index == 20
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban9 = 1;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSembilan(1),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 2
                            index == 20
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        benar++;
                                        jawaban9 = 2;
                                        playSoundTrue();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSembilan(2),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 3
                            index == 20
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban9 = 3;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSembilan(3),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 4
                            index == 20
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban9 = 4;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSembilan(4),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 5
                            index == 20
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban9 = 5;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          soundMessage();
                                          index++;

                                          scrollDown();
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSembilan(5),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // jawaban 10
                            // 1
                            index == 22
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban10 = 1;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 3), () {
                                        setState(() {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BonusPage(
                                                        valid: benar,
                                                        wrong: salah,
                                                        lokasi: 'Pasar',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSepuluh(1),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 2
                            index == 22
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban10 = 2;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 3), () {
                                        setState(() {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BonusPage(
                                                        valid: benar,
                                                        wrong: salah,
                                                        lokasi: 'Pasar',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSepuluh(2),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 3
                            index == 22
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        benar++;
                                        jawaban10 = 3;
                                        playSoundTrue();
                                      });
                                      Timer(Duration(seconds: 3), () {
                                        setState(() {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BonusPage(
                                                        valid: benar,
                                                        wrong: salah,
                                                        lokasi: 'Pasar',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSepuluh(3),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 4
                            index == 22
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban10 = 4;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 3), () {
                                        setState(() {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BonusPage(
                                                        valid: benar,
                                                        wrong: salah,
                                                        lokasi: 'Pasar',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSepuluh(4),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                            // 5
                            index == 6
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        index++;
                                        salah++;
                                        jawaban10 = 5;
                                        playSoundFalse();
                                      });
                                      Timer(Duration(seconds: 3), () {
                                        setState(() {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BonusPage(
                                                        valid: benar,
                                                        wrong: salah,
                                                        lokasi: 'Pasar',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: jawabanSepuluh(5),
                                      alignment: Alignment.bottomRight,
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
