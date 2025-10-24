import 'package:flutter/material.dart';

class CenterExample extends StatelessWidget {
  const CenterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center Example')),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.indigo,
          child: const Center(child: Text('Centered Box')),
        ),
      ),
    );
  }
}
