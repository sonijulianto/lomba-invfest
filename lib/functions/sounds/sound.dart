import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

playSound() {
  final player = AudioCache();
  player.play('klik.m4a');
}

playSoundTrue() {
  final player = AudioCache();
  player.play('benar.m4a');
}

playSoundFalse() {
  final player = AudioCache();
  player.play('salah.m4a');
}

soundMessage() {
  final player = AudioCache();
  player.play('newchat.webm');
}

playSoundAndNext(BuildContext context, MaterialPageRoute route) async {
  final player = AudioCache();
  await player.play('klik.m4a');

  Timer(Duration(milliseconds: 100), () {
    Navigator.push(context, route);
  });
}
