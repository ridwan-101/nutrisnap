import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/shared/asset.dart';
import 'package:nutrisnap/core/utils/colors.dart';
import 'package:nutrisnap/core/utils/textfield.dart';
import 'package:nutrisnap/core/widgets/bottom_nabar.dart';
import 'package:nutrisnap/core/widgets/button.dart';
import 'package:nutrisnap/features/auth/forgot_password/forgot_password.dart';
import 'package:nutrisnap/features/auth/signup.dart';
//import 'package:nutrisnap/features/dashboard/home/home.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/signIn';
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Image.asset(klogo2),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Login to your account with your correct details .',
                      style: TextStyle(
                          color: appColor.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 550,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: appColor.white,
                          borderRadius: BorderRadius.circular(30)),
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
                                  color: appColor.black,
                                  width: 1.5.w,
                                ),
                              ),
                              // label: 'Email',
                              labelTextStyle: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: appColor.white),
                              hintText: 'Username or Phone number',
                              hintStyle: TextStyle(color: appColor.grey),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 14.sp),
                              // validator: FormValidators.validateEmail,
                              textStyle: TextStyle(color: appColor.black),
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 20.h,
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
                              hintText: 'Password',
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
                              textActionName: 'LOGIN',
                              onTap: () async {
                                Navigator.of(context)
                                    .pushNamed(BottomNabar.routeName);
                              },
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            InkWell(
                              onTap: () {
                                //forgot password screen and function here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgotPassword(),
                                  ),
                                );
                              },
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("Forgot password",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          color: appColor.themeColor,
                                        )),
                              ),
                            ),
                            Text(
                              'OR LOGIN WITH',
                              style: TextStyle(color: appColor.grey),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(kgmail),
                                Image.asset(ktwitter),
                                Image.asset(kfacebook)
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: appColor.black),
                                children: <TextSpan>[
                                  const TextSpan(
                                      text: 'Don’t have an account? ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                    text: 'Sign Up',
                                    style:
                                        TextStyle(color: appColor.themeColor),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.of(context)
                                            .pushNamed(SignUp.routeName);
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
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
            ),
          ),
        ),
      ),
    );
  }
}
