import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';

File myFileIn = new File("PZ6numsTask2.txt");
Future<List<String>> strings = Future.value([]);
String OutString = "";
List<String> list = [];
String OutStr = "";
Future<void> main() async {
  
  if (myFileIn.existsSync()) {
    strings = myFileIn.readAsLines();
    list = await strings;
    print(list);
    for(int i = 0; i < list.length; i++){
      if(i != 0){
        OutStr = OutStr + " " + list[i];
      }
      else {
        OutStr = list[i];
      }
    }
    print(OutStr);
  }
  else {
    print("can not open file");
  }
}
