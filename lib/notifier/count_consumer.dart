import 'package:flutter/material.dart';
import 'package:flutter_learn/notifier/count_model.dart';
import 'package:flutter_learn/view/count_state_widget.dart';

class CountConsumer extends StatefulWidget {
  final Listenable listenable;
  final Widget Function(CountModel) builder;

  const CountConsumer({
    required this.listenable,
    required this.builder,
    super.key,
  });

  @override
  State<CountConsumer> createState() => _CountConsumerState();
}

class _CountConsumerState extends State<CountConsumer> {
  @override
  void initState() {
    super.initState();
    widget.listenable.addListener(_handleChange);
  }

  @override
  void dispose() {
    widget.listenable.removeListener(_handleChange);
    super.dispose();
  }

  void _handleChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final countModel = CountStateWidget.of(context).value;
    return widget.builder(countModel);
  }
}
