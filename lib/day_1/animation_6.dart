import 'package:flutter/material.dart';

class AnimationTest6 extends StatefulWidget {
  const AnimationTest6({super.key});

  @override
  State<AnimationTest6> createState() => _AnimationTest6State();
}

class _AnimationTest6State extends State<AnimationTest6> {
  double top = 10;
  double left = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("animation 6")),
      body: Stack(
        children: [
          AnimatedPositioned(
            top: top,
            left: left,
            duration: const Duration(seconds: 3),
            child: const FlutterLogo(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            top = top == 10 ? 200 : 10;
            left = left == 10 ? 200 : 10;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
