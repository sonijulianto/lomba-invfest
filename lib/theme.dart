import 'package:flutter/material.dart';

Color primaryColor = Color(0xff2D3E50);
Color secondaryColor = Color(0xffF6F8FD);

ThemeData theme() {
  return ThemeData(scaffoldBackgroundColor: Color(0xffFFFFFF));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 0,
    backgroundColor: primaryColor,
  );
}

TextStyle textStyle() {
  return TextStyle(
    color: Colors.white,
  );
}
