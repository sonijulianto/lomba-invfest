// ignore_for_file: implementation_imports

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lomba/common/navigation.dart';
import 'package:lomba/functions/sounds/sound.dart';
import 'package:lomba/pages/cubit/auth_cubit.dart';
import 'package:provider/src/provider.dart';

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
                playSound();
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
                playSound();
                Navigator.pop(context);
              },
              child: Text('Tidak'),
            ),
            TextButton(
              onPressed: () {
                context.read<AuthCubit>().signOut();
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

customDialogAksi(BuildContext context, String content) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              playSound();
              Navigator.pop(context);
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
