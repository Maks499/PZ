import 'dart:async';
import 'dart:io';
import 'dart:convert';


File myFileIn = new File("PZ3Task1input.txt");
File myFileOut = new File("PZ3Task1output.txt");

Future<List<String>> strings = Future.value([]);
String OutString = "";
List list = [];
Future<void> main() async {
  
  if (myFileIn.existsSync()) {
    strings = myFileIn.readAsLines();
    list = await strings;
    List<String> promStr = [];
    promStr = list[0].split(' ').toList();
    List<int> WinnersLots = [];
    for(int i = 0; i < promStr.length;i++){
      final number = int.parse(promStr[i]);
      if(number != null) {
        WinnersLots.add(int.parse(promStr[i]));
      }
    }
    int CountLotB = int.parse(list[1][0]);
    List<int> LotsNumbers= [];
    for(int i = 0; i<CountLotB; i++){
      try {
        promStr = list[i+2].split(' ').toList();
        for(int k = 0; k < promStr.length;k++){
          final number = int.tryParse(promStr[k]);
          if(number != null) {
            LotsNumbers.add(int.parse(promStr[k]));
          }
        }
        int counter = 0;
        for(int k = 0; k < LotsNumbers.length; k++){
          if(WinnersLots.indexOf(LotsNumbers[k])!=-1){
            counter++;
          }
        }
        if(counter >= 3){
          //myFileOut.writeAsString("Lucky");
          OutString = OutString + "Lucky\n";
          print("Lucky");
        }
        else{
          //myFileOut.writeAsString("Unlucky");
          OutString = OutString + "Unlucky\n";
          print("Unlucky");
        }
        counter = 0;
      } catch(e) {
        print(e);
        break;
      }
    }
    myFileOut.writeAsString(OutString); 
  }
  else {
    print("Hello, Dart;");
  }
}
