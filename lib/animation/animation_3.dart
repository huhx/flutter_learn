import 'package:flutter/material.dart';

class AnimationTest3 extends StatefulWidget {
  const AnimationTest3({super.key});

  @override
  State<AnimationTest3> createState() => _AnimationTest3State();
}

class _AnimationTest3State extends State<AnimationTest3> {
  double opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("animation 3")),
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(seconds: 3),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => setState(() => opacity = opacity == 0.4 ? 1.0 : 0.4),
      ),
    );
  }
}
