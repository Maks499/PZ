import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';

File myFileIn = new File("PZ4numsTask4.txt");
Future<List<String>> strings = Future.value([]);
String OutString = "";
List list = [];
Future<void> main() async {
  
  if (myFileIn.existsSync()) {
    strings = myFileIn.readAsLines();
    list = await strings;
    List<String> promStr = [];
    bool flag = true;
    int counter = 0;
    promStr = list[0].split(' ').toList();
    for(int i = 0; i<list.length;i++){
      try {
        for(int j = 1; j < promStr.length;) {
          final number = int.tryParse(promStr[j]);
          if (number != null) {
            if (int.parse(promStr[j-1]) == int.parse(promStr[j])) {
              counter = counter + 2;
              j++;
              j++;
            }
            else{
              j++;
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
  print(counter);
  }
  else {
    print("can not open file");
  }
}
