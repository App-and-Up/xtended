import 'package:flutter/widgets.dart';

/// A set of actions that can be performed on a widget.
/// 
/// This enum is used by the [action] extension on [Widget].
enum Action {
  /// A tap action.
  tap,

  /// A double tap action.
  doubleTap,

  /// A long press action.
  longPress;

  /// Converts the action to a [GestureDetector] with the specified action.
  GestureDetector toGestureDetector(VoidCallback? action, Widget child) {
    return switch (this) {
      Action.tap => GestureDetector(onTap: action, child: child),
      Action.doubleTap => GestureDetector(onDoubleTap: action, child: child),
      Action.longPress => GestureDetector(onLongPress: action, child: child),
    };
  }
}

/// An extension on [Widget] that adds the ability to perform actions on it.
extension ActionXtended on Widget {
  /// An extension on [Widget] that adds the ability to perform actions on it.
  ///
  /// Example:
  ///
  /// Prints 'Hello World' when the [Text] widget is tapped.
  /// ```dart
  /// Text('Hello World').action(() => print('Hello World'))
  /// ```
  ///
  /// Prints 'Hello World' when the [Text] widget is double tapped.
  /// ```dart
  /// Text('Hello World').action(() => print('Hello World'), Action.doubleTap)
  /// ```
  ///
  /// Prints 'Hello World' when the [Text] widget is long pressed.
  /// ```dart
  /// Text('Hello World').action(() => print('Hello World'), Action.longPress)
  /// ```
  ///
  /// You can also concatenate them, to perform different actions on the same widget.
  Widget action(VoidCallback action, [Action actionType = Action.tap]) {
    return actionType.toGestureDetector(action, this);
  }
}
