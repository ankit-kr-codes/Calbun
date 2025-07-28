import 'package:calbun/core/custom_widget.dart';
import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BasicInfo extends StatelessWidget {
  const BasicInfo({super.key});

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
              const LinearProgressIndicator(value: 1 / 3),
              const SizedBox(height: 20),
              Text(
                "Step 1 of 3",
                style: TextStyle(
                  color: isDark
                      ? AppColors.darkPrimary
                      : AppColors.lightPrimary,
                ),
              ),

              // const SizedBox(height: 20),
              // const Center(
              //   child: Text(
              //     "Basic Info",
              //     style: TextStyle(fontWeight: FontWeight.bold),
              //   ),
              // ),
              const SizedBox(height: 30),
              const Text(
                "Current Weight",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              field(isDark, "Enter your current weight", 'kg', ['kg', 'lbs']),
              const SizedBox(height: 30),

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
              const SizedBox(height: 30),

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

              const SizedBox(height: 30),
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

              const SizedBox(height: 30),
              Center(
                child: GestureDetector(
                  onTap: () {
                    context.push("/goals");
                  },
                  child: PrimaryThemedContainer(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
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
