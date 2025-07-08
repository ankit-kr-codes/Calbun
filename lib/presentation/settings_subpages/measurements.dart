import 'package:calbun/core/custom_widget.dart';
import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';

class Measurements extends StatelessWidget {
  const Measurements({super.key});

  @override
  Widget build(BuildContext context) {
    // bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        title: const Text(
          "Units of Measurement",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Weight",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              BorderedRadioTile(
                title: const Text("Kilogram(Kg)"),
                value: 1,
                onChanged: (value) {},
                groupValue: "groupValue",
              ),
              const SizedBox(height: 10),
              BorderedRadioTile(
                title: const Text("Pounds(lbs)"),
                value: 1,
                onChanged: (value) {},
                groupValue: "groupValue",
              ),

              const SizedBox(height: 20),
              const Text(
                "Height",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              BorderedRadioTile(
                title: const Text("Centimeter(cm)"),
                value: 1,
                onChanged: (value) {},
                groupValue: "groupValue",
              ),
              const SizedBox(height: 10),
              BorderedRadioTile(
                title: const Text("Feet(ft)"),
                value: 1,
                onChanged: (value) {},
                groupValue: "groupValue",
              ),
              const SizedBox(height: 10),
              BorderedRadioTile(
                title: const Text("Inch(in)"),
                value: 1,
                onChanged: (value) {},
                groupValue: "groupValue",
              ),

              const SizedBox(height: 20),
              const Text(
                "Distance",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              BorderedRadioTile(
                title: const Text("Kilometer(km)"),
                value: 1,
                onChanged: (value) {},
                groupValue: "groupValue",
              ),
              const SizedBox(height: 10),
              BorderedRadioTile(
                title: const Text("Miles(mi)"),
                value: 1,
                onChanged: (value) {},
                groupValue: "groupValue",
              ),

              const SizedBox(height: 20),
              const Text(
                "Energy",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              BorderedRadioTile(
                title: const Text("Calories(cal)"),
                value: 1,
                onChanged: (value) {},
                groupValue: "groupValue",
              ),
              const SizedBox(height: 10),
              BorderedRadioTile(
                title: const Text("Kilojoules(kJ)"),
                value: 1,
                onChanged: (value) {},
                groupValue: "groupValue",
              ),

              //
              const SizedBox(height: 30),
              Center(
                child: PrimaryThemedContainer(
                  width: double.maxFinite,
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
            ],
          ),
        ),
      ),
    );
  }
}
