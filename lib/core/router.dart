import 'package:calbun/presentation/home.dart';
import 'package:calbun/presentation/login_form.dart';
import 'package:calbun/presentation/signup_form.dart';
import 'package:calbun/presentation/welcome.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  initialLocation: '/welcome',
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
      path: '/home',
      builder: (context, state) => const Home(),
      //
    ),
  ],
);
