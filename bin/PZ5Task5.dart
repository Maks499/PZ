import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';

File myFileIn = new File("PZ5numsTask5.txt");
Future<List<String>> strings = Future.value([]);
String OutString = "";
List list = [];
Future<void> main() async {
  
  if (myFileIn.existsSync()) {
    strings = myFileIn.readAsLines();
    list = await strings;
    List<String> promStr = [];
    List<int> sortedList = [];
    promStr = list[0].split(' ').toList();
    for(int j = 0; j < promStr.length; j++) {
      final number = int.tryParse(promStr[j]);
      if (number != null) {
         sortedList.add(int.parse(promStr[j]));
      }
    };
    sortedList.sort((int a, int b) {
      if(a < b) {
        return -1;
      }
      else {
        return 1;
      }
    });
    print(sortedList);
    int sum = 0;
    for(int i = 1; i < sortedList.length-1; i++){
      sum = sum + sortedList[i];
    }
    print(sum);
  }
  else {
    print("Hello, Dart;");
  }
}
