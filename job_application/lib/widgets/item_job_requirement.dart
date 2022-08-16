import 'package:flutter/material.dart';

import '../config/app_style.dart';

class ItemJobRequirementWidget extends StatelessWidget {
  final String text;
  const ItemJobRequirementWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.circle_sharp,
        color: AppStyle.primaryColor,
        size: 12,
      ),
      visualDensity: VisualDensity.compact,
      dense: true,
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
