import 'package:flutter/material.dart';
import 'package:job_application/config/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                GetStartedWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GetStartedWidget extends StatelessWidget {
  const GetStartedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            color: AppStyle.whiteColor,
            borderRadius: BorderRadius.circular(66),
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Get Started",
              style: TextStyle(
                color: AppStyle.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          alignment: Alignment.center,
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppStyle.whiteColor,
              width: 1,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(66),
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Sign In",
              style: TextStyle(
                color: AppStyle.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }
}
