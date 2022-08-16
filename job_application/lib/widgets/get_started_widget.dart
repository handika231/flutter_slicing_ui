import 'package:flutter/material.dart';
import 'package:job_application/pages/sign_in_page.dart';

import '../config/app_style.dart';
import '../pages/sign_up_page.dart';

class GetStartedWidget extends StatelessWidget {
  const GetStartedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            color: AppStyle.whiteColor,
            borderRadius: BorderRadius.circular(66),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66),
              ),
              minimumSize: const Size.fromWidth(200),
            ),
            onPressed: () {
              Navigator.push(context, _routePage(SignUpPage()));
            },
            child: const Text(
              "Get Started",
              style: TextStyle(
                color: AppStyle.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          alignment: Alignment.center,
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppStyle.whiteColor,
              width: 1,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(66),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66),
              ),
              minimumSize: const Size.fromWidth(200),
            ),
            onPressed: () {
              Navigator.push(context, _routePage(const SignInPage()));
            },
            child: const Text(
              "Sign In",
              style: TextStyle(
                color: AppStyle.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }

  Route _routePage(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return page;
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1, 0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        final tween = Tween(begin: begin, end: end);
        final curveAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );
        return SlideTransition(
          position: tween.animate(curveAnimation),
          child: child,
        );
      },
    );
  }
}
