import 'package:flutter/material.dart';
import 'package:job_application/config/app_style.dart';

import '../widgets/get_started_widget.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text(
                  '''Build Your Next\nFuture Career Like\na Master''',
                  style: TextStyle(
                    color: AppStyle.whiteColor,
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '18,000 jobs available',
                  style: TextStyle(
                    color: AppStyle.whiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Spacer(),
                GetStartedWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
