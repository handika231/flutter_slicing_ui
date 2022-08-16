import 'package:flutter/material.dart';
import 'package:job_application/config/app_style.dart';

import '../widgets/textfield_custom_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(24, 30, 24, 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppStyle.greyColor,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  'Build Your Career',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppStyle.blackColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Image.asset(
                    'assets/illustration_one.png',
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const TextFIeldCustomWidget(title: 'Email'),
                const SizedBox(
                  height: 20,
                ),
                const TextFIeldCustomWidget(
                    title: 'Password', isPassword: true),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppStyle.primaryColor,
                    borderRadius: BorderRadius.circular(66),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: AppStyle.whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint('Hello');
                  },
                  child: const Text(
                    "Create New Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: AppStyle.greyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
