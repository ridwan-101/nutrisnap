import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/shared/asset.dart';
import 'package:nutrisnap/core/utils/colors.dart';
import 'package:nutrisnap/core/utils/textfield.dart';
import 'package:nutrisnap/core/widgets/button.dart';
import 'package:nutrisnap/features/auth/signup_ver.dart';
import 'package:nutrisnap/features/auth/singin.dart';

class SignUp extends StatefulWidget {
  static const routeName = '/signUp';
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

String selectedStatus = 'on';

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(kbackground1),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [appColor.white, appColor.white])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.sp),
            child: SafeArea(
              // child:SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Image.asset(klogo2),
                    SizedBox( 
                      height: 5.h,
                    ),
                    Text(
                      'Register an account with your correct details .',
                      style: TextStyle(
                          color: appColor.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 690,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: appColor.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Column(
                          children: [
                            CustomTextFieldWidget(
                              // controller: emailController,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: BorderSide(
                                  color: appColor.black,
                                  width: 1.5.w,
                                ),
                              ),
                              // label: 'Email',
                              labelTextStyle: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: appColor.white),
                              hintText: 'Username',
                              hintStyle: TextStyle(color: appColor.grey),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 14.sp),
                              // validator: FormValidators.validateEmail,
                              textStyle: TextStyle(color: appColor.black),
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomTextFieldWidget(
                              // controller: emailController,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: BorderSide(
                                  color: appColor.black,
                                  width: 1.5.w,
                                ),
                              ),
                              // label: 'Email',
                              labelTextStyle: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: appColor.white),
                              hintText: 'Full Name',
                              hintStyle: TextStyle(color: appColor.grey),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 14.sp),
                              // validator: FormValidators.validateEmail,
                              textStyle: TextStyle(color: appColor.black),
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomTextFieldWidget(
                              // controller: emailController,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: BorderSide(
                                  color: appColor.black,
                                  width: 1.5.w,
                                ),
                              ),
                              // label: 'Email',
                              labelTextStyle: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: appColor.white),
                              hintText: 'Email Adress',
                              hintStyle: TextStyle(color: appColor.grey),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 14.sp),
                              // validator: FormValidators.validateEmail,
                              textStyle: TextStyle(color: appColor.black),
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomTextFieldWidget(
                              // controller: emailController,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: BorderSide(
                                  color: appColor.black,
                                  width: 1.5.w,
                                ),
                              ),
                              // label: 'Email',
                              labelTextStyle: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: appColor.white),
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(color: appColor.grey),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 14.sp),
                              // validator: FormValidators.validateEmail,
                              textStyle: TextStyle(color: appColor.black),
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ListTile(
                                    title: const Text(
                                      'Male',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
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
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
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
                            CustomTextFieldWidget(
                              // controller: emailController,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: BorderSide(
                                  color: appColor.black,
                                  width: 1.5.w,
                                ),
                              ),
                              // label: 'Email',
                              labelTextStyle: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: appColor.black),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: appColor.grey),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 14.sp),
                              // validator: FormValidators.validateEmail,
                              textStyle: TextStyle(color: appColor.black),
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomTextFieldWidget(
                              // controller: emailController,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: BorderSide(
                                  color: appColor.black,
                                  width: 1.5.w,
                                ),
                              ),
                              // label: 'Email',
                              labelTextStyle: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: appColor.white),
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(color: appColor.grey),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 14.sp),
                              // validator: FormValidators.validateEmail,
                              textStyle: TextStyle(color: appColor.black),
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            AltActionButtonPrimary(
                              isActive: true,
                              color: appColor.white,
                              height: 40.h,
                              width: double.infinity,
                              textcolor: appColor.white,
                              textActionName: 'REGISTER',
                              onTap: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupVer()));
                              },
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: appColor.black),
                                children: <TextSpan>[
                                  const TextSpan(
                                      text: 'Already have an account? ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                    text: 'Login Now',
                                    style:
                                        TextStyle(color: appColor.themeColor),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.of(context)
                                            .pushNamed(SignIn.routeName);
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: appColor.white),
                        children: <TextSpan>[
                          const TextSpan(
                              text: 'By signing up, you are agree with our ',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(color: appColor.redColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Handle your terms and condition action here
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
