import 'package:flutter/material.dart';

class DragWidget extends StatefulWidget {
  const DragWidget({super.key});

  @override
  State<DragWidget> createState() => _DragWidgetState();
}

class _DragWidgetState extends State<DragWidget> {
  double top = 0.0;
  double left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: top,
          left: left,
          child: GestureDetector(
            child: const CircleAvatar(child: Text("A")),
            onPanDown: (DragDownDetails e) =>
                debugPrint("down: ${e.globalPosition}"),
            onPanUpdate: (DragUpdateDetails e) {
              setState(() {
                left += e.delta.dx;
                top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e) => debugPrint("end: ${e.velocity}"),
          ),
        )
      ],
    );
  }
}
