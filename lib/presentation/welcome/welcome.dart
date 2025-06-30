import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/leafs.webp"),
            opacity: 0.7,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: size.width),
              Text(
                "Calbun",
                style: TextStyle(
                  fontFamily: "Delius_Swash_Caps",
                  color: AppColors.white,
                  fontSize: 50,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.1),
              Text(
                "Track your calories, macros, and workouts  all in one place",
                style: TextStyle(
                  fontFamily: "Delius_Swash_Caps",
                  fontSize: 16,
                  color: AppColors.white,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: size.height * 0.1),
              GestureDetector(
                onTap: () {
                  context.push("/form1");
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Wrap(
                    spacing: 16,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(color: AppColors.white, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: AppColors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
