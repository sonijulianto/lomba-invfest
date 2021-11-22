import 'package:flutter/material.dart';
import 'package:lomba/functions/sounds/sound.dart';
import 'package:lomba/pages/home_page.dart';
import 'package:lomba/widgets/chat_card.dart';
import 'package:lomba/widgets/chat_gambar_bonus.dart';

class BonusPage extends StatefulWidget {
  final int valid;
  final int wrong;
  final String lokasi;
  BonusPage({
    Key? key,
    required this.lokasi,
    required this.valid,
    required this.wrong,
  }) : super(key: key);

  @override
  _BonusPageState createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image:
                      DecorationImage(image: AssetImage('assets/teacher.jpg'))),
            ),
            SizedBox(
              width: 10,
            ),
            Text('CEO Emosi')
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => setState(() {
          index < 8 ? index++ : index += 0;
          index <= 8 ? soundMessage() : index += 0;
        }),
        child: Container(
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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              reverse: true,
              children: [
                index >= 8
                    ? Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            playSound();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text('KEMBALI KE MENU'),
                        ),
                      )
                    : SizedBox(),
                index >= 7
                    ? ChatCard(
                        people: '',
                        message:
                            'Meski demikian, usahamu dalam menurunkan kasus penyebaran COVID-19 dianggap : ${'\n${widget.valid < 5 ? 'GAGAL' : widget.valid < 8 ? 'CUKUP BAIK' : 'BERHASIL'} - Skor Kepercayaan ${widget.valid.toString()}0%'}',
                        alignment: Alignment.bottomLeft,
                      )
                    : SizedBox(),
                index >= 6
                    ? ChatCard(
                        people: '',
                        message:
                            'Kami juga memberikanmu tip sebagai apresiasi atas usahamu, sebesar ${widget.valid.toString()} coin.',
                        alignment: Alignment.bottomLeft,
                      )
                    : SizedBox(),
                index >= 5
                    ? ChatCard(
                        people: '',
                        message:
                            '${widget.valid.toString()} warga berhasil kamu berikan informasi yang tepat, \n${widget.wrong.toString()} warga mendapatkan informasi yang salah',
                        alignment: Alignment.bottomLeft,
                        index: 1,
                      )
                    : SizedBox(),
                index >= 4
                    ? ChatCard(
                        people: '',
                        message: 'Dari 10 warga yang bertanya kepadamu',
                        alignment: Alignment.bottomLeft,
                      )
                    : SizedBox(),
                index >= 3
                    ? ChatGambarBonus(
                        gambar: widget.valid >= widget.wrong
                            ? 'assets/grafik_benar.jpg'
                            : 'assets/grafik_salah.jpg',
                        alignment: Alignment.bottomLeft,
                      )
                    : SizedBox(),
                index >= 2
                    ? ChatCard(
                        people: '',
                        message:
                            'Terima kasih atas sosialisai yang kamu berikan dan jawaban yang kamu sajikan. Mari kita lihat grafik penyebaran COVID-19 di titik lokasi pedesaan sebelum dan sesudah kamu berikan sosialisasi.',
                        alignment: Alignment.bottomLeft,
                      )
                    : SizedBox(),
                index >= 1
                    ? ChatCard(
                        people: '',
                        message:
                            'Kamu telah menyelesaikan Program Qna bersama EMOSI di titik lokasi ${widget.lokasi}.',
                        alignment: Alignment.bottomLeft,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
