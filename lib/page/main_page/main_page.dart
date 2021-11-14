import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('hallo $name'));
  }
}
