import 'package:flutter/material.dart';
import 'package:vize/menuler.dart';
import 'package:vize/myhomepage.dart';
class Bitir extends StatefulWidget {
  @override
  _BitirState createState() => _BitirState(); }
class _BitirState extends State<Bitir> {
  @override
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: [0.1, 0.5, 0.7, 0.9],
        colors: [
          Color.fromARGB(255,20, 31, 88),
          Color.fromARGB(255,20, 31, 88),
          Color.fromARGB(255,20, 31, 88),
          Color.fromARGB(255,48, 56, 107),
        ],
    ),
    ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('Yarışmayı Bitirdiniz :)', style: TextStyle(fontSize: 60.0,color: Colors.white),textAlign: TextAlign.center),
            Text(data[0].toString(),style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.red),textAlign: TextAlign.center),
            Text('Toplam Puanınız', style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
            Text(data[1].toString(),style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center),
            Padding(padding: EdgeInsets.all(10)),
            MaterialButton(
              height: 58,
              minWidth: 340,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Menuler()),
                );
              },
              child: Text(
                "Menüye Dön",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              color: Color(0xFFF7CA18),
            ),
            SizedBox(height: 20.0),

            MaterialButton(
              height: 58,
              minWidth: 340,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text(
                "Ana Menüye Dön",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              color: Color(0xFFF7CA18),
            ),

          ],
        ),
      ),
    ); } }