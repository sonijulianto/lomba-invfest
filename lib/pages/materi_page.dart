import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/pages/pelatihan_definisi.dart';
import 'package:lomba/pages/pelatihan_gejala.dart';
import 'package:lomba/pages/pelatihan_vaksin.dart';
import 'package:lomba/widgets/aksi_card.dart';

class MateriPage extends StatefulWidget {
  MateriPage({Key? key}) : super(key: key);

  @override
  _MateriPageState createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2400),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );
  late final AnimationController _controller1 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2300),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation1 = CurvedAnimation(
    parent: _controller1,
    curve: Curves.easeOutBack,
  );
  late final AnimationController _controller2 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2300),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation2 = CurvedAnimation(
    parent: _controller2,
    curve: Curves.easeOutBack,
  );
  late final AnimationController _controller3 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2300),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation3 = CurvedAnimation(
    parent: _controller3,
    curve: Curves.easeOutBack,
  );
  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
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
              Color.fromARGB(255, 30, 160, 238),
              Color.fromARGB(255, 21, 236, 229),
              Color.fromARGB(255, 255, 230, 238),
            ],
          )),
          child: Container(

            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 30, 160, 238),
                  Color.fromARGB(255, 21, 236, 229),
                  Color.fromARGB(255, 255, 230, 238),
                ],
              ),
            ),
            child: Container(
              // padding: EdgeInsets.symmetric(
              //   horizontal: 24,
              // ),
              child: Column(
                children: [
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
                    height: 60,
                  ),
                  Center(
                    child: ScaleTransition(
                      scale: _animation3,
                      child: Text(
                        'Pilih Materi Pelatihan',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 30,
                    ),
                    child: Row(
                      children: [
                        AksiCard(
                          height: 110,
                          width: 250,
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PelatihanDefinisi()));
                          },
                          animation: _animation,
                          image: 'assets/covid.jpg',
                          title: 'Devinisi dan Varian COVID-19',
                          description:
                              'Apa perbedaan Corona dan COVID-19? Terlintas berita mengenai varian virus, apa saja?',
                          style: blackTextStyle.copyWith(fontWeight: bold),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        AksiCard(
                          height: 110,
                          width: 250,
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PelatihanGejala()));
                          },
                          animation: _animation2,
                          image: 'assets/perawatan.jpg',
                          title: 'Gejala dan Perawatan',
                          description:
                              'Kabarnya, tiap pasien COVID-19 memiliki gejala yang berbeda-beda, seperti apa? Lalu, bagaimana perawatannya?',
                          style: blackTextStyle.copyWith(fontWeight: bold),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        AksiCard(
                          height: 110,
                          width: 250,
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PelatihanVaksin()));
                          },
                          animation: _animation1,
                          image: 'assets/vaksin.jpg',
                          title: 'Prokes dan Vaksinasi',
                          description:
                              'Indonesia menerapkan sebuah prokes yang harus dilakukan, seperti apa saja? Kabar mengenai vaksinasi, bagaimana?',
                          style: blackTextStyle.copyWith(fontWeight: bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}
