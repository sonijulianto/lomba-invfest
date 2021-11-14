import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';

class ChatGambar extends StatelessWidget {
  final String gambar;
  final AlignmentGeometry alignment;
  const ChatGambar({
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
          horizontal: 10,
          vertical: 10,
        ),
        margin: EdgeInsets.only(
          bottom: 10,
          right: 10,
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
          width: 150,
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
