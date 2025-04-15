import 'package:flutter/material.dart';

class MakeAndSearchStateNav with ChangeNotifier {
  bool _isFirstButtonActive = true;

  bool get isFirstButtonActive => _isFirstButtonActive;

  void togglePage(bool isFirst) {
    _isFirstButtonActive = isFirst;
    notifyListeners();
  }
}
