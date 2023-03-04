import 'package:flutter/material.dart';

class CountStateWidget extends InheritedWidget {
  const CountStateWidget({
    super.key,
    required this.count,
    required super.child,
  });

  final int count;

  static CountStateWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CountStateWidget>()!;
  }

  @override
  bool updateShouldNotify(CountStateWidget oldWidget) {
    return oldWidget.count != count;
  }
}
