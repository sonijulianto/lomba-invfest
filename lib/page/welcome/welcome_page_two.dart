import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lomba/helper/user_info.dart';
import 'package:lomba/page/main_page/main_page.dart';

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
      check();
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  check() async {
    var getName = await UserInfo().getName();
    if (getName != null) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MainPage(name: getName)));
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, '/welcome_name', (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _animation,
        child: Center(
          child: Container(
            child: Text(
              'MOHON TUNGGU menjaga keamanan diri sendiri memang penting, menjaga keamanan orang lain yang utama',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
