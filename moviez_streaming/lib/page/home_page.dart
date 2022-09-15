import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _headerContent(),
          ],
        ),
      ),
    );
  }

  _headerContent() {
    return Container(
      margin: const EdgeInsets.only(
        top: 29,
        left: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Moviez',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Streaming',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
