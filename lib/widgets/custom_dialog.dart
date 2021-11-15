import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lomba/common/navigation.dart';

customDialog(BuildContext context, String title, String content) {
  if (Platform.isIOS) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            CupertinoDialogAction(
              child: Text('Ya'),
              onPressed: () {
                Navigation.back();
              },
            ),
            CupertinoDialogAction(
              child: Text('Ya'),
              onPressed: () {
                Navigation.back();
              },
            ),
          ],
        );
      },
    );
  } else {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Tidak'),
            ),
            TextButton(
              onPressed: () {
                exit(0);
              },
              child: Text('Ya'),
            ),
          ],
        );
      },
    );
  }
}
