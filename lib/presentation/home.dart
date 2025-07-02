import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
          const Icon(CupertinoIcons.gear, size: 26),
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
                color: AppColors.primary,
                backgroundColor: AppColors.softGreen,
              ),
              const SizedBox(height: 10),
              Text(
                "60% of your daily goal",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                  fontSize: 12,
                ),
              ),

              section(
                "Macros",
                SizedBox(
                  height: 250,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.5,
                        ),
                    itemCount: 4,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: AppColors.softGreen02,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: AppColors.darkGreen,
                            width: 2,
                          ),
                        ),
                        child: const Column(
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
              ),
              section(
                "Meals",
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.softGreen,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.free_breakfast_outlined,
                            color: AppColors.darkGreen,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Breakfast",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "400 Calories",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.softGreen,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.lunch_dining_outlined,
                            color: AppColors.darkGreen,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Lunch",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "400 Calories",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.softGreen,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.dinner_dining_rounded,
                            color: AppColors.darkGreen,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Dinner",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "400 Calories",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              section(
                "Workouts",
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.softGreen,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.run_circle_outlined,
                            color: AppColors.darkGreen,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Morining Run",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "30 minutes",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              section(
                "Meditation",
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.softGreen,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.self_improvement,
                            color: AppColors.darkGreen,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Mindfulness Session",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "15 minutes",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 50,
        width: 130,
        decoration: BoxDecoration(
          color: AppColors.primary,
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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        unselectedItemColor: AppColors.black,
        selectedItemColor: AppColors.darkGreen,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
            //
          ),
          BottomNavigationBarItem(
            label: "Meal",
            icon: Icon(Icons.room_service_outlined),
          ),
          BottomNavigationBarItem(
            label: "Workout",
            icon: Icon(Icons.fitness_center_outlined),
          ),
          BottomNavigationBarItem(
            label: "Meditation",
            icon: Icon(Icons.self_improvement_outlined),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
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
