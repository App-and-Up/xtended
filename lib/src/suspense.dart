import 'package:flutter/widgets.dart';

/// A widget that displays a fallback widget while waiting for a future to complete.
/// 
/// The [Suspense] widget is a wrapper around the [FutureBuilder] widget with
/// some additional functionality and sensible defaults.
/// 
/// Example:
/// 
/// ```dart
/// Suspense<String>(
///   future: Future.value('Hello World'),
///   fallback: const CircularProgressIndicator(),
///   builder: (data) => Text(data ?? ''),
/// )
/// ```
/// 
class Suspense<T> extends StatefulWidget {
  /// Creates a [Suspense] widget.
  const Suspense({
    super.key,
    required this.future,
    required this.fallback,
    required this.builder,
  });

  /// The future to wait for.
  /// 
  /// The future must return a value of type [T].
  /// 
  /// Example:
  /// 
  /// ```dart
  /// Future<String> _asyncString() async {
  ///   await Future.delayed(const Duration(seconds: 2));
  ///   return 'Hello World';
  /// }
  /// 
  final Future<T> future;

  /// The widget to display while waiting for the future to complete.
  /// 
  final Widget fallback;

  /// The widget to display once the future has completed.
  /// 
  final Widget Function(T? data) builder;

  @override
  State<Suspense<T>> createState() => _SuspenseState<T>();
}

class _SuspenseState<T> extends State<Suspense<T>> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: widget.future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return widget.builder(snapshot.data);
        } else {
          return widget.fallback;
        }
      },
    );
  }
}


