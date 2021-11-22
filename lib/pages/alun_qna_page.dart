import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/functions/jawaban-alun/alun-delapan.dart';
import 'package:lomba/functions/jawaban-alun/alun-dua.dart';
import 'package:lomba/functions/jawaban-alun/alun-empat.dart';
import 'package:lomba/functions/jawaban-alun/alun-enam.dart';
import 'package:lomba/functions/jawaban-alun/alun-lima.dart';
import 'package:lomba/functions/jawaban-alun/alun-satu.dart';
import 'package:lomba/functions/jawaban-alun/alun-sembilan.dart';
import 'package:lomba/functions/jawaban-alun/alun-sepuluh.dart';
import 'package:lomba/functions/jawaban-alun/alun-tiga.dart';
import 'package:lomba/functions/jawaban-alun/alun-tujuh.dart';
import 'package:lomba/functions/sounds/sound.dart';
import 'package:lomba/pages/bonus_page.dart';
import 'package:lomba/widgets/chat_card.dart';
import 'package:lomba/widgets/chat_gambar_card.dart';
import 'package:lomba/widgets/jawaban.dart';

class AlunQnaPage extends StatefulWidget {
  AlunQnaPage({Key? key}) : super(key: key);

  @override
  _AlunQnaPageState createState() => _AlunQnaPageState();
}

class _AlunQnaPageState extends State<AlunQnaPage> {
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
            'Alun-alun Pati',
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
                                'Selamat datang para pengunjung Alun-Alun Bandung. Sebagai Duta Covidiolog saya akan membagikan sosialisai tentang pandemi COVID-19 dan mengajak para warga untuk bersama-sama peduli terhadap kesehatan kita dan orang lain.'),
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
                                    'Berikut saya lampirkan vidio penjelasan yang saya buat, spesial untuk Pedagang area Pasar',
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
                                gambar: 'assets/alun.jpg',
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
                            warna: satuTextStyle.copyWith(fontWeight: bold),
                              people: 'Kak Alvin - Olahragawan',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Halo, apakah penggunaan masker dalam berolahraga diperbolehkan?',
                            )
                          : SizedBox(),
                      index >= 5
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: alunSatu(jawaban1),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 2
                      index >= 6
                          ? ChatCard(
                            warna: duaTextStyle.copyWith(fontWeight: bold),
                              people: 'Pak Zaenal - Pejalan Kaki',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Kapan lockdown di suatu tempat dinyatakan berakhir? apa syaratnya?',
                            )
                          : SizedBox(),
                      index >= 7
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: alunDua(jawaban2),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 3
                      index >= 8
                          ? ChatCard(
                            warna: tigaTextStyle.copyWith(fontWeight: bold),
                              people: 'Dik Jovanka - Pelari',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Apakah vaksinasi COVID-19 wajib 2 dosis? Bagaimana jika hanya melakukan 1 dosis saja?',
                            )
                          : SizedBox(),
                      index >= 9
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: alunTiga(jawaban3),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 4
                      index >= 10
                          ? ChatCard(
                            warna: empatTextStyle.copyWith(fontWeight: bold),
                              people: 'Kak Edo - Mahasiswa Baru',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Jika ada orang yang telah dinyatakan sembuh dari COVID-19, apakah orang tersebut sudah kebal dari virus ini dan tidak akan kembali terpapar COVID-19?',
                            )
                          : SizedBox(),
                      index >= 11
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: alunEmpat(jawaban4),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 5
                      index >= 12
                          ? ChatCard(
                            warna: limaTextStyle.copyWith(fontWeight: bold),
                              people: 'Kak Tika - Pesepeda',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Apakah perokok lebih rentan terinfeksi COVID-19?',
                            )
                          : SizedBox(),
                      index >= 13
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: alunLima(jawaban5),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 6
                      index >= 14
                          ? ChatCard(
                            warna: enamTextStyle.copyWith(fontWeight: bold),
                              people: 'Bu Avia - Penari',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Bagaimana cara meningkatkan imunitas tubuh agar terhindar dari COVID-19?',
                            )
                          : SizedBox(),
                      index >= 15
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: alunEnam(jawaban6),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 7
                      index >= 16
                          ? ChatCard(
                            warna: tujuhTextStyle.copyWith(fontWeight: bold),
                              people: 'kak Dava - Pelajar SMA',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Apakah aman jika membeli makanan dari luar di masa pandemi seperti ini?',
                            )
                          : SizedBox(),
                      index >= 17
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: alunTujuh(jawaban7),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 8
                      index >= 18
                          ? ChatCard(
                            warna:
                                  delapanTextStyle.copyWith(fontWeight: bold),
                              people: 'Kak Thauriq - Mahasiswa Akhir',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Apakah benar hewan peliharaan seperti kucing ataupun anjing dapat menularkan virus Corona?',
                            )
                          : SizedBox(),
                      index >= 19
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: alunDelapan(jawaban8),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 9
                      index >= 20
                          ? ChatCard(
                            warna:
                                  sembilanTextStyle.copyWith(fontWeight: bold),
                              people: 'Dik Putri - Penari',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Bagaimana olahraga yang aman selama pandemi COVID-19? Apakah boleh melakukan olahraga di tempat umum?',
                            )
                          : SizedBox(),
                      index >= 21
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: alunSembilan(jawaban9),
                              alignment: Alignment.bottomRight,
                            )
                          : SizedBox(),
                      // pertanyaan 10
                      index >= 22
                          ? ChatCard(
                            warna:
                                  sepuluhTextStyle.copyWith(fontWeight: bold),
                              people: 'Kak Umi - Pesepeda',
                              alignment: Alignment.bottomLeft,
                              message:
                                  'Apakah penyemprotan disinfektan di jalan raya dan juga di box sterilisasi efektif membunuh virus?',
                            )
                          : SizedBox(),
                      index >= 23
                          ? ChatCard(
                              people: '',
                              jawaban: true,
                              message: alunSepuluh(jawaban10),
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
                            color: jawaban2 == 2
                                ? greenColor
                                : jawaban2 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban3 == 1
                                ? greenColor
                                : jawaban3 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban4 == 3
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
                            color: jawaban6 == 5
                                ? greenColor
                                : jawaban6 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban7 == 1
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
                            color: jawaban9 == 1
                                ? greenColor
                                : jawaban9 == 0
                                    ? whiteColor
                                    : Colors.red,
                          ),
                          Jawaban(
                            color: jawaban10 == 4
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
                                      message: alunSatu(1),
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
                                      message: alunSatu(2),
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
                                      message: alunSatu(3),
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
                                      message: alunSatu(4),
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
                                      message: alunSatu(5),
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
                                      message: alunDua(1),
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
                                        benar++;
                                        jawaban2 = 2;
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
                                      message: alunDua(2),
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
                                      message: alunDua(3),
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
                                      message: alunDua(4),
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
                                      message: alunDua(5),
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
                                        benar++;
                                        jawaban3 = 1;
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
                                      message: alunTiga(1),
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
                                      message: alunTiga(2),
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
                                      message: alunTiga(3),
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
                                      message: alunTiga(4),
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
                                      message: alunTiga(5),
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
                                      message: alunEmpat(1),
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
                                      message: alunEmpat(2),
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
                                        benar++;
                                        jawaban4 = 3;
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
                                      message: alunEmpat(3),
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
                                      message: alunEmpat(4),
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
                                      message: alunEmpat(5),
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
                                      message: alunLima(1),
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
                                      message: alunLima(2),
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
                                      message: alunLima(3),
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
                                      message: alunLima(4),
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
                                      message: alunLima(5),
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
                                        salah++;
                                        jawaban6 = 1;
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
                                      message: alunEnam(1),
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
                                      message: alunEnam(2),
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
                                      message: alunEnam(3),
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
                                      message: alunEnam(4),
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
                                        benar++;
                                        jawaban6 = 5;
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
                                      message: alunEnam(5),
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
                                        benar++;
                                        jawaban7 = 1;
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
                                      message: alunTujuh(1),
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
                                      message: alunTujuh(2),
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
                                      message: alunTujuh(3),
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
                                      message: alunTujuh(4),
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
                                      message: alunTujuh(5),
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
                                      message: alunDelapan(1),
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
                                      message: alunDelapan(2),
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
                                      message: alunDelapan(3),
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
                                      message: alunDelapan(4),
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
                                      message: alunDelapan(5),
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
                                        benar++;
                                        jawaban9 = 1;
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
                                      message: alunSembilan(1),
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
                                      message: alunSembilan(2),
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
                                      message: alunSembilan(3),
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
                                      message: alunSembilan(4),
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
                                      message: alunSembilan(5),
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
                                      Timer(Duration(seconds: 2), () {
                                        setState(() {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BonusPage(
                                                        valid: benar,
                                                        wrong: salah,
                                                        lokasi: 'Alun-Alun',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: alunSepuluh(1),
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
                                                        lokasi: 'Alun-Alun',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: alunSepuluh(2),
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
                                        salah++;
                                        jawaban10 = 3;
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
                                                        lokasi: 'Alun-Alun',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: alunSepuluh(3),
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
                                        benar++;
                                        jawaban10 = 4;
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
                                                        lokasi: 'Alun-Alun',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: alunSepuluh(4),
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
                                                        lokasi: 'Alun-Alun',
                                                      )),
                                              (route) => false);
                                        });
                                      });
                                    },
                                    child: ChatCard(
                                      people: '',
                                      jawaban: true,
                                      message: alunSepuluh(5),
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
