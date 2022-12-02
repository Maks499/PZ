import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';


void main() {
  List<double> doubleNum = [-2.2,-3,4,5,6];
  List<double> doubleNeg = [];
  List<double> doublePlus = [];

  for(int i = 0; i < doubleNum.length; i++){
   if(doubleNum[i] < 0.0){
    doubleNeg.add(doubleNum[i]);
   }
   if(doubleNum[i] > 0.0){
    doublePlus.add(doubleNum[i]);
   }
  }
  print(doubleNum);
  print("отрицательные $doubleNeg");
  print("положительные $doublePlus");
}
