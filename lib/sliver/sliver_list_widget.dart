import 'package:flutter/material.dart';

class SliverListWidget extends StatelessWidget {
  const SliverListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: Icon(Icons.backpack),
            title: Text("sliver app bar"),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text('Item ${index + 1}'),
                tileColor: Colors.orange[100 * (index % 9 + 1)],
              ),
              childCount: 50,
            ),
          )
        ],
      ),
    );
  }
}
