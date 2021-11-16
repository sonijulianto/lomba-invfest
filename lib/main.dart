import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lomba/pages/splash_page/splash_page_two.dart';

import 'pages/splash_page/splash_page_one.dart';
import 'pages/welcome/welcome_name.dart';
import 'pages/welcome/welcome_page_one.dart';
import 'pages/welcome/welcome_page_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SplashPageOne(),
        '/two': (context) => SplashPageTwo(),
        '/welcome_one': (context) => WelcomePageOne(),
        '/welcome_two': (context) => WelcomePageTwo(),
        '/welcome_name': (context) => WelcomeName(),
      },
    );
  }
}
