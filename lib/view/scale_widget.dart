import 'package:flutter/material.dart';

class ScaleWidget extends StatefulWidget {
  const ScaleWidget({super.key});

  @override
  State<ScaleWidget> createState() => _ScaleWidgetState();
}

class _ScaleWidgetState extends State<ScaleWidget> {
  double width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: FlutterLogo(size: width),
        onScaleUpdate: (ScaleUpdateDetails details) {
          setState(() => width = 200 * details.scale.clamp(.8, 10.0));
        },
      ),
    );
  }
}
