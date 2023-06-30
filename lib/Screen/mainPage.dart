import 'package:calendar_timeline/Screen/qrcode.dart';
import 'package:flutter/material.dart';

import '../Widgets/appBar.dart';
import '../Widgets/drawerBar.dart';
import '../Widgets/navigationBar.dart';

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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QRViewExample()),
          );
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
