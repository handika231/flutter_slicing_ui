import 'package:flutter/material.dart';

import '../config/app_style.dart';

class HeadJobWidget extends StatelessWidget {
  const HeadJobWidget({
    Key? key,
    required this.imgAsset,
    required this.title,
    required this.company,
  }) : super(key: key);

  final String imgAsset;
  final String title;
  final String company;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 80,
        bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/$imgAsset.png',
            width: 60,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppStyle.blackColor,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            '$company, Inc• Jakarta',
            style: const TextStyle(
              fontSize: 16,
              color: AppStyle.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
