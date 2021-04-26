import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:vize/otel/gidilen.dart';
import 'package:vize/main.dart';
import 'package:vize/menuler.dart';
import 'package:google_fonts/google_fonts.dart';

class Turkey extends StatefulWidget {
  @override
  _TurkeyState createState() => _TurkeyState();
}

class _TurkeyState extends State<Turkey> {
  String ulke = '';

  void Gonder() {
    var data = [];
    ulke = "Türkiye";
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
      body: IntrinsicWidth(
        child: SingleChildScrollView(
          child: Container(
            child: Container(
              decoration: BoxDecoration(
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

                            image: AssetImage("resimler/turkiye.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          color: Color.fromARGB(255, 0, 0, 90),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: IntrinsicWidth(
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
                                    height: 100.0,

                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.red[800],
                                      borderRadius: BorderRadius.all(Radius.circular(16.0)
                                      )),

                                      child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Nüfus 82M",
                                          style: GoogleFonts.robotoSlab(
                                              color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
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
                                  height: 100.0,

                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(16.0)
                                      )),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Başkent Ankara",
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
                                    height: 100.0,


                                    decoration: BoxDecoration(
                                        color: Colors.red[800],
                                        borderRadius: BorderRadius.all(Radius.circular(16.0)
                                        )),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Para Birimi Türk Lirası",
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
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Container(
                        decoration: ShapeDecoration(
                            color: Color.fromARGB(255, 0, 0, 79),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Column(
                          children: [
                            Text(
                              "Türkiye",
                              style: GoogleFonts.robotoSlab(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                            ),
                            Flag('tr', height: 200, width: 200),
                            Text(
                              "Türkiye ya da resmî adıyla Türkiye Cumhuriyeti, topraklarının büyük bölümü Anadolu'da, küçük bir bölümü ise Balkan Yarımadası'nın güneydoğu uzantısı olan Trakya'da yer alan ülke. Kuzeybatıda Bulgaristan, batıda Yunanistan, kuzeydoğuda Gürcistan, doğuda Ermenistan, İran ve Azerbaycan'ın ekslav toprağı Nahcivan, güneydoğuda ise Irak ve Suriye komşusudur. Güneyini Akdeniz, batısını Ege Denizi ve kuzeyini Karadeniz çevreler. Marmara Denizi ise İstanbul Boğazı ve Çanakkale Boğazı ile birlikte Anadolu'yu Trakya'dan yani Asya'yı Avrupa'dan ayırır. Türkiye, Avrupa ve Asya'nın kavşak noktasında yer alması sayesinde önemli bir jeostratejik güce sahiptir.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.robotoSlab(
                                  color: Colors.white, fontSize: 22),
                            ),
                            Padding(padding: EdgeInsets.all(30)),

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
      ),
    );
  }
}
