import 'package:flutter/material.dart';

// change notifier mixin
class MyProvider with ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    //notify listeners that the state has changed and tell them to rebuild
    notifyListeners();
  }
}
