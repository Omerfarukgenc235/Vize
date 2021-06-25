import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vize/Grafik/Grafik1.dart';
import 'package:vize/api/Doviz.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vize/menuler/menuler.dart';
import 'package:vize/otel/otellisteleme.dart';
import 'package:google_fonts/google_fonts.dart';

class Turkey extends StatefulWidget {
  @override
  _TurkeyState createState() => _TurkeyState();
}

class _TurkeyState extends State<Turkey> {
  String ulke = '';
  String sehir = '';
  String dolarkodu = '';
  String resim1 = '';
  String nufus = '';
  String baskent = '';
  String para = '';
  String ulkeaciklama = '';
  String bayrak = '';
  Color renk1 = Colors.white;
  Color renk2 = Colors.white;
  Color renk3 = Colors.white;
  Color renktext1 = Colors.black;
  Color renktext2 = Colors.black;
  Color renktext3 = Colors.black;

  double temp;
  var data;
  String deskriksi;
  bool durum = false;
  Doviz doviz;
  Future<Doviz> veri;
  List<DovizListem> dovizListesi = List<DovizListem>();
  String url =
      "https://v6.exchangerate-api.com/v6/674f2f81755fa62c1804378f/latest/USD";

  Future<Doviz> dovizleriGetir() async {
    var response = await http.get(Uri.parse(url));
    var decodeJson = json.decode(response.body);
    doviz = Doviz.fromJson(decodeJson);
    return doviz;
  }

  Future getData() async {
    try {
      http.Response res = await http.get(Uri.parse(
          "http://api.openweathermap.org/data/2.5/weather?q=$sehir&APPID=d22cef30d8d5d87bc5779b1dc08242a8"));
      data = jsonDecode(res.body);
      setState(() {
        temp = data["main"]["temp"];
        deskriksi = data["weather"][0]["description"];
      });
    } catch (e) {}
  }


  void Gonder2() {
    var data = [];
    data.add(ulke);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => OtelListeleme(),
            settings: RouteSettings(
              arguments: data,
            )));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    veri = dovizleriGetir();
  }

  Widget build(BuildContext context) {
    var data2 = [];

    data2 = ModalRoute.of(context).settings.arguments;

    if (data2 != null) {
      ulke = data2[0].toString();
    } else
      ulke = "";
    if (data2 != null) {
      sehir = data2[1].toString();
    } else
      sehir = "";
    if (data2 != null) {
      dolarkodu = data2[2].toString();
    } else
      dolarkodu = "";
    if (data2 != null) {
      resim1 = data2[3].toString();
    } else
      resim1 = "";
    if (data2 != null) {
      nufus = data2[4].toString();
    } else
      nufus = "";
    if (data2 != null) {
      baskent = data2[5].toString();
    } else
      baskent = "";
    if (data2 != null) {
      para = data2[6].toString();
    } else
      para = "";

    if (data2 != null) {
      ulkeaciklama = data2[7].toString();
    } else
      ulkeaciklama = "";
    if (data2 != null) {
      bayrak = data2[8].toString();
    } else
      bayrak = "";

    if (ulke == "Türkiye") {
      renk1 = Colors.red[800];
      renk2 = Colors.white;
      renk3 = Colors.red[800];
      renktext1 = Colors.white;
      renktext2 = Colors.black;
      renktext3 = Colors.white;
    }
    if (ulke == "Amerika") {
      renk1 = Colors.deepPurple[900];
      renk2 = Colors.red[700];
      renk3 = Colors.white;
      renktext1 = Colors.white;
      renktext2 = Colors.white;
      renktext3 = Colors.black;
    }
    if (ulke == "Rusya") {
      renk1 = Colors.white;
      renk2 = Colors.blue[900];
      renk3 = Colors.red;
      renktext1 = Colors.black;
      renktext2 = Colors.white;
      renktext3 = Colors.white;
    }
    if (ulke == "Kore") {
      renk1 = Colors.white;
      renk2 = Colors.red[900];
      renk3 = Colors.blue[900];
      renktext1 = Colors.black;
      renktext2 = Colors.white;
      renktext3 = Colors.white;
    }
    if (ulke == "Azerbaycan") {
      renk1 = Colors.blue;
      renk2 = Colors.red[500];
      renk3 = Colors.lightGreen[700];
      renktext1 = Colors.white;
      renktext2 = Colors.white;
      renktext3 = Colors.white;
    }
    if (ulke == "Pakistan") {
      renk1 = Colors.green[900];
      renk2 = Colors.green[900];
      renk3 = Colors.green[900];
      renktext1 = Colors.white;
      renktext2 = Colors.white;
      renktext3 = Colors.white;
    }
    if (ulke == "İtalya") {
      renk1 = Colors.green[800];
      renk2 = Colors.white;
      renk3 = Colors.red[800];
      renktext1 = Colors.white;
      renktext2 = Colors.black;
      renktext3 = Colors.white;
    }
    if (ulke == "Almanya") {
      renk1 = Colors.grey[900];
      renk2 = Colors.red[800];
      renk3 = Colors.amber;
      renktext1 = Colors.white;
      renktext2 = Colors.white;
      renktext3 = Colors.black;
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Gonder2();
        },
        label: Text(''),
        icon: Icon(Icons.hotel),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: FutureBuilder(
          future: this.getData(),
          builder: (context, snap) {
            return IntrinsicWidth(
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

                              width: MediaQuery.of(context).size.width / 1,
                              height: MediaQuery.of(context).size.width / 1.35,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(resim1),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                color: Color.fromARGB(255, 0, 0, 20),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: IntrinsicWidth(
                                child: Container(
                                  child: Column(children: [
                                    Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3.25,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: renk1,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              16.0))),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Nüfus $nufus",
                                                    style: TextStyle(
                                                        color: renktext1,
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  Icon(
                                                    Icons.people,
                                                    color: renktext1,
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
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3.25,
                                              decoration: BoxDecoration(
                                                  color: renk2,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              16.0))),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Başkent $baskent",
                                                    style: TextStyle(
                                                        color: renktext2,
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  Icon(
                                                    Icons.location_city_sharp,
                                                    color: renktext2,
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
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3.25,
                                              decoration: BoxDecoration(
                                                  color: renk3,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              16.0))),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Para Birimi $para",
                                                    style: TextStyle(
                                                        color: renktext3,
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  Icon(
                                                    Icons.money,
                                                    color: renktext3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.all(10)),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.10,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  7.56,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    ulke,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Icon(
                                                    Icons.cloud,
                                                    color: Colors.lightBlueAccent,
                                                    size: 50.0,
                                                  ),
                                                  Text(
                                                    temp == null
                                                        ? 'Loading'
                                                        : ((temp - 273.15)
                                                                .round())
                                                            .toString(),
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              30.0)),
                                                  color: Colors.white10),
                                            ),
                                          ),
                                          Padding(padding: EdgeInsets.all(5)),
                                          FutureBuilder(
                                              future: veri,
                                              builder: (context,
                                                  AsyncSnapshot<Doviz>
                                                      gelenDoviz) {
                                                if (gelenDoviz
                                                        .connectionState ==
                                                    ConnectionState.waiting) {
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  );
                                                } else if (gelenDoviz
                                                        .connectionState ==
                                                    ConnectionState.done) {
                                                  gelenDoviz
                                                      .data.conversionRates
                                                      .forEach((key, value) {
                                                    dovizListesi.add(
                                                        DovizListem(
                                                            paraAdi: key,
                                                            paraDegeri: value));
                                                  });
                                                  return Center(
                                                    child: GestureDetector(
                                                      onDoubleTap: (){
                                                        Navigator.push(
                                                            context, MaterialPageRoute(builder: (context) => Grafik1()));
                                                      },
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width:
                                                            MediaQuery.of(context)
                                                                    .size
                                                                    .width /
                                                                2.10,
                                                        height:
                                                            MediaQuery.of(context)
                                                                    .size
                                                                    .height /
                                                                7.56,
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              para,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 25,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Icon(
                                                              Icons.attach_money,
                                                              color:
                                                                  Colors.lightBlueAccent,
                                                              size: 50.0,
                                                            ),
                                                            Text(
                                                              r"1$ = " +
                                                                  dovizListesi[int
                                                                          .parse(
                                                                              dolarkodu)]
                                                                      .paraDegeri
                                                                      .toString() +
                                                                  " ",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ],
                                                        ),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius
                                                                        .circular(
                                                                            30.0)),
                                                            color:
                                                                Colors.white10),
                                                      ),
                                                    ),
                                                  );
                                                }
                                              })
                                        ]),
                                  ]),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            GestureDetector(
                              onLongPress: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Menuler()),
                                );
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                    color: Color.fromARGB(255, 0, 0, 79),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))),
                                child: Column(
                                  children: [
                                    Text(
                                      ulke,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Flag(bayrak, height: 200, width: 200),
                                    Text(
                                      ulkeaciklama,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.robotoSlab(
                                          color: Colors.white, fontSize: 22),
                                    ),
                                    Padding(padding: EdgeInsets.all(30)),
                                  ],
                                ),
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
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white),
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
          }),
    );
  }
}
