import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Form1 extends StatelessWidget {
  const Form1({super.key});

  @override
  Widget build(BuildContext context) {
    InputBorder borderDesign = OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.secondary, width: 0.8),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      // backgroundColor: AppColors.darkGreen,
      body: Container(
        padding: const EdgeInsetsGeometry.all(10),
        decoration: BoxDecoration(
          color: AppColors.darkGreen02,
          // gradient: LinearGradient(
          //   colors: AppColors().gradientList,
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            formField(borderDesign, "Name", "Ava Lovelace"),
            formField(borderDesign, "Age", "19"),
            formField(borderDesign, "Gender", "Female"),
            formField(borderDesign, "Location", "India"),

            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Wrap(
                      spacing: 16,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: AppColors.secondary,
                          size: 20,
                        ),
                        Text(
                          "Go Back ",
                          style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    context.push("/form2");
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.darkGreen,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Wrap(
                      spacing: 16,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "Continue",
                          style: TextStyle(
                            color: AppColors.softGreen,
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: AppColors.softGreen,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Form2 extends StatelessWidget {
  const Form2({super.key});

  @override
  Widget build(BuildContext context) {
    InputBorder borderDesign = OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.secondary, width: 0.8),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      // backgroundColor: AppColors.darkGreen,
      body: Container(
        padding: const EdgeInsetsGeometry.all(10),
        decoration: BoxDecoration(
          color: AppColors.darkGreen02,
          // gradient: LinearGradient(
          //   colors: AppColors().gradientList,
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            formField(borderDesign, "Current Weight (in kg)", "89 kg"),
            formField(borderDesign, "Height (in cm)", "183 cm"),

            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Wrap(
                      spacing: 16,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: AppColors.secondary,
                          size: 20,
                        ),
                        Text(
                          "Go Back ",
                          style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.darkGreen,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Wrap(
                      spacing: 16,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "Continue",
                          style: TextStyle(
                            color: AppColors.softGreen,
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: AppColors.softGreen,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget formField(InputBorder borderDesign, String name, String exampleName) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        name,
        style: TextStyle(
          color: AppColors.secondary,
          fontSize: 18,
          fontFamily: "Delius_Swash_Caps",
        ),
      ),
      const SizedBox(height: 5),
      TextField(
        cursorColor: AppColors.secondary,
        style: TextStyle(color: AppColors.secondary),
        decoration: InputDecoration(
          hintText: 'eg. $exampleName',
          hintStyle: TextStyle(
            color: AppColors.secondary,
            fontFamily: "Delius_Swash_Caps",
          ),
          enabledBorder: borderDesign,
          focusedBorder: borderDesign,
          disabledBorder: borderDesign,
          errorBorder: borderDesign,
          focusedErrorBorder: borderDesign,
          border: borderDesign,
        ),
      ),
      const SizedBox(height: 15),
    ],
  );
}
