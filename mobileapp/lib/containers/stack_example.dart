import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Example')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 200, height: 200, color: Colors.blue),
            Container(width: 150, height: 150, color: Colors.green),
            Container(width: 100, height: 100, color: Colors.orange),
            const Text(
              'Stack Layers',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
