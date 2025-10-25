import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 🌍 Ejemplo integral que muestra TODOS los tipos de widgets principales de Flutter.
/// Contiene ejemplos de Layout, Contenedores, Interacción, Animación, Cupertino,
/// Formularios, Render, Accesibilidad y más.
///
/// 🧠 Propósito:
///   - Servir como un laboratorio visual de widgets.
///   - Mostrar cómo se usan los diferentes tipos.
///   - Proveer una referencia exhaustiva de la UI de Flutter.
///
/// ⚙️ Autor: Victor A. T. Ruiz
/// 🕓 Última actualización: Octubre 2025
class AllWidgetsFullExample extends StatefulWidget {
  const AllWidgetsFullExample({super.key});

  @override
  State<AllWidgetsFullExample> createState() => _AllWidgetsFullExampleState();
}

class _AllWidgetsFullExampleState extends State<AllWidgetsFullExample>
    with SingleTickerProviderStateMixin {
  // === VARIABLES DE ESTADO Y DATOS DE EJEMPLO ===
  bool isActive = false;
  double sliderValue = 0.5;
  String dropdownValue = "Opción 1";
  int counter = 0;
  String textValue = "";
  DateTime selectedDate = DateTime.now();
  late AnimationController _controller;

  final TextEditingController textController = TextEditingController();
  final ValueNotifier<int> notifier = ValueNotifier<int>(0);
  final List<String> items = List.generate(6, (i) => "Item ${i + 1}");
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    notifier.dispose();
    textController.dispose();
    super.dispose();
  }

  // === MÉTODOS AUXILIARES ===
  void showSnack() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("SnackBar mostrado 🚀")),
    );
  }

  void showDialogExample() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Ejemplo de diálogo"),
        content: const Text("Esto es un AlertDialog con acciones."),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancelar")),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text("Aceptar")),
        ],
      ),
    );
  }

  Future<void> pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      initialDate: selectedDate,
    );
    if (picked != null && picked != selectedDate) {
      setState(() => selectedDate = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Widgets FULL Example")),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Text("Menú Lateral", style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Inicio")),
            ListTile(leading: Icon(Icons.settings), title: Text("Configuración")),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoritos"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => counter++),
        child: const Icon(Icons.add),
      ),

      // === CONTENIDO PRINCIPAL ===
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _section("🧱 LAYOUT Y CONTENEDORES", [
              _example(Container(
                color: Colors.amber.shade100,
                padding: const EdgeInsets.all(8),
                child: const Text("Container básico con padding"),
              )),
              _example(const Align(alignment: Alignment.centerRight, child: Text("Alineado a la derecha"))),
              _example(const Center(child: Text("Centrado en el eje principal"))),
              _example(Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Elemento 1"), Text("Elemento 2"), Text("Elemento 3")],
              )),
              _example(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [Text("Texto 1"), Text("Texto 2")],
              )),
              _example(SizedBox(height: 50, width: 100, child: ColoredBox(color: Colors.lightBlue))),
              _example(FractionallySizedBox(
                  widthFactor: 0.8, child: Container(color: Colors.purple, height: 20))),
              _example(AspectRatio(aspectRatio: 16 / 9, child: Container(color: Colors.orange))),
              _example(GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(6, (i) => Center(child: Text("Item $i"))),
              )),
              _example(Wrap(
                spacing: 8,
                children: List.generate(5, (i) => Chip(label: Text("Chip $i"))),
              )),
            ]),

            _section("🎨 VISUALES Y DECORACIÓN", [
              _example(const Divider()),
              _example(Card(
                elevation: 3,
                child: ListTile(title: Text("Card con ListTile"), subtitle: Text("Subtítulo")),
              )),
              _example(DecoratedBox(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Colors.blue, Colors.purple]),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text("DecoratedBox con gradiente"),
                ),
              )),
              _example(ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://flutter.dev/images/flutter-logo-sharing.png",
                  height: 100,
                ),
              )),
              _example(Opacity(opacity: 0.6, child: const Text("Texto con Opacidad"))),
              _example(const Placeholder(fallbackHeight: 50)),
            ]),

            _section("🎛️ INTERACTIVOS Y GESTOS", [
              _example(ElevatedButton(onPressed: showSnack, child: const Text("Mostrar SnackBar"))),
              _example(OutlinedButton(onPressed: showDialogExample, child: const Text("Abrir Diálogo"))),
              _example(IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up))),
              _example(InkWell(
                onTap: () => showSnack(),
                child: Container(
                  color: Colors.greenAccent,
                  padding: const EdgeInsets.all(8),
                  child: const Text("InkWell con efecto splash"),
                ),
              )),
              _example(PopupMenuButton<String>(
                onSelected: (v) => showSnack(),
                itemBuilder: (_) => const [
                  PopupMenuItem(value: "1", child: Text("Opción 1")),
                  PopupMenuItem(value: "2", child: Text("Opción 2")),
                ],
              )),
            ]),

            _section("🧩 FORMULARIOS Y ENTRADA DE DATOS", [
              _example(SwitchListTile(
                  title: const Text("Switch"),
                  value: isActive,
                  onChanged: (v) => setState(() => isActive = v))),
              _example(Slider(
                  value: sliderValue,
                  onChanged: (v) => setState(() => sliderValue = v),
                  divisions: 10)),
              _example(DropdownButton<String>(
                value: dropdownValue,
                onChanged: (v) => setState(() => dropdownValue = v!),
                items: ["Opción 1", "Opción 2", "Opción 3"]
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
              )),
              _example(TextField(
                controller: textController,
                decoration: const InputDecoration(
                    labelText: "Campo de texto", border: OutlineInputBorder()),
              )),
              _example(Form(
                key: formKey,
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Campo en Form"),
                  validator: (v) => (v == null || v.isEmpty) ? "Campo obligatorio" : null,
                ),
              )),
              _example(ElevatedButton(
                  onPressed: pickDate, child: Text("Seleccionar fecha: ${selectedDate.toLocal()}"))),
            ]),

            _section("📦 LISTAS Y SCROLL", [
              _example(ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (_, i) => ListTile(title: Text("Elemento $i")),
              )),
              _example(SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(5, (i) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Chip(label: Text("Chip $i")),
                        ))),
              )),
            ]),

            _section("📄 NAVEGACIÓN Y ESTRUCTURA", [
              _example(ExpansionTile(
                  title: const Text("Expansion Tile"),
                  children: const [ListTile(title: Text("Contenido interno"))])),
              _example(Banner(
                  message: "Nuevo!", location: BannerLocation.topStart, child: Container(height: 50))),
            ]),

            _section("⏱️ ANIMACIONES Y TRANSICIONES", [
              _example(AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: isActive ? 200 : 100,
                height: 40,
                color: isActive ? Colors.green : Colors.red,
              )),
              _example(FadeTransition(
                opacity: _controller,
                child: const Icon(Icons.favorite, color: Colors.pink, size: 40),
              )),
              _example(TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: sliderValue),
                duration: const Duration(milliseconds: 500),
                builder: (_, value, __) => LinearProgressIndicator(value: value),
              )),
            ]),

            _section("🍎 CUPERTINO (iOS) WIDGETS", [
              _example(const CupertinoActivityIndicator()),
              _example(CupertinoButton(
                  color: CupertinoColors.activeBlue,
                  onPressed: showDialogExample,
                  child: const Text("Cupertino Button"))),
              _example(CupertinoSwitch(value: isActive, onChanged: (v) => setState(() => isActive = v))),
              _example(CupertinoSlider(value: sliderValue, onChanged: (v) => setState(() => sliderValue = v))),
              _example(const CupertinoTextField(placeholder: "Texto estilo iOS")),
            ]),

            _section("🧠 CONTROL DE ESTADO Y BUILDER WIDGETS", [
              _example(ValueListenableBuilder<int>(
                valueListenable: notifier,
                builder: (_, value, __) => Text("ValueNotifier: $value"),
              )),
              _example(FutureBuilder<int>(
                future: Future.delayed(const Duration(seconds: 1), () => 42),
                builder: (_, snap) => Text("FutureBuilder: ${snap.data ?? 'Cargando...'}"),
              )),
              _example(StreamBuilder<int>(
                stream: Stream.periodic(const Duration(seconds: 1), (x) => x).take(3),
                builder: (_, snap) => Text("StreamBuilder: ${snap.data ?? '-'}"),
              )),
              _example(LayoutBuilder(
                  builder: (_, c) => Text("Ancho disponible: ${c.maxWidth.toStringAsFixed(0)} px"))),
              _example(OrientationBuilder(
                  builder: (_, o) => Text("Orientación: ${o == Orientation.portrait ? 'Vertical' : 'Horizontal'}"))),
            ]),
          ],
        ),
      ),
    );
  }

  // === HELPERS PARA AGRUPAR SECCIONES ===
  Widget _section(String title, List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ...children,
          const Divider(),
        ],
      ),
    );
  }

  Widget _example(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: child,
    );
  }
}
