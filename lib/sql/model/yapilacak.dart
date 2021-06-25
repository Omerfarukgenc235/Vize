class Yapilacak {
  int _id;
  String _baslik;
  String _aciklama;
  String _date;
  int _priority;

  /// Kurucu metod içerisindeki köşeli parantez alanın opsiyonel olduğunu belirtir
  Yapilacak(this._baslik, this._priority, this._date, [this._aciklama]);

  Yapilacak.withId(this._id, this._baslik, this._priority, this._date,
      [this._aciklama]);

  int get id => _id;

  String get baslik => _baslik;

  String get aciklama => _aciklama;

  int get priority => _priority;

  String get date => _date;

  set baslik(String newBaslik) {
    if (newBaslik.length <= 255) {
      _baslik = newBaslik;
    }
  }

  set aciklama(String newA) {
    if (newA.length <= 255) {
      _aciklama = newA;
    }
  }

  set priority(int newP) {
    if (newP > 0) {
      _priority = newP;
    }
  }

  set date(String newD) {
    _date = newD;
  }

  /// SQLite'a uyumlu hale getirmek için kullanılır
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["baslik"] = _baslik;
    map["aciklama"] = _aciklama;
    map["priority"] = _priority;
    map["date"] = _date;
    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }

  /// SQLite'dan alınan nesneyi sınıfa çevirmek için kullanılır
  Yapilacak.fromObject(dynamic o) {
    this._id = o["id"];
    this._baslik = o["baslik"];
    this._aciklama = o["aciklama"];
    this._priority = o["priority"];
    this._date = o["date"];
  }
}
