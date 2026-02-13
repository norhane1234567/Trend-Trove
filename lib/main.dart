import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';


void main() {
  runApp(const TrendTroveApp());
}

class TrendTroveApp extends StatelessWidget {
  const TrendTroveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
 home: SplashScreen(),

    );
  }
}
