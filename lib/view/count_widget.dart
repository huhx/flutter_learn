import 'package:flutter/material.dart';
import 'package:flutter_learn/view/count_state_widget.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final int count = CountStateWidget.of(context).count;

    return Center(
      child: Text(
        "count is ${count.toString()}",
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
