import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/profile_page.dart';
import 'screens/pesticide_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Define initial route (replace with your preference)
  static const String initialRoute = '/';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: initialRoute, // Set initial route
      routes: {
        '/': (context) => const SignInScreen(), // Sign In as initial route
        '/sign_up': (context) => const SignUpScreen(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
