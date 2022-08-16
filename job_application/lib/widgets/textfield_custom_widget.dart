import 'package:flutter/material.dart';

import '../config/app_style.dart';

class TextFIeldCustomWidget extends StatelessWidget {
  final String title;
  final bool isPassword;
  const TextFIeldCustomWidget({
    Key? key,
    this.isPassword = false,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: title,
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
    );
  }
}
