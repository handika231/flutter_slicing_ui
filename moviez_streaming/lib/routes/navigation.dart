//create key for navigation
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Navigation {
  static Future<dynamic> navigateTo(Widget routes) {
    return navigatorKey.currentState!.push(
      MaterialPageRoute(builder: (context) => routes),
    );
  }

  static goBack() {
    return navigatorKey.currentState!.pop();
  }
}
