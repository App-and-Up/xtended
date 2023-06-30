import 'package:flutter/widgets.dart';

/// Grid is a wrapper around [GridView] that makes it easier to use.
///
/// It provides sensible defaults for the most common use cases.
///
/// Allows for creating a vertical or horizontal grid with a specified number of columns, or rows.
///
/// Children will match the size of the grid cells.
///
/// Example - Creating a vertical grid with 2 columns:
///
/// ```dart
/// Grid(columns: 2, [
///   Text('Hello World'),
///   Text('Hello World'),
/// ])
/// ```
///
/// Example - Creating a horizontal grid with 2 rows:
///
/// ```dart
/// Grid.horizontal(rows: 2, [
///   Text('Hello World'),
///   Text('Hello World'),
/// ])
/// ```
///
class Grid extends StatelessWidget {
  /// Creates a vertical grid.
  ///
  /// Example - Creating a vertical grid with 2 columns:
  ///
  /// ```dart
  /// Grid(columns: 2, [
  ///   Text('Hello World'),
  ///   Text('Hello World'),
  /// ])
  /// ```
  /// 
  /// You can also optinally specify the vertical and horizontal spacing between the grid cells.
  const Grid(
    this.children, {
    super.key,
    this.columns = 2,
    this.verticalSpacing = 4,
    this.horizontalSpacing = 4,
  });

  /// A list of widgets to display in the grid.
  final List<Widget> children;

  /// The number of columns in the grid.
  final int columns;

  /// The vertical spacing between the grid cells.
  final double verticalSpacing;

  /// The horizontal spacing between the grid cells.
  final double horizontalSpacing;

  /// Creates an horizontal grid.
  /// 
  /// Example - Creating a horizontal grid with 2 rows:
  /// 
  /// ```dart
  /// Grid.horizontal(rows: 2, [
  ///   Text('Hello World'),
  ///   Text('Hello World'),
  /// ])
  /// ```
  /// 
  /// You can also optinally specify the vertical and horizontal spacing between the grid cells.
  static Widget horizontal(
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
