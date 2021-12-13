import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  get counter => _counter;

  set counter(value) {
    _counter = value;
    notifyListeners();
  }
}
