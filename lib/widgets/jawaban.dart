import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';

class Jawaban extends StatelessWidget {
  const Jawaban({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
        color: whiteColor,
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
    );
  }
}
