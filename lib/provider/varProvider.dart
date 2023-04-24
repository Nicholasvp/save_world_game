import 'package:flutter/material.dart';

class VarProvider extends ChangeNotifier {
  double contamination = 0.50;

  void correct() {
    contamination >= 1 ? print('parabens') : contamination -= 0.10;

    notifyListeners();
  }

  void wrong() {
    contamination <= 0 ? print('perdeu') : contamination += 0.10;
    notifyListeners();
  }
}
