import 'package:flutter/material.dart';
import 'package:xtended/xtended.dart';

List<int> getSamples(int length) => List.generate(length, (index) => index);

class Grids extends StatelessWidget {
  const Grids({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack.scrollable([
      const Text('Grid').fontSize(24).bold(),
      const Text(
          'Children are shown on a vertical grid. Matches the height and width of the parent and scales the children bases on the columns.'),
      const SizedBox(height: 16),
      SizedBox(
        height: 300,
        child: Grid(columns: 4, [
          for (final index in getSamples(10)) _GridItem(index: index),
        ]),
      ),
      const SizedBox(height: 32),
      const Text('Grid Horizontal').fontSize(24).bold(),
      const Text(
          'Children are shown on a horizontal grid. Matches the height and width of the parent and scales the children bases on the rows.'),
      const SizedBox(height: 16),
      SizedBox(
        height: 300,
        child: Grid.horizontal(rows: 2, [
          for (final index in getSamples(10)) _GridItem(index: index),
        ]),
      ),
    ]).padding([Edge.all], 16);
  }
}

class _GridItem extends StatelessWidget {
  const _GridItem({required this.index});

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
