import 'package:flutter/material.dart';
import 'package:job_application/config/app_style.dart';

import '../widgets/content_requirement_job.dart';
import '../widgets/head_job_widget.dart';

class AppliedJobPage extends StatelessWidget {
  final String title, company, imgAsset;
  const AppliedJobPage(
      {Key? key,
      required this.company,
      required this.imgAsset,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeadJobWidget(
                imgAsset: imgAsset,
                title: title,
                company: company,
              ),
              const ContentRequirementJobWidget(),
              const ButtonApplyJobWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonApplyJobWidget extends StatefulWidget {
  const ButtonApplyJobWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ButtonApplyJobWidget> createState() => _ButtonApplyJobWidgetState();
}

class _ButtonApplyJobWidgetState extends State<ButtonApplyJobWidget> {
  String _text = 'Apply for Job';
  bool _isApply = false;
  Color _color = AppStyle.primaryColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: _color,
              fixedSize: const Size(200, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66),
              ),
            ),
            child: Text(_text),
            onPressed: () {
              setState(() {
                _isApply = !_isApply;
                _text = _isApply ? 'Cancel Apply' : 'Apply for Job';
                _color = _isApply ? Colors.red : AppStyle.primaryColor;
                _isApply
                    ? ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'You have applied this job and the\nrecruiter will contact you',
                          ),
                        ),
                      )
                    : null;
              });
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Message Recruiter',
            style: TextStyle(
              color: AppStyle.greyColor,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
