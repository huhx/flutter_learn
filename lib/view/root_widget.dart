import 'package:flutter/material.dart';
import 'package:flutter_learn/notifier/count_model.dart';

import 'count_state_widget.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final CountModel countModel = CountStateWidget.of(context).value;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Root Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "count is ${countModel.count}",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countModel.increase(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
