import 'package:flutter/material.dart';

import 'item_job_requirement.dart';

class ContentRequirementJobWidget extends StatelessWidget {
  const ContentRequirementJobWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'About the job',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          ItemJobRequirementWidget(
            text: 'Full-Time On Site',
          ),
          ItemJobRequirementWidget(
            text: r'Start at $18,000 per month',
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Qualifications',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          ItemJobRequirementWidget(
            text: 'Candidate must possess at least a Bachelor\'s Degree.',
          ),
          ItemJobRequirementWidget(
            text: 'Able to use Microsoft Office and Google based service.',
          ),
          ItemJobRequirementWidget(
            text:
                'Have an excellent time management, good at organized and details',
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Responsibilities',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          ItemJobRequirementWidget(
            text:
                'Initiate and promote any programs, events, training, or activities.',
          ),
          ItemJobRequirementWidget(
            text:
                'Assessing and anticipating needs and collaborate with Division.',
          ),
        ],
      ),
    );
  }
}
