import 'package:flutter/material.dart';

class AnimationTest1 extends StatefulWidget {
  const AnimationTest1({super.key});

  @override
  State<AnimationTest1> createState() => _AnimationTest1State();
}

class _AnimationTest1State extends State<AnimationTest1> {
  bool _isInitialValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("animation 1"),
      ),
      body: Center(
        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: _isInitialValue ? Colors.red : Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(_isInitialValue ? 10 : 100),
            ),
          ),
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          padding: EdgeInsets.all(_isInitialValue ? 40 : 100),
          width: _isInitialValue ? 50 : 150,
          height: _isInitialValue ? 50 : 150,
          alignment:
              _isInitialValue ? Alignment.bottomRight : Alignment.topLeft,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _isInitialValue = !_isInitialValue),
        child: const Icon(Icons.toggle_on),
      ),
    );
  }
}
