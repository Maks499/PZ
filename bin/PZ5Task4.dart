import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';

File myFileIn = new File("PZ5numsTask4.txt");
Future<List<String>> strings = Future.value([]);
String OutString = "";
List list = [];
Future<void> main() async {
  
  if (myFileIn.existsSync()) {
    strings = myFileIn.readAsLines();
    list = await strings;
    List<String> promStr = [];
    int max = 0;
    double sum = 0;
    promStr = list[0].split(' ').toList();
    for(int i = 1; i<list.length+1; i++){
      try {
        for(int j = 0; j < promStr.length; j++) {
          final number = int.tryParse(promStr[j]);
          if (number != null) {
            if ((int.parse(promStr[j]) > max)) {
              max = int.parse(promStr[j]);
            }
          }
        }
        if(i+1<list.length){
          promStr = list[i+1].split(' ').toList();
        }
      } catch(e) {
        print(e);
        break;
      }
    }
    try {
      for(int j = 0; j < promStr.length; j++) {
        final number = int.tryParse(promStr[j]);
        if (number != null) {
          if((max - int.parse(promStr[j]).abs()) <= 1){
            sum = sum + int.parse(promStr[j]);
          }
        }
      }
      print(sum);
    } catch(e) {
      print(e);
    }
  }
  else {
    print("cant open File");
  }
}
