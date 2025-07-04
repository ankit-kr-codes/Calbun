import 'package:calbun/core/router.dart';
import 'package:calbun/core/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const Calbun());
}

class Calbun extends StatelessWidget {
  const Calbun({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      scrollBehavior: const MaterialScrollBehavior(),
      routerConfig: router,
    );
  }
}

class MainShell extends StatelessWidget {
  final Widget child;
  const MainShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var path = GoRouterState.of(context).uri.path;

    int index = switch (path) {
      '/home' => 0,
      '/meal' => 1,
      '/workout' => 2,
      '/meditation' => 3,
      '/settings' => 4,
      _ => 0,
    };

    void onTap(int i) {
      switch (i) {
        case 0:
          context.go('/home');
          break;
        case 1:
          context.go('/meal');
          break;
        case 2:
          context.go('/workout');
          break;
        case 3:
          context.go('/meditation');
          break;
        case 4:
          context.go('/settings');
          break;
      }
    }

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        elevation: 0,
        enableFeedback: false,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "Meal",
            icon: Icon(Icons.room_service_outlined),
          ),
          BottomNavigationBarItem(
            label: "Workout",
            icon: Icon(Icons.fitness_center_outlined),
          ),
          BottomNavigationBarItem(
            label: "Meditation",
            icon: Icon(Icons.self_improvement_outlined),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(CupertinoIcons.gear),
          ),
        ],
      ),
    );
  }
}
