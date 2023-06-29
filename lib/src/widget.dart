import 'package:flutter/widgets.dart';

extension WidgetXtended on Widget {
  Widget centered() {
    return Center(
      child: this,
    );
  }

  Widget expanded([int flex = 1]) {
    return Expanded(
      flex: flex,
      child: this,
    );
  }

  Widget clip([double radius = 8]) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: this,
    );
  }

  Widget align([Alignment alignment = Alignment.topLeft]) => Align(
        alignment: alignment,
        child: this,
      );

  Widget offset({double? x, double? y}) => Transform.translate(
        offset: Offset(x ?? 0, y ?? 0),
        child: this,
      );
}
