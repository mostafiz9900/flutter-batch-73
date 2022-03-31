import 'package:flutter/widgets.dart';

class Count with ChangeNotifier {
  int value = 0;
  void increment() {
    value++;
    notifyListeners();
  }

  void decincrement() {
    value--;
    notifyListeners();
  }
}
