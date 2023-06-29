import 'package:flutter/widgets.dart';

class Grid extends StatelessWidget {
  const Grid(
    this.children, {
    super.key,
    this.columns = 2,
    this.verticalSpacing = 4,
    this.horizontalSpacing = 4,
  });

  final List<Widget> children;
  final int columns;
  final double verticalSpacing;
  final double horizontalSpacing;

  static horizontal(
    List<Widget> children, {
    int rows = 2,
    double verticalSpacing = 4,
    double horizontalSpacing = 4,
  }) {
    return GridView(
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: rows,
        mainAxisSpacing: verticalSpacing,
        crossAxisSpacing: horizontalSpacing,
      ),
      children: children,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        mainAxisSpacing: verticalSpacing,
        crossAxisSpacing: horizontalSpacing,
      ),
      children: children,
    );
  }
}