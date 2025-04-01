import 'dart:async';

void main() {
  int num = 0;
  Timer.periodic(Duration(seconds: 1), (Timer timer){
    num ++;
    print(num);
  });
}