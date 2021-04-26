import 'package:flutter/material.dart';

class SatinAl extends StatefulWidget {
  @override
  _SatinAlState createState() => _SatinAlState();
}
String posta = '';
String sifre = '';
String tarih = '';
int gun;

class _SatinAlState extends State<SatinAl> {

  @override
  Widget build(BuildContext context) {

    var data = [];

    data = ModalRoute.of(context).settings.arguments;
    posta = data[0];
    sifre = data[1];
    tarih = data[2];
    gun = data[3];


    return Scaffold(
        appBar: AppBar(
          title: Text("Satın Alma Başarılı"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Color.fromARGB(255, 20, 31, 88),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Satın Alma Başarılı !",
                  textAlign: TextAlign.center,

                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),

                Padding(padding: EdgeInsets.all(10)),
                Image.asset(
                  "resimler/satin.gif",
                  width: 300,
                  height: 280,
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "E-posta = $posta",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Başlangıç Tarihi = $tarih",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Tatil Süresi = $gun",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ));
  }
}
