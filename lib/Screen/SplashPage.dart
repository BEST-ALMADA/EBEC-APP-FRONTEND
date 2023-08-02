import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {
  @override
  void initState() {
    // Simulate some delay for initialization or data loading
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/third');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'lib/images/best_logo.png',
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}



/*
child: CircularProgressIndicator(), // Use any loading indicator widget*/