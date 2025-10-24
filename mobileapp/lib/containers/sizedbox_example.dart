import 'package:flutter/material.dart';

class SizedBoxExample extends StatelessWidget {
  const SizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SizedBox Example')),
      body: Center(
        child: SizedBox(
          width: 150,
          height: 100,
          child: Container(
            color: Colors.green,
            child: const Center(child: Text('Sized Box')),
          ),
        ),
      ),
    );
  }
}
