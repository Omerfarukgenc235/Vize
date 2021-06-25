import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vize/otel/OTEL.dart';
import '../servisler/otelservis.dart';
class OtelListeleme extends StatefulWidget {
  @override
  _OtelListelemeState createState() => _OtelListelemeState();
}

class _OtelListelemeState extends State<OtelListeleme> {
  @override
  Widget build(BuildContext context) {
    var data = [];
    String ulke ='';
    data = ModalRoute.of(context).settings.arguments;

    if (data != null) {
      ulke = data[0].toString();
    } else
      ulke = "";

    String Ulkead = '';
    String Sehirad = '';
    String Fiyat = '';
    String yildiz = '';
    String otelad = '';
    String otelaciklama = '';
    String resim = '';
    return Scaffold(
        appBar: AppBar(
          title: Text("Oteller"),
          backgroundColor: Colors.red,
        ),
      backgroundColor: Colors.white,
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
          stream: OtelListele(ulke),
          builder: (BuildContext context,AsyncSnapshot<QuerySnapshot>otelcik){
          if(otelcik.hasError)
            {
              return Text("Hata var");
            }
          if(otelcik.connectionState == ConnectionState.waiting)
            {
              return CircularProgressIndicator();
            }
          return ListView(
            children: otelcik.data.docs.map((DocumentSnapshot ds) {

              return Container(

                child: SingleChildScrollView(

                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Column(
                          children: [

                            InkWell(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.1,
                                height: MediaQuery.of(context).size.width / 3.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  color: Color.fromARGB(255, 247, 247, 249),
                                ),
                                child: Column(
                                  children: [

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                   /*     ElevatedButton(onPressed: (){
                                          OtelEkle("Azerbaycan", "Bakü", "Four Season Hotel", "Azerbaycan'ın Bakü Şehrinde Bulunan...", 410,"★★★★★","resimler/azer.jpg");
                                        }
                                        ),*/
                                        Container(
                                          width: MediaQuery.of(context).size.width / 2,
                                          height: MediaQuery.of(context).size.width / 3.5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(ds['resim']),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(10.0)),
                                            color: Color.fromARGB(255, 0, 0, 20),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width / 3,
                                          height: MediaQuery.of(context).size.width / 3.5,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(30.0)),
                                            color: Color.fromARGB(255, 247, 247, 249),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                ds['Ulkead'],
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                ds['Yıldız'],
                                                textAlign: TextAlign.center,

                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.orange),
                                              ),
                                              Text(
                                                ds['Sehirad'],
                                                textAlign: TextAlign.center,

                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                ds['Otelaciklama'].substring( 0,25)+" ...",
                                                textAlign: TextAlign.center,

                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                var data = [];

                                Ulkead = ds['Ulkead'];
                                Sehirad = ds['Sehirad'];
                                Fiyat = ds['Fiyat'];
                                yildiz = ds['Yıldız'];
                                otelad =ds['Otelad'];
                                otelaciklama = ds['Otelaciklama'];
                                resim = ds['resim'];

                                data.add(Ulkead);
                                data.add(Sehirad);
                                data.add(Fiyat);
                                data.add(yildiz);
                                data.add(otelad);
                                data.add(otelaciklama);
                                data.add(resim);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OtelSayfa(),
                                        settings: RouteSettings(
                                          arguments: data,
                                        )));
                              },
                            ),


                          ],
                        )
                      ],
                    ),
                  ),

                ),
              );
            }).toList(),

          );
          }

        ),
      )
    );
  }
}
