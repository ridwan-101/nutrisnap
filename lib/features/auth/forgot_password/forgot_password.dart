import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/shared/asset.dart';
import 'package:nutrisnap/core/utils/colors.dart';
import 'package:nutrisnap/core/utils/textfield.dart';
import 'package:nutrisnap/core/widgets/button.dart';
import 'package:nutrisnap/features/auth/forgot_password/email_ver.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: appColor.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: SafeArea(
            child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image.asset(kforgot), 
                SizedBox(height: 20.h),
                Text(
                  'E-Mail Address Here',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: appColor.themeColor),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Enter the E-mail address associated with your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 550,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: appColor.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomTextFieldWidget(
                          // controller: emailController,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide(
                              color: appColor.themeColor,
                              width: 1.5.w,
                            ),
                          ),

                          labelTextStyle: textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w900,
                              color: appColor.white),
                          hintText: 'Email Address',
                          hintStyle: TextStyle(color: appColor.grey),
                          contentPadding: EdgeInsets.symmetric(vertical: 14.sp),

                          textStyle: TextStyle(color: appColor.white),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        
                                //forgot password screen and function here
                               
                              
                        AltActionButtonPrimary(
                            isActive: true,
                            color: appColor.white,
                            height: 40.h,
                            width: double.infinity,
                            textcolor: appColor.white,
                            textActionName: 'RECOVER PASSWORD',
                            onTap: () async {
                               Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          EmailVer(),
                                    ),);
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
        ),
    );
  }
}
