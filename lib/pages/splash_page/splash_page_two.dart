import 'dart:async';

import 'package:flutter/material.dart';

class SplashPageTwo extends StatefulWidget {
  const SplashPageTwo({Key? key}) : super(key: key);

  @override
  State<SplashPageTwo> createState() => _SplashPageTwoState();
}

class _SplashPageTwoState extends State<SplashPageTwo>
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
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/welcome_one', (route) => false);
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
        body: FadeTransition(
      opacity: _animation,
      child: Center(
        child: Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/invfest.png')),
            )),
      ),
    ));
  }
}
