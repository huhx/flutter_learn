import 'package:flutter/material.dart';

class ListenerWidget extends StatelessWidget {
  const ListenerWidget({super.key});

  /// 1. If use AbsorbPointer, click will print: up
  /// 2. if use IgnorePointerm click will no print
  @override
  Widget build(BuildContext context) {
    return Listener(
      child: AbsorbPointer(
        child: Listener(
          child: Container(
            color: Colors.red,
            width: 200.0,
            height: 100.0,
          ),
          onPointerDown: (event) => debugPrint("in"),
        ),
      ),
      onPointerDown: (event) => debugPrint("up"),
    );
  }
}
