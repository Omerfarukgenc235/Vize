import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vize/sql/model/yapilacak.dart';
import 'package:vize/sql/screens/yapilacakdetay.dart';
import 'package:vize/sql/utils/dbhelper.dart';

class YapilacakList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return YapilacakListState();
  }
}

class YapilacakListState extends State {
  DbHelper helper = DbHelper();
  List<Yapilacak> yaps;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (yaps == null) {
      yaps = [];
      getData();
    }
    return Scaffold(
        backgroundColor: Colors.red[50],
        body: yapilacakListItems(),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Yapılacaklar"),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            navigateToDetail(Yapilacak("", 3, ""));
          },
          tooltip: 'Yeni yapılacaklar',
          child: Icon(Icons.pending_actions),
        ));
  }

  ListView yapilacakListItems() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) => Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: getColor(this.yaps[position].priority),
                child: Text(
                  this.yaps[position].id.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              title: Text(this.yaps[position].baslik),
              subtitle: Text(this.yaps[position].aciklama),

              onTap: () {
                navigateToDetail(this.yaps[position]);
              },


            )));
  }

  void navigateToDetail(Yapilacak yap) async {
    bool result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => YapilacakDetail(yap)));
    if (result == true) {
      getData();
    }
  }

  void getData() {
    final yapsFuture = helper.getYapilacaks();
    yapsFuture.then((result) => {
          setState(() {
            yaps = result;
            count = yaps.length;
          })
        });
  }

  Color getColor(int priority) {
    switch (priority) {
      case 1:
        return Colors.red;
      case 2:
        return Colors.blueGrey[300];
      case 3:
        return Colors.yellow;
      default:
        return Colors.green;
    }
  }
}
