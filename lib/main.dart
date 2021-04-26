import 'package:flutter/material.dart';
import 'package:vize/intro.dart';
import 'package:vize/menuler.dart';
import 'package:vize/myhomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Intro(),
        "/settings": (context) => Settings(),
        "/menuler": (context) => Menuler(),
      },
    );
  }
}
