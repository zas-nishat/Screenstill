import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'HomePage.dart';
import 'NotificationPageUI/NotificationPage.dart';
import 'Profile_UI/ProfilePage.dart';
import 'SearchPageUI/SearchPage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {


  int _currentIndex = 0;

  void _selectedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List _pages=[
    const HomePage(),
    const SearchPage(),
    const NotificationPage(),
    ProfilePage(ProfileUserName: '', ProfileUserEmail: '', ProfileuserNumber: ''
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10.sp,
        selectedIconTheme: const IconThemeData(color: Colors.teal),
        selectedItemColor: Colors.teal,
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w800
        ),
        currentIndex: _currentIndex,
        onTap: _selectedIndex,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          const BottomNavigationBarItem(icon: Icon(Icons.notifications_active), label: "Notification"),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
