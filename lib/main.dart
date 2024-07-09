import 'package:flutter/material.dart';
import 'package:gym/screens/authentication_screen.dart';
import 'package:gym/screens/exercise_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     home: AuthenticationScreen()
    );
  }
} 
