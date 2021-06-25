import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      new Container(
        width: MediaQuery.of(context).size.width / 1,
        height: MediaQuery.of(context).size.height / 1,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("resimler/loginb.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SingleChildScrollView(
        child: new Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width / 1,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(padding: EdgeInsets.all(100)),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width / 1.40,
                height: 50.0,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Text('Giriş Yap',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.white,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(120)),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width / 1.40,
                height: 50.0,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/kayitol");
                  },
                  child: Text('Kayıt Ol',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.white,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(120)),
                ),
              ),
            ]),
          ),
        ),
      ),
    ]));
  }
}
