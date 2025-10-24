import 'package:flutter/material.dart';

// Basic & Box Containers
import 'containers/container_example.dart';
import 'containers/decorated_box_example.dart';
import 'containers/padding_example.dart';
import 'containers/align_example.dart';
import 'containers/center_example.dart';
import 'containers/sizedbox_example.dart';
import 'containers/constrained_box_example.dart';
import 'containers/expanded_example.dart';
import 'containers/flexible_example.dart';
import 'containers/fractionally_sized_box_example.dart';
import 'containers/aspect_ratio_example.dart';
import 'containers/limited_box_example.dart';
import 'containers/fitted_box_example.dart';

// Flex & Multi-Child Layouts
import 'containers/spacer_example.dart';
import 'containers/wrap_example.dart';
import 'containers/indexed_stack_example.dart';
import 'containers/pageview_example.dart';
import 'containers/transform_example.dart';
import 'containers/custom_scrollview_example.dart';
import 'containers/stack_example.dart';
import 'containers/gridview_example.dart';
import 'containers/scrollview_example.dart';
import 'containers/listview_example.dart';
import 'containers/column_example.dart';
import 'containers/row_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Containers Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Selector(),
    );
  }
}

class Selector extends StatelessWidget {
  const Selector({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      // Basic containers
      {'title': 'Container', 'widget': const ContainerExample()},
      {'title': 'DecoratedBox', 'widget': const DecoratedBoxExample()},
      {'title': 'Padding', 'widget': const PaddingExample()},
      {'title': 'Align', 'widget': const AlignExample()},
      {'title': 'Center', 'widget': const CenterExample()},
      {'title': 'SizedBox', 'widget': const SizedBoxExample()},
      {'title': 'ConstrainedBox', 'widget': const ConstrainedBoxExample()},
      {'title': 'Expanded', 'widget': const ExpandedExample()},
      {'title': 'Flexible', 'widget': const FlexibleExample()},
      {'title': 'FractionallySizedBox', 'widget': const FractionallySizedBoxExample()},
      {'title': 'AspectRatio', 'widget': const AspectRatioExample()},
      {'title': 'LimitedBox', 'widget': const LimitedBoxExample()},
      {'title': 'FittedBox', 'widget': const FittedBoxExample()},

      // Flex and layout containers
      {'title': 'Spacer', 'widget': const SpacerExample()},
      {'title': 'Wrap', 'widget': const WrapExample()},
      {'title': 'IndexedStack', 'widget': const IndexedStackExample()},
      {'title': 'PageView', 'widget': const PageViewExample()},
      {'title': 'Transform', 'widget': const TransformExample()},
      {'title': 'CustomScrollView', 'widget': const CustomScrollViewExample()},

      // Additional multi-child layouts
      {'title': 'Stack', 'widget': const StackExample()},
      {'title': 'GridView', 'widget': const GridViewExample()},
      {'title': 'SingleChildScrollView', 'widget': const ScrollViewExample()},
      {'title': 'ListView', 'widget': const ListViewExample()},
      {'title': 'Column', 'widget': const ColumnExample()},
      {'title': 'Row', 'widget': const RowExample()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Layout & Container Examples')),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return ListTile(
            title: Text(item['title'] as String),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => item['widget'] as Widget),
              );
            },
          );
        },
      ),
    );
  }
}
