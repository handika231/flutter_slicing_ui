import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_doctor/common/constant.dart';
import 'package:my_doctor/data/hospital/hospital.dart';

class HospitalPage extends StatelessWidget {
  const HospitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/hospital.png',
            ),
            Positioned(
              top: 30.h,
              left: 0.h,
              right: 0.h,
              child: Column(
                children: [
                  Text(
                    'Nearby Hospital',
                    style: TextStyle(
                      fontWeight: AppStyle.semiBold,
                      fontSize: 20,
                      color: AppStyle.whiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '3 Available',
                    style: TextStyle(
                      fontWeight: AppStyle.light,
                      color: AppStyle.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 210.h),
              padding: EdgeInsets.only(
                top: 20.h,
                left: 16.w,
              ),
              decoration: BoxDecoration(
                color: AppStyle.whiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  height: 10,
                  color: AppStyle.greyColor,
                ),
                itemCount: listOfHospital.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.asset(
                            listOfHospital[index].image,
                            width: 100.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listOfHospital[index].name,
                              style: TextStyle(
                                fontWeight: AppStyle.regular,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              listOfHospital[index].address,
                              style: TextStyle(
                                fontWeight: AppStyle.light,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
