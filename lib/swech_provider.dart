import 'package:flutter/cupertino.dart';

class swich extends ChangeNotifier {
  bool light = false;

  void onoff({bool light = true})
  {
    this.light=light;
    notifyListeners();
  }
}
