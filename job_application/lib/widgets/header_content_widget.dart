import 'package:flutter/material.dart';

import '../config/app_style.dart';

class HeaderContentWidget extends StatelessWidget {
  const HeaderContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 20, top: 30, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Howdy',
                style: TextStyle(
                  fontSize: 16,
                  color: AppStyle.greyColor,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Jason Powell',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Image.asset(
            'assets/user_pic.png',
            fit: BoxFit.cover,
            width: 58,
          )
        ],
      ),
    );
  }
}
