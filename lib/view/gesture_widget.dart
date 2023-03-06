import 'package:flutter/material.dart';

class GestureWidget extends StatefulWidget {
  const GestureWidget({super.key});

  @override
  State<GestureWidget> createState() => _GestureWidgetState();
}

class _GestureWidgetState extends State<GestureWidget> {
  String operation = "No Gesture detected!";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 200.0,
          height: 100.0,
          child: Text(operation, style: const TextStyle(color: Colors.white)),
        ),
        onTap: () => updateText("Tap"),
        onDoubleTap: () => updateText("DoubleTap"),
        onLongPress: () => updateText("LongPress"),
      ),
    );
  }

  void updateText(String text) => setState(() => operation = text);
}
