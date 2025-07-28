import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  void showLicensePage({
    required BuildContext context,
    String? applicationName,
    String? applicationVersion,
    Widget? applicationIcon,
    String? applicationLegalese,
    bool useRootNavigator = false,
  }) {
    CapturedThemes themes = InheritedTheme.capture(
      from: context,
      to: Navigator.of(context, rootNavigator: useRootNavigator).context,
    );
    Navigator.of(context, rootNavigator: useRootNavigator).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => themes.wrap(
          LicensePage(
            applicationName: applicationName,
            applicationVersion: applicationVersion,
            applicationIcon: applicationIcon,
            applicationLegalese: applicationLegalese,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                "Account",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {
                  context.push('/profileSettings');
                },
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark
                        ? AppColors.darkTertiary
                        : AppColors.lightTertiary,
                  ),
                  child: const Icon(Icons.person_outline_outlined),
                ),
                title: const Text("Account"),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {
                  context.push('/email');
                },
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark
                        ? AppColors.darkTertiary
                        : AppColors.lightTertiary,
                  ),
                  child: const Icon(Icons.email_outlined),
                ),
                title: const Text("Email"),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {
                  context.push('/changePassword');
                },
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark
                        ? AppColors.darkTertiary
                        : AppColors.lightTertiary,
                  ),
                  child: const Icon(Icons.lock_outline),
                ),
                title: const Text("Change Password"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Preference",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {
                  context.push("/measurements");
                },
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark
                        ? AppColors.darkTertiary
                        : AppColors.lightTertiary,
                  ),
                  child: const Icon(Icons.straighten_outlined),
                ),
                title: const Text("Units of Measurments"),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {
                  context.push("/themepage");
                },
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark
                        ? AppColors.darkTertiary
                        : AppColors.lightTertiary,
                  ),
                  child: const Icon(Icons.bedtime_outlined),
                ),
                title: const Text("Theme"),
              ),

              const SizedBox(height: 20),
              const Text(
                "Help & Support",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // const SizedBox(height: 20),
              // ListTile(
              //   onTap: () {},
              //   hoverColor: AppColors.transparent,
              //   splashColor: AppColors.transparent,
              //   leading: Container(
              //     height: 50,
              //     width: 50,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: isDark
              //           ? AppColors.darkTertiary
              //           : AppColors.lightTertiary,
              //     ),
              //     child: const Icon(Icons.help_outline_outlined),
              //   ),
              //   title: const Text("Help Center"),
              // ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {
                  context.push("/contactsupport");
                },
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark
                        ? AppColors.darkTertiary
                        : AppColors.lightTertiary,
                  ),
                  child: const Icon(Icons.headset_mic_outlined),
                ),
                title: const Text("Contact Support"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Licence",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {
                  showLicensePage(context: context, applicationName: "Calbun");
                },
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark
                        ? AppColors.darkTertiary
                        : AppColors.lightTertiary,
                  ),
                  child: const Icon(Icons.document_scanner_outlined),
                ),
                title: const Text("Credits & Licenses"),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {
                  context.push('/about');
                },
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isDark
                        ? AppColors.darkTertiary
                        : AppColors.lightTertiary,
                  ),
                  child: const Icon(Icons.info_outline),
                ),
                title: const Text("About Us"),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

Widget section(String title, IconData iconData) {
  return Row(
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Icon(iconData),
      ),
      const SizedBox(width: 10),
      Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
    ],
  );
}
