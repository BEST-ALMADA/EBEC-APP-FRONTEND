import 'package:flutter/material.dart';

/// Flutter code sample for [IconButton] with toggle feature.

class IconButtonToggleApp extends StatelessWidget {
  const IconButtonToggleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 252, 53, 53),
        useMaterial3: true,
      ),
      title: 'Icon Button Types',
      home: const Scaffold(
        body: DemoIconToggleButtons(),
      ),
    );
  }
}

class DemoIconToggleButtons extends StatefulWidget {
  const DemoIconToggleButtons({super.key});

  @override
  State<DemoIconToggleButtons> createState() => _DemoIconToggleButtonsState();
}

class _DemoIconToggleButtonsState extends State<DemoIconToggleButtons> {
  bool standardSelected = false;
  bool filledSelected = false;
  bool tonalSelected = false;
  bool outlinedSelected = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      isSelected: standardSelected,
      icon: const Icon(Icons.favorite_border_outlined),
      selectedIcon: const Icon(Icons.favorite),
      onPressed: () {
        setState(() {
          standardSelected = !standardSelected;
        });
      },
    );
  }
}
