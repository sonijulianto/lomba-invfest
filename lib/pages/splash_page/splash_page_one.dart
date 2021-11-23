import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/pages/cubit/auth_cubit.dart';

class SplashPageOne extends StatefulWidget {
  const SplashPageOne({Key? key}) : super(key: key);

  @override
  _SplashPageOneState createState() => _SplashPageOneState();
}

class _SplashPageOneState extends State<SplashPageOne> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      User? user = FirebaseAuth.instance.currentUser;
      print(user);
      if (user == null) {
        Navigator.pushNamedAndRemoveUntil(context, '/two', (route) => false);
      } else {
        print(user.email);
        BlocProvider.of<AuthCubit>(context).getCurrentUser(user.uid);
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      }
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
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
