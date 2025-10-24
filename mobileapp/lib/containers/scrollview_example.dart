import 'package:flutter/material.dart';

class ScrollViewExample extends StatelessWidget {
  const ScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SingleChildScrollView Example')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: List.generate(
            20,
            (index) => Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 80,
              color: Colors.blue[(index % 9 + 1) * 100],
              child: Center(
                child: Text(
                  'Box ${index + 1}',
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
