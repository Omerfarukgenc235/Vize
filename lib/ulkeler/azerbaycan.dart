import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vize/main.dart';
import 'package:vize/menuler.dart';
import 'package:vize/otel/gidilen.dart';

class Azerbaycan extends StatefulWidget {
  @override
  _AzerbaycanState createState() => _AzerbaycanState();
}

class _AzerbaycanState extends State<Azerbaycan> {
  String ulke = '';
  void Gonder()
  {
    var data = [];
    ulke = "Azerbaycan";
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
                          image: AssetImage("resimler/azerbaycan.png"),
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
                                    color: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Nüfus 10,02 milyon",
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
                                    color: Colors.red[500],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Başkent Bakü",
                                      style: GoogleFonts.robotoSlab(
                                          color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
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
                                    color: Colors.lightGreen[700],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Para birimi Azerbaycan Manatı",
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
                            "Azerbaycan",
                            style: GoogleFonts.robotoSlab(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),

                          ),
                          Flag('AZ', height: 200, width: 200),
                          Text(
                            "1918-1920 arasında 2 yıl bağımsız kalan Azerbaycan, 70 yıllık Sovyet döneminin ardından 26 yıldır dünya arenasında yeniden bağımsız bir devlet olarak yer alıyor.Hazar Denizi kıyısında bulunan, Rusya, İran, Gürcistan, Ermenistan ve Türkiye ile komşu ülkede, resmi dil olarak Türkçe kökenli Azerbaycanca konuşuluyor.Topraklarının yüzde 20'si Ermenistan işgali altında, 1 milyon insanı mülteci durumunda olan Azerbaycan, bir taraftan Dağlık Karabağ ve etrafındaki illeri işgalden kurtarmak için müzakereler yürütüyor, diğer taraftan ordusunu olası savaşa karşı güçlendirmeye çalışıyor.Azerbaycan, doğal güzellikleri ve çok sayıda tarihi yapıya sahip olmasıyla tanınıyor. Ülke, son dönemde Rusya, Avrupa ve özellikle Körfez ülkelerinden gelen turistleri ağırlıyor.Azerbaycan, tarihi ve çağdaş yapıları iç içe barındıran başkenti Bakü, her adımda geçmişin izlerini taşıyan doğal güzelliklere sahip Gence, Şeki, Guba ve Lenkeran gibi illeri, geleneksel müziği, sanata ve sanatçıya verdiği değer, Kafkasya, İran ve Türk mutfağının harmanlandığı yemek kültürü ile turizm potansiyeli yüksek ülkeler arasında gösteriliyor.Dünyada 11 iklim çeşidinden 9'una sahip Azerbaycan'ın ovalarında ılıman, yüksek kesimlerinde sert iklimin etkileri görülüyor.Azerbaycan ayrıca Mersin balığından üretilen siyah havyarıyla dünyaca ün kazanmış durumda. ",
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
                          MaterialPageRoute(builder: (context) => Menuler()),
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
