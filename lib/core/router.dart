import 'package:calbun/main.dart';
import 'package:calbun/presentation/home.dart';
import 'package:calbun/presentation/onboarding/login_form.dart';
import 'package:calbun/presentation/meal.dart';
import 'package:calbun/presentation/meditation.dart';
import 'package:calbun/presentation/onboarding/user_info/basic_info.dart';
import 'package:calbun/presentation/onboarding/user_info/diet_preference.dart';
import 'package:calbun/presentation/onboarding/user_info/goals.dart';
import 'package:calbun/presentation/profile.dart';
import 'package:calbun/presentation/settings.dart';
import 'package:calbun/presentation/settings_subpages/about.dart';
import 'package:calbun/presentation/settings_subpages/change_password.dart';
import 'package:calbun/presentation/settings_subpages/contact_support.dart';
import 'package:calbun/presentation/settings_subpages/email.dart';
import 'package:calbun/presentation/settings_subpages/measurements.dart';
import 'package:calbun/presentation/settings_subpages/profile_settings.dart';
import 'package:calbun/presentation/settings_subpages/theme_page.dart';
import 'package:calbun/presentation/onboarding/signup_form.dart';
import 'package:calbun/presentation/onboarding/welcome.dart';
import 'package:calbun/presentation/workout.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/welcome',
  // initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/welcome',
      builder: (context, state) => const Welcome(),
      //
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignupForm(),
      //
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginForm(),
      //
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const Profile(),
      //
    ),
    GoRoute(
      path: '/email',
      builder: (context, state) => const EmailSettings(),
      //
    ),
    GoRoute(
      path: '/changePassword',
      builder: (context, state) => const ChangePassword(),
      //
    ),
    GoRoute(
      path: '/measurements',
      builder: (context, state) => const Measurements(),
      //
    ),
    GoRoute(
      path: '/themepage',
      builder: (context, state) => const ThemePage(),
      //
    ),
    GoRoute(
      path: '/contactsupport',
      builder: (context, state) => const ContactSupport(),
      //
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const About(),
      //
    ),
    GoRoute(
      path: '/basicinfo',
      builder: (context, state) => const BasicInfo(),
      //
    ),
    GoRoute(
      path: '/goals',
      builder: (context, state) => const Goals(),
      //
    ),
    GoRoute(
      path: '/dietpreference',
      builder: (context, state) => const DietPreference(),
      //
    ),

    GoRoute(
      path: '/profileSettings',
      builder: (context, state) => const ProfileSettings(),
      //
    ),

    //For Bottom Navigtion Bar
    ShellRoute(
      builder: (context, state, child) => MainShell(child: child),
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const Home(),
          //
        ),
        GoRoute(
          path: '/meal',
          builder: (context, state) => const Meal(),
          //
        ),
        GoRoute(
          path: '/workout',
          builder: (context, state) => const Workout(),
          //
        ),
        GoRoute(
          path: '/meditation',
          builder: (context, state) => const Meditation(),
          //
        ),

        GoRoute(
          path: '/settings',
          builder: (context, state) => const Settings(),
          //
        ),
      ],
    ),
  ],
);
