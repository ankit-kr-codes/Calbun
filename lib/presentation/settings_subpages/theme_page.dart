import 'package:calbun/core/custom_widget.dart';
import 'package:flutter/material.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        title: const Text(
          "Theme",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Choose a theme that suits your preferences and enhance our experience with the app",
            ),
            const SizedBox(height: 20),
            BorderedRadioTile(
              title: const Text("Light"),
              value: 1,
              groupValue: "groupValue",
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            BorderedRadioTile(
              title: const Text("Dark"),
              value: 1,
              groupValue: "groupValue",
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
