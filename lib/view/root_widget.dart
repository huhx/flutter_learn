import 'package:flutter/material.dart';
import 'package:flutter_learn/view/count_state_widget.dart';

import 'count_widget.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Root Widget"), centerTitle: true),
      body: const CountStateWidget(
        count: 12,
        child: CountWidget(),
      ),
    );
  }
}
