import 'package:flutter/material.dart';
import 'Screen/mainPage.dart';
import 'Screen/homePage.dart';
import 'Widgets/appBar_Drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: DrawerExampleApp(),
      //home: const MyHomePage(title: 'BEST Almada'),
    );
  }
}
