import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("slider widget")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            divisions: 10,
            secondaryActiveColor: Colors.green,
            secondaryTrackValue: 50,
            activeColor: Colors.red,
            label: value.round().toString(),
            value: value,
            min: 0,
            max: 100,
            onChangeStart: (value) => debugPrint("start $value"),
            onChangeEnd: (value) => debugPrint("end $value"),
            onChanged: (value) => setState(() => this.value = value),
          ),
          Text("value = $value"),
        ],
      ),
    );
  }
}
