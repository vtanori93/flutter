import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  const PaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padding Example')),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          color: Colors.teal,
          child: const Center(
            child: Text('Padding Container'),
          ),
        ),
      ),
    );
  }
}
