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
      scrollBehavior: const MaterialScrollBehavior(),
      routerConfig: router,
    );
  }
}
