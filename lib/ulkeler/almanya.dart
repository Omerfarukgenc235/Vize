import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vize/main.dart';
import 'package:vize/menuler.dart';
import 'package:vize/otel/gidilen.dart';

class Almanya extends StatefulWidget {
  @override
  _AlmanyaState createState() => _AlmanyaState();
}

class _AlmanyaState extends State<Almanya> {
  String ulke = '';

  void Gonder() {
    var data2 = [];
    ulke = "Almanya";
    data2.add(ulke);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Gidilecek(),
            settings: RouteSettings(
              arguments: data2,
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
      backgroundColor: Color.fromARGB(255, 0, 0, 20),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Color.fromARGB(255, 0, 0, 20),
                  Color.fromARGB(255, 0, 0, 20),
                  Color.fromARGB(255, 0, 0, 20),
                  Color.fromARGB(255, 0, 0, 20),

                  //   Colors.black,
                ],
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    width: 450.0,
                    height: 250.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("resimler/almanya.png"),
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
                                  color: Colors.grey[900],
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(16.0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Nüfus 83,02 milyon",
                                    style: GoogleFonts.robotoSlab(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
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
                                  color: Colors.red[800],
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(16.0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Başkenti Berlin",
                                    style: GoogleFonts.robotoSlab(
                                        color: Colors.white,
                                        fontSize: 19,
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
                                  color: Colors.amber,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(16.0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Para birimi Euro",
                                    style: GoogleFonts.robotoSlab(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Icon(
                                    Icons.money,
                                    color: Colors.black,
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
                        color: Color.fromARGB(255, 0, 0, 79),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Column(
                      children: [
                        Text(
                          "Almanya",
                          style: GoogleFonts.robotoSlab(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Flag('de', height: 200, width: 200),
                        Text(
                            "Almanya Federal Cumhuriyeti 1949’dan beri demokratik, parlamenter bir federal devlettir. 1990’da yeniden birleşen Almanya’da 16 eyalet ve nüfusu 100 binin üzerinde olan 81 kent bulunmaktadır. Almanya Orta Avrupa’da Kuzey Denizi ile Alpler arasında uzanan bir devlettir. Almanya Federal Cumhuriyeti'nin şansölyesi 2005 tarihinden beri Angela Merkel'dir.3,4 milyon nüfusuyla Berlin, Almanya’nın en büyük şehridir. Nüfusu milyonlara ulaşan diğer şehirler Hamburg (1,8 milyon) ve Münih’tir (1,3 milyon). 80 milyonun üzerinde nüfusa sahip Almanya, Rusya’nın ardından Avrupa’nın en fazla nüfusa sahip ikinci ülkesidir. Nüfusun yaklaşık yüzde 7.7’sini göçmenler oluşturmaktadır.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.robotoSlab(
                                color: Colors.white, fontSize: 22)),
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
    );
  }
}
