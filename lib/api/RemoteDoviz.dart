import 'package:flutter/material.dart';
import 'package:vize/api/Doviz.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class RemoteDoviz extends StatefulWidget {
  @override
  _RemoteDovizState createState() => _RemoteDovizState();
}

class _RemoteDovizState extends State<RemoteDoviz> {

  Doviz doviz;
  Future<Doviz> veri;
  List<DovizListem> dovizListesi = List<DovizListem>();
  String url =
      "https://v6.exchangerate-api.com/v6/674f2f81755fa62c1804378f/latest/USD";

  Future<Doviz> dovizleriGetir() async {
    var response = await http.get(Uri.parse(url));
    var decodeJson = json.decode(response.body);
    doviz = Doviz.fromJson(decodeJson);
    return doviz;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    veri = dovizleriGetir();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dolar API Liste"),
        backgroundColor: Colors.red,
      ),
      body: FutureBuilder(
          future: veri,
          // ignore: missing_return
          builder: (context, AsyncSnapshot<Doviz> gelenDoviz) {
            if (gelenDoviz.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (gelenDoviz.connectionState == ConnectionState.done) {
              gelenDoviz.data.conversionRates.forEach((key, value) {
                dovizListesi.add(DovizListem(paraAdi: key, paraDegeri: value));
              });
              return GridView.builder(
                  itemCount: dovizListesi.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            dovizListesi[index].paraAdi.toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                           r"1$ = " +
                                dovizListesi[index].paraDegeri.toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  });
            }
          }),
    );
  }
}