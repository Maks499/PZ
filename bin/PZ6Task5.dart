import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:convert';

void printMtr(List<List<int>> mtr){
  for(int i = 0; i < mtr.length; i++){
    print(mtr[i]);
  }
}

void main() {
  List<List<int>> mtr = [[1,0,0],[1,0,1],[1,1,1]];
  int sum = 0;
  printMtr(mtr);
  for(int i = 0; i < mtr.length; i++){
    for(int j = 0; j < mtr[i].length; j++){
      sum = sum + mtr[i][j];
    }
    if(sum %2 != 0){
      mtr[i].add(1);
    }
    else {
      mtr[i].add(0);
    }
    sum = 0;
  }
  print(".......");
  printMtr(mtr);
}
