import 'dart:async';
import 'dart:io';
import 'dart:convert';

File myFileIn = new File("PZ3Task3lins.txt");

Future<void> main() async {
  if (myFileIn.existsSync()) {
    Future<List<String>> strings = Future.value([]);
    List list = [];
    List<String> promStr = [];
    List<String> NewStr = [];
    String outStr = "";
    int maxSize = 0;
    strings = myFileIn.readAsLines();
    list = await strings;
    for(int j = 0; j < list.length; j++){
      promStr = list[j].split(' ').toList();
      for(int i = 0; i < promStr.length;i++){
        for(int j = i; j<promStr.length;j++){
          if(int.parse(promStr[i]) >= int.parse(promStr[j])){
            if(int.parse(promStr[j]) * (j - i) > maxSize){
              maxSize = int.parse(promStr[j]) * (j - i);
            }
          }
          else {
            if(int.parse(promStr[i]) * (j - i) > maxSize){
              maxSize = int.parse(promStr[i]) * (j - i);
            }
          }
        }
      }
    }
    print(maxSize);
  }
}