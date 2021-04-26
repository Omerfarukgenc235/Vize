import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vize/main.dart';
import 'package:vize/menuler.dart';
import 'package:vize/otel/gidilen.dart';

class Amerika extends StatefulWidget {
  @override
  _AmerikaState createState() => _AmerikaState();
}

class _AmerikaState extends State<Amerika> {
  String ulke = '';
  void Gonder()
  {
    var data = [];
    ulke = "Amerika";
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
                        image: AssetImage("resimler/amerika.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Color.fromARGB(255, 0, 0, 90),
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
                              height: 110.0,
                              decoration: ShapeDecoration(
                                  color: Colors.deepPurple[900],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(

                                    "Nüfusu 328,2 milyon",
                                    style: GoogleFonts.robotoSlab(
                                        color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
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
                              height: 110.0,
                              decoration: ShapeDecoration(
                                  color: Colors.red[700],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Başkenti Washington,DC",
                                    style: GoogleFonts.robotoSlab(
                                        color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
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
                              height: 110.0,
                              decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Para birimi Amerikan Doları",
                                    style: GoogleFonts.robotoSlab(
                                        color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
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
                          "Amerika",
                          style: GoogleFonts.robotoSlab(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),

                        ),
                        Flag('US', height: 200, width: 200),
                        Text(
                          "50 eyalet ve bir federal bölgeden oluşan Amerika Birleşik Devletleri, İngiltere ile sürdürdüğü büyük mücadeleler sonucunda 4 Temmuz 1876 yılında kurulmuş demokratik, federal, anayasal bir cumhuriyettir. Nüfusunu dünyanın dört bir tarafından gelen göçmenlerin oluşturduğu Amerika Birleşik Devletleri, Çin ve Hindistan'dan sonra dünyanın en kalabalık 3. ülkesidir. Halen yoğun bir şekilde göç alan ülke, bu nedenle gelişmiş ülkeler arasında nüfus artış hızı en yüksek olanlardan biridir. Bu özellikleri ile nüfus çeşitliliği bakımından dünyanın en zengin ülkesi olan Amerika Birleşik Devletleri'nde İngilizceden sonra en çok konuşulan dil İspanyolcadır. SSCB'nin yıkılmasıyla dünyanın tek süper gücü konumuna gelen ülke, bugün de birçok açıdan dünyanın cazibe merkezi olma özelliğini sürdürmektedir.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.robotoSlab(color: Colors.white,fontSize: 21),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
