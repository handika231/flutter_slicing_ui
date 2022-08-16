import 'package:flutter/material.dart';
import 'package:job_application/pages/apply_job_page.dart';

import '../config/app_style.dart';

class JustPostedWidget extends StatelessWidget {
  const JustPostedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Just Posted',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          JobItemWidget(
            title: 'Front-end Developer',
            company: 'Google',
            imgAsset: 'google-icon',
          ),
          SizedBox(
            height: 16,
          ),
          JobItemWidget(
            title: 'UI Designer',
            company: 'Instagram',
            imgAsset: 'instagram-icon',
          ),
          SizedBox(
            height: 16,
          ),
          JobItemWidget(
            title: 'Data Scientist',
            company: 'Facebook',
            imgAsset: 'facebook-icon',
          ),
        ],
      ),
    );
  }
}

class JobItemWidget extends StatelessWidget {
  final String title, company, imgAsset;
  const JobItemWidget({
    Key? key,
    required this.title,
    required this.company,
    required this.imgAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AppliedJobPage(
              company: company,
              imgAsset: imgAsset,
              title: title,
            ),
          ),
        );
      },
      leading: Image.asset(
        'assets/$imgAsset.png',
        height: 45,
        width: 45,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        company,
        style: const TextStyle(
          fontSize: 12,
          color: AppStyle.greyColor,
        ),
      ),
    );
  }
}
