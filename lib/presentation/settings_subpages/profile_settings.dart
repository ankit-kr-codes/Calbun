import 'package:calbun/core/custom_widget.dart';
import 'package:calbun/core/theme.dart';
import 'package:calbun/data/food_database_region_data.dart';
import 'package:calbun/presentation/onboarding/user_info/goals.dart';
import 'package:flutter/material.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        title: const Text(
          "Profile Settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Change your name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const TextField(
                // cursorColor: AppColors.darkGreen,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 1,
                  ),
                  hintText: "Change your name",
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Current Weight",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              field(isDark, "Enter your current weight", 'kg', ['kg', 'lbs']),
              const SizedBox(height: 20),

              const Text(
                "Height",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              field(isDark, "Enter your current height", 'cm', [
                'cm',
                'ft',
                'inch',
              ]),
              const SizedBox(height: 20),

              const Text("Age", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const TextField(
                // cursorColor: AppColors.darkGreen,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 1,
                  ),
                  hintText: "Enter your age",
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                "Gender",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: BorderedRadioTile(
                      title: const Text("Male"),
                      value: "value",
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0.1,
                        vertical: 0.1,
                      ),
                      width: double.maxFinite,
                      onChanged: (p0) {},
                      groupValue: "groupValue",
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: BorderedRadioTile(
                      title: const Text("Female"),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0.1,
                        vertical: 0.1,
                      ),
                      value: "value",
                      width: double.maxFinite,
                      onChanged: (p0) {},
                      groupValue: "groupValue",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              BorderedRadioTile(
                title: const Text("Prefer not to say"),
                padding: const EdgeInsets.symmetric(
                  horizontal: 0.1,
                  vertical: 0.1,
                ),
                value: "value",
                width: double.maxFinite,
                onChanged: (p0) {},
                groupValue: "groupValue",
              ),
              const SizedBox(height: 20),
              const Text(
                "Weight Goal",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              field(isDark, "Enter your weight goal", 'kg', ['kg', 'lbs']),
              const SizedBox(height: 20),

              const Text(
                "Activity Level",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              BorderedRadioTile(
                title: const Text("No Activity"),
                subtitle: const Text("No work, I'm lazy"),
                value: "value",
                groupValue: "groupValue",
                onChanged: (p0) {},
              ),
              const SizedBox(height: 10),
              BorderedRadioTile(
                title: const Text("Sedentary"),
                subtitle: const Text("Office work, minimal walking"),
                value: "value",
                groupValue: "groupValue",
                onChanged: (p0) {},
              ),
              const SizedBox(height: 10),
              BorderedRadioTile(
                title: const Text("Light Active"),
                subtitle: const Text(
                  "Light walking, casual biking, or household chores",
                ),
                value: "value",
                groupValue: "groupValue",
                onChanged: (p0) {},
              ),
              const SizedBox(height: 10),
              BorderedRadioTile(
                title: const Text("Moderately Active"),
                subtitle: const Text("Gym session, running, or active jobs"),
                value: "value",
                groupValue: "groupValue",
                onChanged: (p0) {},
              ),
              const SizedBox(height: 10),
              BorderedRadioTile(
                title: const Text("Very Active"),
                subtitle: const Text(
                  "Pro athelets, military training, or jobs with continuous high physical activity",
                ),
                value: "value",
                groupValue: "groupValue",
                onChanged: (p0) {},
              ),

              const SizedBox(height: 20),
              const Text(
                "Food Database Region",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: double.maxFinite,
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isDark
                        ? AppColors.darkTertiary
                        : AppColors.lightTertiary,
                  ),
                ),
                child: DropdownMenu(
                  menuHeight: size.height * 0.4,
                  width: double.maxFinite,
                  menuStyle: MenuStyle(
                    elevation: const WidgetStatePropertyAll(0),
                    backgroundColor: isDark
                        ? WidgetStatePropertyAll(AppColors.darkTertiary)
                        : WidgetStatePropertyAll(AppColors.lightTertiary),
                  ),
                  dropdownMenuEntries: foodDatabaseCountries,
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: PrimaryThemedContainer(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Save Changes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
