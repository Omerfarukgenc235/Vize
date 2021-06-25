import 'package:flutter/material.dart';
import 'package:vize/animasyon.dart';
import '../servisler/girisservis.dart';
class LoginSayfasi extends StatefulWidget {
  @override
  _LoginSayfasiState createState() => _LoginSayfasiState();
}

class _LoginSayfasiState extends State<LoginSayfasi> {
  @override
  Widget build(BuildContext context) {
    TextEditingController mail = TextEditingController();
    TextEditingController sifre = TextEditingController();
    AuthService _giris = AuthService();
    return  Scaffold(
        body: Stack(
          children: <Widget>[
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
                child: FadeAnimation(2,
                   Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(padding: EdgeInsets.all(35)),

                    Text(
                      "Giriş Yap",
                      style: TextStyle(
                          fontSize: 50,
                          color: Color.fromARGB(255, 10, 31, 67),
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.all(135)),
                    TextField(
                      controller: mail,
                      decoration: InputDecoration(
                        hintText: 'Mail Adresinizi Giriniz',
                        prefixIcon: Icon(Icons.email),
                        hintStyle: TextStyle(color: Colors.blue),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.green, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.green, width: 2),
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(3)),
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

                    Padding(padding: EdgeInsets.all(10)),
                    FlatButton.icon(
                      icon: Icon(Icons.person,color: Colors.white,),
                      height: 58,
                      minWidth: 340,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12)),
                      label: Text(
                        "Giriş Yap",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      color: Color.fromARGB(255, 14, 46, 99),
                      onPressed: () {
                        _giris.signIn(mail.text, sifre.text).then((value) {Navigator.pushNamed(context, "/vize");});
                        //Navigator.pushNamed(context, "/settings");
                      },
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    FlatButton.icon(
                      icon: Icon(Icons.person,color: Colors.white,),
                      height: 58,
                      minWidth: 340,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12)),
                      label: Text(
                        "Şifremi Unuttum",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      color: Color.fromARGB(255, 14, 46, 99),
                      onPressed: () {
                        Navigator.pushNamed(context, "/sifir");
                        //Navigator.pushNamed(context, "/settings");
                      },
                    ),
                    Padding(padding: EdgeInsets.all(5)),


                  ]),
                ),
              ),
            )
          ],
        ));
  }
}
