// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';

class ChatCard extends StatelessWidget {
  int? index;
  String people;
  bool? jawaban;
  TextStyle? warna;
  final String message;
  final AlignmentGeometry alignment;
  ChatCard({
    Key? key,
    this.warna,
    this.index,
    required this.people,
    this.jawaban = false,
    required this.message,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        width: jawaban!
            ? MediaQuery.of(context).size.width * 0.9
            : MediaQuery.of(context).size.width * 0.7,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        margin: EdgeInsets.only(
          bottom: 10,
          right: alignment == Alignment.bottomRight ? 10 : 0,
          left: alignment == Alignment.bottomRight ? 0 : 10,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 1),
            ),
          ],
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            alignment == Alignment.bottomRight
                ? SizedBox()
                : people != ''
                    ? Text(
                        people,
                        style: warna == null
                            ? blueTextStyle.copyWith(fontWeight: bold)
                            : warna,
                        overflow: TextOverflow.ellipsis,
                      )
                    : SizedBox(),
            Text(
              message,
              style: index == null
                  ? blackTextStyle
                  : blackTextStyle.copyWith(fontWeight: semiBold),
            ),
          ],
        ),
      ),
    );
  }
}
