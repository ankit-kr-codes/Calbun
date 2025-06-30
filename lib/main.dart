import 'package:calbun/core/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calbun());
}

class Calbun extends StatelessWidget {
  const Calbun({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: "Delius_Swash_Caps"),
      scrollBehavior: const MaterialScrollBehavior(),
      routerConfig: router,
      //
    );
  }
}
