import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FittedBox Example')),
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Container(
            width: 300,
            height: 100,
            color: Colors.amber,
            child: const Text('Fitted Box'),
          ),
        ),
      ),
    );
  }
}
