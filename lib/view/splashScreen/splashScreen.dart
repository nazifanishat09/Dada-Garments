import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../auth_ui/auth_ui.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  autoNavigate() async {
    FlutterSecureStorage storage = FlutterSecureStorage();
    var t = storage.read(key: "token");
    await Future.delayed(Duration(seconds:5));
    Navigator.push(context, MaterialPageRoute(builder: (a) => LogInScreen()));
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
