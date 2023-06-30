import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key, required VoidCallback loginCallback})
      : _loginCallback = loginCallback,
        super(key: key);

  final VoidCallback _loginCallback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Perform the login process here
            // Once login is successful, navigate to the main page (AppMainPage)
            _loginCallback();
            /* Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AppMainPage(),
              ),
            );*/
          },
          child: const Text('Log In'),
        ),
      ),
    );
  }
}
