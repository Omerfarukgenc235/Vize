import 'package:cloud_firestore/cloud_firestore.dart';



class Otel{
  final String id;
  final String ulkeadi;
  final String sehirad;
  final String otelad;
  final String otelaciklama;
  final int fiyat;
  final String yildiz;
  final String resimurl;

  Otel ({
    this.id,this.ulkeadi,this.sehirad,this.otelad,this.otelaciklama,this.fiyat,this.yildiz,this.resimurl
});
  factory Otel.fromSnapshot(DocumentSnapshot snapshot)
  {
    return Otel(
      id: snapshot.id,
      ulkeadi: snapshot['Ulkead'],
      sehirad: snapshot['Sehirad'],
      otelad: snapshot['Otelad'],
      otelaciklama: snapshot['Otelaciklama'],
      fiyat: snapshot['Fiyat'],
      yildiz: snapshot['Yıldız'],
      resimurl: snapshot['resim'],
    );
  }
}

