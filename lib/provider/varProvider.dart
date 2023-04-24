import 'package:flutter/material.dart';
import 'package:save_world_game/views/winner_page.dart';

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
