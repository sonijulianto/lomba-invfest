import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/functions/jawaban-pedesaan/pedesaan-delapan.dart';
import 'package:lomba/functions/jawaban-pedesaan/pedesaan-dua.dart';
import 'package:lomba/functions/jawaban-pedesaan/pedesaan-empat.dart';
import 'package:lomba/functions/jawaban-pedesaan/pedesaan-enam.dart';
import 'package:lomba/functions/jawaban-pedesaan/pedesaan-lima.dart';
import 'package:lomba/functions/jawaban-pedesaan/pedesaan-satu.dart';
import 'package:lomba/functions/jawaban-pedesaan/pedesaan-sembilan.dart';
import 'package:lomba/functions/jawaban-pedesaan/pedesaan-sepuluh.dart';
import 'package:lomba/functions/jawaban-pedesaan/pedesaan-tiga.dart';
import 'package:lomba/functions/jawaban-pedesaan/pedesaan-tujuh.dart';
import 'package:lomba/functions/sounds/sound.dart';
import 'package:lomba/pages/bonus_page.dart';
import 'package:lomba/widgets/chat_card.dart';
import 'package:lomba/widgets/chat_gambar_card.dart';
import 'package:lomba/widgets/jawaban.dart';

class PedesaanQnaPage extends StatefulWidget {
  PedesaanQnaPage({Key? key}) : super(key: key);

  @override
  _PedesaanQnaPageState createState() => _PedesaanQnaPageState();
}

class _PedesaanQnaPageState extends State<PedesaanQnaPage> {
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
            'Pedesaan',
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
                      Spacer(),
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
                                'Selamat datang untuk seluruh warga desa tari kolot, sebagai Duta EMOSI saya akan membagikan sosialisasi tentang pandemi COVID-19 dan mnegajak para warga untuk bersama-sama peduli terhadap kesehatan kita dan orang lain.'),
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
                                setState(() {
                                  soundMessage();
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
                              people: 'Kak Rahma - Desa Mambak RT 02/04',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Halo, dik. Mana yang lebih penting ya, menjaga pola hidup sehat atau mengurangi aktivitas di luar rumah ?',
                            )
                          : SizedBox(),
                      index >= 5
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: pedesaanSatu(jawaban1),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 2
                      index >= 6
                          ? ChatCard(
                            warna:
                                  sembilanTextStyle.copyWith(fontWeight: bold),
                              people: 'Bapak Udik - Desa Bukit Asri RT 01/01',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Saya mengalami gejala batuk dan kondisi suhu tubuh saya sangat panas. Bagaimana ya kak?',
                            )
                          : SizedBox(),
                      index >= 7
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: pedesaanDua(jawaban2),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 3
                      index >= 8
                          ? ChatCard(
                            warna:
                                  delapanTextStyle.copyWith(fontWeight: bold),
                              people: 'Dik Rizal - Desa Demaan RT 004/002',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Halo, apa saja protokol kesehatan yang harus kami lakukan saat ini?',
                            )
                          : SizedBox(),
                      index >= 9
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: pedesaanTiga(jawaban3),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 4
                      index >= 10
                          ? ChatCard(
                            warna: tujuhTextStyle.copyWith(fontWeight: bold),
                              people: 'Bapak Nasrul - Desa Panggang RT 05/02',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Halo, mengenai berita adanya warga yang jatuh sakit setelah divaksinani, separah inikah efek dari vaksinani COVID-19',
                            )
                          : SizedBox(),
                      index >= 11
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: pedesaanEmpat(jawaban4),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 5
                      index >= 12
                          ? ChatCard(
                            warna: enamTextStyle.copyWith(fontWeight: bold),
                              people: 'Kak Haidar - Desa Bapangan RT 03/02',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Halo, dik. Mengapa sekarang dianjurkan untuk menggunakan masker 2 lapis?',
                            )
                          : SizedBox(),
                      index >= 13
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: pedesaanLima(jawaban5),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 6
                      index >= 14
                          ? ChatCard(
                            warna: satuTextStyle.copyWith(fontWeight: bold),
                              people: 'Ibu Arini - Desa penangkol RT 03/03',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Halo dik, saya ingin divaksinasi tetapi masih terdapat keraguan. Saya mendapat berita adanya warga yang terkonfirmasi positif COVID-19 setelah sebelumnya divaksinasi, apakah vaksinasi itu gagal?',
                            )
                          : SizedBox(),
                      index >= 15
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: pedesaanEnam(jawaban6),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 7
                      index >= 16
                          ? ChatCard(
                            warna: duaTextStyle.copyWith(fontWeight: bold),
                              people: 'Ibu Ida - Perumahan Kuwasharjo RT 02/01',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Halo kak, Sebenernya Corona dan COVID-19 itu sama atau beda kak?',
                            )
                          : SizedBox(),
                      index >= 17
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: pedesaanTujuh(jawaban7),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 8
                      index >= 18
                          ? ChatCard(
                            warna: tigaTextStyle.copyWith(fontWeight: bold),
                              people: 'Ibu Yektana - Desa Tahunan RT 11/02',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Permisi kak, mau tanya nih. Apa sih kak kepanjangan dari COVID-19 itu ?',
                            )
                          : SizedBox(),
                      index >= 19
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: pedesaanDelapan(jawaban8),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 9
                      index >= 20
                          ? ChatCard(
                            warna: empatTextStyle.copyWith(fontWeight: bold),
                              people: 'Dik Jehan - Desa Saripan RT 04/01',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Hai, kak. Sebenernya vaksinasi COVID-19 ITU aman atau tidak ya?',
                            )
                          : SizedBox(),
                      index >= 21
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: pedesaanSembilan(jawaban9),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 10
                      index >= 22
                          ? ChatCard(
                            warna: limaTextStyle.copyWith(fontWeight: bold),
                              people: 'Pak Elfin - Desa Kuwasen RT 04/01',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Saya ingin bertanya. Benarkan virus Sars nCov-19 berasal dari hewan kelelawar?',
                            )
                          : SizedBox(),
                      index >= 23
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: pedesaanSepuluh(jawaban10),
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
                            color: jawaban1 == 2
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
                            color: jawaban3 == 4
                                ? greenColor
                                : jawaban3 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban4 == 1
                                ? greenColor
                                : jawaban4 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban5 == 4
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
                            color: jawaban7 == 4
                                ? greenColor
                                : jawaban7 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban8 == 1
                                ? greenColor
                                : jawaban8 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban9 == 3
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
                                        salah++;
                                        jawaban1 = 1;
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
                                      message: pedesaanSatu(1),
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
                                        benar++;
                                        jawaban1 = 2;
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
                                      message: pedesaanSatu(2),
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
                                      message: pedesaanSatu(3),
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
                                      message: pedesaanSatu(4),
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
                                      message: pedesaanSatu(5),
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
                                      message: pedesaanDua(1),
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
                                      message: pedesaanDua(2),
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
                                      message: pedesaanDua(3),
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
                                      message: pedesaanDua(4),
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
                                      message: pedesaanDua(5),
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
                                      message: pedesaanTiga(1),
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
                                      message: pedesaanTiga(2),
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
                                      message: pedesaanTiga(3),
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
                                        benar++;
                                        jawaban3 = 4;
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
                                      message: pedesaanTiga(4),
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
                                        salah++;
                                        jawaban3 = 5;
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
                                      message: pedesaanTiga(5),
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
                                        benar++;
                                        jawaban4 = 1;
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
                                      message: pedesaanEmpat(1),
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
                                      message: pedesaanEmpat(2),
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
                                      message: pedesaanEmpat(3),
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
                                        salah++;
                                        jawaban4 = 4;
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
                                      message: pedesaanEmpat(4),
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
                                      message: pedesaanEmpat(5),
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
                                        salah++;
                                        jawaban5 = 1;
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
                                      message: pedesaanLima(1),
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
                                      message: pedesaanLima(2),
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
                                      message: pedesaanLima(3),
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
                                        benar++;
                                        jawaban5 = 4;
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
                                      message: pedesaanLima(4),
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
                                      message: pedesaanLima(5),
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
                                      message: pedesaanEnam(1),
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
                                      message: pedesaanEnam(2),
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
                                      message: pedesaanEnam(3),
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
                                      message: pedesaanEnam(4),
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
                                      message: pedesaanEnam(5),
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
                                      message: pedesaanTujuh(1),
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
                                      message: pedesaanTujuh(2),
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
                                        salah++;
                                        jawaban7 = 3;
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
                                      message: pedesaanTujuh(3),
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
                                        benar++;
                                        jawaban7 = 4;
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
                                      message: pedesaanTujuh(4),
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
                                      message: pedesaanTujuh(5),
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
                                        benar++;
                                        jawaban8 = 1;
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
                                      message: pedesaanDelapan(1),
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
                                        salah++;
                                        jawaban8 = 2;
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
                                      message: pedesaanDelapan(2),
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
                                      message: pedesaanDelapan(3),
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
                                      message: pedesaanDelapan(4),
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
                                      message: pedesaanDelapan(5),
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
                                      message: pedesaanSembilan(1),
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
                                        salah++;
                                        jawaban9 = 2;
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
                                      message: pedesaanSembilan(2),
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
                                        benar++;
                                        jawaban9 = 3;
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
                                      message: pedesaanSembilan(3),
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
                                      message: pedesaanSembilan(4),
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
                                      message: pedesaanSembilan(5),
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
                                        jawaban10 = 1;
                                        salah++;
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
                                                        lokasi: 'Pedesaan',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: pedesaanSepuluh(1),
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
                                        jawaban10 = 2;
                                        salah++;
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
                                                        lokasi: 'Pedesaan',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: pedesaanSepuluh(2),
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
                                        jawaban10 = 3;
                                        benar++;
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
                                                        lokasi: 'Pedesaan',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: pedesaanSepuluh(3),
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
                                        jawaban10 = 4;
                                        salah++;
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
                                                        lokasi: 'Pedesaan',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: pedesaanSepuluh(4),
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
                                        jawaban10 = 5;
                                        salah++;
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
                                                        lokasi: 'Pedesaan',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: pedesaanSepuluh(5),
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
