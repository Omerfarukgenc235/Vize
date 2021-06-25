import 'package:flutter/material.dart';
import '../servisler/girisservis.dart';

class Sifreyenile extends StatefulWidget {
  @override
  _SifreyenileState createState() => _SifreyenileState();
}

class _SifreyenileState extends State<Sifreyenile> {
  @override
  Widget build(BuildContext context) {
    TextEditingController mail = TextEditingController();
    AuthService _authProvider = AuthService();

    return Scaffold(
        body: Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("resimler/loginb.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: new Center(
                child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(padding: EdgeInsets.all(210)),
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
                  Padding(padding: EdgeInsets.all(15)),

                  ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width / 2.10,
                    height: 50.0,
                    child:  FlatButton(

                      onPressed: (){ _authProvider.resetPass(email: mail.text).then((value) {
                        if(value=='Email Gonderildi'){

                          Navigator.pushNamed(context, '/menu');
                        }
                        else{

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value)));
                        }
                      });
                      },

                      child: Text('Sıfırlama Maili Gönder',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(

                              color: Colors.white, width: 1, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(120)),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ));
  }
}
