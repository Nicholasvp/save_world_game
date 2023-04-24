import 'package:flutter/material.dart';

class VisibleProvider extends ChangeNotifier {
  var isVisible = true;
  var isVisible_ = false;

  void changeVisibility() {
    isVisible == true ? isVisible = false : isVisible = true;
    isVisible_ == false ? isVisible_ = true : isVisible_ = false;
    notifyListeners();
  }
}
