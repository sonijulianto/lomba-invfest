import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';

class WelcomePageOne extends StatefulWidget {
  const WelcomePageOne({Key? key}) : super(key: key);

  @override
  _WelcomePageOneState createState() => _WelcomePageOneState();
}

class _WelcomePageOneState extends State<WelcomePageOne>
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
      Navigator.pushNamedAndRemoveUntil(
          context, '/welcome_two', (route) => false);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                'Di sebuah desa di indonesia yang sedang dilanda pandemi',
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
