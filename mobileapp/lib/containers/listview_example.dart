import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Example')),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            color: index.isEven ? Colors.blue : Colors.green,
            margin: const EdgeInsets.all(8),
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
