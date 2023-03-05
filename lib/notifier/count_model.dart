import 'package:flutter/foundation.dart';

class CountModel extends ChangeNotifier {
  int _count;
  int get count => _count;

  CountModel(this._count);

  void increase() {
    _count = _count + 1;

    notifyListeners();
  }
}
