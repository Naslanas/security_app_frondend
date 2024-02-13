import 'package:flutter/material.dart';
import 'package:security_app/pages/adminLogin.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: adminLogin(),
    );
  }
}

