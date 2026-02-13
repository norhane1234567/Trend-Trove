import 'package:flutter/material.dart';
import 'verify_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          ///  GREEN GRADIENT BACKGROUND
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF2F6F5E),
                  Color(0xFF5FAF7F),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          ///  ORANGE CURVED SHAPE (BOTTOM RIGHT)
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 380,
              width: 260,
              decoration: const BoxDecoration(
                color: Color(0xFFE46A3C),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(180),
                ),
              ),
            ),
          ),

          /// 🔹 PAGE CONTENT
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// 🔹 BACK BUTTON (slightly lower)
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// 🔹 PROFILE LOGO IMAGE
                  Center(
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 15,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/logo.png", 
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  /// 🔹 NAME FIELD
                  const Text(
                    "Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  _buildTextField(),

                  const SizedBox(height: 20),

                  /// 🔹 PHONE NUMBER FIELD
                  const Text(
                    "Phone number",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  _buildTextField(),

                  const SizedBox(height: 20),

                  /// 🔹 GENDER FIELD
                  const Text(
                    "Gender",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  _buildTextField(),

                  const SizedBox(height: 40),

                  /// 🔹 COMPLETE PROFILE BUTTON
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerifyScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 260,
                        height: 55,
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
                            "Complete profile",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///  Reusable TextField
  Widget _buildTextField() {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: const Color(0xFFECECEC),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
