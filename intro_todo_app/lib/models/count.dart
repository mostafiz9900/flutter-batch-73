

import 'package:flutter/widgets.dart';

class CountModel with ChangeNotifier {
  int count=0;
  void increment() {
    count +=1;
   notifyListeners();
  }
  void decreaseValue() {
           count--;
        notifyListeners();
}
}
