import 'package:flutter/widgets.dart';

enum Edge {
  all,
  top,
  bottom,
  leading,
  trailing,
  horizontal,
  vertical;

  // Just a big switch statement
  EdgeInsetsGeometry toEdgeInsets(double value) {
    return switch (this) {
      Edge.all => EdgeInsets.all(value),
      Edge.top => EdgeInsets.only(top: value),
      Edge.bottom => EdgeInsets.only(bottom: value),
      Edge.leading => EdgeInsets.only(left: value),
      Edge.trailing => EdgeInsets.only(right: value),
      Edge.horizontal => EdgeInsets.symmetric(horizontal: value),
      Edge.vertical => EdgeInsets.symmetric(vertical: value),
    };
  }
}

extension PaddingXtended on Widget {
  Widget padding(List<Edge> edges, double value) {
    return Padding(
      padding: edges.fold(EdgeInsets.zero, (previousValue, element) {
        return previousValue.add(element.toEdgeInsets(value));
      }),
      child: this,
    );
  }
}
