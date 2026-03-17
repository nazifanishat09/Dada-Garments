import 'package:dada_garments/view/auth_ui/auth_ui.dart';
import 'package:dada_garments/view/auth_ui/signInScreen.dart';
import 'package:dada_garments/view/homeUi/homeUi.dart';
import 'package:dada_garments/view/product/product.dart';
import 'package:dada_garments/view/productDetails/productDetailsScreen.dart';
import 'package:dada_garments/view/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
  configLoading();

}
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom // এটি 'custom' না দিলে নিচের কালার কাজ করবে না
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..backgroundColor = Colors.orange // বক্সের ব্যাকগ্রাউন্ড কালার
    ..indicatorColor = Colors.white   // টিক মার্ক বা লোডিং এর কালার
    ..textColor = Colors.white        // লেখার কালার
    ..maskColor = Colors.red.withOpacity(0.5)
    ..userInteractions = false
    ..dismissOnTap = false;
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      builder: EasyLoading.init(),
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.orange,
          selectionColor: Colors.orange[100],
          selectionHandleColor: Colors.orange,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
