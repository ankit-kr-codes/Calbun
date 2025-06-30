import 'package:calbun/presentation/welcome/form.dart';
import 'package:calbun/presentation/welcome/welcome.dart';
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
      path: '/form1',
      builder: (context, state) => const Form1(),
      //
    ),
    GoRoute(
      path: '/form2',
      builder: (context, state) => const Form2(),
      //
    ),
  ],
);
