import 'package:flutter/material.dart';

import 'components/grids.dart';
import 'components/more.dart';
import 'components/stacks.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Xtended')),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (value) =>
              setState(() => _currentIndex = value),
          selectedIndex: _currentIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.stacked_bar_chart),
              label: 'Stacks',
            ),
            NavigationDestination(
              icon: Icon(Icons.grid_3x3),
              label: 'Grids',
            ),
            NavigationDestination(
              icon: Icon(Icons.more_horiz),
              label: "More",
            )
          ],
        ),
        body: [
          const Stacks(),
          const Grids(),
          const More(),
        ][_currentIndex],
      ),
    );
  }
}
