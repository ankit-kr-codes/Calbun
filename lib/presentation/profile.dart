import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        // actions: [
        //   GestureDetector(
        //     onTap: () => context.go('/settings'),
        //     child: const Icon(CupertinoIcons.gear),
        //   ),
        //   const SizedBox(width: 10),
        //   //
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile.jpg',
                  fit: BoxFit.cover,
                  height: 180,
                  width: 180,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                textAlign: TextAlign.center,
                "Ankit Kumar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  //
                ),
              ),
            ),
            const SizedBox(height: 3),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Fitness Enthusiast",
                style: TextStyle(color: AppColors.primary),
              ),
            ),
            const SizedBox(height: 3),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Joined 2025",
                style: TextStyle(color: AppColors.primary),
                //
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(3),
                  width: mediaQuery.width * 0.45,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.softGreen,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "250",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Workouts",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(3),
                  width: mediaQuery.width * 0.45,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.softGreen,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "4300",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Kcal Burned",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(3),
              width: double.maxFinite,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.softGreen,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "30",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Meditation Streaks",
                    style: TextStyle(color: AppColors.primary),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "Personal Info",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                //
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
