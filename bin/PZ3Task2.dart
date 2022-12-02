import 'dart:async';
import 'dart:io';
import 'dart:convert';

File myFileIn = new File("PZ3Task2nums.txt");

Future<void> main() async {
  if (myFileIn.existsSync()) {
    Future<List<String>> strings = Future.value([]);
    List list = [];
    List<String> promStr = [];
    List<String> NewStr = [];
    String outStr = "";

    strings = myFileIn.readAsLines();
    list = await strings;
    for(int j = 0; j < list.length; j++){
      promStr = list[j].split(' ').toList();
      for(int i = 0; i < promStr.length;i++){
        if(int.parse(promStr[i])%2 != 0){
          NewStr.add(promStr[i]);
          print(promStr[i]);
        }
      }
    }
    for(int i = 0; i < NewStr.length; i++){
      outStr = outStr + NewStr[i] + " ";
    }
    myFileIn.writeAsString(outStr);
  }
}