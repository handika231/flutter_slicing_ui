import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_doctor/common/constant.dart';
import 'package:my_doctor/presentation/widgets/custom_button.dart';

import '../widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController workController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  late List<TextEditingController> listOfController;

  @override
  void initState() {
    super.initState();
    listOfController = [
      emailController,
      passwordController,
      workController,
      fullNameController,
    ];
  }

  @override
  void dispose() {
    for (var element in listOfController) {
      element.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 30,
                  bottom: 40,
                  right: 16,
                ),
                child: Center(
                  child: Text(
                    'Daftar Akun',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: AppStyle.semiBold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Form(
                  key: GlobalKey<FormState>(),
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: fullNameController,
                        text: 'Full Name',
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      CustomTextField(
                        controller: emailController,
                        text: 'Email',
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      CustomTextField(
                        controller: passwordController,
                        text: 'Password',
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      CustomTextField(
                        controller: workController,
                        text: 'Pekerjaan',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomButton(
                        color: AppStyle.cyanColor,
                        textColor: AppStyle.whiteColor,
                        onPressed: () {},
                        text: 'Continue',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
