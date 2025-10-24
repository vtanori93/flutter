import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row Example')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 80, height: 80, color: Colors.red),
          Container(width: 80, height: 80, color: Colors.green),
          Container(width: 80, height: 80, color: Colors.blue),
        ],
      ),
    );
  }
}
