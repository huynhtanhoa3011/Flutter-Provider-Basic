import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Feature with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  increaseCount() {
    _count++;
    notifyListeners();
  }
}
