import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';
class fileUtils{
  static Future<String> get getFilePath async{
    final directory=await getApplicationDocumentsDirectory();
    return directory.path;
  }
  static Future<File> get getFile async{
    final path=await getFilePath;
    print('getFile fonk: '+path.toString());
    return File('$path/myfile.txt');
  }
  static Future<File> saveToFile(String data) async{
    final file =await getFile;
    print('Yazılan şey(YOL): '+file.path.toString());
    return file.writeAsString(data);
  }
  static Future<String> readFromFile() async{
    try{
      final file=await getFile;
      String fileContents=await file.readAsString();
      print('Okunan şey: '+fileContents.toString());
      return fileContents;
    }catch(e){
      return 'hata: $e';
    }
  }
}