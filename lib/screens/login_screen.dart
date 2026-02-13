import 'package:flutter/material.dart';
import 'profile_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECECEC),
      body: Stack(
        children: [

         
          SizedBox(
            width: double.infinity,
            height: 480,
            child: Image.asset(
              "assets/images/third page.png",
              fit: BoxFit.cover,
            ),
          ),

          /// 
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 420,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Color(0xFFECECEC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const SizedBox(height: 10),

                  ///  LOGIN BUTTON
                  GestureDetector(
                    onTap: () {
                      //  login navigation later
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFE46A3C),
                            Color(0xFF9E3D23),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  ///  CREATE ACCOUNT BUTTON (GOES TO PROFILE)
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ProfileScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF2F6F5E),
                            Color(0xFF5FAF7F),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Create account",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 35),

                  /// 🔹 OR DIVIDER
                  Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.black38,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "or",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  /// 🔹 SOCIAL ICONS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.facebook, size: 38, color: Colors.blue),
                      SizedBox(width: 35),
                      Icon(Icons.public, size: 38, color: Colors.orange),
                      SizedBox(width: 35),
                      Icon(Icons.flutter_dash, size: 38, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


