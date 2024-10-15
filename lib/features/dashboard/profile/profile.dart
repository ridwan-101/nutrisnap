import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/shared/asset.dart';
import 'package:nutrisnap/core/utils/colors.dart';
import 'package:nutrisnap/features/dashboard/profile/edit_profile.dart';
//import 'package:nutrisnap/core/utils/theme.dart';

class Profile extends StatefulWidget {
  static const routeName = '/profile';
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Profile'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: appColor.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120.w,
                    height: 120.h,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(kprofile)),
                  ),
                  Positioned(
                    bottom: 12,
                    right: 12,
                    child: Container(
                      width: 30,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: appColor.black,
                        color: appColor.green.withOpacity(0),
                      ),
                      child: Image.asset(
                        kcamera,
                        color: appColor.themeColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Annabelle clark',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'Annabelle007',
                style: TextStyle(fontSize: 16, color: appColor.grey),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                color: Colors.transparent,
                thickness: 0,
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                },
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: appColor.black,
                    color: appColor.themeColor.withOpacity(0.2),
                  ),
                  child: Image.asset(
                    kuser,
                    color: appColor.themeColor,
                  ),
                ),
                title: Text(
                  'Edit profile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: appColor.black,
                    color: appColor.white.withOpacity(0.1),
                  ),
                  child: Image.asset(
                    kgoto,
                    color: appColor.themeColor,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: appColor.black,
                    color: appColor.themeColor.withOpacity(0.2),
                  ),
                  child: Image.asset(
                    kglobe,
                    color: appColor.themeColor,
                  ),
                ),
                title: Text(
                  'Change language',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: appColor.black,
                    color: appColor.white.withOpacity(0.1),
                  ),
                  child: Image.asset(
                    kgoto,
                    color: appColor.themeColor,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: appColor.black,
                    color: appColor.themeColor.withOpacity(0.2),
                  ),
                  child: Image.asset(
                    kcog,
                    color: appColor.themeColor,
                  ),
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: appColor.black,
                    color: appColor.white.withOpacity(0.1),
                  ),
                  child: Image.asset(
                    kgoto,
                    color: appColor.themeColor,
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: appColor.black,
                    color: appColor.themeColor.withOpacity(0.2),
                  ),
                  child: Image.asset(
                    kcontract,
                    color: appColor.themeColor,
                  ),
                ),
                title: Text(
                  'Terms Privacy Policy',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: appColor.black,
                    color: appColor.white.withOpacity(0.1),
                  ),
                  child: Image.asset(
                    kgoto,
                    color: appColor.themeColor,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: appColor.black,
                    color: appColor.themeColor.withOpacity(0.2),
                  ),
                  child: Image.asset(
                    klogout,
                    color: appColor.themeColor,
                  ),
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: appColor.black,
                    color: appColor.white.withOpacity(0.1),
                  ),
                  child: Image.asset(
                    kgoto,
                    color: appColor.themeColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
