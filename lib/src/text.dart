import 'package:flutter/widgets.dart';

extension TextXtended on Text {
  Text textAlign(TextAlign align) {
    return copyWith(
        textAlign: align,
    );
  }

  Text bold() {
    return copyWith(
        style: style?.copyWith(fontWeight: FontWeight.bold) ??
            const TextStyle().copyWith(fontWeight: FontWeight.bold));
  }

  Text fontWeight(FontWeight weight) {
    return copyWith(
        style: style?.copyWith(fontWeight: weight) ??
            const TextStyle().copyWith(fontWeight: weight));
  }

  Text fontSize(double size) {
    return copyWith(
        style: style?.copyWith(fontSize: size) ??
            const TextStyle().copyWith(fontSize: size));
  }

  Text color(Color color) {
    return copyWith(
      style: style?.copyWith(color: color) ??
          const TextStyle().copyWith(color: color),
    );
  }

  Text copyWith({TextAlign? textAlign, TextStyle? style}) {
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