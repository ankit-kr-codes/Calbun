import 'package:calbun/core/custom_widget.dart';
import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        forceMaterialTransparency: true,
        title: const Text(
          "Today",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          GestureDetector(
            onTap: () => context.push("/profile"),
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile.jpg',
                fit: BoxFit.cover,
                height: 35,
                width: 35,
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Calories",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "1200/1200",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              LinearProgressIndicator(
                value: 0.6,
                minHeight: 10,
                borderRadius: BorderRadius.circular(10),
              ),
              const SizedBox(height: 10),
              Text(
                "60% of your daily goal",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: isDark
                      ? AppColors.darkPrimary
                      : AppColors.lightPrimary,
                  fontSize: 12,
                ),
              ),

              section(
                "Macros",
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return const SquaredBoxedContainer(
                      bordered: true,
                      margin: EdgeInsets.all(4),
                      borderWidth: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Protien",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "20g",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              section(
                "Meals",
                const Column(
                  children: [
                    DataTile(
                      title: "Breakfast",
                      unit: "Calories",
                      value: 231,
                      iconData: Icons.free_breakfast_outlined,
                    ),
                    SizedBox(height: 20),
                    DataTile(
                      title: "Lunch",
                      unit: "Calories",
                      value: 400,
                      iconData: Icons.lunch_dining_outlined,
                    ),
                    SizedBox(height: 20),
                    DataTile(
                      title: "Dinner",
                      unit: "Calories",
                      value: 700,
                      iconData: Icons.dinner_dining_outlined,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              section(
                "Workouts",
                const Column(
                  children: [
                    DataTile(
                      title: "Morning Run",
                      unit: "minutes",
                      value: 30,
                      iconData: Icons.run_circle_outlined,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              section(
                "Meditation",
                const Column(
                  children: [
                    DataTile(
                      title: "Mindfulness Session",
                      unit: "minutes",
                      value: 15,
                      iconData: Icons.self_improvement,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 60,
        width: 140,
        decoration: BoxDecoration(
          color: isDark ? AppColors.darkPrimary : AppColors.lightPrimary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: AppColors.white),
            const SizedBox(width: 5),
            Text("Add Entry", style: TextStyle(color: AppColors.white)),
          ],
        ),
      ),
    );
  }
}

Widget section(String title, Widget widget) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 20),
      Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      const SizedBox(height: 20),
      widget,
    ],
  );
}
