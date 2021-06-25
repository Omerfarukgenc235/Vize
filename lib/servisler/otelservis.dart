import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vize/model/otelmodel.dart';


 final FirebaseFirestore _firestore = FirebaseFirestore.instance;



OtelEkle(String ulkead, String sehirad, String oteladi, String otelaciklama,
    int fiyat, String yildiz,String resimurl) async {
  CollectionReference c = FirebaseFirestore.instance.collection("otel");
  var cref = await c.add({
    'Ulkead': '$ulkead',
    'Sehirad': '$sehirad',
    'Otelad': '$oteladi',
    'Otelaciklama': '$otelaciklama',
    'Fiyat': '$fiyat',
    'Yıldız': '$yildiz',
    'resim': '$resimurl'
  });
  return Otel(
      id: cref.id,
      ulkeadi: ulkead,
      sehirad: sehirad,
      otelad: oteladi,
      otelaciklama: otelaciklama,
      fiyat: fiyat,
      yildiz: yildiz,
      resimurl: resimurl);
}
Stream <QuerySnapshot> OtelListele (String ulkeadi)
{
  var ref = _firestore.collection('otel').where('Ulkead',isEqualTo: ulkeadi).snapshots();
  return ref;
}
Stream <QuerySnapshot> OtelListele2 ()
{
  var ref = _firestore.collection('otel').snapshots();
  return ref;
}