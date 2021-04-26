import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vize/yarisma/sorular.dart';


class Yarisma extends StatefulWidget {
  @override
  _YarismaState createState() => _YarismaState();
}

class _YarismaState extends State<Yarisma> {
  String adSoyad = '';

  void kontrol() {
    if ((adSoyad.length > 0)) {
      var data = [];
      data.add(adSoyad);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sorular(),
            settings: RouteSettings(
              arguments: data,
            ),
          ));
    } else {
      Navigator.pushNamed(context, '/');
    }
  }

  @override
  Widget build(BuildContext context) {
    bool butonPasif = true;
    if ((adSoyad.length > 0)) {
      butonPasif = false;
    } else {
      butonPasif = true;
    }
    void _adSoyadKaydet(String text) {
      setState(() {
        adSoyad = text;
      });
    }

    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('Başkent Bilgi Yarışması'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Color.fromARGB(255, 20, 31, 88),
              Color.fromARGB(255, 20, 31, 88),
              Color.fromARGB(255, 20, 31, 88),
              Color.fromARGB(255, 48, 56, 106),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Kullanıcı Adınız:',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
                textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                onChanged: (text) {
                  _adSoyadKaydet(text);
                },
                decoration: const InputDecoration(
                    hintText: 'Kullanıcı Adınızı Giriniz',
                    hintStyle: TextStyle(color: Colors.white)),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                      side: BorderSide(width: 3, color: Colors.white)),
                  primary: Colors.grey,
                  minimumSize: Size(100, 60),
                ),
                onPressed: butonPasif ? null : kontrol,
                child: Text(
                  'Yarışmaya Başla',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
