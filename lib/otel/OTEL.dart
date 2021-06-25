import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vize/otel/gidilen.dart';
import 'package:google_fonts/google_fonts.dart';

class OtelSayfa extends StatefulWidget {
  @override
  _OtelSayfaState createState() => _OtelSayfaState();
}

class _OtelSayfaState extends State<OtelSayfa> {
  @override
  Widget build(BuildContext context) {
    String Ulkead = '';
    String Sehirad = '';
    String Fiyat = '';
    String yildiz = '';
    String otelad = '';
    String otelaciklama = '';
    String resim = '';
    double _scaleFactor = 1.0;
    double _baseScaleFactor = 1.0;
    var data = [];

    data = ModalRoute.of(context).settings.arguments;

    if (data != null) {
      Ulkead = data[0].toString();
    } else
      Ulkead = "";
    if (data != null) {
      Sehirad = data[1].toString();
    } else
      Sehirad = "";
    if (data != null) {
      Fiyat = data[2].toString();
    } else
      Fiyat = "";
    if (data != null) {
      yildiz = data[3].toString();
    } else
      yildiz = "";
    if (data != null) {
      otelad = data[4].toString();
    } else
      otelad = "";
    if (data != null) {
      otelaciklama = data[5].toString();
    } else
      otelaciklama = "";
    if (data != null) {
      resim = data[6].toString();
    } else
      resim = "";


    void Gonder1() {
      var data = [];
      data.add(Ulkead);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Gidilecek(),
              settings: RouteSettings(
                arguments: data,
              )));
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(otelad),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

                 Container(
                  width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(resim),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0)),
                    color: Color.fromARGB(255, 180, 180, 180),
                  ),
                ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Color.fromARGB(255, 242, 242, 255),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onScaleStart: (details) {
                        _baseScaleFactor = _scaleFactor;
                      },
                      onScaleUpdate: (details) {
                        setState(() {
                          _scaleFactor = _baseScaleFactor * details.scale;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.width / 7,
                        alignment: Alignment.center,
                        child: Text(
                          otelad,
                          textAlign: TextAlign.center,
                          textScaleFactor: _scaleFactor,

                          style: GoogleFonts.robotoSlab(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.width / 7,
                          alignment: Alignment.center,
                          child: Text(
                            Ulkead,

                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 35, 10, 82)),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.width / 7,
                          alignment: Alignment.center,
                          child: Text(
                            Fiyat + "₺/gün",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 35, 10, 82)),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.width / 7,
                          alignment: Alignment.center,
                          child: Text(
                            Sehirad,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 35, 10, 82)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.width / 7,
                      alignment: Alignment.center,
                      child: Text(
                        yildiz,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(2)),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Color.fromARGB(255, 242, 242, 255),
                ),
                child: Column(
                  children: [
                    Text(
                      otelaciklama,
                      style: GoogleFonts.robotoSlab(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){Gonder1();},
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.width / 8,
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.width / 8,
                          alignment: Alignment.center,
                          child: Text(
                            "Bilet Satın Al",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),


                      ])
                  ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
