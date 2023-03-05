import 'package:flutter/material.dart';
import 'package:flutter_learn/view/root_widget.dart';

import 'notifier/count_consumer.dart';
import 'notifier/count_model.dart';
import 'view/count_state_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final countModel = CountModel(0);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CountStateWidget(
        value: countModel,
        child: CountConsumer(
          listenable: countModel,
          builder: (model) => RootWidget(),
        ),
      ),
    );
  }
}
