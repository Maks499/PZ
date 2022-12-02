import 'dart:async';
import 'dart:io';
import 'dart:convert';


File myFileIn = new File("PZ4numsTask2.txt");
Future<List<String>> strings = Future.value([]);
String OutString = "";
List list = [];
Future<void> main() async {
  
  if (myFileIn.existsSync()) {
    strings = myFileIn.readAsLines();
    list = await strings;
    List<String> promStr = [];
    bool flag = true;
    double sum = 0;
    promStr = list[0].split(';').toList();
    for(int i = 1; i<list.length+1; i++){
      try {
        for(int j = 0; j < promStr.length; j++) {
          //promStr = list[i].split(';').toList();
          final number = double.tryParse(promStr[j]);
          if (number != null) {
            if(double.parse(promStr[j]) == 0){
              flag = false;
              break;
            }
            if (double.parse(promStr[j]) > 0) {
              double num = double.parse(promStr[j]);
              sum = sum + num;
            }
          }
        }
        if (!flag) {
          break;
        }
        promStr = list[i].split(';').toList();
      } catch(e) {
        print(e);
        break;
      }
    }
  print(sum);
  }
  else {
    print("Hello, Dart;");
  }
  //print(sum);
}
