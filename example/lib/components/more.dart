import 'package:flutter/material.dart' hide Action;
import 'package:xtended/xtended.dart';

class More extends StatelessWidget {
  const More({super.key});

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return VStack.scrollable([
      const Text('Actions').fontSize(24).bold(),
      const Text(
        'Actions allow you to specify a behaviour whenever you tap, double tap or long press any widget.',
      ),
      const SizedBox(height: 16),
      ColoredBox(
        color: Colors.deepPurple,
        child: const Text("Tap, double tap or long press me!")
            .color(Colors.white)
            .centered()
            .padding([Edge.horizontal], 16).padding([Edge.vertical], 4),
      )
          .action(() => showSnackBar(context, 'Tapped!'))
          .action(
            () => showSnackBar(context, 'Double tapped!'),
            Action.doubleTap,
          )
          .action(
            () => showSnackBar(context, 'Long pressed!'),
            Action.longPress,
          ),
    ]).padding([Edge.all], 16);
  }
}
