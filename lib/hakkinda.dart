import 'package:flutter/material.dart';
import 'package:vize/servisler/dosyalama.dart';

class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  String hakkindasayfa = '';

  @override
  void initState() {
    fileUtils.readFromFile().then((value) {
      setState(() {
        hakkindasayfa = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.home),
      ),
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hakkında",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                Colors.black,
                Colors.black,
                Colors.black,
                Colors.yellow[100],
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "resimler/indir.png",
                width: 300,
                height: 300,
              ),
              Text(
                hakkindasayfa,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.all(50)),
            ],
          ),
        ),
      ),
    );
  }
}
