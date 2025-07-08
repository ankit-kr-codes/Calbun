import 'package:calbun/core/custom_widget.dart';
import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        centerTitle: true,
        title: const Text(
          "Your Information",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LinearProgressIndicator(value: 2 / 3),
              const SizedBox(height: 20),
              Text(
                "Step 2 of 3",
                style: TextStyle(
                  color: isDark
                      ? AppColors.darkPrimary
                      : AppColors.lightPrimary,
                ),
              ),

              const SizedBox(height: 30),
              const Text(
                "Weight Goal",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              field(isDark, "Enter your weight goal", 'kg', ['kg', 'lbs']),
              const SizedBox(height: 30),

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

              const SizedBox(height: 30),
              Center(
                child: GestureDetector(
                  onTap: () {
                    context.push("/dietpreference");
                  },
                  child: PrimaryThemedContainer(
                    child: Text(
                      "Continue",
                      style: TextStyle(color: AppColors.white),
                    ),
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

Widget field(bool isDark, String hintText, String? value, List<String> items) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 1,
            ),
            hintText: hintText,
          ),
        ),
      ),
      const SizedBox(width: 10),
      DropdownButton<String>(
        value: value ?? items.first,
        dropdownColor: isDark
            ? AppColors.darkTertiary
            : AppColors.lightTertiary,
        focusColor: AppColors.transparent,
        borderRadius: BorderRadius.circular(10),
        elevation: 0,
        items: items.map((String val) {
          return DropdownMenuItem<String>(value: val, child: Text(val));
        }).toList(),
        onChanged: (newValue) {
          // handle change
        },
      ),
    ],
  );
}
