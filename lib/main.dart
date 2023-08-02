import 'package:flutter/material.dart';
import 'Screen/LogIn/ThirdImformationPage.dart';
import 'Screen/LogIn/signUpPage.dart';
import 'Screen/LogIn/singInPage.dart';
import 'Screen/PublicPages/mainPage.dart';
import 'Screen/SplashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => SplashPage(),
        '/third': (_) => ThirdImformationPage(),
        '/login': (_) => SimpleLoginScreen(),
        '/signin': (_) => SimpleRegisterScreen(),
        '/home': (_) => MainScreen()
      },
    );
  }
}


      /*   ? BegginingPage() //SimpleLoginScreen(onSubmitted: _login)
              : MainScreen(index: 0),*/
      //home: MainScreen(index: 0),
      //home: BegginingPage(),