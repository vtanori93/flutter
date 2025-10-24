import 'package:flutter/material.dart';

class LimitedBoxExample extends StatelessWidget {
  const LimitedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LimitedBox Example')),
      body: ListView(
        children: [
          LimitedBox(
            maxHeight: 150,
            child: Container(
              color: Colors.deepPurple,
              child: const Center(child: Text('Limited Box')),
            ),
          ),
        ],
      ),
    );
  }
}
