import 'package:flutter/material.dart';
import 'package:flutter_learn/notifier/count_model.dart';

class CountStateWidget extends InheritedWidget {
  const CountStateWidget({
    super.key,
    required this.value,
    required super.child,
  });

  final CountModel value;

  static CountStateWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CountStateWidget>()!;
  }

  @override
  bool updateShouldNotify(CountStateWidget oldWidget) {
    return oldWidget.value != value;
  }
}
