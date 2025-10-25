import 'package:flutter/material.dart';

class VariablesExample extends StatefulWidget {
  const VariablesExample({super.key});

  @override
  State<VariablesExample> createState() => _VariablesExampleState();
}

class _VariablesExampleState extends State<VariablesExample> {
  // Variables de distintos tipos
  int counter = 0;
  double progress = 0.3;
  String message = "Hola, Flutter!";
  bool isActive = true;
  List<String> fruits = ["🍎", "🍌", "🍇"];
  Map<String, dynamic> user = {"name": "Victor", "age": 28};
  DateTime now = DateTime.now();

  void _incrementCounter() {
    setState(() {
      counter++;
      progress = (progress + 0.1).clamp(0.0, 1.0);
      message = "Has presionado el botón $counter veces";
      isActive = !isActive;
      fruits.add("🍊");
      user["lastAction"] = "Increment at ${now.hour}:${now.minute}";
      now = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Variables Example")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Contador: $counter", style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            LinearProgressIndicator(value: progress),
            const SizedBox(height: 16),
            Text(message, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text("Activo: ${isActive ? 'Sí ✅' : 'No ❌'}"),
            const SizedBox(height: 8),
            Text("Frutas: ${fruits.join(', ')}"),
            const SizedBox(height: 8),
            Text("Usuario: ${user['name']} (${user['age']} años)"),
            if (user.containsKey("lastAction"))
              Text("Última acción: ${user['lastAction']}"),
            const SizedBox(height: 8),
            Text("Fecha actual: ${now.toLocal()}"),
            const Spacer(),
            Center(
              child: ElevatedButton.icon(
                onPressed: _incrementCounter,
                icon: const Icon(Icons.add),
                label: const Text("Incrementar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
