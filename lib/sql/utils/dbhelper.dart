import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:vize/sql/model/yapilacak.dart';

class DbHelper {
  static final DbHelper _dbHelper = DbHelper._internal();

  String tblYapilacak = "yap";
  String colId = "id";
  String colBaslik = "baslik";
  String colAciklama = "aciklama";
  String colPriority = "priority";
  String colDate = "date";

  DbHelper._internal();

  /// Dart dili factory kelimesi ile Singleton yapı kullanmamıza izin verir. Singleton bir sınıftan sadece bir nesnenin oluşmasını sağlayan bir yapıdır.
  factory DbHelper() {
    return _dbHelper;
  }

  static Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDb();
    }
    return _db;
  }

  /// Veritabanı işlemleri asenkron işlemler olduğundan async kelimesi ile ilgili fonksiyonları nitelememiz gerekir

  Future<Database> initializeDb() async {
    Directory dir = await getApplicationDocumentsDirectory();
      String path = dir.path + "Yapilacak.db";
    var dbYapilacak = await openDatabase(path, version: 1, onCreate: _createDb);
    return dbYapilacak;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        "CREATE TABLE $tblYapilacak($colId INTEGER PRIMARY KEY, $colBaslik TEXT," +
            "$colAciklama TEXT, $colPriority INTEGER, $colDate TEXT" +
            ")");
  }

  Future<int> insertAciklama(Yapilacak yap) async {
    Database db = await this.db;
    var result = await db.insert(tblYapilacak, yap.toMap());
    return result;
  }

  Future<List> getYapilacaks() async {
    List<Yapilacak> yapilacakList = [];
    Database db = await this.db;
    var result =
        await db.rawQuery("SELECT * FROM $tblYapilacak ORDER BY $colPriority ASC");
    result.forEach((element) {
      yapilacakList.add(Yapilacak.fromObject(element));
    });
    return yapilacakList;
  }

  Future<int> getCount() async {
    Database db = await this.db;
    var result = Sqflite.firstIntValue(
        await db.rawQuery("SELECT COUNT(*) FROM $tblYapilacak"));

    return result;
  }

  Future<int> updateAciklama(Yapilacak yap) async {
    Database db = await this.db;
    var result = await db.update(tblYapilacak, yap.toMap(),
        where: "$colId = ?", whereArgs: [yap.id]);
    return result;
  }

  Future<int> deleteAciklama(int id) async {
    Database db = await this.db;
    var result = await db.delete(tblYapilacak, where: "$colId = ?", whereArgs: [id]);
    return result;
  }
}
