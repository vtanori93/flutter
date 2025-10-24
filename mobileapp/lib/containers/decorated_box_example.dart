import 'package:flutter/material.dart';

class DecoratedBoxExample extends StatelessWidget {
  const DecoratedBoxExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DecoratedBox Example')),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Padding(
            padding: EdgeInsets.all(20),
            child: Text('DecoratedBox'),
          ),
        ),
      ),
    );
  }
}
