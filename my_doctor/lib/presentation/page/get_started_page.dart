import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_doctor/common/constant.dart';

import '../widgets/custom_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/banner.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black54,
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'assets/logo.png',
                    width: 80.w,
                    height: 75.h,
                  ),
                ),
                SizedBox(
                  height: 90.h,
                ),
                Text(
                  'Konsultasi dengan\ndokter jadi lebih\nmudah & fleksibel',
                  style: TextStyle(
                    color: AppStyle.whiteColor,
                    fontSize: 28.sp,
                    fontWeight: AppStyle.semiBold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 44,
            left: 0,
            right: 0,
            child: Column(
              children: [
                CustomButton(
                  textColor: AppStyle.whiteColor,
                  color: AppStyle.cyanColor,
                  onPressed: () {},
                  text: 'Get Started',
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomButton(
                  textColor: AppStyle.blackColor,
                  color: AppStyle.whiteColor,
                  text: 'Sign In',
                  onPressed: () {
                    GoRouter.of(context).push('/sign-in');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
