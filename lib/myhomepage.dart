import 'package:flutter/material.dart';
import 'package:vize/servisler/dosyalama.dart';
import 'menuler/menuler.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String hakkinda = "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301071 numaralı Ömer Faruk Genç tarafından 25 Haziran 2021 günü yapılmıştır.";

  @override
  void initState() {
    fileUtils.saveToFile(hakkinda);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.white24,
            ],
          ),
        ),
        child: Center(
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Ömer Faruk Genç",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Text("193301071",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.all(10)),
                Image.asset(
                  "resimler/dunyaa.gif",
                  width: 300,
                  height: 280,
                ),
                Padding(padding: EdgeInsets.all(10)),
                FlatButton.icon(
                  icon: Icon(Icons.menu),
                  height: 58,
                  minWidth: 340,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12)),
                  label: Text(
                    "Menüler",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  color: Color(0xFFF7CA18),
                  onPressed: () {
                    Navigator.pushNamed(context, "/menuler");
                  },
                ),
                SizedBox(height: 15.0),
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  height: 58,
                  minWidth: 340,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12)),
                  label: Text(
                    "Hakkında",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  color: Color(0xFFF7CA18),
                  onPressed: () {
                    Navigator.pushNamed(context, "/settings");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

