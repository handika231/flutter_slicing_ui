import 'package:flutter/material.dart';

import '../config/app_style.dart';

class HotCategoriesWidget extends StatelessWidget {
  HotCategoriesWidget({
    Key? key,
  }) : super(key: key);

  final List<Map> jobCategories = [
    {
      'image': 'assets/card_category.png',
      'title': 'Accounting',
    },
    {
      'image': 'assets/card_category2.png',
      'title': 'Mobile Developer',
    },
    {
      'image': 'assets/card_category_three.png',
      'title': 'Web Developer',
    },
    {
      'image': 'assets/card_category_four.png',
      'title': 'Support IT',
    },
    {
      'image': 'assets/card_category_five.png',
      'title': 'Data Analyst',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hot Categories',
            style: TextStyle(
              fontSize: 16,
              color: AppStyle.blackColor,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jobCategories.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: Stack(
                    children: [
                      Image.asset(
                        jobCategories[index]['image'],
                        fit: BoxFit.cover,
                        width: 150,
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          jobCategories[index]['title'],
                          style: const TextStyle(
                            color: AppStyle.whiteColor,
                            fontWeight: FontWeight.w600,
                          ),
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
