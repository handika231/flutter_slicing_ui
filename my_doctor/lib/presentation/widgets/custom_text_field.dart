import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constant.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final bool isObscure;
  final TextEditingController controller;
  const CustomTextField({
    Key? key,
    required this.controller,
    this.isObscure = false,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      validator: (value) =>
          value?.isNotEmpty == true ? null : '$text tidak boleh kosong',
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: AppStyle.blackColor,
          fontSize: 14.sp,
          fontWeight: AppStyle.regular,
        ),
        labelText: text,
        filled: true,
        fillColor: const Color(0xffE9E9E9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
