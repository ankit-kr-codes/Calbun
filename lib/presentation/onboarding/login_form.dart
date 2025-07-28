import 'package:calbun/core/custom_widget.dart';
import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        title: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              // cursorColor: AppColors.darkGreen,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 1,
                ),
                hintText: "Email",
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              // cursorColor: AppColors.darkGreen,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 1,
                ),
                hintText: "Password",
              ),
            ),
            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                context.go('/home');
              },
              child: PrimaryThemedContainer(
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Login",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
