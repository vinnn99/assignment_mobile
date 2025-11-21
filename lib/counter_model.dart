import 'dart:math';

import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _value = 0;
  Color _color = Colors.black;
  final Random _rnd = Random();

  int get value => _value;
  Color get color => _color;

  void _pickRandomColor() {
    _color = Color.fromARGB(
      255,
      _rnd.nextInt(256),
      _rnd.nextInt(256),
      _rnd.nextInt(256),
    );
  }

  void increment() {
    _value++;
    _pickRandomColor();
    notifyListeners();
  }

  void decrement() {
    _value--;
    _pickRandomColor();
    notifyListeners();
  }
}
