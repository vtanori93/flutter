import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FractionallySizedBox Example')),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.7,
          heightFactor: 0.3,
          child: Container(
            color: Colors.pink,
            child: const Center(child: Text('Fractionally Sized Box')),
          ),
        ),
      ),
    );
  }
}
