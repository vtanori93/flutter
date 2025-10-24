import 'package:flutter/material.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flexible Example')),
      body: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.green,
              child: const Center(child: Text('Flexible 1')),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.yellow,
              child: const Center(child: Text('Flexible 2')),
            ),
          ),
        ],
      ),
    );
  }
}
