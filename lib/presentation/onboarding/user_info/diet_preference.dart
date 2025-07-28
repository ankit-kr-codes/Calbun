import 'package:calbun/core/custom_widget.dart';
import 'package:calbun/core/theme.dart';
import 'package:calbun/data/food_database_region_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DietPreference extends StatelessWidget {
  const DietPreference({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    Size size = MediaQuery.of(context).size;

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
              const LinearProgressIndicator(value: 3 / 3),
              const SizedBox(height: 20),
              Text(
                "Final step!",
                style: TextStyle(
                  color: isDark
                      ? AppColors.darkPrimary
                      : AppColors.lightPrimary,
                ),
              ),

              const SizedBox(height: 30),
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
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: const TertiaryThemedContainer(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Go Back",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.go("/home");
                      },
                      child: PrimaryThemedContainer(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Submit",
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
            ],
          ),
        ),
      ),
    );
  }
}
