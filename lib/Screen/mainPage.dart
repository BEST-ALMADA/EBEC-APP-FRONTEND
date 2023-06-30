import 'package:flutter/material.dart';

import '../Widgets/appBar_Drawer.dart';
import '../Widgets/navBar.dart';
import '../Widgets/navBarMain.dart';

class AppMainPage extends StatefulWidget {
  const AppMainPage({super.key});

  @override
  State<AppMainPage> createState() => _MainPage();
}

class _MainPage extends State<AppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DrawerExampleApp(),
      drawer: DrawerExample(),
      drawerEnableOpenDragGesture: true,
      body: Center(
        child: Text('Hello, World!'),
      ),
      bottomNavigationBar: NavigationBarMain(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
