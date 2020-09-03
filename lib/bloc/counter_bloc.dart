import 'package:flutter/material.dart';

class CounterBloc extends ChangeNotifier{
int _counter = 20;
int get counter => _counter;
set counter(int val){
  _counter = val;
  notifyListeners();
}
increment(){
  print("12");
  _counter++;
  print("ass");
  notifyListeners();
}
decrement(){
  print("123");
  _counter--;
  print('sakd');
  notifyListeners();
}
}