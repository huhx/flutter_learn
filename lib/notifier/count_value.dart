import 'package:flutter/material.dart';

class CountValue extends ValueNotifier<int> {
  CountValue(super.value);

  void increase() {
    value += 1;
  }
}
