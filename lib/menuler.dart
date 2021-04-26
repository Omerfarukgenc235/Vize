import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'ulkeler/turkey.dart';
import 'ulkeler/amerika.dart';
import 'ulkeler/rusya.dart';
import 'ulkeler/kore.dart';
import 'ulkeler/azerbaycan.dart';
import 'ulkeler/pakistan.dart';
import 'ulkeler/italya.dart';
import 'ulkeler/almanya.dart';
import 'yarisma/yarisma.dart';
import 'otel/gidilen.dart';

class Menuler extends StatefulWidget {
  @override
  _MenulerState createState() => _MenulerState();
}

class _MenulerState extends State<Menuler> {
  final ButtonStyle stil = ElevatedButton.styleFrom(
    minimumSize: Size(350, 70),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.black)),
    primary: Color.fromARGB(255, 42, 42, 42),
    onPrimary: Colors.lightBlueAccent[300],
  );
  final TextStyle dene = TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        ),
        title: Text("Ülkeler Hakkında"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 225, 68, 68),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 225, 68, 68),
              ),
              child: Text(
                'Menüler',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.card_travel),
              title: Text('Bilet Satın Al'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Gidilecek()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 106, 28, 28),
              Color.fromARGB(255, 162, 40, 40),
              Color.fromARGB(255, 208, 72, 72),
              Color.fromARGB(255, 208, 72, 72),

            ],
          ),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10)),
                Text("Ülkeler",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: stil,
                  child: Text("Türkiye",
                      style: dene),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Turkey()),
                    );
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: stil,
                  child: Text("Amerika",
                      style: dene),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Amerika()),
                    );
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: stil,
                  child: Text("Rusya",
                      style: dene),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Rusya()),
                    );
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: stil,
                  child: Text("Kore",
                      style: dene),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Kore()),
                    );
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: stil,
                  child: Text("Azerbaycan",
                      style: dene),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Azerbaycan()),
                    );
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: stil,
                  child: Text("Pakistan",
                      style: dene),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pakistan()),
                    );
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: stil,
                  child: Text("İtalya",
                      style: dene),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Italya()),
                    );
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: stil,
                  child: Text("Almanya",
                      style: dene),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Almanya()),
                    );
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Bilgi Yarışması",
                    style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white)),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: stil,
                  child: Text("Başkent Bilgi Yarışması",
                      style: dene),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Yarisma()),
                    );
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

