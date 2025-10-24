import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformExample extends StatelessWidget {
  const TransformExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transform Example')),
      body: Center(
        child: Transform.rotate(
          angle: math.pi / 6, // 30 degrees
          child: Container(
            width: 120,
            height: 120,
            color: Colors.orange,
            child: const Center(
              child: Text(
                'Rotated Box',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
