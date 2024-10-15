import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/shared/asset.dart';
import 'package:nutrisnap/core/utils/colors.dart';
import 'package:nutrisnap/features/dashboard/history.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.themeColor,
      appBar: AppBar(
        //leading: Image.asset(kb),
        title: Text(
          'Profile',
          style: TextStyle(color: appColor.white),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: appColor.themeColor,
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
              height: 50.h,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(),
                )
              ],
            )),
          ],
        ),
      )),
    );
  }
}
