import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  const LimitedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("limited box widget")),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: LimitedBox(
          maxHeight: 100,
          maxWidth: 100,
          child: Container(
            color: Colors.red,
            width: 500,
            height: 500,
          ),
        ),
      ),
    );
  }
}
