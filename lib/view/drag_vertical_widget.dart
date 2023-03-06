import 'package:flutter/material.dart';

class DragVerticalWidget extends StatefulWidget {
  const DragVerticalWidget({super.key});

  @override
  State<DragVerticalWidget> createState() => _DragVerticalWidgetState();
}

class _DragVerticalWidgetState extends State<DragVerticalWidget> {
  double top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          child: GestureDetector(
            child: const CircleAvatar(child: Text("A")),
            onVerticalDragUpdate: (DragUpdateDetails details) {
              setState(() => top += details.delta.dy);
            },
          ),
        )
      ],
    );
  }
}
