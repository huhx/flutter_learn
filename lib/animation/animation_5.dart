import 'package:flutter/material.dart';

class AnimationTest5 extends StatefulWidget {
  const AnimationTest5({super.key});

  @override
  State<AnimationTest5> createState() => _AnimationTest5State();
}

class _AnimationTest5State extends State<AnimationTest5> {
  double value = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("animation 5")),
      body: Center(
        child: TweenAnimationBuilder(
          duration: const Duration(seconds: 3),
          builder: (context, value, child) {
            return IconButton(
              onPressed: () => debugPrint("value = $value"),
              icon: const Icon(Icons.star, color: Colors.blueGrey),
              iconSize: value,
            );
          },
          onEnd: () => setState(() => value = value == 160 ? 300 : 160),
          curve: Curves.bounceIn,
          tween: Tween<double>(begin: 0, end: value),
        ),
      ),
    );
  }
}
