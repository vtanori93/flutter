import 'package:flutter/material.dart';

class ConstrainedBoxExample extends StatelessWidget {
  const ConstrainedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ConstrainedBox Example')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 100,
            maxWidth: 200,
            minHeight: 100,
            maxHeight: 200,
          ),
          child: Container(
            color: Colors.red,
            child: const Center(child: Text('Constrained Box')),
          ),
        ),
      ),
    );
  }
}
