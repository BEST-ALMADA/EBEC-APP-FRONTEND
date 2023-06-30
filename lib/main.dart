import 'package:flutter/material.dart';
import 'Screen/loadingPage.dart';
import 'Screen/LogIn/singInPage.dart';
import 'Screen/mainPage.dart';
//import 'Screen/homePage.dart';
//import 'Widgets/appBar_Drawer.dart';
//import 'Widgets/navBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;
  bool _notLoggedIn = true;

  void _login(String? email, String? password) async {
    setState(() {
      _notLoggedIn = false;
    });
  }

  @override
  void initState() {
    // Simulate some delay for initialization or data loading
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: _isLoading
          ? const LoadingPage()
          : _notLoggedIn
              ? SimpleLoginScreen(onSubmitted: _login)
              : AppMainPage(),
      //home: const MyHomePage(title: 'BEST Almada'),
    );
  }
}
