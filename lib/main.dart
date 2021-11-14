import 'package:flutter/material.dart';

import 'package:lomba/page/splash_page/splash_page_one.dart';
import 'package:lomba/page/splash_page/splash_page_two.dart';
import 'package:lomba/page/welcome/welcome_name.dart';
import 'package:lomba/page/welcome/welcome_page_one.dart';
import 'package:lomba/page/welcome/welcome_page_two.dart';
import 'package:lomba/theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: theme(),
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
