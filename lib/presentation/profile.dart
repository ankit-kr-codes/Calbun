import 'package:calbun/core/custom_widget.dart';
import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              context.push('/profileSettings');
            },
            child: const Icon(Icons.edit_rounded),
          ),
          const SizedBox(width: 10),
          //
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const ProfilePicture(),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Ankit Kumar",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const SizedBox(height: 3),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Fitness Enthusiast",
                  style: TextStyle(
                    color: isDark
                        ? AppColors.darkPrimary
                        : AppColors.lightPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Joined 2025",
                  style: TextStyle(
                    color: isDark
                        ? AppColors.darkPrimary
                        : AppColors.lightPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SquaredBoxedContainer(
                      bordered: false,
                      margin: const EdgeInsets.all(3),
                      width: double.infinity,
                      height: 150,
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
                            style: TextStyle(
                              color: isDark
                                  ? AppColors.darkPrimary
                                  : AppColors.lightPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SquaredBoxedContainer(
                      bordered: false,
                      margin: const EdgeInsets.all(3),
                      width: double.infinity,
                      height: 150,
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
                            style: TextStyle(
                              color: isDark
                                  ? AppColors.darkPrimary
                                  : AppColors.lightPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SquaredBoxedContainer(
                bordered: false,
                margin: const EdgeInsets.all(3),
                width: double.maxFinite,
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "30",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Meditation Streaks",
                      style: TextStyle(
                        color: isDark
                            ? AppColors.darkPrimary
                            : AppColors.lightPrimary,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                "Goals",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 20),
              goalTile("Weight Goal", "87Kg", "75Kg", isDark),
              goalTile("Running Pace", "5k in 30 min", "5k in 20 min", isDark),

              const SizedBox(height: 20),
              const Text(
                "Recent Activities",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 20),
              recentActivity(
                "Morning Walk",
                "2000 steps",
                "Today",
                Icons.directions_walk_outlined,
                isDark,
              ),
              recentActivity(
                "Morning Walk",
                "2000 steps",
                "Today",
                Icons.directions_walk_outlined,
                isDark,
              ),
              recentActivity(
                "Morning Walk",
                "2000 steps",
                "Today",
                Icons.directions_walk_outlined,
                isDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget goalTile(String goalName, String current, String target, bool isDark) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                goalName,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                "Current : $current",
                style: TextStyle(
                  color: isDark
                      ? AppColors.darkSecondary
                      : AppColors.lightSecondary,
                ),
              ),
            ],
          ),
          Text(target, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
      const SizedBox(height: 20),
    ],
  );
}

Widget recentActivity(
  String activityName,
  String valueOfActivity,
  String date,
  IconData icon,
  bool isDark,
) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SquaredBoxedContainer(
            height: 50,
            width: 50,
            bordered: false,
            child: Icon(icon, size: 28),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                activityName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                valueOfActivity,
                style: TextStyle(
                  color: isDark
                      ? AppColors.darkSecondary
                      : AppColors.lightSecondary,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(date, style: TextStyle(color: AppColors.grey)),
        ],
      ),
      const SizedBox(height: 20),
    ],
  );
}
