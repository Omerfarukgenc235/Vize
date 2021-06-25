import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //giriş yap fonksiyonu
  Future<User> signIn(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;

  }

  //çıkış yap fonksiyonu
  signOut() async {
    return await _auth.signOut();
  }

  //kayıt ol fonksiyonu
  Future<User> createPerson(String name, String email, String password,String cinsiyet) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _firestore
        .collection("Person")
        .doc(user.user.uid)
        .set({'isim': name, 'mail': email,'cinsiyet':cinsiyet});

    return user.user;
  }
  Stream<QuerySnapshot> getStatus() {
    var ref = _firestore.collection("Person").snapshots();

    return ref;
  }
  Future<String> resetPass({String email}) async{
    try{
      await _auth.sendPasswordResetEmail(email: email);
      return 'Email Gonderildi';
    }catch(e){
      return 'Hatali Giris';
    }
  }
}