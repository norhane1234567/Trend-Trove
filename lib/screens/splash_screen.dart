import 'dart:async';
import 'package:flutter/material.dart';
import 'video_screen.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  int _activeDot = 0;
  late Timer _dotTimer;

  @override
  void initState() {
    super.initState();

    // Animate dots every 500ms
    _dotTimer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        _activeDot = (_activeDot + 1) % 4;
      });
    });

    // Navigate after 3 seconds → GO TO VIDEO SCREEN
    Timer(const Duration(seconds: 3), () {
      _dotTimer.cancel(); // stop animation
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const VideoScreen(), 
        ),
      );
    });
  }

  @override
  void dispose() {
    _dotTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFB04A2F),
              Color(0xFF7A2F1D),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// 🔹 LOGO
            Image.asset(
              "assets/images/logo.png", 
              
              width: 180,
            ),

            const SizedBox(height: 30),

            /// 🔹 APP NAME
            const Text(
              "TRENDTROVE",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                color: Colors.white,
                letterSpacing: 3,
              ),
            ),

            const SizedBox(height: 40),

            ///  ANIMATED DOTS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: _activeDot == index ? 14 : 10,
                    height: _activeDot == index ? 14 : 10,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(
                        _activeDot == index ? 1 : 0.4,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}



