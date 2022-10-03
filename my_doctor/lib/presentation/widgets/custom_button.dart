import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constant.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  const CustomButton(
      {Key? key,
      required this.color,
      required this.onPressed,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(275.w, 45.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        backgroundColor: color,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: AppStyle.blackColor,
          fontSize: 18.sp,
          fontWeight: AppStyle.semiBold,
        ),
      ),
    );
  }
}
