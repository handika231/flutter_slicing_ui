import 'package:go_router/go_router.dart';
import 'package:my_doctor/presentation/page/home_page.dart';

import '../presentation/page/get_started_page.dart';

class Navigation {
  static final router = GoRouter(
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
    ],
  );
}
