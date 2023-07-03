import 'package:flutter/widgets.dart';

/// [Edge] is used by the [padding] extension on [Widget].
///
/// It represents the visual sides of a Widget and abtracts away the RTL and LTR complexity.
enum Edge {
  /// All edges.
  all,

  /// The top edge.
  top,

  /// The bottom edge.
  bottom,

  /// The leading edge. (left in LTR, right in RTL)
  leading,

  /// The trailing edge. (right in LTR, left in RTL)
  trailing,

  /// The horizontal edges. (Left and Right)
  horizontal,

  /// The vertical edges. (Top and Bottom)
  vertical;

  /// Converts the edge to an [EdgeInsetsGeometry] with the specified value.
  EdgeInsetsGeometry toEdgeInsets(double value) {
    return switch (this) {
      Edge.all => EdgeInsetsDirectional.all(value),
      Edge.top => EdgeInsetsDirectional.only(top: value),
      Edge.bottom => EdgeInsetsDirectional.only(bottom: value),
      Edge.leading => EdgeInsetsDirectional.only(start: value),
      Edge.trailing => EdgeInsetsDirectional.only(end: value),
      Edge.horizontal => EdgeInsetsDirectional.symmetric(horizontal: value),
      Edge.vertical => EdgeInsetsDirectional.symmetric(vertical: value),
    };
  }
}

/// An extension on [Widget] that adds the ability to add padding to it.
extension PaddingXtended on Widget {
  /// An extension on [Widget] that adds the ability to add padding to it.
  ///
  /// Example:
  ///
  /// Adds 10 pixels of padding to all sides of the [Text] widget.
  /// ```dart
  /// Text('Hello World').padding([Edge.all], 10)
  /// ```
  ///
  /// Adds 10 pixels of padding to the top and bottom of the [Text] widget.
  /// ```dart
  /// Text('Hello World').padding([Edge.vertical], 10)
  /// ```
  ///
  /// Adds 10 pixels of padding to the left and right of the [Text] widget.
  /// ```dart
  /// Text('Hello World').padding([Edge.horizontal], 10)
  /// ```
  ///
  /// Adds 10 pixels of padding to the left, right and top of the [Text] widget.
  /// ```dart
  /// Text('Hello World').padding([Edge.horizontal, Edge.top], 10)
  /// ```
  ///
  Widget padding(List<Edge> edges, double value) {
    return Padding(
      padding: edges.fold(EdgeInsets.zero, (previousValue, element) {
        return previousValue.add(element.toEdgeInsets(value));
      }),
      child: this,
    );
  }
}
