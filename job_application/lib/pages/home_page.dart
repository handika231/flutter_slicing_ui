import 'package:flutter/material.dart';

import '../widgets/header_content_widget.dart';
import '../widgets/hot_categories_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HeaderContentWidget(),
              HotCategoriesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
