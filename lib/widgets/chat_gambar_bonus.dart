import 'package:flutter/material.dart';

class ChatGambarBonus extends StatelessWidget {
  final String gambar;
  final AlignmentGeometry alignment;
  const ChatGambarBonus({
    Key? key,
    required this.gambar,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        margin: EdgeInsets.only(
          bottom: 10,
          left: 10,
        ),
        decoration: BoxDecoration(
          color: alignment == Alignment.bottomRight
              ? Color.fromARGB(255, 147, 217, 249)
              : Color.fromARGB(255, 206, 236, 250),
          borderRadius: alignment == Alignment.bottomRight
              ? BorderRadius.only(
                  topLeft: Radius.circular(17),
                  topRight: Radius.circular(17),
                  bottomLeft: Radius.circular(17),
                )
              : BorderRadius.only(
                  topLeft: Radius.circular(17),
                  topRight: Radius.circular(17),
                  bottomRight: Radius.circular(17),
                ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image:
                DecorationImage(image: AssetImage(gambar), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
