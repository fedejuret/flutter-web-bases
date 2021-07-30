import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  void increment() {
    this._counter++;
    notifyListeners();
  }

  void decrement() {
    this._counter--;
    notifyListeners();
  }

  int get counter => this._counter;
}
