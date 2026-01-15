import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: (){},
          child: CircleAvatar(
            radius: 20,
            child: Image(image: AssetImage("assets/image/back arrow.png")),
          ),
        ),
        centerTitle: true,
        title: Image(image: AssetImage("assets/image/appber logo.png")),
      ),
    );
  }
}
