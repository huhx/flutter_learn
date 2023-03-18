import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues rangeValues = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("slider widget")),
      body: Center(
        child: RangeSlider(
          divisions: 10,
          labels: RangeLabels(
            rangeValues.start.toString(),
            rangeValues.end.toString(),
          ),
          min: 0,
          max: 100,
          values: rangeValues,
          onChanged: (value) => setState(() => rangeValues = value),
        ),
      ),
    );
  }
}
