import 'package:flutter/material.dart';

class AnimationTest4 extends StatefulWidget {
  const AnimationTest4({super.key});

  @override
  State<AnimationTest4> createState() => _AnimationTest4State();
}

class _AnimationTest4State extends State<AnimationTest4> {
  CrossFadeState state = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("animation 3")),
      body: Center(
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 3),
          firstCurve: Curves.easeInToLinear,
          secondCurve: Curves.easeInToLinear,
          sizeCurve: Curves.bounceOut,
          firstChild: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          secondChild: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(80),
            ),
          ),
          crossFadeState: state,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => setState(
          () => state = state == CrossFadeState.showFirst
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
        ),
      ),
    );
  }
}
