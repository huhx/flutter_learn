import 'package:flutter/material.dart';

class TransitionTest2 extends StatefulWidget {
  const TransitionTest2({super.key});

  @override
  State<TransitionTest2> createState() => _TransitionTest2State();
}

class _TransitionTest2State extends State<TransitionTest2>
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
        child: RotationTransition(
          alignment: Alignment.bottomCenter,
          turns: animation,
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
