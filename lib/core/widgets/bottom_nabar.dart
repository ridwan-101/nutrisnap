import 'package:flutter/material.dart';
import 'package:nutrisnap/core/utils/colors.dart';

import 'package:nutrisnap/features/dashboard/feed/nutrition_feed.dart';
import 'package:nutrisnap/features/dashboard/history.dart';
import 'package:nutrisnap/features/dashboard/home/home.dart';
import 'package:nutrisnap/features/dashboard/profile/profile.dart';
import 'package:nutrisnap/features/dashboard/scanner/qr_code.dart';

class BottomNavbar extends StatefulWidget {
  static const routeName = '/bottomnavbar';

  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedPage = 0;

  final List<Widget> _pages = [
    HomeDashboard(),
    FeedPage(),
    History(),
    Profile(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(QrCodeScanner.routeName);
        },
        backgroundColor: Colors.white,
        elevation: 6.0,
        shape: const CircleBorder(),
        child: Icon(
          Icons.qr_code_scanner,
          color: appColor.themeColor,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        backgroundColor: appColor.themeColor,
        selectedItemColor: appColor.white,
        unselectedItemColor: appColor.yellow.withOpacity(0.7),
        selectedFontSize: 14,
        unselectedFontSize: 12,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 28),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article, size: 28),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history, size: 28),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 28),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
