import 'package:flutter/material.dart';

class AnimationTest2 extends StatefulWidget {
  const AnimationTest2({super.key});

  @override
  State<AnimationTest2> createState() => _AnimationTest2State();
}

class _AnimationTest2State extends State<AnimationTest2>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );

  late final Animation<double> _widthAnimation =
      Tween<double>(begin: 100, end: 300).animate(_controller);
  late final Animation<double> _heightAnimation =
      Tween<double>(begin: 100, end: 300).animate(_controller);
  late final Animation<Color?> _colorAnimation =
      ColorTween(begin: Colors.blue, end: Colors.red).animate(_controller);
  late final Animation<double> _borderRadiusAnimation =
      Tween<double>(begin: 0, end: 50).animate(_controller);

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("animation2")),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              width: _widthAnimation.value,
              height: _heightAnimation.value,
              decoration: BoxDecoration(
                color: _colorAnimation.value,
                borderRadius: BorderRadius.circular(_borderRadiusAnimation.value),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_isExpanded) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
          _isExpanded = !_isExpanded;
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
