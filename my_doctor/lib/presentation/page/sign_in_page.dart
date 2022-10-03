import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_doctor/presentation/widgets/custom_button.dart';

import '../../common/constant.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'assets/logo.png',
                      width: 86.w,
                      filterQuality: FilterQuality.high,
                      height: 75.h,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    'Masuk dan mulai\nberkonsultasi',
                    style: TextStyle(
                      color: AppStyle.blackColor,
                      fontSize: 20.sp,
                      fontWeight: AppStyle.semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  TextFormField(
                    validator: (value) => value?.isNotEmpty == true
                        ? null
                        : 'Email tidak boleh kosong',
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: AppStyle.blackColor,
                        fontSize: 14.sp,
                        fontWeight: AppStyle.regular,
                      ),
                      labelText: 'Email Address',
                      filled: true,
                      fillColor: const Color(0xffE9E9E9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    obscureText: true,
                    validator: (value) => value?.isNotEmpty == true
                        ? null
                        : 'Password tidak boleh kosong',
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: AppStyle.blackColor,
                        fontSize: 14.sp,
                        fontWeight: AppStyle.regular,
                      ),
                      labelText: 'Password',
                      filled: true,
                      fillColor: const Color(0xffE9E9E9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Forgot My Password',
                    style: TextStyle(
                      color: AppStyle.greyColor,
                      fontSize: 12.sp,
                      fontWeight: AppStyle.regular,
                      decoration: TextDecoration.underline,
                      decorationThickness: 3,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomButton(
                    textColor: AppStyle.whiteColor,
                    color: AppStyle.cyanColor,
                    onPressed: () {
                      GoRouter.of(context).push('/home');
                    },
                    text: 'Sign In',
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        GoRouter.of(context).push('/sign-up');
                      },
                      child: Text(
                        'Create New Account',
                        style: TextStyle(
                          color: AppStyle.greyColor,
                          fontSize: 14.sp,
                          fontWeight: AppStyle.regular,
                          decoration: TextDecoration.underline,
                          decorationThickness: 3,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
