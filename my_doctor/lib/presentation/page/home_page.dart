import 'package:flutter/material.dart';
import 'package:my_doctor/common/constant.dart';
import 'package:my_doctor/presentation/page/hospital_page.dart';
import 'package:my_doctor/presentation/page/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    ),
    const HospitalPage(),
    const ProfilePage(),
  ];
  onChangeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: AppStyle.whiteColor,
        currentIndex: _currentIndex,
        onTap: onChangeIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital_sharp),
            label: 'Hospital',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        backgroundColor: AppStyle.navyColor,
      ),
    );
  }
}
