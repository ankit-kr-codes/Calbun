import 'package:calbun/core/custom_widget.dart';
import 'package:calbun/core/theme.dart';
import 'package:calbun/data/food_database_region_data.dart';
import 'package:flutter/material.dart';

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
                  border: Border.all(color: AppColors.grey),
                ),
                child: DropdownMenu(
                  menuHeight: size.height * 0.7,
                  width: double.maxFinite,
                  dropdownMenuEntries: foodDatabaseCountries,
                ),
              ),

              const SizedBox(height: 30),
              Center(
                child: PrimaryThemedContainer(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: AppColors.white),
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
