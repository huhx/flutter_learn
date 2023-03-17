import 'package:flutter/material.dart';

class TransitionTest1 extends StatefulWidget {
  const TransitionTest1({super.key});

  @override
  State<TransitionTest1> createState() => _TransitionTest1State();
}

class _TransitionTest1State extends State<TransitionTest1>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<double> animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceOut,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("transition 1")),
      body: Center(
        child: ScaleTransition(
          scale: animation,
          alignment: Alignment.bottomCenter,
          child: const FlutterLogo(size: 200),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
