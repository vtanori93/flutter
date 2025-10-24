import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  const AlignExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Align Example')),
      body: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.purple,
          child: const Center(child: Text('Aligned Box')),
        ),
      ),
    );
  }
}
