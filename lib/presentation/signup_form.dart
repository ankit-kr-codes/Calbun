import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Register",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              cursorColor: AppColors.darkGreen,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 1,
                ),
                hintText: "Full Name",
                hintStyle: TextStyle(
                  color: AppColors.darkGreen,
                  fontFamily: "Lexend",
                ),
                filled: true,
                fillColor: AppColors.softGreen,
                border: border,
                enabledBorder: border,
                focusedBorder: border,
              ),
              style: TextStyle(color: AppColors.darkGreen),
            ),
            const SizedBox(height: 20),
            TextField(
              cursorColor: AppColors.darkGreen,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 1,
                ),
                hintText: "Email",
                hintStyle: TextStyle(
                  color: AppColors.darkGreen,
                  fontFamily: "Lexend",
                ),
                filled: true,
                fillColor: AppColors.softGreen,
                border: border,
                enabledBorder: border,
                focusedBorder: border,
              ),
              style: TextStyle(color: AppColors.darkGreen),
            ),
            const SizedBox(height: 20),
            TextField(
              cursorColor: AppColors.darkGreen,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 1,
                ),
                hintText: "Password",
                hintStyle: TextStyle(
                  color: AppColors.darkGreen,
                  fontFamily: "Lexend",
                ),
                filled: true,
                fillColor: AppColors.softGreen,
                border: border,
                enabledBorder: border,
                focusedBorder: border,
              ),
              style: TextStyle(color: AppColors.darkGreen),
            ),
            const SizedBox(height: 20),
            TextField(
              cursorColor: AppColors.darkGreen,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 1,
                ),
                hintText: "Confirm Password",
                hintStyle: TextStyle(
                  color: AppColors.darkGreen,
                  fontFamily: "Lexend",
                ),
                filled: true,
                fillColor: AppColors.softGreen,
                border: border,
                enabledBorder: border,
                focusedBorder: border,
              ),
              style: TextStyle(color: AppColors.darkGreen),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Register",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Already have an account? Sign in",
              style: TextStyle(
                color: AppColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
