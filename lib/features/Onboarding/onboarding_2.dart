import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/shared/asset.dart';
import 'package:nutrisnap/core/utils/colors.dart';
import 'package:nutrisnap/features/Onboarding/onboarding_3.dart';
import 'package:nutrisnap/features/auth/singin.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: [
          // Background Image
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(kon_2),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Skip Button 
          Positioned(
            top: 40.h, // Adjust the spacing based on screen size
            right: 20.w,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ),
                );
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  color: appColor.white,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),

          // Text Overlay (Middle)
          Positioned(
            bottom: 150.h, // Adjust this to position it above the buttons
            left: 20.w,
            right: 20.w,
            child: Container(
              padding: EdgeInsets.all(10.w), // Padding for the text
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome To Nutri-Snap',
                    style: TextStyle(
                      color: appColor.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Snap or Upload Image of your prefered meal and let A.I derive its contents',
                    style: TextStyle(
                      color: appColor.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Dots for multiple screens 
          Positioned(
            bottom: 60.h,
            left: MediaQuery.of(context).size.width * 0.10,
            child: Row(
              children: [
                _buildDot(false), // Active Dot
                SizedBox(width: 5.w),
                _buildDot(true), // Inactive Dot
                SizedBox(width: 5.w),
                _buildDot(false), // Inactive Dot
              ],
            ),
          ),

          // Next Button 
          Positioned(
            bottom: 40.w,
            right: 20.w,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Onboarding3(),
                    ),
                  );
                },
                child:SizedBox(
                  width: 35.sp,
                child: Image.asset(knext)),
                ),
          ),
        ],
      ),
    );
  }

  // Widget to build dots
  Widget _buildDot(bool isActive) {
    return Container(
      height: 8.h,
      width: 8.sp,
      decoration: BoxDecoration(
        color: isActive ? appColor.themeColor : appColor.white,
        borderRadius: BorderRadius.circular(4.w),
      ),
    );
  }
}