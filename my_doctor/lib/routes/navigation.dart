import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_doctor/presentation/page/home_page.dart';
import 'package:my_doctor/presentation/page/sign_in_page.dart';

import '../presentation/page/get_started_page.dart';
import '../presentation/page/sign_up_page.dart';

class Navigation {
  static final router = GoRouter(
    errorBuilder: (context, state) {
      return const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      );
    },
    routes: [
      GoRoute(
        path: '/',
        name: 'Get Started',
        builder: (context, state) {
          return const GetStartedPage();
        },
      ),
      GoRoute(
        path: '/home',
        name: 'Home',
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: '/sign-in',
        name: 'Sign In',
        builder: (context, state) {
          return const SignInPage();
        },
      ),
      GoRoute(
        path: '/sign-up',
        name: 'Sign Up',
        builder: (context, state) {
          return const SignUpPage();
        },
      ),
    ],
  );
}
