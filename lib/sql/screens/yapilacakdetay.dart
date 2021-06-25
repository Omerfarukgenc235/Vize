import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vize/sql/model/yapilacak.dart';
import 'package:vize/sql/utils/dbhelper.dart';
import 'package:intl/intl.dart';

final List<String> choices = const <String>[menuSave, menuDelete, menuBack];

const menuSave = "Kaydet & Ana Menüye Dön";
const menuDelete = "Sil";
const menuBack = "Ana Menüye Dön";

DbHelper helper = DbHelper();

class YapilacakDetail extends StatefulWidget {
  final Yapilacak yap;

  YapilacakDetail(this.yap);

  @override
  State<StatefulWidget> createState() {
    return YapilacakDetailState(yap);
  }
}

class YapilacakDetailState extends State {
  Yapilacak yap;

  YapilacakDetailState(this.yap);

  final _priorities = ["Önemli", "Normal", "Önemsiz"];
  String _priority = "Önemsiz";
  final _formDistance = 5.0;
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleController.text = yap.baslik;
    descController.text = yap.aciklama;
    var textStyle = Theme.of(context).textTheme.caption;
    var title = yap.baslik == "" ? "Yeni Yapılacaklar" : yap.baslik;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          automaticallyImplyLeading: false,
          title: Text(title),
          actions: [
            PopupMenuButton<String>(
              onSelected: select,
              itemBuilder: (BuildContext context) {
                return choices.map((e) {
                  return PopupMenuItem<String>(
                    value: e,
                    child: Text(
                      e,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  );
                }).toList();
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: _formDistance, bottom: _formDistance),
                  child: TextField(
                      controller: titleController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                      decoration: InputDecoration(
                          labelText: "Başlık",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)))),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: _formDistance, bottom: _formDistance),
                  child: TextField(
                      controller: descController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),

                      decoration: InputDecoration(
                          labelText: "Açıklama",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)))),
                ),
                DropdownButton<String>(
                  value: this._priorities[this.yap.priority - 1],
                  items: _priorities.map((String str) {
                    return DropdownMenuItem<String>(
                      value: str,
                      child: Text(
                        str,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    );
                  }).toList(),
                  onChanged: (String str) {
                    updatePriority(str);
                  },
                ),
                Padding(padding: EdgeInsets.all(50)),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width / 1.20,
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {
                      save();
                    },
                    child: Text(menuSave,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.red,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(120)),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width / 1.20,
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {
                      delete();
                    },
                    child: Text(menuDelete,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.red,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(120)),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width / 1.20,
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    child: Text(menuBack,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.red,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(120)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void updatePriority(String value) {
    int priority = 0;
    switch (value) {
      case "Önemli":
        priority = 1;
        break;
      case "Normal":
        priority = 2;
        break;
      case "Önemsiz":
        priority = 3;
        break;
      default:
    }
    setState(() {
      this.yap.priority = priority;
    });
  }

  void select(String value) async {
    switch (value) {
      case menuSave:
        save();
        break;
      case menuDelete:
        delete();
        break;
      case menuBack:
        Navigator.pop(context, true);
        break;
      default:
    }
  }

  void delete() async {
    Navigator.pop(context, true);
    if (yap.id == null) {
      return;
    }
    int result;
    result = await helper.deleteAciklama(yap.id);
    if (result != 0) {
      AlertDialog alertDialog = AlertDialog(
        title: Text("Silindi"),
        content: Text("Başarılı bir şekilde silindi."),
      );
      showDialog(context: context, builder: (_) => alertDialog);
    }
  }

  void save() {
    yap.baslik = titleController.text;
    yap.aciklama = descController.text;
    yap.date = new DateFormat.yMd().format(DateTime.now());
    if (yap.id != null) {
      helper.updateAciklama(yap);
    } else {
      helper.insertAciklama(yap);
    }
    Navigator.pop(context, true);
    showAlert(yap.id != null);
  }

  void showAlert(bool isUpdate) {
    AlertDialog alertDialog;
    if (isUpdate) {
      alertDialog = AlertDialog(
        title: Text("Güncelle"),
        content: Text("Başarı İle Güncellendi"),
      );
    } else {
      alertDialog = AlertDialog(
        title: Text("Listeleme"),
        content: Text("Listeleme başarı ile gerçekleşti"),
      );
    }
    showDialog(context: context, builder: (_) => alertDialog);
  }
}
