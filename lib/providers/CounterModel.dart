import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  // properties
  int _count = 0;

  // getter
  int get count => _count;

  // methods
  void increment() {
    _count++;
    notifyListeners();
  }

  set count(int val) {
    _count = val;
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
