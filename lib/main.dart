import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginRes.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Auth',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/register': (context) => RegistrationPage(),
      },
    );
  }
}
