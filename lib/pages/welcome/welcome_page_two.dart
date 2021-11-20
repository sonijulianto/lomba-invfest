import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/helper/user_info.dart';
import 'package:lomba/pages/home_page.dart';

class WelcomePageTwo extends StatefulWidget {
  const WelcomePageTwo({Key? key}) : super(key: key);

  @override
  _WelcomePageTwoState createState() => _WelcomePageTwoState();
}

class _WelcomePageTwoState extends State<WelcomePageTwo>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(context, '/sign_up', (route) => false);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // check() async {
  //   var getName = await UserInfo().getName();
  //   if (getName != null) {
  //     Navigator.pushReplacement(context,
  //         MaterialPageRoute(builder: (context) => HomePage(name: getName)));
  //   } else {
  //     Navigator.pushNamedAndRemoveUntil(
  //         context, '/welcome_name', (route) => false);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: FadeTransition(
          opacity: _animation,
          child: Center(
            child: Container(
              child: Text(
                'MOHON TUNGGU menjaga keamanan diri sendiri memang penting, menjaga keamanan orang lain yang utama',
                style: whiteTextStyle.copyWith(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
