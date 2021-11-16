import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/functions/gambar-tutor-definisi.dart';
import 'package:lomba/functions/text-tutor-definisi.dart';

class PelatihanDefinisi extends StatefulWidget {
  const PelatihanDefinisi({Key? key}) : super(key: key);

  @override
  State<PelatihanDefinisi> createState() => _PelatihanDefinisiState();
}

class _PelatihanDefinisiState extends State<PelatihanDefinisi>
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
                      gambarTutorDefinisi(index),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ScaleTransition(
                  scale: _animation1,
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
                index == 1
                    ? SizedBox()
                    : ScaleTransition(
                        scale: _animation,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              index != 1 ? index-- : index -= 0;
                              print(index);
                            });
                          },
                          child: Icon(
                            Icons.navigate_before_rounded,
                            size: 100,
                            color: whiteColor,
                          ),
                        ),
                      ),
                SizedBox(
                  width: 30,
                ),
                index == 17
                    ? SizedBox()
                    : ScaleTransition(
                        scale: _animation1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              index != 17 ? index++ : index += 0;
                              print(index);
                            });
                          },
                          child: Icon(
                            Icons.navigate_next_rounded,
                            size: 100,
                            color: whiteColor,
                          ),
                        ),
                      ),
              ],
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
                textTutor(index),
                style: blackTextStyle.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}