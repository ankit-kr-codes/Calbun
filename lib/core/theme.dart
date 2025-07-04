import 'package:flutter/material.dart';

class AppColors {
  //For Light Theme
  static Color lightPrimary = const Color.fromRGBO(66, 143, 69, 1);
  static Color lightSecondary = const Color.fromRGBO(116, 183, 118, 1);
  static Color lightTertiary = const Color.fromRGBO(234, 240, 235, 1);
  static Color light4 = const Color.fromRGBO(39, 100, 41, 1);
  static Color lightBgColor = const Color.fromRGBO(255, 255, 255, 1);

  // static Color lightDarkGreen = const Color.fromRGBO(40, 100, 42, 1);
  // static Color lightDarkGreen02 = const Color.fromRGBO(22, 53, 23, 1);
  // static Color lightSecondary = const Color.fromRGBO(116, 183, 118, 1);
  // static Color lightSoftGreen02 = const Color.fromRGBO(220, 245, 221, 1);
  // static Color lightSoftGreen = const Color.fromRGBO(234, 240, 235, 1);

  //For Dark Theme
  static Color darkPrimary = const Color.fromRGBO(20, 183, 121, 1);
  static Color darkSecondary = const Color.fromRGBO(147, 200, 179, 1);
  static Color darkTertiary = const Color.fromRGBO(36, 71, 58, 1);
  static Color dark4 = const Color.fromRGBO(199, 222, 202, 1);
  static Color darkBgColor = const Color.fromRGBO(17, 34, 27, 1);

  // static Color darkDarkGreen = const Color.fromRGBO(20, 60, 22, 1);
  // static Color darkDarkGreen02 = const Color.fromRGBO(15, 40, 18, 1);
  // static Color darkDarkBg = const Color.fromRGBO(40, 60, 42, 1);
  // static Color darkSoftGreen02 = const Color.fromRGBO(40, 60, 42, 1);
  // static Color darkSoftGreen = const Color.fromRGBO(55, 75, 57, 1);

  //Universal Colors
  static Color white = const Color.fromRGBO(255, 255, 255, 1);
  static Color grey = const Color.fromRGBO(187, 187, 187, 1);
  static Color black = const Color.fromRGBO(0, 0, 0, 1);
  static Color transparent = const Color.fromRGBO(0, 0, 0, 0);
  static Color semiTransparent = const Color.fromRGBO(0, 0, 0, 0.42);

  //Gradient Colors
  List<Color> gradientList = const [
    Color.fromRGBO(60, 113, 63, 1),
    Color.fromRGBO(37, 88, 39, 1),
    Color.fromRGBO(25, 74, 27, 1),
    Color.fromRGBO(25, 65, 27, 1),
    Color.fromRGBO(15, 48, 15, 1),
    Color.fromRGBO(0, 0, 0, 1),
  ];
}

// Light Theme
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.lightPrimary,
  scaffoldBackgroundColor: AppColors.lightBgColor,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.lightBgColor,
    foregroundColor: AppColors.black,
    centerTitle: true,
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: AppColors.lightBgColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: AppColors.lightTertiary,
    filled: true,
    hintStyle: TextStyle(color: AppColors.light4),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppColors.lightPrimary,
    refreshBackgroundColor: AppColors.lightPrimary,
    linearTrackColor: AppColors.lightTertiary,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: AppColors.lightBgColor,
    selectedItemColor: AppColors.lightPrimary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.lightPrimary,
    splashColor: AppColors.transparent,
  ),
  listTileTheme: ListTileThemeData(iconColor: AppColors.lightPrimary),
);

//Dark Theme
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.darkPrimary,
  scaffoldBackgroundColor: AppColors.darkBgColor,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.darkBgColor,
    foregroundColor: AppColors.white,
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: AppColors.darkBgColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: AppColors.darkTertiary,
    filled: true,
    hintStyle: TextStyle(color: AppColors.dark4),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppColors.darkPrimary,
    refreshBackgroundColor: AppColors.darkPrimary,
    linearTrackColor: AppColors.darkTertiary,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: AppColors.darkBgColor,
    selectedItemColor: AppColors.darkPrimary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.darkPrimary,
    splashColor: AppColors.transparent,
  ),
  listTileTheme: ListTileThemeData(iconColor: AppColors.darkPrimary),
);
