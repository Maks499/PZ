import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';



void main() {
  int sum = 0;
  print('Введите a:');
  int a = int.parse(stdin.readLineSync() ?? '0');
  while(true){
    print('Введите очередное число:');
    int x = int.parse(stdin.readLineSync() ?? '0');
    if(x < 0){
      break;
    }
    else {
      sum = sum + x;
    }
  }
  print(sum);
}
