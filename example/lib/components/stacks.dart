import 'package:flutter/material.dart';
import 'package:xtended/xtended.dart';

List<int> getSamples(int length) => List.generate(length, (index) => index);

class Stacks extends StatelessWidget {
  const Stacks({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack.scrollable([
      const Text('VStack').fontSize(24).bold(),
      const Text(
          'Children are stacked vertically. VStack height matches the height of the children.'),
      const SizedBox(height: 16),
      VStack([
        for (final index in getSamples(5)) _StackItem(index: index),
      ]),

      const SizedBox(height: 32),

      const Text('VStack Expanded').fontSize(24).bold(),
      const Text(
          'Children are stacked vertically. VStack height matches the height of its parent.'),
      const SizedBox(height: 16),
      Container(
        height: 200,
        color: Colors.grey,
        child: VStack.expanded([
          for (final index in getSamples(5)) _StackItem(index: index),
        ]),
      ),

      const SizedBox(height: 32),

      const Text('VStack Scrollable').fontSize(24).bold(),
      const Text(
          'Children are stacked vertically. VStack height matches the height of its parent. If the children exceed the height of the parent, the VStack becomes scrollable.'),
      const SizedBox(height: 16),
      Container(
        height: 200,
        color: Colors.grey,
        child: VStack.scrollable([
          for (final index in getSamples(30)) _StackItem(index: index),
        ]),
      ),

      const SizedBox(height: 32),

      const Text('HStack').fontSize(24).bold(),
      const Text(
          'Children are stacked horizontally. HStack width matches the width of the children.'),
      const SizedBox(height: 16),
      HStack([
        for (final index in getSamples(5)) _StackItem(index: index),
      ]),

      const SizedBox(height: 32),

      const Text('HStack Expanded').fontSize(24).bold(),
      const Text(
          'Children are stacked horizontally. HStack width matches the width of its parent.'),
      const SizedBox(height: 16),
      Container(
        width: double.infinity,
        color: Colors.grey,
        child: HStack.expanded([
          for (final index in getSamples(5)) _StackItem(index: index),
        ]),
      ),

      const SizedBox(height: 32),

      const Text('HStack Scrollable').fontSize(24).bold(),
      const Text(
          'Children are stacked horizontally. HStack width matches the width of its parent. If the children exceed the width of the parent, the HStack becomes scrollable.'),
      const SizedBox(height: 16),
      Container(
        width: double.infinity,
        color: Colors.grey,
        child: HStack.scrollable([
          for (final index in getSamples(30)) _StackItem(index: index),
        ]),
      ),
    ]).padding([Edge.all], 16);
  }
}

class _StackItem extends StatelessWidget {
  const _StackItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final color = index % 2 == 0 ? Colors.red : Colors.blue;
    return ColoredBox(
      color: color,
      child: Text('Item $index').centered().padding([Edge.horizontal], 8),
    );
  }
}
