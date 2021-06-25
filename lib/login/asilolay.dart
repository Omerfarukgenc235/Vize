import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


final userRef=FirebaseFirestore.instance.collection('Person');

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    getUsers();
    super.initState();
  }
  final _firestore=FirebaseFirestore.instance;
  FirebaseAuth _auth=FirebaseAuth.instance;
  getUsers() {
    String nameRef=_auth.currentUser.uid;
    userRef.get().then((querySnapshots) {
      debugPrint("User koleksiyondaki eleman sayısı: "+ querySnapshots.docs.length.toString());
      for(int i=0;i<querySnapshots.docs.length;i++){
        debugPrint("Deneme: "+querySnapshots.docs[i].data().toString());
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    CollectionReference usersRef=_firestore.collection('Person');
    return Scaffold(
      appBar: AppBar(title: Text('Kullanıcı Listesi'),backgroundColor: Colors.red,),
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
            stream: usersRef.snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> asyncSnapshot){
              if(asyncSnapshot.hasError){
                return Center(
                  child: Text('Bir Hata oluştu'),
                );
              }
              if(asyncSnapshot.connectionState==ConnectionState.waiting){
                return Center(child: CircularProgressIndicator());
              }
              return new ListView(
                  children: asyncSnapshot.data.docs.map((DocumentSnapshot document) {
                    return new ListTile(
                      title: new Text(document['mail']),
                      subtitle: new Text(document['isim']),
                      trailing: new Text(document['cinsiyet']),
                    );
                  }).toList()
              );
            }
        ),
      ),
    );
  }
}
