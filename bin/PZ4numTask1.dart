void main() {
  int n = 11;
  int pow = 1;
  for(int i = 1; i <= n; i++){
    if(i%3 == 0){
      pow = pow * i;
    }
  }
  print(pow);
}