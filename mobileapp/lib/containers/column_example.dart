import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 100, height: 100, color: Colors.red),
          Container(width: 100, height: 100, color: Colors.green),
          Container(width: 100, height: 100, color: Colors.blue),
        ],
      ),
    );
  }
}
