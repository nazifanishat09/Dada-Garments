import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../auth_ui/auth_ui.dart';
import '../product/product.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  autoNavigate() async {
    FlutterSecureStorage storage = FlutterSecureStorage();
    var t = await storage.read(key: "token");
    if (t == null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (a) => LogInScreen()),
      );
    } else { Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (a) => ProductScreen()),
    );
      log("===$t");
    }
  }

  @override
  void initState() {
    autoNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image(image: AssetImage("assets/image/splash.png"))),
    );
  }
}
