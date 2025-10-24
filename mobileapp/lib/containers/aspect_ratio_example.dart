import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AspectRatio Example')),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.cyan,
            child: const Center(child: Text('16:9 Aspect Ratio Box')),
          ),
        ),
      ),
    );
  }
}
