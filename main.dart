import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the login page

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vocabulary App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(), // Set the initial page to LoginPage
    );
  }
}
