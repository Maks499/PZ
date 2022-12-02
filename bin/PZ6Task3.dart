import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';



void main() {
  var n = 20;
  int perem = 0;
  int? nInt = int.tryParse("$n", radix: 10);
  if(nInt != null){
    perem = int.parse("$n");
    if (perem % 2 == 0 && perem % 10 == 0 && perem != null) {
      print("$n - четно и кратно 10");
    }
  }
  else {
    print("вы ввели не четное число.");
  }
}
