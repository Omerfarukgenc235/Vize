import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:vize/yarisma/bitir.dart';

class Sorular extends StatefulWidget {
  @override
  _SorularState createState() => _SorularState();
}

class _SorularState extends State<Sorular> {
  String kullaniciAdi = '';
  var sorular = [
    {
      'soru': 'Af',
      'cevaplar': ['Kabil', 'Tiran', 'Cezayir', 'Şam'],
      'dogrucevap': 'Kabil'
    },
    {
      'soru': 'Fr',
      'cevaplar': ['Paris', 'Londra', 'Brüksel', 'Brüksel'],
      'dogrucevap': 'Paris'
    },
    {
      'soru': 'Tr',
      'cevaplar': ['İstanbul', 'Ankara', 'İzmir', 'Konya'],
      'dogrucevap': 'Ankara'
    },
    {
      'soru': 'Ru',
      'cevaplar': ['Kremlin', 'Kiev', 'Moskova', 'Cambridge'],
      'dogrucevap': 'Moskova'
    },
    {
      'soru': 'de',
      'cevaplar': ['Hamburg', 'Münih', 'Cambridge', 'Berlin'],
      'dogrucevap': 'Berlin'
    },
    {
      'soru': 'Az',
      'cevaplar': ['Bakü', 'Kiev', 'Şam', 'Kremlin'],
      'dogrucevap': 'Bakü'
    },
    {
      'soru': 'it',
      'cevaplar': ['Venedik', 'Pisa', 'Roma', 'Floransa'],
      'dogrucevap': 'Roma'
    },
    {
      'soru': 'nl',
      'cevaplar': ['Amsterdam', 'Brüksel', 'Viyana', 'Venedik'],
      'dogrucevap': 'Amsterdam'
    },
    {
      'soru': 'Pk',
      'cevaplar': ['İslamabat', 'Şam', 'Lahor', 'Aşkabat'],
      'dogrucevap': 'İslamabat'
    },
    {
      'soru': 'Ua',
      'cevaplar': ['Moskova', 'Kiev', 'Kremlin', 'Bakü'],
      'dogrucevap': 'Kiev'
    },
    {
      'soru': 'Be',
      'cevaplar': ['Brüksel', 'Viyana', 'Gent', 'Charleroi'],
      'dogrucevap': 'Brüksel'
    },
    {
      'soru': 'no',
      'cevaplar': ['Kiev', 'Viyana', 'Oslo', 'Brüksel'],
      'dogrucevap': 'Oslo'
    },
    {
      'soru': 'Ca',
      'cevaplar': ['Toronto', 'Victoria', 'Kahire', 'Ottava'],
      'dogrucevap': 'Ottava'
    },
    {
      'soru': 'Gr',
      'cevaplar': ['Selanik', 'Atina', 'Kavala', 'İskeçe'],
      'dogrucevap': 'Atina'
    },
    {
      'soru': 'Au',
      'cevaplar': ['Melbourne', 'Perth', 'Sydney', 'Canberra'],
      'dogrucevap': 'Canberra'
    },
    {
      'soru': 'at',
      'cevaplar': ['Selanik', 'Atina', 'Viyana', 'İskeçe'],
      'dogrucevap': 'Viyana'
    },
    {
      'soru': 'Dk',
      'cevaplar': ['Kopenhag', 'Odense', 'Helsingör', 'Münih'],
      'dogrucevap': 'Kopenhag'
    },
    {
      'soru': 'ir',
      'cevaplar': ['Tahran', 'Tebriz', 'Tiflis', 'Şam'],
      'dogrucevap': 'Tahran'
    },
    {
      'soru': 'jp',
      'cevaplar': ['Tokyo', 'Hiroşima', 'Osaka', 'Hong Kong'],
      'dogrucevap': 'Tokyo'
    },
    {
      'soru': 'gb',
      'cevaplar': ['Londra', 'Paris', 'Cambridge', 'Liverpool'],
      'dogrucevap': 'Londra'
    },
    {
      'soru': 'fi',
      'cevaplar': ['Helsinki', 'Brüksel', 'Cambridge', 'Kopenhag'],
      'dogrucevap': 'Helsinki'
    },
  ];
  int mevcutSoru = 0;
  int puan = 0;
  String mevcutcevap = '';

  void BitireYolla() {
    var data = [];
    data.add(kullaniciAdi);
    data.add(puan.toString());
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Bitir(),
          settings: RouteSettings(
            arguments: data,
          ),
        ));
  }

  void kontrolEt() {
    if (mevcutcevap == sorular[mevcutSoru]['dogrucevap']) {
      puan = puan + 10;
      mevcutSoru++;
    } else {
      puan = puan - 10;
      mevcutSoru++;
    }
    if (mevcutSoru > 20) {
      mevcutSoru = 0;
      BitireYolla();
    }
  }

  @override
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;
    kullaniciAdi = data[0];
    var cevaplistesi = [];
    cevaplistesi = sorular[mevcutSoru]['cevaplar'];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Color.fromARGB(255, 20, 31, 88),
              Color.fromARGB(255, 20, 31, 88),
              Color.fromARGB(255, 20, 31, 88),
              Color.fromARGB(255, 48, 56, 107),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Puan: ' + puan.toString(),
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Flag(sorular[mevcutSoru]['soru'].toString(),
                  height: 200, width: 200),
              Text(
                'Başkenti Neresidir ?',
                style: TextStyle(fontSize: 42, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                          side: BorderSide(width: 3, color: Colors.black)),
                      primary: Colors.yellow,
                      minimumSize: Size(250, 60)),
                  onPressed: () {
                    setState(() {
                      mevcutcevap = cevaplistesi[0].toString();
                    });
                    kontrolEt();
                  },
                  child: Text(
                    cevaplistesi[0],
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                          side: BorderSide(width: 3, color: Colors.black)),
                      primary: Colors.yellow,
                      minimumSize: Size(250, 60)),
                  onPressed: () {
                    setState(() {
                      mevcutcevap = cevaplistesi[1].toString();
                    });
                    kontrolEt();
                  },
                  child: Text(
                    cevaplistesi[1],
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                          side: BorderSide(width: 3, color: Colors.black)),
                      primary: Colors.yellow,
                      minimumSize: Size(250, 60)),
                  onPressed: () {
                    setState(() {
                      mevcutcevap = cevaplistesi[2].toString();
                    });
                    kontrolEt();
                  },
                  child: Text(
                    cevaplistesi[2],
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                          side: BorderSide(width: 3, color: Colors.black)),
                      primary: Colors.yellow,
                      minimumSize: Size(250, 60)),
                  onPressed: () {
                    setState(() {
                      mevcutcevap = cevaplistesi[3].toString();
                    });
                    kontrolEt();
                  },
                  child: Text(
                    cevaplistesi[3],
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
