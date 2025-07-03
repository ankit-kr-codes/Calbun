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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        forceMaterialTransparency: true,
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  context.push('/profile');
                },
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.softGreen,
                  ),
                  child: Icon(
                    Icons.person_outline_outlined,
                    color: AppColors.darkGreen,
                  ),
                ),
                title: const Text("Account"),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {},
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.softGreen,
                  ),
                  child: Icon(Icons.email_outlined, color: AppColors.darkGreen),
                ),
                title: const Text("Email"),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {},
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.softGreen,
                  ),
                  child: Icon(Icons.lock_outline, color: AppColors.darkGreen),
                ),
                title: const Text("Password"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Preference",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {},
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.softGreen,
                  ),
                  child: Icon(
                    Icons.straighten_outlined,
                    color: AppColors.darkGreen,
                  ),
                ),
                title: const Text("Units of Measurments"),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {},
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.softGreen,
                  ),
                  child: Icon(
                    Icons.bedtime_outlined,
                    color: AppColors.darkGreen,
                  ),
                ),
                title: const Text("Theme"),
              ),

              const SizedBox(height: 20),
              const Text(
                "Help & Support",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {},
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.softGreen,
                  ),
                  child: Icon(
                    Icons.help_outline_outlined,
                    color: AppColors.darkGreen,
                  ),
                ),
                title: const Text("Help Center"),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {},
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.softGreen,
                  ),
                  child: Icon(
                    Icons.headset_mic_outlined,
                    color: AppColors.darkGreen,
                  ),
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
                  showLicensePage(context: context);
                },
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.softGreen,
                  ),
                  child: Icon(
                    Icons.document_scanner_outlined,
                    color: AppColors.darkGreen,
                  ),
                ),
                title: const Text("Credits & Licenses"),
              ),
              const SizedBox(height: 20),
              ListTile(
                onTap: () {},
                hoverColor: AppColors.transparent,
                splashColor: AppColors.transparent,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.softGreen,
                  ),
                  child: Icon(Icons.info_outline, color: AppColors.darkGreen),
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.softGreen,
        ),
        child: Icon(iconData, color: AppColors.darkGreen),
      ),
      const SizedBox(width: 10),
      Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
    ],
  );
}
