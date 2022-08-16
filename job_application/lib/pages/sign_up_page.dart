import 'package:flutter/material.dart';
import 'package:job_application/pages/sign_in_page.dart';

import '../config/app_style.dart';
import '../widgets/textfield_custom_widget.dart';
import 'home_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
//create key for form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(
            24,
            30,
            24,
            MediaQuery.of(context).viewPadding.bottom,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppStyle.greyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'Begin New Journey',
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
                      'assets/user_pic.png',
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const TextFIeldCustomWidget(
                    title: 'Full Name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (!value!.contains('@')) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: AppStyle.textFieldColor,
                      labelStyle: const TextStyle(
                        color: AppStyle.greyColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFIeldCustomWidget(
                    title: 'Password',
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFIeldCustomWidget(
                    title: 'Your Goal',
                    isPassword: true,
                  ),
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
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Sign Up',
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
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Back to Sign In",
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
      ),
    );
  }
}
