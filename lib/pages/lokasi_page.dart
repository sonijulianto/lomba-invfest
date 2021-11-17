import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/pages/alun_qna_page.dart';
import 'package:lomba/pages/pasar_qna_page.dart';
import 'package:lomba/widgets/lokasi_card.dart';

class LokasiPage extends StatefulWidget {
  const LokasiPage({Key? key}) : super(key: key);

  @override
  _LokasiPageState createState() => _LokasiPageState();
}

class _LokasiPageState extends State<LokasiPage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 24,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                      size: 50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'PILIH TITIK LOKASI',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    LokasiCard(
                      image: 'assets/pasar.jpg',
                      description:
                          'Pasar                                                         ',
                      animation: _animation,
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PasarQnaPage()));
                      },
                    ),
                    LokasiCard(
                      image: 'assets/alun.jpg',
                      description:
                          'Alun-Alun                                                         ',
                      animation: _animation,
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlunQnaPage()));
                      },
                    ),
                    LokasiCard(
                      image: 'assets/pedesaan.jpg',
                      description:
                          'Pedesaan                                                         ',
                      animation: _animation,
                      ontap: () {},
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                'Jadi Teladan Bermanfaat untuk Indonesia Sehat',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
