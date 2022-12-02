import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';

File myFileIn = new File("PZ6numsTask1.txt");
Future<List<String>> strings = Future.value([]);
String OutString = "";
List<String> list = [];
List<List<String>> str = [];

Future<void> main() async {
  
  if (myFileIn.existsSync()) {
    strings = myFileIn.readAsLines();
    list = await strings;
    print(list);
    for(int i = 0; i < list.length; i++){
      str.add(list[i].split(' ').toList());
    }
    print(str);
    for(int i = 0; i < str.length; i++){
      for(int j = 0; j < str[i].length; j++){
        if(str[i][j].length % 2 != 0){
          print(str[i][j]);
        }
      }
    }
  }
  else {
    print("can not open file");
  }
}
