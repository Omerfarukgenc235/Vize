import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vize/main.dart';
import 'package:vize/menuler.dart';
import 'package:vize/otel/gidilen.dart';

class Rusya extends StatefulWidget {
  @override
  _RusyaState createState() => _RusyaState();
}

class _RusyaState extends State<Rusya> {
  String ulke = '';

  void Gonder() {
    var data = [];
    ulke = "Rusya";
    data.add(ulke);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Gidilecek(),
            settings: RouteSettings(
              arguments: data,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Gonder();
        },
        label: Text(''),
        icon: Icon(Icons.hotel),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Color.fromARGB(255, 20, 31, 88),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Color.fromARGB(255, 0, 0, 20),
                  Color.fromARGB(255, 0, 0, 20),
                  Color.fromARGB(255, 0, 0, 20),
                  Color.fromARGB(255, 0, 0, 20),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(5)),
                    Container(
                      width: 450.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("resimler/rusya.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IntrinsicWidth(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                width: 130.0,
                                height: 100.0,
                                decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Nüfus 144,4 milyon",
                                      style: GoogleFonts.robotoSlab(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.people,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                width: 130.0,
                                height: 100.0,
                                decoration: ShapeDecoration(
                                    color: Colors.blue[900],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Başkent Moskova",
                                      style: GoogleFonts.robotoSlab(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.location_city_sharp,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                width: 130.0,
                                height: 100.0,
                                decoration: ShapeDecoration(
                                    color: Colors.red[900],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Para birimi Rus Rublesi",
                                      style: GoogleFonts.robotoSlab(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.money,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      decoration: ShapeDecoration(
                          color: Color.fromARGB(255, 0, 0, 90),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Column(
                        children: [
                          Text(
                            "Rusya",
                            style: GoogleFonts.robotoSlab(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          Flag('RU', height: 200, width: 200),
                          Text(
                            "Rusya 17 milyon kilometre karelik alanıyla Dünyanın en büyük ülkesidir. Dünyanın sekizde birini kaplar Asya ve Avrupa kıtalarına yayılmıştır. Çok milletli bir ülke olan Rusya, nüfusun %80 etnik kökeni Rustur. Fakat 150′den fazla etnik köken ile birlikte yaşar. Ülkenin resmi dili Rusçadır. Yaygın konuşulan yabancı diller İngilizce, Almanca, Fransızca, İspanyolca ve İtalyancadır. Rusya’nın resmi para birimi Rubledir. En büyük şehiri ve başkenti 11 milyonluk nüfusuyla Moskovadır. Rusya’da 1000′den fazla şehir bulunmaktadır. En büyük şehirleri Moskova, St. Petersburg, Nijni Novgorod, Kazan, Krasnodar, Novosibirsk, Rostov, Astrahan, Veliky Novgorod ve Saratovdur.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.robotoSlab(
                                color: Colors.white, fontSize: 22),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          Padding(padding: EdgeInsets.all(10)),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    OutlineButton.icon(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Ana Menüye Dön",
                        style: TextStyle(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(30),
                      borderSide: BorderSide(width: 2, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Menuler()),
                        );
                      },
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
