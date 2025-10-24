import 'package:flutter/material.dart';

class IndexedStackExample extends StatefulWidget {
  const IndexedStackExample({super.key});

  @override
  State<IndexedStackExample> createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IndexedStack Example')),
      body: Center(
        child: IndexedStack(
          index: _index,
          children: [
            Container(width: 200, height: 200, color: Colors.red, child: const Center(child: Text('View 1', style: TextStyle(color: Colors.white)))),
            Container(width: 200, height: 200, color: Colors.green, child: const Center(child: Text('View 2', style: TextStyle(color: Colors.white)))),
            Container(width: 200, height: 200, color: Colors.blue, child: const Center(child: Text('View 3', style: TextStyle(color: Colors.white)))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _index = (_index + 1) % 3),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
