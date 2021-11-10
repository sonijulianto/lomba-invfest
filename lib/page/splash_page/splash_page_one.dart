import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lomba/theme.dart';

class SplashPageOne extends StatefulWidget {
  const SplashPageOne({Key? key}) : super(key: key);

  @override
  _SplashPageOneState createState() => _SplashPageOneState();
}

class _SplashPageOneState extends State<SplashPageOne> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/two', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 200, height: 100, color: primaryColor),
              SizedBox(
                height: 30,
              ),
              Text(
                'Nama Aplikasi',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
