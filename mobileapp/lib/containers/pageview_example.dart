import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PageView Example')),
      body: PageView(
        children: [
          Container(color: Colors.red, child: const Center(child: Text('Page 1', style: TextStyle(color: Colors.white, fontSize: 24)))),
          Container(color: Colors.green, child: const Center(child: Text('Page 2', style: TextStyle(color: Colors.white, fontSize: 24)))),
          Container(color: Colors.blue, child: const Center(child: Text('Page 3', style: TextStyle(color: Colors.white, fontSize: 24)))),
        ],
      ),
    );
  }
}
