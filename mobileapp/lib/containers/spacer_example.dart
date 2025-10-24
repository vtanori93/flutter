import 'package:flutter/material.dart';

class SpacerExample extends StatelessWidget {
  const SpacerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spacer Example')),
      body: Row(
        children: [
          Container(width: 50, height: 50, color: Colors.red),
          const Spacer(flex: 1),
          Container(width: 50, height: 50, color: Colors.green),
          const Spacer(flex: 2),
          Container(width: 50, height: 50, color: Colors.blue),
        ],
      ),
    );
  }
}
