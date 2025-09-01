import 'package:flutter_application_1/screen/login.dart';
import 'package:flutter_application_1/screen/register.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => Login()),
    GoRoute(path: '/register', builder: (context, state) => Register()),
  ],
);
