import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final Color color;
  const Jawaban({Key? key, required this.color}) : super(key: key);

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
        color: color,
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
    );
  }
}
