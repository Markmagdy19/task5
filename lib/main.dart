import 'package:flutter/material.dart';
import 'package:task5/ui/screens/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthCheck(),
    );
  }
}

class AuthCheck extends StatelessWidget {
  // Mock function to simulate checking if the user is logged in
  Future<bool> checkUserLoggedIn() async {
    // Simulate a network call or shared preferences check
    await Future.delayed(const Duration(seconds: 2)); // Simulate loading time
    // Change the return value to 'true' if you want the user to be "logged in" by default
    return false; // Currently, it will always show the login screen first
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: checkUserLoggedIn(),
      builder: (context, snapshot) {
        // If the future is still loading
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        // If the user is logged in, show the HomeScreen
        if (snapshot.hasData && snapshot.data == true) {
         // return HomeScreen();
        }
        // Otherwise, show the LoginScreen
        return AuthScreen();
      },
    );
  }
}



