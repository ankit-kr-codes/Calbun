import 'package:calbun/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({super.key});
  Future<void> redirectUrl(dynamic query) async {
    Uri url = Uri.parse(query);

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        title: const Text(
          "About Us",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.2,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/1.webp"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Calbun",
                  style: TextStyle(
                    fontFamily: "Delius_Swash_Caps",
                    color: AppColors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mission",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "At Calbun, we're dedicated to empowering individuals on their journey to a healthier lifestyle. Our mission is to provide a comprehensive platform that seamlessly integrates fitness tracking, nutritional guidance, and mindfulness practices. We believe in a holistic approach to well-being, where physical activity, balanced nutrition, and mental wellness are equally valued.",
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    "Developer",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        fit: BoxFit.cover,
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      "Ankit Kumar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Center(
                    child: Text(
                      "Engineering Student",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '''I'm Ankit Kumar, the developer of Calbun. I'm an engineering student. I made this app to help people like me track their calories, workouts, and progress easily. I'm still learning and improving the app day by day.

 If you find any bug or have a suggestion, feel free to reach out. I’ll be happy to hear from you! ''',
                  ),

                  const SizedBox(height: 10),
                  const Text(
                    "Contact Me",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      redirectUrl("https://github.com/ankit-kr-codes");
                    },
                    title: const Text("GitHub"),
                    subtitle: const Text("ankit-kr-codes"),
                    leading: const Icon(Icons.code),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      redirectUrl("mailto:ankit.kr.codes@gmail.com");
                    },
                    title: const Text("Email"),
                    subtitle: const Text("ankit.kr.codes@gmail.com"),
                    leading: const Icon(Icons.email_outlined),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
