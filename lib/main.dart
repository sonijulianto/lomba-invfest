import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lomba/pages/cubit/auth_cubit.dart';
import 'package:lomba/pages/cubit/login_cubit.dart';
import 'package:lomba/pages/home_page.dart';
import 'package:lomba/pages/splash_page/splash_page_two.dart';

import 'pages/splash_page/splash_page_one.dart';
import 'pages/welcome/sign_up_page.dart';
import 'pages/welcome/welcome_page_one.dart';
import 'pages/welcome/welcome_page_two.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthCubit>(
            create: (context) => AuthCubit(),
          ),
          BlocProvider<LoginCubit>(
            create: (context) => LoginCubit(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => SplashPageOne(),
            '/two': (context) => SplashPageTwo(),
            '/welcome_one': (context) => WelcomePageOne(),
            '/welcome_two': (context) => WelcomePageTwo(),
            '/sign_up': (context) => SignUpPage(),
            '/home': (context) => HomePage(),
          },
        ));
  }
}
