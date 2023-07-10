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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              isSelected: standardSelected,
              icon: const Icon(Icons.favorite_border_outlined),
              selectedIcon: const Icon(Icons.favorite),
              onPressed: () {
                setState(() {
                  standardSelected = !standardSelected;
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton.outlined(
              isSelected: outlinedSelected,
              icon: const Icon(Icons.upload_file),
              selectedIcon: const Icon(Icons.settings),
              onPressed: () {
                setState(() {
                  outlinedSelected = !outlinedSelected;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
