import 'package:calbun/core/custom_widget.dart';
import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';

class ContactSupport extends StatelessWidget {
  const ContactSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        title: const Text(
          "Email",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              const Text("Name", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(hintText: "Your name"),
              ),
              const SizedBox(height: 20),

              const Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(hintText: "Your email"),
              ),
              const SizedBox(height: 20),

              const Text(
                "Message",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const TextField(
                minLines: 6,
                maxLines: 6,
                decoration: InputDecoration(hintText: "How can we help you?"),
              ),
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
