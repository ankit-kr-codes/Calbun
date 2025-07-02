import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        children: [
          //Hero Banner
          Container(
            height: size.height * 0.3,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/1.webp"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "Calbun",
                style: TextStyle(
                  fontFamily: "Delius_Swash_Caps",
                  color: AppColors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          //Texts
          SizedBox(height: size.height * 0.1),
          Text(
            "Your journey to a healthier you starts here",
            style: TextStyle(
              fontFamily: "Delius_Swash_Caps",
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Track your foods, count calories, and workouts all in one place",
              style: TextStyle(
                fontFamily: "Delius_Swash_Caps",
                fontSize: 16,
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 40),

          //Buttons
          GestureDetector(
            onTap: () {
              context.push("/signup");
            },
            child: Container(
              width: size.width * 0.9,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                textAlign: TextAlign.center,
                "Sign Up",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              context.push('/login');
            },
            child: Container(
              width: size.width * 0.9,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.softGreen,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                textAlign: TextAlign.center,
                "Login",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              context.push('/home');
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),

      //ToS and Privacy Policy
      bottomSheet: Container(
        color: const Color.fromRGBO(249, 251, 249, 1),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Text(
          textAlign: TextAlign.center,
          "By continuing, you agree to our Terms of Service and Privacy Policy",
          style: TextStyle(color: AppColors.primary),
        ),
      ),
    );
  }
}
