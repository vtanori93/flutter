import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('CustomScrollView Example'),
              background: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent]),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                height: 80,
                color: Colors.blue[(index % 9 + 1) * 100],
                child: Center(
                  child: Text('Item ${index + 1}', style: const TextStyle(color: Colors.white)),
                ),
              ),
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
