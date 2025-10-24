import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap Example')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: List.generate(
            12,
            (index) => Chip(
              backgroundColor: Colors.blue[(index % 9 + 1) * 100],
              label: Text('Item ${index + 1}', style: const TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
