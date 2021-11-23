import 'package:flutter/material.dart';

final controller = ScrollController();
void scrollDown() {
  final double end = 2562.6428571428573;
  controller.jumpTo(end);
  print(end);
}
