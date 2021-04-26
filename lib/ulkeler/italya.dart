import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vize/main.dart';
import 'package:vize/menuler.dart';
import 'package:vize/otel/gidilen.dart';

class Italya extends StatefulWidget {
  @override
  _ItalyaState createState() => _ItalyaState();
}

class _ItalyaState extends State<Italya> {
  String ulke = '';
  void Gonder()
  {
    var data = [];
    ulke = "İtalya";
    data.add(ulke);
    Navigator.push(context, MaterialPageRoute(builder: (context) => Gidilecek(),settings: RouteSettings(arguments: data,)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Gonder();

        },
        label:  Text(''),
        icon:  Icon(Icons.hotel),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 20),
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
                          image: AssetImage("resimler/italya.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        color: Color.fromARGB(255, 0, 0, 20),
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
                                    color: Colors.green[800],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Nüfus 60,36 milyon",
                                      style: GoogleFonts.robotoSlab(
                                          color: Colors.white, fontSize: 19,fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.people,
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
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Başkenti Roma",
                                      style: GoogleFonts.robotoSlab(
                                          color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.location_city_sharp,
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
                                    color: Colors.red[800],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Para birimi Euro",
                                      style: GoogleFonts.robotoSlab(
                                          color: Colors.white, fontSize: 19,fontWeight: FontWeight.bold),
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
                            "İtalya",
                            style: GoogleFonts.robotoSlab(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),

                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Flag('it', height: 200, width: 200),
                          Text(
                            "İtalya Güney Avrupa'da Akdeniz'e kıyısı olan bir yarımadadır. İsviçre Fransa Slovenya ve Avusturya ile komşudur. Ayrıca Sicilya ve Sardunya da İtalya'ya bağlıdır. İtalya Avrupa'nın en kalabalık 4 Ülkesinden biridir. Yüzölçümü 302,000 metrekaredir. İtalya'nın iklimi ılıman bir iklimdir. İtalya Roma İmparatorluğu’na ev sahipliği yapmış ülkelerden biridir. Dini inancı Hristiyan Katolik’tir. Hristiyan Katolik mezhebinin merkezi de Vatikan’dır. Tarihi miras açısından son derece zengin bir ülkedir. İtalya çok fazla turist almaktadır. İtalya birçok kuruluşa üye ülkelerden biridir. G7, Avrupa Birliği, NATO, OECD, Birleşmiş Milletler, Dünya Ticaret Örgütüdür. Ekonomisi oldukça gelişmiştir. Turizm açısından da çok fazla turist alan ülkelerden biridir. İtalya'nın başkenti Roma’dır. İtalya 20 bölgeye ayrılmaktadır. İtalya'nın içinde Vatikan, San Marino ve İtalya 3 farklı ülke gibi düşünülebilir. İtalya'nın en turistik şehirleri Roma, Milano, Napoli, Palermo, Floransa, Bari, Venedik, Verona ve Pisa’dır.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.robotoSlab(color: Colors.white,fontSize: 22),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
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
                          MaterialPageRoute(
                              builder: (context) => Menuler()),
                        );
                      },
                    ),
                    Padding(padding: EdgeInsets.all(10)),

                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
