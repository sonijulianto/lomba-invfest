import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/helper/user_info.dart';
import 'package:lomba/pages/aksi_page.dart';
import 'package:lomba/pages/cubit/auth_cubit.dart';
import 'package:lomba/pages/information_page.dart';
import 'package:lomba/pages/materi_page.dart';

import 'package:lomba/widgets/custom_dialog.dart';

import 'package:lomba/pages/welcome/sign_up_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AudioCache player = AudioCache();
  late final AnimationController _controller = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final AnimationController _controller1 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2100),
    vsync: this,
  )..repeat(reverse: true);
  late final AnimationController _controller2 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2200),
    vsync: this,
  )..repeat(reverse: true);
  late final AnimationController _controller3 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2300),
    vsync: this,
  )..repeat(reverse: true);
  late final AnimationController _controller4 = AnimationController(
    lowerBound: 0.7,
    duration: const Duration(milliseconds: 2400),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );
  late final Animation<double> _animation1 = CurvedAnimation(
    parent: _controller1,
    curve: Curves.easeOutBack,
  );
  late final Animation<double> _animation2 = CurvedAnimation(
    parent: _controller2,
    curve: Curves.easeOutBack,
  );
  late final Animation<double> _animation3 = CurvedAnimation(
    parent: _controller3,
    curve: Curves.easeOutBack,
  );
  late final Animation<double> _animation4 = CurvedAnimation(
    parent: _controller4,
    curve: Curves.easeOutBack,
  );

  playSound() {
    final player = AudioCache();
    player.play('slow_spring_board.mp3');
  }

  playSoundAndNextPage() async {
    final player = AudioCache();
    await player.play('slow_spring_board.mp3');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MateriPage(),
      ),
    );
  }

  playSoundAndAksiPage() async {
    final player = AudioCache();
    await player.play('slow_spring_board.mp3');

    Timer(Duration(milliseconds: 100), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AksiPage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 24,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InformationPage(),
                                ),
                              ),
                              child: ScaleTransition(
                                scale: _animation2,
                                child: Icon(
                                  Icons.info,
                                  color: whiteColor,
                                  size: 50,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ScaleTransition(
                              scale: _animation,
                              child: GestureDetector(
                                onTap: () => playSound(),
                                child: Container(
                                  width: 43,
                                  height: 43,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: whiteColor,
                                  ),
                                  child: Icon(Icons.volume_off,
                                      color: Colors.blue.shade300),
                                ),
                              ),
                            ),
                          ],
                        ),
                        BlocConsumer<AuthCubit, AuthState>(
                          listener: (context, state) {
                            if (state is AuthFailed) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.pink,
                                  content: Text(state.error),
                                ),
                              );
                            } else if (state is AuthInitial) {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/', (route) => false);
                            }
                          },
                          builder: (context, state) {
                            if (state is AuthLoading) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return ScaleTransition(
                              scale: _animation1,
                              child: GestureDetector(
                                onTap: () {
                                  context.read<AuthCubit>().signOut();
                                },
                                child: Container(
                                  width: 43,
                                  height: 43,
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.blue.shade300,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ScaleTransition(
                      scale: _animation,
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    ScaleTransition(
                      scale: _animation4,
                      child: GestureDetector(
                        onTap: () => playSoundAndNextPage(),
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                ),
                                child: Icon(
                                  Icons.menu_book,
                                  size: 30,
                                  color: buttonColor,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: buttonColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Belajar',
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ScaleTransition(
                      scale: _animation1,
                      child: GestureDetector(
                        onTap: () => playSoundAndAksiPage(),
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                ),
                                child: Icon(
                                  Icons.medical_services,
                                  size: 30,
                                  color: buttonColor,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: buttonColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Mulai Aksi',
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ScaleTransition(
                      scale: _animation3,
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => MateriPage(),
                          //   ),
                          // );
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                ),
                                child: Icon(
                                  Icons.store,
                                  size: 30,
                                  color: buttonColor,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: buttonColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Toko',
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 250,
                  height: 75,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/user-circle.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      BlocBuilder<AuthCubit, AuthState>(
                        builder: (context, state) {
                          if (state is AuthSuccess) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  state.user.name,
                                  style: blackTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Duta Covidiolog',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            );
                          } else {
                            return SizedBox();
                          }
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
