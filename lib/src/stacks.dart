import 'package:flutter/widgets.dart';
import 'package:xtended/src/padding.dart';

class VStack extends StatelessWidget {
  const VStack(
    this.children, {
    super.key,
    this.alignment = MainAxisAlignment.start,
    this.horizontalAlignment = CrossAxisAlignment.start,
  });

  final List<Widget> children;
  final MainAxisAlignment alignment;
  final CrossAxisAlignment horizontalAlignment;

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

class HStack extends StatelessWidget {
  const HStack(
    this.children, {
    super.key,
    this.alignment = MainAxisAlignment.start,
  });

  final List<Widget> children;
  final MainAxisAlignment alignment;

  static expanded(List<Widget> children,
      {MainAxisAlignment alignment = MainAxisAlignment.start}) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: alignment,
      children: children,
    );
  }

  static Widget scrollable(
    List<Widget> children, {
    MainAxisAlignment alignment = MainAxisAlignment.start,
    CrossAxisAlignment horizontalAlignment = CrossAxisAlignment.center,
  }) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: alignment,
      children: children,
    );
  }
}

// This is needed because Column and Row are not subclasses of Widget
// they extend Flex instead
extension HStackX on HStack {
  Widget padding(List<Edge> edges, double value) {
    return Padding(
      padding: edges.fold(EdgeInsets.zero, (previousValue, element) {
        return previousValue.add(element.toEdgeInsets(value));
      }),
      child: this,
    );
  }
}

extension VStackX on VStack {
  Widget padding(List<Edge> edges, double value) {
    return Padding(
      padding: edges.fold(EdgeInsets.zero, (previousValue, element) {
        return previousValue.add(element.toEdgeInsets(value));
      }),
      child: this,
    );
  }
}
