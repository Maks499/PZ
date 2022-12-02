void main(){
  // y=2x+2     /
  // y=-2x+2       \
  // y=-3        _
  double a = 2.0001,b = -3;
  if((b <= (a*2.5+2)) && (b <= (-2.5*a+2))&&(b >= -3)){
    print("point in figure");
  }
  else {
    print("point not in figure");
  }
}