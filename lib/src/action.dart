import 'package:flutter/widgets.dart';

enum Action {
  tap,
  doubleTap,
  longPress;

  GestureDetector toGestureDetector(VoidCallback? action, Widget child) {
    return switch (this) {
      Action.tap => GestureDetector(onTap: action, child: child),
      Action.doubleTap => GestureDetector(onDoubleTap: action, child: child),
      Action.longPress => GestureDetector(onLongPress: action, child: child),
    };
  }
}

extension ActionXtended on Widget {
  Widget action(VoidCallback action, [Action actionType = Action.tap]) {
    return actionType.toGestureDetector(action, this);
  }
}
