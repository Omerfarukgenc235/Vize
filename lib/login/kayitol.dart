import 'package:flutter/material.dart';
import '../servisler/girisservis.dart';

class KayitOl extends StatefulWidget {
  @override
  _KayitOlState createState() => _KayitOlState();
}

class _KayitOlState extends State<KayitOl> {
  @override
  Widget build(BuildContext context) {
    TextEditingController mail = TextEditingController();
    TextEditingController sifre = TextEditingController();
    TextEditingController ad = TextEditingController();
    TextEditingController cinsiyet = TextEditingController();
    AuthService _kayit = AuthService();

    return new Scaffold(
        body: new Stack(children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("resimler/logina.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: new Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(35)),
                  Text(
                    "Kayıt Ol",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(105)),
                  TextField(
                    controller: mail,
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Lütfen Mailinizi Giriniz',
                      prefixIcon: Icon(Icons.mail),
                      hintStyle: TextStyle(color: Colors.blue),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),),
                  Padding(padding: EdgeInsets.all(8)),
                  TextField(
                    controller: sifre,
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Şifrenizi Giriniz',
                      prefixIcon: Icon(Icons.vpn_key),
                      hintStyle: TextStyle(color: Colors.blue),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),),
                  Padding(padding: EdgeInsets.all(8)),
                  TextField(
                    controller: ad,
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Lütfen Adınızı Giriniz',
                      prefixIcon: Icon(Icons.drive_file_rename_outline),
                      hintStyle: TextStyle(color: Colors.blue),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),),
                  Padding(padding: EdgeInsets.all(8)),
                  TextField(
                    controller: cinsiyet,
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Lütfen Cinsiyetinizi Giriniz',
                      prefixIcon: Icon(Icons.transgender_rounded),
                      hintStyle: TextStyle(color: Colors.blue),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),),
                  Padding(padding: EdgeInsets.all(10)),
                  FlatButton.icon(
                    icon: Icon(Icons.person,color: Colors.white,),
                    height: 58,
                    minWidth: 340,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(12)),
                    label: Text(
                      "Kayıt Ol",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    color: Color.fromARGB(255, 14, 46, 99),
                    onPressed: () {
                      _kayit
                          .createPerson(
                          ad.text, mail.text, sifre.text, cinsiyet.text)
                          .then((value) {
                        Navigator.pushNamed(context, "/anamenu");
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
