import 'package:flutter/material.dart';
import 'package:flutter_learn/notifier/count_value.dart';

class CountValueWidget extends StatelessWidget {
  final CountValue countValue = CountValue(0);

  CountValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueListenableBuilder'),
      ),
      body: ValueListenableBuilder(
        valueListenable: countValue,
        builder: (BuildContext context, int value, Widget? child) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              "count is $value",
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countValue.increase(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
