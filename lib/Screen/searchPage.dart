import 'package:calendar_timeline/Screen/qrcode.dart';
import 'package:flutter/material.dart';

import '../Widgets/appBar.dart';
import '../Widgets/drawerBar.dart';
import '../Widgets/likeButton.dart';
import '../Widgets/navigationBar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DrawerExampleApp(),
      drawer: DrawerExample(),
      drawerEnableOpenDragGesture: true,
      body: Center(
        //child: Text('Hello, World!'),
        child: Text('yolo'),
      ),
      bottomNavigationBar: NavigationBarMain(initialIndex: 1),
    );
  }
}
