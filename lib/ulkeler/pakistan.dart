import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vize/main.dart';
import '../menuler/menuler.dart';
import 'package:vize/otel/gidilen.dart';


class Pakistan extends StatefulWidget {
  @override
  _PakistanState createState() => _PakistanState();
}

class _PakistanState extends State<Pakistan> {
  String ulke = '';
  void Gonder()
  {
    var data = [];
    ulke = "Pakistan";
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
                          image: AssetImage("resimler/islam.png"),
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
                                    color: Colors.green[900],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Nüfus 216,6 milyon",
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
                                    color: Colors.green[900],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Başkent İslamabat",
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
                                    color: Colors.green[900],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Para birimi Pakistan Rupisi",
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
                            "Pakistan",
                            style: GoogleFonts.robotoSlab(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),

                          ),
                          Flag('PK', height: 200, width: 200),
                          Text(
                            "Dünyanın en kalabalık Müslüman nüfusa sahip ülkelerinden Pakistan, Asya‘da çok önemli stratejik bir coğrafi konumda bulunuyor. Resmi adı Pakistan İslam Cumhuriyeti olan ülkenin batısında Afganistan ve İran, kuzeyinde Çin, doğusunda Hindistan, güneyinde ise Umman Denizi bulunuyor.1947’ye kadar İngiliz sömürgesi olan ülke bağımsızlığını 14 Ağustos 1947’de elde etti. Pakistan bağımsızlığını elde ettikten sonra doğu bölgesi Bangladeş olarak ayrıldı. Günümüzde Pakistan Pencap, Sind, Kuzeybatı Sınır Eyaleti, Hayber-Pahtunhva, İslamabad, Keşmir, Aşiretler Bölgesi ve Belucistan olmak üzere 8 bölgeden oluşuyor.",
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
