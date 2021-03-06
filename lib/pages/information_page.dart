import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/functions/sounds/sound.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller4 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2400),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation4 = CurvedAnimation(
    parent: _controller4,
    curve: Curves.easeOutBack,
  );
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
            )),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          playSound();
                          Navigator.pop(context);
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.arrow_back,
                            color: whiteColor,
                            size: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ScaleTransition(
                        scale: _animation4,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 50,
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: whiteColor),
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Tentang Kami',
                                style: blueTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ScaleTransition(
                    scale: _animation4,
                    child: Container(
                      height: 180,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: whiteColor),
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 75,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/logo.png'),
                                ),
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Permainan Edukasi simulasi menjadi influencer dalam pencegahan COVID-19 di lingkungan sekitar',
                              style: blueTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ScaleTransition(
                        scale: _animation4,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 140,
                            width: 90,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: whiteColor),
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: AssetImage('assets/soni.jpeg'),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Soni Julianto',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 11,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale: _animation4,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 140,
                            width: 90,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: whiteColor),
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: AssetImage('assets/ibnu.jpeg'),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Ibnu Fajar \n Al Had',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 11,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale: _animation4,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 140,
                            width: 90,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: whiteColor),
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: AssetImage('assets/syaugi.jpeg'),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Syaugi \n Askar',
                                    style: blueTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 11,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ScaleTransition(
                        scale: _animation4,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 90,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: whiteColor),
                                  color: buttonColor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Developer',
                                  style: blueTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 11,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale: _animation4,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 90,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: whiteColor),
                                  color: buttonColor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'UI/UX',
                                  style: blueTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 11,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale: _animation4,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 30,
                            width: 90,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: whiteColor),
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'Developer',
                                style: blueTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 11,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ScaleTransition(
                    scale: _animation4,
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: whiteColor),
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/logo-kemenkes.png'),
                                ),
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/logo_bsi.png'),
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/invfest.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
