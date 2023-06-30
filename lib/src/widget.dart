import 'package:flutter/widgets.dart';

/// A collection of useful extensions for the [Widget] widget.
extension WidgetXtended on Widget {
  /// Centers the widget within its parent.
  /// 
  /// Example:
  /// 
  /// ```dart
  /// Text('Hello').centered()
  /// ```
  /// 
  Widget centered() {
    return Center(
      child: this,
    );
  }

  /// Expands the widget to fill the available space.
  /// 
  /// Example:
  /// 
  /// ```dart
  /// Text('Hello').expanded()
  /// ```
  /// 
  Widget expanded([int flex = 1]) {
    return Expanded(
      flex: flex,
      child: this,
    );
  }

  /// Clips the widget to the given radius. Defaults to 8.
  /// 
  /// Example:
  /// 
  /// ```dart
  /// Text('Hello').clip(16)
  /// ```
  /// 
  Widget clip([double radius = 8]) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: this,
    );
  }

  /// Aligns the widget within its parent.
  /// 
  /// Example:
  /// 
  /// ```dart
  /// Text('Hello').align(Alignment.bottomRight)
  /// ```
  /// 
  Widget align([Alignment alignment = Alignment.topLeft]) => Align(
        alignment: alignment,
        child: this,
      );

  /// Offsets the widget by the given x and y values.
  /// 
  /// Example:
  /// 
  /// ```dart
  /// Text('Hello').offset(x: 10, y: 20)
  /// ```
  /// 
  Widget offset({double? x, double? y}) => Transform.translate(
        offset: Offset(x ?? 0, y ?? 0),
        child: this,
      );
}
