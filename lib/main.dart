import 'package:dada_garments/view/auth_ui/auth_ui.dart';
import 'package:dada_garments/view/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LogInScreen());
  }
}
