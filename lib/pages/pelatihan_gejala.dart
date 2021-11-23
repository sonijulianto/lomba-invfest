import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/functions/gambar-tutor-gejala.dart';
import 'package:lomba/functions/sounds/sound.dart';
import 'package:lomba/functions/text-tutor-gejala.dart';

class PelatihanGejala extends StatefulWidget {
  const PelatihanGejala({Key? key}) : super(key: key);

  @override
  State<PelatihanGejala> createState() => _PelatihanGejalaState();
}

class _PelatihanGejalaState extends State<PelatihanGejala>
    with TickerProviderStateMixin {
  int index = 1;
  late final AnimationController _controller = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2300),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );
  late final AnimationController _controller1 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2400),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation1 = CurvedAnimation(
    parent: _controller1,
    curve: Curves.easeOutBack,
  );
  late final AnimationController _controller2 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2500),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation2 = CurvedAnimation(
    parent: _controller2,
    curve: Curves.easeOutBack,
  );

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pelatihan'),
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
              Color.fromARGB(255, 30, 160, 238),
              Color.fromARGB(255, 21, 236, 229),
              Color.fromARGB(255, 255, 230, 238),
            ],
          ),
        ),
        child: Column(
          children: [
            ScaleTransition(
              scale: _animation2,
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      gambarTutor(index),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                // borderRadius: BorderRadius.vertical(
                //   top: Radius.circular(17),
                // ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff46C5FE),
                    Color(0xff93D9F9),
                  ],
                ),
              ),
              child: Text(
                textTutorGejala(index),
                style: blackTextStyle.copyWith(),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ScaleTransition(
                  scale: _animation1,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 150,
                      width: 110,
                      margin: EdgeInsets.only(
                        left: 20,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/lecturer.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                index == 1
                    ? SizedBox()
                    : ScaleTransition(
                        scale: _animation,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              playSound();
                              index != 1 ? index-- : index -= 0;
                            });
                          },
                          child: Icon(
                            Icons.navigate_before_rounded,
                            size: 90,
                            color: whiteColor,
                          ),
                        ),
                      ),
                index == 20
                    ? SizedBox()
                    : ScaleTransition(
                        scale: _animation1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              playSound();
                              index != 20 ? index++ : index += 0;
                            });
                          },
                          child: Icon(
                            Icons.navigate_next_rounded,
                            size: 90,
                            color: whiteColor,
                          ),
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
