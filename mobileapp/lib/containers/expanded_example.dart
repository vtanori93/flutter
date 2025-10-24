import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded Example')),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Center(child: Text('Expanded 1')),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
              child: const Center(child: Text('Expanded 2')),
            ),
          ),
        ],
      ),
    );
  }
}
