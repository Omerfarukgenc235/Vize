import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vize/otel/satinal.dart';


class Gidilecek extends StatefulWidget {
  @override
  _GidilecekState createState() => _GidilecekState();
}


class _GidilecekState extends State<Gidilecek> {

  String ulke = '';
  String posta = '';
  String tarih = '';
  int gun = 0;
  String sifre = '';
  @override

  Widget build(BuildContext context) {
    var data = [];

    data = ModalRoute.of(context).settings.arguments;

    if (data != null) {
      ulke = data[0].toString();
    } else
      ulke = "";

    void PostaKaydet(String text) {
      setState(() {

        posta = text;

      });
    }

    void SifreKaydet(String text) {
      setState(() {
        sifre = text;
      });
    }

    void TarihKaydet(String text) {
      setState(() {
        tarih = text;
      });
    }

    void GunKaydet(String text) {
      setState(() {
        if(text.length != 0)
        gun = int.parse(text);
        else
          gun = 0;
      });
    }

    void Kontrol()
    {
      if (posta.length > 1 && sifre.length > 1 && tarih.length > 1 && gun >= 1) {
        var data = [];
        data.add(posta);
        data.add(sifre);
        data.add(tarih);
        data.add(gun);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SatinAl(),
              settings: RouteSettings(arguments: data)),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.yellow,
          content: Text('Lütfen Bütün Alanları Doldurunuz !',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        ));
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Bilet Satın Al"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red[500],
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    ulke + " Otel Bileti Satın Al",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (text) {
                      PostaKaydet(text);
                    },
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: 'E-postanızı giriniz',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    inputFormatters: [],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (text) {
                      SifreKaydet(text);
                    },
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: 'Şifrenizi Giriniz.',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    inputFormatters: [],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (text) {
                      TarihKaydet(text);
                    },
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: 'Tarih Bilgisi Giriniz.',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    inputFormatters: [],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (text) {
                      GunKaydet(text);
                    },
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: 'Gün Giriniz.',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  FlatButton.icon(
                      icon: Icon(Icons.money),
                      height: 58,
                      minWidth: 340,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12)),
                      label: Text(
                        "Satın Al",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      color: Color(0xFFF7CA18),
                      onPressed: () {
                     Kontrol();
                      }),
                ]),
          ),
        ));
  }
}
