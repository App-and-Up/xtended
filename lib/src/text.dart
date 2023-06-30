import 'package:flutter/widgets.dart';

/// A collection of useful extensions for the [Text] widget.
extension TextXtended on Text {
  /// Adds a [TextAlign] property to the [Text] widget.
  ///
  /// Example:
  ///
  /// ```dart
  /// Text('Hello').textAlign(TextAlign.center)
  /// ```
  ///
  Text textAlign(TextAlign align) {
    return _copyWith(
      textAlign: align,
    );
  }

  /// Adds a bold [FontWeight] property to the [Text] widget.
  ///
  /// This is a shortcut for:
  ///
  /// ```dart
  /// Text('Hello').fontWeight(FontWeight.bold)
  /// ```
  ///
  /// Example:
  ///
  /// ```dart
  /// Text('Hello').bold()
  /// ```
  ///
  Text bold() {
    return _copyWith(
        style: style?.copyWith(fontWeight: FontWeight.bold) ??
            const TextStyle().copyWith(fontWeight: FontWeight.bold));
  }

  /// Adds a [FontWeight] property to the [Text] widget.
  ///
  /// Example:
  ///
  /// ```dart
  /// Text('Hello').fontWeight(FontWeight.w500)
  /// ```
  ///
  Text fontWeight(FontWeight weight) {
    return _copyWith(
        style: style?.copyWith(fontWeight: weight) ??
            const TextStyle().copyWith(fontWeight: weight));
  }

  /// Sets the fontSize for the [Text] widget.
  ///
  /// Example:
  ///
  /// ```dart
  /// Text('Hello').fontSize(20)
  /// ```
  ///
  Text fontSize(double size) {
    return _copyWith(
        style: style?.copyWith(fontSize: size) ??
            const TextStyle().copyWith(fontSize: size));
  }

  /// Sets the color for the [Text] widget.
  ///
  /// Example:
  ///
  /// ```dart
  /// Text('Hello').color(Colors.red)
  /// ```
  ///
  Text color(Color color) {
    return _copyWith(
      style: style?.copyWith(color: color) ??
          const TextStyle().copyWith(color: color),
    );
  }

  Text _copyWith({TextAlign? textAlign, TextStyle? style}) {
    return Text(
      data!,
      style: style ?? this.style,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
    );
  }
}
