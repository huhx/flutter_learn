import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShortCutWidget extends StatefulWidget {
  const ShortCutWidget({super.key});

  @override
  State<ShortCutWidget> createState() => _ShortCutWidgetState();
}

class _ShortCutWidgetState extends State<ShortCutWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: {
        LogicalKeySet(LogicalKeyboardKey.arrowUp): const IncrementIntent(),
        LogicalKeySet(LogicalKeyboardKey.arrowDown): const DecrementIntent(),
      },
      child: Actions(
        actions: {
          IncrementIntent: CallbackAction(
            onInvoke: (intent) => setState(() => count += 1),
          ),
          DecrementIntent: CallbackAction(
            onInvoke: (intent) => setState(() => count -= 1),
          ),
        },
        child: Focus(
          child: Center(
            child: Text("count $count", style: const TextStyle(fontSize: 30)),
          ),
        ),
      ),
    );
  }
}

class IncrementIntent extends Intent {
  const IncrementIntent();
}

class DecrementIntent extends Intent {
  const DecrementIntent();
}
