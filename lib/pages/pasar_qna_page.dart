import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/pages/home_page.dart';
import 'package:lomba/widgets/chat_card.dart';
import 'package:lomba/widgets/chat_gambar_card.dart';
import 'package:lomba/widgets/jawaban.dart';

class PasarQnaPage extends StatefulWidget {
  PasarQnaPage({Key? key}) : super(key: key);

  @override
  _PasarQnaPageState createState() => _PasarQnaPageState();
}

class _PasarQnaPageState extends State<PasarQnaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              Spacer(),
              ChatCard(
                  jawaban: false,
                  alignment: Alignment.bottomRight,
                  message:
                      'Selamat datang untuk seluruh warga desa tari kolot, sebagai Duta Covidiolog saya akan membagikan sosialisasi tentang pandemi COVID-19 dan mnegajak para warga untuk bersama-sama peduli terhadap kesehatan kita dan orang lain.'),
              ChatCard(
                jawaban: false,
                alignment: Alignment.bottomRight,
                message:
                    'Berikut saya lampirkan vidio penjelasan yang saya buat, spesial untuk warga desa tari kolot',
              ),
              ChatGambar(
                gambar: 'assets/pasar.jpg',
                alignment: Alignment.bottomRight,
              ),
              ChatCard(
                jawaban: false,
                alignment: Alignment.bottomLeft,
                message:
                    'Mengapa tenaga medis tetap ada yang terpapar walaupun sudah memakai APD?',
              ),
              Container(
                width: double.infinity,
                height: 120,
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
                        Jawaban(),
                        Jawaban(),
                        Jawaban(),
                        Jawaban(),
                        Jawaban(),
                        Jawaban(),
                        Jawaban(),
                        Jawaban(),
                        Jawaban(),
                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          ChatCard(
                            jawaban: true,
                            message:
                                'Karena virus corona berukuran sangat kecil sehingga tidak bisa di cegah menggunakan APD.',
                            alignment: Alignment.bottomRight,
                          ),
                          ChatCard(
                            jawaban: true,
                            message:
                                'Karena virus corona berukuran sangat kecil sehingga tidak bisa di cegah menggunakan APD.',
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
