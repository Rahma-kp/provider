 import 'package:flutter/material.dart';

class Changes extends ChangeNotifier{
  int _count=0;
  int get counetr=>_count;
  void incriment(){
    _count++;
    notifyListeners();
  }

  void decrement(){
    _count--;
    notifyListeners();
  }
}