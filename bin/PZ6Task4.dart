import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';


// здесь реализован потоковое чтение из консоли так что программу нужно запускать из командной строки
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
      if (x % a == 0) {
        sum = sum + x;
      }
    }
  }
  print(sum);
}
