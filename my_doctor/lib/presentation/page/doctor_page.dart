import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_doctor/data/doctor/doctor.dart';

import '../../common/constant.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderContent(),
              const DoctorCard(),
              const DoctorItems(),
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 50,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good News',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: AppStyle.semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: listOfGoodNews.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          color: AppStyle.greyColor,
                          thickness: 1,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            listOfGoodNews[index].title,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: AppStyle.semiBold,
                            ),
                          ),
                          subtitle: const Text(
                            'Today',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          trailing: Image.asset(
                            listOfGoodNews[index].image,
                            width: 80.w,
                            height: 60.h,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorItems extends StatelessWidget {
  const DoctorItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Rated Doctors',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: AppStyle.semiBold,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 16.h,
            ),
            itemCount: listOfDoctor.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 30.r,
                  backgroundImage: AssetImage(listOfDoctor[index].image),
                ),
                title: Text(listOfDoctor[index].name),
                subtitle: Text(listOfDoctor[index].speciality),
                trailing: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [1, 2, 3, 4, 5]
                      .map(
                        (e) => const Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.orange,
                        ),
                      )
                      .toList(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mau konsultasi dengan\nsiapa hari ini?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: AppStyle.semiBold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 130.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listOfCardModel.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.only(top: 12, left: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppStyle.blueColor,
                  ),
                  margin: const EdgeInsets.only(right: 10),
                  height: 130.h,
                  width: 100.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        listOfCardModel[index].image,
                        width: 46,
                        height: 46,
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      const Text(
                        'Saya butuh',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        listOfCardModel[index].speciality,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: AppStyle.semiBold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(23),
            child: Image.asset(
              'assets/user.png',
              width: 46,
              height: 46,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Shayna Melinda',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Product Designer',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Language: dart
// Path: lib\presentation\page\home_page.dart
