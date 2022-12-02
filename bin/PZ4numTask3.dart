import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';

File myFileIn = new File("PZ4numsTask3.txt");
Future<List<String>> strings = Future.value([]);
String OutString = "";
List list = [];
Future<void> main() async {
  
  if (myFileIn.existsSync()) {
    strings = myFileIn.readAsLines();
    list = await strings;
    List<String> promStr = [];
    bool flag = true;
    int max = 0, min = 0;
    promStr = list[0].split(',').toList();
    for(int i = 1; i<list.length+1; i++){
      try {
        for(int j = 0; j < promStr.length; j++) {
          //promStr = list[i].split(';').toList();
          final number = int.tryParse(promStr[j]);
          if (number != null) {
            if(int.parse(promStr[j]) == 0){
              flag = false;
              break;
            }
            if (int.parse(promStr[j]) > max) {
              max = int.parse(promStr[j]);
            }
            if ((int.parse(promStr[j]) < min) && (min != 0)) {
              min = int.parse(promStr[j]);
            }
            else {
              if(min == 0) {
                min = int.parse(promStr[j]);
              }
            }
          }
        }
        if (!flag) {
          break;
        }
        promStr = list[i].split(',').toList();
      } catch(e) {
        print(e);
        break;
      }
    }
  print(min/max);
  print("max: $max");
  print("min: $min");
  }
  else {
    print("Hello, Dart;");
  }
}
