import 'package:flutter/widgets.dart';

/// A widget that displays its children in a vertical stack.
///
/// The [VStack] widget is a wrapper around the [Column] widget with
/// some additional functionality and sensible defaults.
class VStack extends StatelessWidget {
  /// Creates a [VStack] widget.
  ///
  /// Children are stacked vertically in the order in which they are added.
  ///
  /// VStack height matches the height of its children.
  ///
  /// Example:
  ///
  /// ```dart
  /// VStack([
  ///   Text('Hello'),
  ///   Text('World'),
  /// ])
  ///
  const VStack(
    this.children, {
    super.key,
    this.alignment = MainAxisAlignment.start,
    this.horizontalAlignment = CrossAxisAlignment.start,
  });

  /// The widgets that get shown within the VStack.
  final List<Widget> children;

  /// How the children should be placed along the vertical axis.
  ///
  /// Defaults to [MainAxisAlignment.start].
  final MainAxisAlignment alignment;

  /// How the children should be placed along the horizontal axis.
  ///
  /// Defaults to [CrossAxisAlignment.start].
  final CrossAxisAlignment horizontalAlignment;

  /// Creates a [VStack] widget that expands to fill the available space.
  ///
  /// Children are stacked vertically in the order in which they are added.
  ///
  /// VStack height matches the height of its parent.
  ///
  /// Example:
  ///
  /// ```dart
  /// VStack.expanded([
  ///   Text('Hello'),
  ///   Text('World'),
  /// ])
  ///
  static Widget expanded(
    List<Widget> children, {
    MainAxisAlignment alignment = MainAxisAlignment.start,
    CrossAxisAlignment horizontalAlignment = CrossAxisAlignment.start,
  }) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: alignment,
        crossAxisAlignment: horizontalAlignment,
        children: children,
      ),
    );
  }

  /// Creates a [VStack] widget that is scrollable.
  ///
  /// Children are stacked vertically in the order in which they are added.
  ///
  /// VStack height matches the height of its parent. If the children exceed
  /// the height of the parent, the VStack becomes scrollable.
  ///
  /// Example:
  ///
  /// ```dart
  /// VStack.scrollable([
  ///   Text('Hello'),
  ///   Text('World'),
  /// ])
  ///
  static Widget scrollable(
    List<Widget> children, {
    MainAxisAlignment alignment = MainAxisAlignment.start,
    CrossAxisAlignment horizontalAlignment = CrossAxisAlignment.start,
  }) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: alignment,
          crossAxisAlignment: horizontalAlignment,
          children: children,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: alignment,
      crossAxisAlignment: horizontalAlignment,
      children: children,
    );
  }
}

/// A widget that displays its children in an horizontal stack.
///
/// The [HStack] widget is a wrapper around the [Row] widget with
/// some additional functionality and sensible defaults.
class HStack extends StatelessWidget {
  /// Creates a [HStack] widget.
  ///
  /// Children are stacked horizontally in the order in which they are added.
  ///
  /// HStack width matches the width of its children.
  ///
  /// Example:
  ///
  /// ```dart
  /// HStack([
  ///   Text('Hello'),
  ///   Text('World'),
  /// ])
  ///
  const HStack(
    this.children, {
    super.key,
    this.alignment = MainAxisAlignment.start,
    this.verticalAlignment = CrossAxisAlignment.center,
  });

  /// The widgets that get shown within the HStack.
  final List<Widget> children;

  /// How the children should be placed along the horizontal axis.
  ///
  /// Defaults to [MainAxisAlignment.start].
  final MainAxisAlignment alignment;

  /// How the children should be placed along the vertical axis.
  ///
  /// Defaults to [CrossAxisAlignment.center].
  final CrossAxisAlignment verticalAlignment;

  /// Creates a [HStack] widget that expands to fill the available space.
  ///
  /// Children are stacked horizontally in the order in which they are added.
  ///
  /// HStack width matches the width of its parent.
  ///
  /// Example:
  ///
  /// ```dart
  /// HStack.expanded([
  ///   Text('Hello'),
  ///   Text('World'),
  /// ])
  ///
  static Widget expanded(
    List<Widget> children, {
    MainAxisAlignment alignment = MainAxisAlignment.start,
    CrossAxisAlignment verticalAlignment = CrossAxisAlignment.center,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: alignment,
      crossAxisAlignment: verticalAlignment,
      children: children,
    );
  }

  /// Creates a [HStack] widget that is scrollable.
  ///
  /// Children are stacked horizontally in the order in which they are added.
  ///
  /// HStack width matches the width of its parent. If the children exceed
  /// the width of the parent, the HStack becomes scrollable.
  ///
  /// Example:
  ///
  /// ```dart
  /// HStack.scrollable([
  ///   Text('Hello'),
  ///   Text('World'),
  /// ])
  ///
  static Widget scrollable(
    List<Widget> children, {
    MainAxisAlignment alignment = MainAxisAlignment.start,
    CrossAxisAlignment verticalAlignment = CrossAxisAlignment.center,
  }) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: alignment,
          crossAxisAlignment: verticalAlignment,
          children: children,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: alignment,
      crossAxisAlignment: verticalAlignment,
      children: children,
    );
  }
}
