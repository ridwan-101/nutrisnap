import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nutrisnap/core/shared/asset.dart';

import 'package:nutrisnap/core/utils/colors.dart';

import 'package:nutrisnap/core/utils/textfield.dart';

import 'package:nutrisnap/core/widgets/button.dart';
import 'package:nutrisnap/features/auth/signup.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: appColor.themeColor,
      appBar: AppBar(
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
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120.w,
                    height: 120.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(kprofile),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    right: 12,
                    child: Container(
                      width: 30,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
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
              SizedBox(height: 10.h),
              Text(
                'You can Edit your Profile details here',
                style: TextStyle(color: appColor.white),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 490,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: appColor.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    children: [
                      CustomTextFieldWidget(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide(
                            color: appColor.black,
                            width: 1.5.w,
                          ),
                        ),
                        labelTextStyle: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w900, color: appColor.white),
                        hintText: 'Username',
                        hintStyle: TextStyle(color: appColor.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 14.sp),
                        textStyle: TextStyle(color: appColor.black),
                        onTap: () {},
                      ),
                      SizedBox(height: 5.h),
                      CustomTextFieldWidget(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide(
                            color: appColor.black,
                            width: 1.5.w,
                          ),
                        ),
                        labelTextStyle: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w900, color: appColor.white),
                        hintText: 'Full Name',
                        hintStyle: TextStyle(color: appColor.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 14.sp),
                        textStyle: TextStyle(color: appColor.black),
                        onTap: () {},
                      ),
                      SizedBox(height: 5.h),
                      CustomTextFieldWidget(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide(
                            color: appColor.black,
                            width: 1.5.w,
                          ),
                        ),
                        labelTextStyle: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w900, color: appColor.white),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: appColor.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 14.sp),
                        textStyle: TextStyle(color: appColor.black),
                        onTap: () {},
                      ),
                      SizedBox(height: 5.h),
                      CustomTextFieldWidget(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide(
                            color: appColor.black,
                            width: 1.5.w,
                          ),
                        ),
                        labelTextStyle: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w900, color: appColor.white),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(color: appColor.grey),
                        contentPadding: EdgeInsets.symmetric(vertical: 14.sp),
                        textStyle: TextStyle(color: appColor.black),
                        onTap: () {},
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text(
                                'Male',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              leading: Radio<String>(
                                value: 'on',
                                groupValue: selectedStatus,
                                activeColor: appColor.themeColor,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedStatus = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text(
                                'Female',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              leading: Radio<String>(
                                value: 'off',
                                groupValue: selectedStatus,
                                activeColor: appColor.themeColor,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedStatus = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25.h),
                      AltActionButtonPrimary(
                        isActive: true,
                        color: appColor.themeColor,
                        height: 40.h,
                        width: double.infinity,
                        textcolor: appColor.white,
                        textActionName: 'Save',
                        onTap: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile()),
                          );
                        },
                      ),
                      SizedBox(height: 15.h),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: appColor.black),
                          children: <TextSpan>[
                            const TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            TextSpan(
                              text: 'Login Now',
                              style: TextStyle(color: appColor.themeColor),
                            ),
                          ],
                        ),
                      ),
                    ],
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
