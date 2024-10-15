import 'package:flutter/material.dart';
import 'package:nutrisnap/core/utils/colors.dart';
import 'package:nutrisnap/features/dashboard/feed.dart';
import 'package:nutrisnap/features/dashboard/history.dart';
import 'package:nutrisnap/features/dashboard/home/home.dart';
import 'package:nutrisnap/features/dashboard/profile/profile.dart';

class BottomNabar extends StatefulWidget {
  static const routeName = '/bottomnavbar';

  const BottomNabar({super.key});

  @override
  State<BottomNabar> createState() => _BottomNabarState();
}

class _BottomNabarState extends State<BottomNabar> {
 
  int _selectedPage = 0;

  //the list of pages
  final List _pages = [
    HomeDashboard(),
    FeedPage(),
    History(),
    Profile(),
  
  ];
   //method to update selected index
  void _navigatebottombar(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        backgroundColor: appColor.themeColor,
        selectedItemColor: appColor.white,
        unselectedItemColor: appColor.yellow,
        onTap: _navigatebottombar,
        items: [
          //dashbord
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
             label: "Home"
             ),
             BottomNavigationBarItem(
                  icon: Icon(Icons.article),
                  label: 'Feed',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: 'History',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
        ],
      ),
      
    );
  }
}
