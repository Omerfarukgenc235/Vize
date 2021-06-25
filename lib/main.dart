import 'package:flutter/material.dart';
import 'package:vize/baslangic/animasyon.dart';
import 'package:vize/hakkinda.dart';
import 'package:vize/login/anamenu.dart';
import 'package:vize/login/asilolay.dart';
import 'package:vize/login/kayitol.dart';
import 'package:vize/login/login.dart';
import 'package:vize/login/sifirlama.dart';
import 'package:vize/otel/OTEL.dart';
import 'package:vize/otel/butunoteller.dart';
import 'package:vize/otel/otellisteleme.dart';
import 'menuler/menuler.dart';
import 'package:vize/myhomepage.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => AnimasyonDeneme(),
        "/settings": (context) => Hakkinda(),
        "/menuler": (context) => Menuler(),
        "/kayitol": (context) => KayitOl(),
        "/login": (context) => LoginSayfasi(),
        "/anamenu": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/vize": (context) => MyHomePage(),
        "/sifir": (context) => Sifreyenile(),
        "/otel": (context) => OtelListeleme(),
        "/otelsayfa": (context) => OtelSayfa(),
        "/otel2": (context) => OtelListeleme2(),

      },
    );
  }
}
